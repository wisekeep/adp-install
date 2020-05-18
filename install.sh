#!/bin/bash
echo "--- Iniciando instalacao do ambiente de Desenvolvimento PHP ---"
echo "--- Atualizando lista de pacotes ---"
apt-get update

echo "--- Adicionando repositorio do pacote PHP ---"
add-apt-repository ppa:ondrej/php
apt-get update
apt-get upgrade -y

echo "--- Instalando Apache ,PHP 7.3 e alguns modulos ---"
apt-get install apache2

apt-get install apt-transport-https curl composer git git-flow perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python php7.3 php7.3-cli php7.3-common php7.3-curl php7.3-dev php7.3-gd php-mbstring php7.3-mbstring php7.3-zip php7.3-xml php7.3-fpm libapache2-mod-php7.3 php-imagick php7.3-recode php7.3-tidy php7.3-xmlrpc php7.3-intl php-xml php7.3-xml php7.3-gd php7.3-zip php7.3-bcmath php-pgsql php7.3-sqlite3 zip unzip 

echo "--- Adicionando repositorio do PostgreSQL---"
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
apt-get update
apt-get upgrade -y
apt-get install postgresql pgadmin4 

echo "--- Instalando Banco SqLite3 ---" 
apt-get install sqlite3 sqlitebrowser


echo "--- Atualizando lista de pacotes ---"
apt-get update

echo "--- Habilitando o PHP 7.3 ---"
a2dismod php5 | a2dismod 7.0 | a2dismod 7.1 | a2dismod 7.2 | a2enmod php7.3

echo "--- Habilitando mod-rewrite do Apache ---"
a2enmod rewrite
echo "--- Reiniciando Apache ---"
service apache2 restart
echo "--- Baixando e Instalando Composer ---"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo "--- Instalando Banco NoSQL -> Redis <- ---" 
apt-get install redis-server php7.3-redis

echo "--- Instalando Banco SqLite3 ---" 
apt-get install sqlite3 php7.3-sqlite3

# Instale apartir daqui o que você desejar 

service apache2 restart
apt-get update && sudo apt-get upgrade -y
apt-get autoremove

wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
echo "deb http://download.webmin.com/download/repository sarge contrib" | sudo tee -a /etc/apt/sources.list
apt-get update
apt install webmin  npm
snap install sublime-text --classic
apt install net-tools xclip

echo "[OK]"
