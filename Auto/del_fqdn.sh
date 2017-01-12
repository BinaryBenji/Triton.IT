#!/bin/sh

if [ "$1" == "cloud" || "$1" == "database" || "$1" == "mail" || "$1" == "triton" ]
then
    echo ""
else
    echo ''
    sed -i "/+$1.triton.itinet.fr:88.177.168.133:86400/d" /etc/tinydns/root/data
    echo ''
fi