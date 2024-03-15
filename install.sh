#!/bin/bash
wget https://raw.githubusercontent.com/viva9grup/nginx-varnish-perfect-server/master/default
wget https://raw.githubusercontent.com/viva9grup/nginx-varnish-perfect-server/master/nginx.conf
echo "Welcome to the installation.."
sudo apt-get update
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install htop host nginx php7.4-cli php7.4-curl php7.4-dev php7.4-fpm php7.4-gd php7.4-mcrypt php7.4-opcache php-mbstring php7.4-mbstring php7.4-sybase freetds-common libsybdb5 unzip ufw -y
sudo service php7.4-fpm restart
sudo service nginx restart
sudo cp default /etc/nginx/conf.d/default
sudo rm /etc/nginx/nginx.conf
sudo cp nginx.conf /etc/nginx/nginx.conf
sudo service nginx restart
sudo systemctl daemon-reload
sudo sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable
sudo mkdir /var/www/.ssh
sudo chown www-data:www-data /var/www/.ssh -R
sudo sudo apt-get update -y
