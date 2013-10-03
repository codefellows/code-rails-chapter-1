#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y zlib1g-dev openssl libopenssl-ruby1.9.1 libssl-dev libruby1.9.1 libreadline-dev git-core build-essential vim sqlite3 libsqlite3-dev libqtwebkit-dev g++
# install nodejs as a javascript runtime, current version
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs
cd ~
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git
rbenv install 2.0.0-p247
rbenv rehash
rbenv global 2.0.0-p247
gem install bundler
rbenv rehash
gem install capybara-webkit
rbenv rehash
