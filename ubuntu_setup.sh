#!/usr/bin/env bash

echo -e "\n  ** Ubuntu Setup, user:ubuntu, password: ubuntu ** \n"

# SWAP - optional for low RAM config
# fallocate -l 2G /swapfile
# chmod 600 /swapfile
# mkswap /swapfile
# swapon /swapfile
# echo '/swapfile none swap defaults 0 0' >> /etc/fstab


apt-get -qq update

apt-get install -yfV            \
  apt-transport-https           \
  build-essential               \
  ca-certificates               \
  curl                          \
  git-core                      \
  vim		                    \
  libcurl4-openssl-dev          \
  libreadline-dev               \
  libsqlite3-dev                \
  libssl-dev                    \
  libxml2-dev                   \
  libxslt1-dev                  \
  libyaml-dev                   \
  python-software-properties    \
  software-properties-common    \
  sqlite3                       \
  imagemagick                   \

#  Particular setups
#  linux-image-extra-$(uname -r) \
#  linux-image-extra-virtual     \
#  libffi-dev                    \
#  zlib1g-dev                    \

apt-get -y autoremove
