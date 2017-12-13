# Build with `-t solc`
FROM ubuntu:16.04

RUN apt-get -y update &&\
 apt-get -y install language-pack-en-base &&\
 dpkg-reconfigure locales &&\
 apt-get -y install software-properties-common &&\
 add-apt-repository -y ppa:ethereum/ethereum &&\
 add-apt-repository -y ppa:ethereum/ethereum-dev &&\
 apt-get -y update &&\
 apt-get -y upgrade

RUN apt-get -y install solc

ENTRYPOINT ["/usr/bin/solc"]
