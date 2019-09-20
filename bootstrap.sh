#Update Packages
apt-get update

#Upgrade Packages
apt-get upgrade
sudo do-release-upgrade -f DistUpgradeViewNonInteractive

#Install Git
apt-get install -y git

#Install Apache
apt-get install -y apache2

#Enable Apache Mods
a2enmod rewrite

#Add Ondrej PPA Repo
apt-add-repository ppa:ondrej/php
apt-get update

#Install PHP
apt-get install -y php7.3

#PHP Apache Mod
apt-get install -y libapache2-mod-php7.3

#Restart Apache
sudo service apache2 restart

#Install PHP Mods
apt-get install -y php7.3-common
apt-get install -y php7.3-mcrypt
apt-get install -y php7.3-zip

#Set MYSQL Pass for user root
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

#Install MYSQL
apt-get install -y mysql-server

#PHP-MYSQL lib
apt-get install -y php7.3-mysql

#Restart Apache
sudo service apache2 restart
