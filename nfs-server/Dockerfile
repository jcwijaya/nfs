FROM ubuntu:focal

LABEL maintainer="Jessica Wijaya"

USER root

RUN apt-get update && \
    apt-get install -y \
    vim \
    ssh \
    dnsutils \
    iproute2 \
    rpcbind \
    nfs-kernel-server \
    nfs-common \
    kmod \
    && apt-get clean

#For server 
RUN mkdir /home/volumes
RUN mkdir /mnt/volumes
RUN echo "/mnt/volumes *(rw,no_root_squash,subtree_check)" >> /etc/exports
COPY start.sh /usr/local/bin/start.sh

USER root

CMD /usr/local/bin/start.sh
