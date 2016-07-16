#!/bin/bash
sudo yum install -y openssl-devel readline-devel zlib-devel gcc-c++ openssl-devel git
if [ ! -e '/home/vagrant/.rbenv' ]; then
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    source ~/.bash_profile
fi
if [ ! -e '/home/vagrant/.rbenv/plugins/ruby-build' ]; then
    echo 'gem: --no-ri --no-rdoc' > ~/.gemrc
    git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    rbenv install 2.2.5
    rbenv global 2.2.5
fi
