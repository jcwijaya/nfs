#!/bin/sh
service rpcbind start
service nfs-kernel-server start
service nfs-common start
exportfs -a 
sleep infinity