FROM 39e016aa9e819f203ebc1809245a5818
ARG DEBIAN_FRONTEND=noninteractive
ENV CONTAINER_NAME=as11brd-router47-10.11.0.249
ENV CONTAINER_ASN=11
ENV CONTAINER_NODE_NAME=router47
RUN apt-get update && apt-get install -y --no-install-recommends apache2-utils apt-transport-https ca-certificates ethtool gettext net-tools
COPY ./scion-bin /bin
ENV PATH=/bin:$PATH 
RUN mkdir -p /usr/share/doc/bird2/examples/
RUN touch /usr/share/doc/bird2/examples/bird.conf
RUN echo "deb [trusted=yes] https://packages.netsec.inf.ethz.ch/debian all main" > /etc/apt/sources.list.d/scionlab.list
RUN mkdir -p /cache
COPY brdnode_11_router47/082b96ec819c95ae773daebde675ef80 /start.sh
COPY brdnode_11_router47/d18858afc6bb66ec3a19d872077acfd2 /seedemu_sniffer
COPY brdnode_11_router47/17ac2d812a99a91e7f747e1defb72a29 /seedemu_worker
RUN chmod +x /start.sh
RUN chmod +x /seedemu_sniffer
RUN chmod +x /seedemu_worker
COPY brdnode_11_router47/ba71937bcfbd1a389636b0ac097c9fd6 /etc/scion/mhfa/11.json
COPY brdnode_11_router47/2b0ae038330eccd43095538618caee7d /etc/bird/bird.conf
COPY brdnode_11_router47/e01e36443f9f72c6204189260d0bd276 /ifinfo.txt
COPY brdnode_11_router47/d3d51fdf7f4bad30dc5db560a01ce629 /interface_setup
COPY brdnode_11_router47/552f01f4bf3d252f6a6c2af55d8d5bf2 /etc/scion/topology.json
COPY brdnode_11_router47/ed9cd95c01e45d12908702c4e8cdd572 /etc/scion/sciond.toml
COPY brdnode_11_router47/29c09a041f16d78346d82b26bfc3c22c /etc/scion/dispatcher.toml
COPY brdnode_11_router47/963e5d71bd217c06935a841894912933 /etc/scion/router47.toml
COPY brdnode_11_router47/1135cd7d3198bb1c4d77cd9988087062 /etc/scion/crypto/as/ISD1-AS11.pem
COPY brdnode_11_router47/35f72d2ac7f78bc28e079aef85baaf05 /etc/scion/crypto/as/cp-as.key
COPY brdnode_11_router47/81e7dd8d0c88ff5d234d104f551647c9 /etc/scion/crypto/as/cp-as.tmpl
COPY brdnode_11_router47/0c12548120b6e61fc72884979b54a525 /etc/scion/certs/ISD1-B1-S1.trc
COPY brdnode_11_router47/c85882580f7d4ef1463b0963c7d714ae /etc/scion/keys/master0.key
COPY brdnode_11_router47/cfd0c5d82a1cb9eb22516ed7a3197327 /etc/scion/keys/master1.key
CMD ["/start.sh"]

