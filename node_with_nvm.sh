#!/usr/bin/env bash
# !run with privileged: false

echo -e "\n  ** Setup Nvm & node  ** \n"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
sudo -H -u ubuntu bash -i -c 'nvm install node'
sudo -H -u ubuntu bash -i -c 'nvm use node'
