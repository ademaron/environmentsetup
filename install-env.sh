#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y apache2 git php5 mysql-client
curl -sS https://getcomposer.org/installer | php
sudo php composer.phar require aws/aws-sdk-php
git clone https://github.com/ademaron/environmentsetup.git
echo "Go scarlet hawks" > /tmp/hello.txt
cp index.html /var/www/html

