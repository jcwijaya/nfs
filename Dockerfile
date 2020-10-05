FROM jlphillips/csci4850

LABEL maintainer="Jessica Wijaya"

USER root

RUN apt-get update && \
    apt-get install -y \
    dnsutils \
    nfs-kernel-server \
    portmap \
    && apt-get clean

#RUN perl -pi -e 's/^OPTIONS/#OPTIONS/' /etc/default/rpcbind
#RUN echo "portmap: 192.168.1." >> /etc/hosts.allow
#RUN /etc/init.d/rpcbind restart
#error when restart


#USER $NB_UID
