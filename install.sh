#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y git

git clone https://github.com/eduFDiaz/install-lamp-Raspberry-Pi3

cd install-lamp-Raspberry-Pi3

sudo chmod -R 777 install-lamp-Raspberry-Pi3

sudo ./install.sh

#Apache
sudo apt-get install -y apache2
sudo echo "ServerName localhost" >> /etc/apache2/httpd.conf
sudo chmod 777 -R /var/www/html/
sudo systemctl enable apache2

#Php
sudo apt-get install -y php5 libapache2-mod-php5

#MySQL
sudo apt-get install -y mysql-server mysql-client php5-mysql