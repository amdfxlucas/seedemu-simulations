FROM 39e016aa9e819f203ebc1809245a5818
ARG DEBIAN_FRONTEND=noninteractive
ENV CONTAINER_NAME=as15brd-router63-10.15.0.254
ENV CONTAINER_ASN=15
ENV CONTAINER_NODE_NAME=router63
RUN apt-get update && apt-get install -y --no-install-recommends apache2-utils apt-transport-https ca-certificates ethtool gettext net-tools
COPY ./scion-bin /bin
ENV PATH=/bin:$PATH 
RUN mkdir -p /usr/share/doc/bird2/examples/
RUN touch /usr/share/doc/bird2/examples/bird.conf
RUN echo "deb [trusted=yes] https://packages.netsec.inf.ethz.ch/debian all main" > /etc/apt/sources.list.d/scionlab.list
RUN mkdir -p /cache
COPY brdnode_15_router63/082b96ec819c95ae773daebde675ef80 /start.sh
COPY brdnode_15_router63/d18858afc6bb66ec3a19d872077acfd2 /seedemu_sniffer
COPY brdnode_15_router63/17ac2d812a99a91e7f747e1defb72a29 /seedemu_worker
RUN chmod +x /start.sh
RUN chmod +x /seedemu_sniffer
RUN chmod +x /seedemu_worker
COPY brdnode_15_router63/dd2d0379efbf6cc5f77324a154dab941 /etc/scion/mhfa/15.json
COPY brdnode_15_router63/2b0ae038330eccd43095538618caee7d /etc/bird/bird.conf
COPY brdnode_15_router63/e01e36443f9f72c6204189260d0bd276 /ifinfo.txt
COPY brdnode_15_router63/d3d51fdf7f4bad30dc5db560a01ce629 /interface_setup
COPY brdnode_15_router63/552f01f4bf3d252f6a6c2af55d8d5bf2 /etc/scion/topology.json
COPY brdnode_15_router63/ed9cd95c01e45d12908702c4e8cdd572 /etc/scion/sciond.toml
COPY brdnode_15_router63/29c09a041f16d78346d82b26bfc3c22c /etc/scion/dispatcher.toml
COPY brdnode_15_router63/826338287d79bdb66e75a337943fef23 /etc/scion/router63.toml
COPY brdnode_15_router63/93561211238cd7e56baf344786d1d598 /etc/scion/crypto/as/ISD1-AS15.pem
COPY brdnode_15_router63/35f72d2ac7f78bc28e079aef85baaf05 /etc/scion/crypto/as/cp-as.key
COPY brdnode_15_router63/81e7dd8d0c88ff5d234d104f551647c9 /etc/scion/crypto/as/cp-as.tmpl
COPY brdnode_15_router63/0c12548120b6e61fc72884979b54a525 /etc/scion/certs/ISD1-B1-S1.trc
COPY brdnode_15_router63/c85882580f7d4ef1463b0963c7d714ae /etc/scion/keys/master0.key
COPY brdnode_15_router63/cfd0c5d82a1cb9eb22516ed7a3197327 /etc/scion/keys/master1.key
CMD ["/start.sh"]

