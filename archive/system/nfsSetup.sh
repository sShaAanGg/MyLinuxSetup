#!/bin/sh

## NFS
echo "enable NFS? y/n"
read enableNFS
enableNFS=`echo $enableNFS | tr '[A-Z]' '[a-z]'`
if [ "$enableNFS" = 'y' ] || [ "$enableNFS" = 'yes' ];
then
    echo "user whose home directory should be exported:"
    read newUserName

    sudo apt install -y rpcbind nfs-common nfs-kernel-server
    echo "/home/$newUserName 192.168.0.0/24(rw,insecure,sync)" | sudo tee -a /etc/exports
    sudo exportfs -ra
    sudo systemctl restart nfs-kernel-server
fi
echo "~~finish~~"
