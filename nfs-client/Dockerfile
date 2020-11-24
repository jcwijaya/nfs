FROM ubuntu:focal

LABEL maintainer="Jessica Wijaya"

USER root

RUN apt-get update && \
    apt-get install -y \
    dnsutils \
    vim \
    ssh \
    iproute2 \
    netbase \
    rpcbind \
    nfs-common \
    kmod \
    && apt-get clean

#This sets up the nfs client for docker-compose
RUN mkdir /home/volumes
COPY start.sh /usr/local/bin/start.sh
CMD /usr/local/bin/start.sh 

