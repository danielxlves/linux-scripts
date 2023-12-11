#!/bin/bash

echo "Atualizando o servidor"

apt-get update -y
apt-get upgrade -y

echo "Baixando apache2 e unzip"
apt-get install apache2 -y
apt-get install unzip -y

echo "Copiando os arquivos para a aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

