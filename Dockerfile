FROM jlphillips/csci4850

LABEL maintainer="Jessica Wijaya"

USER root

RUN apt-get update && \
    apt-get install -y \
    dnsutils \
    nfs-kernel-server \
    portmap \
    && apt-get clean
    
RUN mkdir example
RUN echo "/root/example 192.168.1.0/255.255.255.0(rw,no_root_squash,subtree_check)" >> /etc/exports
RUN exportfs -a
RUN /etc/init.d/nfs-kernel-server reload

#RUN perl -pi -e 's/^OPTIONS/#OPTIONS/' /etc/default/rpcbind
#RUN echo "portmap: 192.168.1." >> /etc/hosts.allow
#RUN /etc/init.d/rpcbind restart
#error when restart


#USER $NB_UID
