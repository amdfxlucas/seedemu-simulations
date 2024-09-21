FROM 39e016aa9e819f203ebc1809245a5818
ARG DEBIAN_FRONTEND=noninteractive
ENV CONTAINER_NAME=as14brd-router42-10.14.0.246
ENV CONTAINER_ASN=14
ENV CONTAINER_NODE_NAME=router42
RUN apt-get update && apt-get install -y --no-install-recommends apache2-utils apt-transport-https ca-certificates ethtool gettext net-tools
COPY ./scion-bin /bin
ENV PATH=/bin:$PATH 
RUN mkdir -p /usr/share/doc/bird2/examples/
RUN touch /usr/share/doc/bird2/examples/bird.conf
RUN echo "deb [trusted=yes] https://packages.netsec.inf.ethz.ch/debian all main" > /etc/apt/sources.list.d/scionlab.list
RUN mkdir -p /cache
COPY brdnode_14_router42/082b96ec819c95ae773daebde675ef80 /start.sh
COPY brdnode_14_router42/d18858afc6bb66ec3a19d872077acfd2 /seedemu_sniffer
COPY brdnode_14_router42/17ac2d812a99a91e7f747e1defb72a29 /seedemu_worker
RUN chmod +x /start.sh
RUN chmod +x /seedemu_sniffer
RUN chmod +x /seedemu_worker
COPY brdnode_14_router42/f06c79b16fde74f6214d74c13e6de9af /etc/scion/mhfa/14.json
COPY brdnode_14_router42/2b0ae038330eccd43095538618caee7d /etc/bird/bird.conf
COPY brdnode_14_router42/e01e36443f9f72c6204189260d0bd276 /ifinfo.txt
COPY brdnode_14_router42/d3d51fdf7f4bad30dc5db560a01ce629 /interface_setup
COPY brdnode_14_router42/552f01f4bf3d252f6a6c2af55d8d5bf2 /etc/scion/topology.json
COPY brdnode_14_router42/ed9cd95c01e45d12908702c4e8cdd572 /etc/scion/sciond.toml
COPY brdnode_14_router42/29c09a041f16d78346d82b26bfc3c22c /etc/scion/dispatcher.toml
COPY brdnode_14_router42/85538b8bf143890b4b98410c10d13fee /etc/scion/router42.toml
COPY brdnode_14_router42/3c60d339b768e3ea4e8ef9254f3cb2d4 /etc/scion/crypto/voting/ISD1-AS14.sensitive.crt
COPY brdnode_14_router42/02a7b1abfe11ea281314336cae40c186 /etc/scion/crypto/voting/sensitive-voting.key
COPY brdnode_14_router42/202070c260972fd0ced2e66e4c1156a6 /etc/scion/crypto/voting/sensitive.tmpl
COPY brdnode_14_router42/ad640b41b617885f5619ff745a40827d /etc/scion/crypto/voting/ISD1-AS14.regular.crt
COPY brdnode_14_router42/ee3a7eefea3ed19d4e043612c9116d5e /etc/scion/crypto/voting/regular-voting.key
COPY brdnode_14_router42/0b263ad70cded08be1f67732f14b901b /etc/scion/crypto/voting/regular.tmpl
COPY brdnode_14_router42/c3c17427fbbf52b080de4288deca9c32 /etc/scion/crypto/ca/ISD1-AS14.root.crt
COPY brdnode_14_router42/fa5ed53860530fb69e36d25f5af516a8 /etc/scion/crypto/ca/cp-root.key
COPY brdnode_14_router42/5bc1f9c75fc1e65db12525feed250c07 /etc/scion/crypto/ca/cp-root.tmpl
COPY brdnode_14_router42/3009cbd0cd69275daf56ef965b45ebb9 /etc/scion/crypto/ca/ISD1-AS14.ca.crt
COPY brdnode_14_router42/247c09804d5c94c34d55d9428341a10f /etc/scion/crypto/ca/cp-ca.key
COPY brdnode_14_router42/c514c6db21e6c78cb3c87ec2960ea4f1 /etc/scion/crypto/ca/cp-ca.tmpl
COPY brdnode_14_router42/864a6a849ce60ce203115d06d94cb594 /etc/scion/crypto/as/ISD1-AS14.pem
COPY brdnode_14_router42/35f72d2ac7f78bc28e079aef85baaf05 /etc/scion/crypto/as/cp-as.key
COPY brdnode_14_router42/81e7dd8d0c88ff5d234d104f551647c9 /etc/scion/crypto/as/cp-as.tmpl
COPY brdnode_14_router42/0c12548120b6e61fc72884979b54a525 /etc/scion/certs/ISD1-B1-S1.trc
COPY brdnode_14_router42/c85882580f7d4ef1463b0963c7d714ae /etc/scion/keys/master0.key
COPY brdnode_14_router42/cfd0c5d82a1cb9eb22516ed7a3197327 /etc/scion/keys/master1.key
CMD ["/start.sh"]

