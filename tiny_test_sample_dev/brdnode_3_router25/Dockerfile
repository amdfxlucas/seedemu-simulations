FROM 39e016aa9e819f203ebc1809245a5818
ARG DEBIAN_FRONTEND=noninteractive
ENV CONTAINER_NAME=as3brd-router25-10.3.0.250
ENV CONTAINER_ASN=3
ENV CONTAINER_NODE_NAME=router25
RUN apt-get update && apt-get install -y --no-install-recommends  apache2-utils apt-transport-https ca-certificates ethtool git iptables net-tools openssh-client
ENV PATH=/home/root/repos/scion/bin:$PATH 
ENV PATH=$PATH:/usr/local/go/bin:/go/bin:/root/.local/protoc-26.1-linux-x86_64/bin
ENV REALWORLDADDR="172.29.0.226"
ENV LOCALNETADDR="10.3.0.250"
RUN mkdir -p /usr/share/doc/bird2/examples/
RUN touch /usr/share/doc/bird2/examples/bird.conf
RUN echo "deb [trusted=yes] https://packages.netsec.inf.ethz.ch/debian all main" > /etc/apt/sources.list.d/scionlab.list
RUN mkdir -p /cache
COPY 082b96ec819c95ae773daebde675ef80 /start.sh
COPY d18858afc6bb66ec3a19d872077acfd2 /seedemu_sniffer
COPY 17ac2d812a99a91e7f747e1defb72a29 /seedemu_worker
RUN chmod +x /start.sh
RUN chmod +x /seedemu_sniffer
RUN chmod +x /seedemu_worker
COPY 4d8881d9167fd4d375432d00549eb502 /etc/scion/mhfa/3.json
COPY 2b0ae038330eccd43095538618caee7d /etc/bird/bird.conf
COPY e01e36443f9f72c6204189260d0bd276 /ifinfo.txt
COPY d3d51fdf7f4bad30dc5db560a01ce629 /interface_setup
COPY 552f01f4bf3d252f6a6c2af55d8d5bf2 /etc/scion/topology.json
COPY ed9cd95c01e45d12908702c4e8cdd572 /etc/scion/sciond.toml
COPY 29c09a041f16d78346d82b26bfc3c22c /etc/scion/dispatcher.toml
COPY c28f233ad065c6ceae90e1aa7076df2a /etc/scion/router25.toml
COPY 74594a9fb668849d1d64ac4a29ca2048 /etc/scion/crypto/as/ISD1-AS3.pem
COPY 35f72d2ac7f78bc28e079aef85baaf05 /etc/scion/crypto/as/cp-as.key
COPY 81e7dd8d0c88ff5d234d104f551647c9 /etc/scion/crypto/as/cp-as.tmpl
COPY 0c12548120b6e61fc72884979b54a525 /etc/scion/certs/ISD1-B1-S1.trc
COPY c85882580f7d4ef1463b0963c7d714ae /etc/scion/keys/master0.key
COPY cfd0c5d82a1cb9eb22516ed7a3197327 /etc/scion/keys/master1.key
CMD ["/start.sh"]

