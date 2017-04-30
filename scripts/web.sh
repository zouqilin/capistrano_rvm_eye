#!/usr/bin/env bash
apt-get install -y libmysqlclient20 libmyclient-dev ruby2.3 ruby2.3-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

source /etc/profile.d/rvm.sh
rvm reload
rvm install 2.4.1
rvm use 2.4.1
gem install bundler
gem install eye
cd /vagrant
bundle install
