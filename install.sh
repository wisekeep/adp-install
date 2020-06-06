#!/bin/bash
echo "--- Iniciando instalacao do ambiente de Desenvolvimento PHP ---"
echo "--- Atualizando lista de pacotes ---"
apt-get update

echo "--- Adicionando repositorio do pacote PHP ---"
add-apt-repository ppa:ondrej/php
apt-get update
apt-get upgrade -y

echo "--- Instalando Apache PHP 7.4 e alguns modulos ---"
apt-get install apache2

apt-get install apt-transport-https curl composer git git-flow perl libnet-ssleay-perl openssl 
apt-get install libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions
apt-get install php7.4 php7.4-cli php7.4-common php7.4-curl php7.4-dev php7.4-gd php-mbstring
apt-get install php7.4-mbstring php7.4-zip php7.4-xml php7.4-fpm libapache2-mod-php7.4 php-imagick
apt-get install php7.4-tidy php7.4-xmlrpc php7.4-intl php-xml php7.4-xml php7.4-gd php7.4-zip php7.4-bcmath php-pgsql php7.4-sqlite3

echo "--- Instalando Descompactadores ---"
apt-get install zip unzip p7zip-full

echo "--- Adicionando repositorio do PostgreSQL---"
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

apt-get update
apt-get upgrade -y
apt-get install postgresql pgadmin4 

echo "--- Instalando Banco SqLite3 ---" 
apt-get install sqlite3 sqlitebrowser

echo "--- Atualizando lista de pacotes ---"
apt-get update

echo "--- Habilitando o PHP 7.4 ---"
a2dismod php5 | a2dismod 7.0 | a2dismod 7.1 | a2dismod 7.2 | a2dismod 7.3 | a2enmod php7.4

echo "--- Habilitando mod-rewrite do Apache ---"
a2enmod rewrite
echo "--- Reiniciando Apache ---"
service apache2 restart
echo "--- Baixando e Instalando Composer ---"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo "--- Instalando Banco NoSQL -> Redis <- ---" 
apt-get install redis-server php7.4-redis

echo "--- Instalando Banco SqLite3 ---" 
apt-get install sqlite3 

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