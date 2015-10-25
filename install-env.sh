#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y apache2 git php5 mysql-client
curl -sS https://getcomposer.org/installer | php
sudo php composer.phar require aws/aws-sdk-php
cp -R vendor/ /var/www/html
git clone https://github.com/ademaron/applicationsetup.git
cp -R applicationsetup/* /var/www/html/
php /var/www/setup.php
chmod 600 /var/www/html/setup.php
mkdir /var/www/html/uploads
chmod 777 /var/www/html/uploads