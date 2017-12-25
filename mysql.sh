#!/usr/bin/env bash

echo -e "\n ** Setup MySQL, user: root, password: root ** \n"
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
apt-get -y install mysql-server libmysqlclient-dev
sed -i "s/^bind-address/#bind-address/" /etc/mysql/mysql.conf.d/mysqld.cnf
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES;"
sudo /etc/init.d/mysql restart
