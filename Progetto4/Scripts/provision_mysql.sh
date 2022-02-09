#!/bin/bash

echo "MySql provisioning - begin"
sudo apt-get install mysql-server -y
sudo apt-get install adminer -y
sudo service mysql stop
touch mysql-init
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'Password&1';" >> mysql-init
sudo mysqld --init-file=/home/vagrant/mysql-init
sudo ufw enable
sudo ufw allow mysql
sudo service mysql start
sudo systemctl enable mysql
echo "Updating bind address"
sudo sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
#riavviare mysql in modo da applicare le modifiche
echo "Restarting mysql service"
sudo service mysql restart
echo "MySql provisioning - end"



