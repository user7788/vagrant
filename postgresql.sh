#!/usr/bin/env bash

echo -e "\n--- Postgresql Setup, user:ubuntu, password: ubuntu ---\n"
apt-get install -y postgresql postgresql-contrib libpq-dev

#Enable external access
sudo sed -i "s/#listen_address.*/listen_addresses '*'/" /etc/postgresql/9.5/main/postgresql.conf
sudo cat >> /etc/postgresql/9.5/main/pg_hba.conf <<EOF
host    all         all         0.0.0.0/0             md5
EOF

sudo su postgres -c "psql -c \"CREATE ROLE ubuntu SUPERUSER LOGIN PASSWORD 'ubuntu'\" "
sudo su postgres -c "createdb -O ubuntu ubuntu"

sudo service postgresql restart