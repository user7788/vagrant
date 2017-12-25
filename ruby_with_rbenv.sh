#!/usr/bin/env bash
# !run with privileged: false

echo -e "\n  ** Installing Ruby 2.4.0 - will take a while(minutes) depending on vbox config ** \n"

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

sudo -H -u ubuntu bash -i -c 'rbenv install 2.4.0'
sudo -H -u ubuntu bash -i -c 'rbenv global 2.4.0'
sudo -H -u ubuntu bash -i -c 'rbenv rehash'
sudo -H -u ubuntu bash -i -c 'echo "gem: --no-document" > ~/.gemrc'

echo -e "\n  ** Gems: Bundler, Rails, Mailcatcher ** \n"

sudo -H -u ubuntu bash -i -c 'gem install bundler'
sudo -H -u ubuntu bash -i -c 'gem install rails'
sudo -H -u ubuntu bash -i -c 'gem install mailcatcher'
