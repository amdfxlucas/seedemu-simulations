FROM 39e016aa9e819f203ebc1809245a5818
ARG DEBIAN_FRONTEND=noninteractive
ENV CONTAINER_NAME=as3brd-router57-10.3.0.252
ENV CONTAINER_ASN=3
ENV CONTAINER_NODE_NAME=router57
RUN apt-get update && apt-get install -y --no-install-recommends apache2-utils apt-transport-https ca-certificates ethtool gettext net-tools
COPY ./scion-bin /bin
ENV PATH=/bin:$PATH 
RUN mkdir -p /usr/share/doc/bird2/examples/
RUN touch /usr/share/doc/bird2/examples/bird.conf
RUN echo "deb [trusted=yes] https://packages.netsec.inf.ethz.ch/debian all main" > /etc/apt/sources.list.d/scionlab.list
RUN mkdir -p /cache
COPY brdnode_3_router57/082b96ec819c95ae773daebde675ef80 /start.sh
COPY brdnode_3_router57/d18858afc6bb66ec3a19d872077acfd2 /seedemu_sniffer
COPY brdnode_3_router57/17ac2d812a99a91e7f747e1defb72a29 /seedemu_worker
RUN chmod +x /start.sh
RUN chmod +x /seedemu_sniffer
RUN chmod +x /seedemu_worker
COPY brdnode_3_router57/4d8881d9167fd4d375432d00549eb502 /etc/scion/mhfa/3.json
COPY brdnode_3_router57/2b0ae038330eccd43095538618caee7d /etc/bird/bird.conf
COPY brdnode_3_router57/e01e36443f9f72c6204189260d0bd276 /ifinfo.txt
COPY brdnode_3_router57/d3d51fdf7f4bad30dc5db560a01ce629 /interface_setup
COPY brdnode_3_router57/552f01f4bf3d252f6a6c2af55d8d5bf2 /etc/scion/topology.json
COPY brdnode_3_router57/ed9cd95c01e45d12908702c4e8cdd572 /etc/scion/sciond.toml
COPY brdnode_3_router57/29c09a041f16d78346d82b26bfc3c22c /etc/scion/dispatcher.toml
COPY brdnode_3_router57/c436152ba667462569df751c9bf59a65 /etc/scion/router57.toml
COPY brdnode_3_router57/74594a9fb668849d1d64ac4a29ca2048 /etc/scion/crypto/as/ISD1-AS3.pem
COPY brdnode_3_router57/35f72d2ac7f78bc28e079aef85baaf05 /etc/scion/crypto/as/cp-as.key
COPY brdnode_3_router57/81e7dd8d0c88ff5d234d104f551647c9 /etc/scion/crypto/as/cp-as.tmpl
COPY brdnode_3_router57/0c12548120b6e61fc72884979b54a525 /etc/scion/certs/ISD1-B1-S1.trc
COPY brdnode_3_router57/c85882580f7d4ef1463b0963c7d714ae /etc/scion/keys/master0.key
COPY brdnode_3_router57/cfd0c5d82a1cb9eb22516ed7a3197327 /etc/scion/keys/master1.key
CMD ["/start.sh"]

