#!/bin/bash

echo "php provisioning - begin"
sudo apt install php libapache2-mod-php -y #install php for apache
sudo systemctl restart apache2 #restart apache
echo "php provisioning - end"

