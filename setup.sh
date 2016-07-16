#!/bin/bash
yum update -y
rpm -Uvh https://rpm.nodesource.com//pub_4.x/el/6/x86_64/nodesource-release-el6-1.noarch.rpm
yum install -y git vim nodejs gcc

#setting dotfiles
if [ -e /home/vagrant/dotfiles ]; then
    echo '/home/vagrant/dotfiles already exists. nothing to do'
else
    sudo -u vagrant git clone https://github.com/kuroshichimi/dotfiles /home/vagrant/dotfiles
    chmod +x /home/vagrant/dotfiles/*.sh
    sudo -u vagrant /home/vagrant/dotfiles/dotfilesLink.sh
    sudo -u vagrant /home/vagrant/dotfiles/neobundle.sh
    cd /home/vagrant/.vim/bundle/vimproc
    make -f make_unix.mak
fi
