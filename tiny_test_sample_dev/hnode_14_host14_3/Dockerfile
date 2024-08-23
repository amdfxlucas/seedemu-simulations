FROM 98a2693c996c2294358552f48373498d
ARG DEBIAN_FRONTEND=noninteractive
ENV CONTAINER_NAME=as14h-host14_3-10.14.0.75
ENV CONTAINER_ASN=14
ENV CONTAINER_NODE_NAME=host14_3
RUN apt-get update && apt-get install -y --no-install-recommends  apache2-utils apt-transport-https ca-certificates ethtool git net-tools openssh-client
ENV PATH=/home/root/repos/scion/bin:$PATH 
ENV PATH=$PATH:/usr/local/go/bin:/go/bin:/root/.local/protoc-26.1-linux-x86_64/bin
ENV LIBP2P_PID="QmNna8kCYDZBiMt1fMkkY6UHDd7cXhdhLmrHctAGmAsTCy"
ENV LOCALNETADDR="10.14.0.75"
RUN echo "deb [trusted=yes] https://packages.netsec.inf.ethz.ch/debian all main" > /etc/apt/sources.list.d/scionlab.list
RUN mkdir -p /cache
COPY 082b96ec819c95ae773daebde675ef80 /start.sh
COPY d18858afc6bb66ec3a19d872077acfd2 /seedemu_sniffer
COPY 17ac2d812a99a91e7f747e1defb72a29 /seedemu_worker
RUN chmod +x /start.sh
RUN chmod +x /seedemu_sniffer
RUN chmod +x /seedemu_worker
COPY 5f4bd96e3756e399ecc9c87b375bd33f /etc/scion/mhfa/2.json
COPY 4d8881d9167fd4d375432d00549eb502 /etc/scion/mhfa/3.json
COPY 6249ba944671dbde8603b588b492dcfc /etc/scion/mhfa/4.json
COPY a8e9407f60cd6496538e7daf39af5bc5 /etc/scion/mhfa/5.json
COPY 937c6e079d14775d304817e63f00b3c6 /etc/scion/mhfa/6.json
COPY 49b340f44d40804c7a6b9f63776e0f19 /etc/scion/mhfa/7.json
COPY 7e3c9b3531a0570be87caf413298cb2d /etc/scion/mhfa/8.json
COPY f3eec831f5e44fa6add607015daa3993 /etc/scion/mhfa/9.json
COPY ae6efc7f194a2b528d2fc0d4ca08b26d /etc/scion/mhfa/10.json
COPY ba71937bcfbd1a389636b0ac097c9fd6 /etc/scion/mhfa/11.json
COPY 2dc1e23d757d481a2a84c191d852ba06 /etc/scion/mhfa/12.json
COPY ceda7b53f81669fbd003cb95ce20d40e /etc/scion/mhfa/13.json
COPY f06c79b16fde74f6214d74c13e6de9af /etc/scion/mhfa/14.json
COPY dd2d0379efbf6cc5f77324a154dab941 /etc/scion/mhfa/15.json
COPY 5622a57ba82a72e2df8ced035187de94 /usr/local/share/hostkeys/private-key.pem
COPY 76e49685a0316243552d9cb83967883e /usr/local/share/hostkeys/public-key.pem
COPY e01e36443f9f72c6204189260d0bd276 /ifinfo.txt
COPY d3d51fdf7f4bad30dc5db560a01ce629 /interface_setup
COPY 552f01f4bf3d252f6a6c2af55d8d5bf2 /etc/scion/topology.json
COPY ed9cd95c01e45d12908702c4e8cdd572 /etc/scion/sciond.toml
COPY 29c09a041f16d78346d82b26bfc3c22c /etc/scion/dispatcher.toml
COPY 3c60d339b768e3ea4e8ef9254f3cb2d4 /etc/scion/crypto/voting/ISD1-AS14.sensitive.crt
COPY 02a7b1abfe11ea281314336cae40c186 /etc/scion/crypto/voting/sensitive-voting.key
COPY 202070c260972fd0ced2e66e4c1156a6 /etc/scion/crypto/voting/sensitive.tmpl
COPY ad640b41b617885f5619ff745a40827d /etc/scion/crypto/voting/ISD1-AS14.regular.crt
COPY ee3a7eefea3ed19d4e043612c9116d5e /etc/scion/crypto/voting/regular-voting.key
COPY 0b263ad70cded08be1f67732f14b901b /etc/scion/crypto/voting/regular.tmpl
COPY c3c17427fbbf52b080de4288deca9c32 /etc/scion/crypto/ca/ISD1-AS14.root.crt
COPY fa5ed53860530fb69e36d25f5af516a8 /etc/scion/crypto/ca/cp-root.key
COPY 5bc1f9c75fc1e65db12525feed250c07 /etc/scion/crypto/ca/cp-root.tmpl
COPY 3009cbd0cd69275daf56ef965b45ebb9 /etc/scion/crypto/ca/ISD1-AS14.ca.crt
COPY 247c09804d5c94c34d55d9428341a10f /etc/scion/crypto/ca/cp-ca.key
COPY c514c6db21e6c78cb3c87ec2960ea4f1 /etc/scion/crypto/ca/cp-ca.tmpl
COPY 864a6a849ce60ce203115d06d94cb594 /etc/scion/crypto/as/ISD1-AS14.pem
COPY 35f72d2ac7f78bc28e079aef85baaf05 /etc/scion/crypto/as/cp-as.key
COPY 81e7dd8d0c88ff5d234d104f551647c9 /etc/scion/crypto/as/cp-as.tmpl
COPY 0c12548120b6e61fc72884979b54a525 /etc/scion/certs/ISD1-B1-S1.trc
COPY c85882580f7d4ef1463b0963c7d714ae /etc/scion/keys/master0.key
COPY cfd0c5d82a1cb9eb22516ed7a3197327 /etc/scion/keys/master1.key
COPY 356567b1010d0f157a4a25b64e2e75e4 /usr/local/share/hostkeys/peer-map.json
CMD ["/start.sh"]

