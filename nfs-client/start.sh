#!/bin/sh
service rpcbind start
service nfs-common start
sleep 10
mount -t nfs -o v3,proto=tcp,port=2049 nfs-server:/mnt/volumes /home/volumes
sleep infinity