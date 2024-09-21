FROM 39e016aa9e819f203ebc1809245a5818
ARG DEBIAN_FRONTEND=noninteractive
ENV CONTAINER_NAME=as6brd-router40-10.6.0.253
ENV CONTAINER_ASN=6
ENV CONTAINER_NODE_NAME=router40
RUN apt-get update && apt-get install -y --no-install-recommends apache2-utils apt-transport-https ca-certificates ethtool gettext net-tools
COPY ./scion-bin /bin
ENV PATH=/bin:$PATH 
RUN mkdir -p /usr/share/doc/bird2/examples/
RUN touch /usr/share/doc/bird2/examples/bird.conf
RUN echo "deb [trusted=yes] https://packages.netsec.inf.ethz.ch/debian all main" > /etc/apt/sources.list.d/scionlab.list
RUN mkdir -p /cache
COPY brdnode_6_router40/082b96ec819c95ae773daebde675ef80 /start.sh
COPY brdnode_6_router40/d18858afc6bb66ec3a19d872077acfd2 /seedemu_sniffer
COPY brdnode_6_router40/17ac2d812a99a91e7f747e1defb72a29 /seedemu_worker
RUN chmod +x /start.sh
RUN chmod +x /seedemu_sniffer
RUN chmod +x /seedemu_worker
COPY brdnode_6_router40/937c6e079d14775d304817e63f00b3c6 /etc/scion/mhfa/6.json
COPY brdnode_6_router40/2b0ae038330eccd43095538618caee7d /etc/bird/bird.conf
COPY brdnode_6_router40/e01e36443f9f72c6204189260d0bd276 /ifinfo.txt
COPY brdnode_6_router40/d3d51fdf7f4bad30dc5db560a01ce629 /interface_setup
COPY brdnode_6_router40/552f01f4bf3d252f6a6c2af55d8d5bf2 /etc/scion/topology.json
COPY brdnode_6_router40/ed9cd95c01e45d12908702c4e8cdd572 /etc/scion/sciond.toml
COPY brdnode_6_router40/29c09a041f16d78346d82b26bfc3c22c /etc/scion/dispatcher.toml
COPY brdnode_6_router40/909e78d54dfcfafa52f516e08e7d5b8e /etc/scion/router40.toml
COPY brdnode_6_router40/c1a3af754033444fcf542b0e913297df /etc/scion/crypto/as/ISD1-AS6.pem
COPY brdnode_6_router40/35f72d2ac7f78bc28e079aef85baaf05 /etc/scion/crypto/as/cp-as.key
COPY brdnode_6_router40/81e7dd8d0c88ff5d234d104f551647c9 /etc/scion/crypto/as/cp-as.tmpl
COPY brdnode_6_router40/0c12548120b6e61fc72884979b54a525 /etc/scion/certs/ISD1-B1-S1.trc
COPY brdnode_6_router40/c85882580f7d4ef1463b0963c7d714ae /etc/scion/keys/master0.key
COPY brdnode_6_router40/cfd0c5d82a1cb9eb22516ed7a3197327 /etc/scion/keys/master1.key
CMD ["/start.sh"]

