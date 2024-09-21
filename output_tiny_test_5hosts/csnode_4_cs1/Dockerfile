FROM 98a2693c996c2294358552f48373498d
ARG DEBIAN_FRONTEND=noninteractive
ENV CONTAINER_NAME=as4cs-cs1-10.4.0.71
ENV CONTAINER_ASN=4
ENV CONTAINER_NODE_NAME=cs1
RUN apt-get update && apt-get install -y --no-install-recommends apache2-utils apt-transport-https ca-certificates ethtool gettext net-tools
COPY ./scion-bin /bin
ENV PATH=/bin:$PATH 
ENV LOCALNETADDR="10.4.0.71"
RUN echo "deb [trusted=yes] https://packages.netsec.inf.ethz.ch/debian all main" > /etc/apt/sources.list.d/scionlab.list
RUN mkdir -p /cache
COPY csnode_4_cs1/082b96ec819c95ae773daebde675ef80 /start.sh
COPY csnode_4_cs1/d18858afc6bb66ec3a19d872077acfd2 /seedemu_sniffer
COPY csnode_4_cs1/17ac2d812a99a91e7f747e1defb72a29 /seedemu_worker
RUN chmod +x /start.sh
RUN chmod +x /seedemu_sniffer
RUN chmod +x /seedemu_worker
COPY csnode_4_cs1/5f4bd96e3756e399ecc9c87b375bd33f /etc/scion/mhfa/2.json
COPY csnode_4_cs1/4d8881d9167fd4d375432d00549eb502 /etc/scion/mhfa/3.json
COPY csnode_4_cs1/6249ba944671dbde8603b588b492dcfc /etc/scion/mhfa/4.json
COPY csnode_4_cs1/a8e9407f60cd6496538e7daf39af5bc5 /etc/scion/mhfa/5.json
COPY csnode_4_cs1/937c6e079d14775d304817e63f00b3c6 /etc/scion/mhfa/6.json
COPY csnode_4_cs1/49b340f44d40804c7a6b9f63776e0f19 /etc/scion/mhfa/7.json
COPY csnode_4_cs1/7e3c9b3531a0570be87caf413298cb2d /etc/scion/mhfa/8.json
COPY csnode_4_cs1/f3eec831f5e44fa6add607015daa3993 /etc/scion/mhfa/9.json
COPY csnode_4_cs1/ae6efc7f194a2b528d2fc0d4ca08b26d /etc/scion/mhfa/10.json
COPY csnode_4_cs1/ba71937bcfbd1a389636b0ac097c9fd6 /etc/scion/mhfa/11.json
COPY csnode_4_cs1/2dc1e23d757d481a2a84c191d852ba06 /etc/scion/mhfa/12.json
COPY csnode_4_cs1/ceda7b53f81669fbd003cb95ce20d40e /etc/scion/mhfa/13.json
COPY csnode_4_cs1/f06c79b16fde74f6214d74c13e6de9af /etc/scion/mhfa/14.json
COPY csnode_4_cs1/dd2d0379efbf6cc5f77324a154dab941 /etc/scion/mhfa/15.json
COPY csnode_4_cs1/e01e36443f9f72c6204189260d0bd276 /ifinfo.txt
COPY csnode_4_cs1/d3d51fdf7f4bad30dc5db560a01ce629 /interface_setup
COPY csnode_4_cs1/552f01f4bf3d252f6a6c2af55d8d5bf2 /etc/scion/topology.json
COPY csnode_4_cs1/ed9cd95c01e45d12908702c4e8cdd572 /etc/scion/sciond.toml
COPY csnode_4_cs1/29c09a041f16d78346d82b26bfc3c22c /etc/scion/dispatcher.toml
COPY csnode_4_cs1/0c8e67cc22b9439c8406714552537a0f /etc/scion/cs1.toml
COPY csnode_4_cs1/a467daa90b75ef370d53cd9a11e81e0a /etc/scion/staticInfoConfig.json
COPY csnode_4_cs1/6ed5f0762abb31242b552a5c8bafc42e /etc/scion/crypto/as/ISD1-AS4.pem
COPY csnode_4_cs1/35f72d2ac7f78bc28e079aef85baaf05 /etc/scion/crypto/as/cp-as.key
COPY csnode_4_cs1/81e7dd8d0c88ff5d234d104f551647c9 /etc/scion/crypto/as/cp-as.tmpl
COPY csnode_4_cs1/0c12548120b6e61fc72884979b54a525 /etc/scion/certs/ISD1-B1-S1.trc
COPY csnode_4_cs1/c85882580f7d4ef1463b0963c7d714ae /etc/scion/keys/master0.key
COPY csnode_4_cs1/cfd0c5d82a1cb9eb22516ed7a3197327 /etc/scion/keys/master1.key
CMD ["/start.sh"]

