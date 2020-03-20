#!bin/bash

# help functions
help() {
    echo "usage: 
        -a \"pkg name\": add some other pkg you want"
}

bye() {
    echo "bye. OwO"
    exit 1
}

# variables
extendPKG=""
favoratePKG="nyancat zsh docker docker-compose npm htop nmap git wget curl vim"

# main

## install pkg
whichApt=`which apt`
whichYum=`which yum`

if [ $whichApt == '/usr/bin/apt' ];
then
    sudo apt update &&
    sudo apt-get upgrade ||
    sudo apt install -y $favoratePKG $extendPKG 
elif [ $whichYum == '/usr/bin/yum' ];
then
    sudo yum update && 
    sudo yum install -y $favoratePKG  $extendPKG
else
    echo "both apt and yum not found!!QUITE"
    bye
fi

## config zsh
sudo chsh -s $(which zsh)
exec zsh
### oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp ./.zshrc ~   # overwrite zshrc setting file

## NFS
echo "enable NFS? y/n"
read enableNFS
enableNFS=`echo $enableNFS | tr '[A-Z]' '[a-z]'`
if [ $enableNFS == 'y'] || [ $enableNFS == 'yes' ];
then
    sudo apt install -r rcpbind nfs-common nfs-kernel-server
    echo "/home/$newUserName 192.168.0.0/24(ew,insecure,syn)" >> /etc/exports
    $ sudo exportfs -ra
    /etc/init.d/nfs start
fi

