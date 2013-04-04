#!/usr/bin/env bash

VAGRANT_HOME="/home/vagrant"
BOOTSTRAP_ROOT="$VAGRANT_HOME/.vagrantboostrap"

ELGG_VERSION="1.8.14"

# Make sure bootstrap root exists
if [ ! -d $BOOTSTRAP_ROOT ];
then
	mkdir $BOOTSTRAP_ROOT
fi

# LAMP Install
if [ ! -f "$BOOTSTRAP_ROOT/LAMP" ];
then
	touch "$BOOTSTRAP_ROOT/LAMP"

	# Update first
	sudo apt-get update

	# MySQL set root pwd
	sudo debconf-set-selections <<< 'mysql-server-5.5  mysql-server/root_password password root'
	sudo debconf-set-selections <<< 'mysql-server-5.5  mysql-server/root_password_again password root'
	sudo apt-get -y install mysql-server

	# Install apache/php etc.
	apt-get install vim apache2 php5 libapache2-mod-php5 php5-mysql php5-gd php5-curl unzip imagemagick git-core -y
	
	# Enable modules
	sudo a2enmod rewrite
	sudo a2enmod headers
	sudo a2enmod expires

	# Change port in ports.conf
	sed 's/80/8080/' /etc/apache2/ports.conf 1> $VAGRANT_HOME/ports.conf
	mv $VAGRANT_HOME/ports.conf /etc/apache2/ports.conf

	# Change port in default site
	# sed 's/80/8080/' /etc/apache2/sites-available/default 1> $VAGRANT_HOME/default
	# mv $VAGRANT_HOME/default /etc/apache2/sites-available/default

	service apache2 restart
fi

# Elgg Install
if [ ! -f "$BOOTSTRAP_ROOT/elgg" ];
then

	touch "$BOOTSTRAP_ROOT/elgg"

	# Checkout Elgg
	git clone git://github.com/Elgg/Elgg.git $VAGRANT_HOME/elgg/current
	
	# Get latest stable tag
	cd $VAGRANT_HOME/elgg/current
	git checkout $ELGG_VERSION

	# Set permissions on elgg directory
	chown vagrant:vagrant -R $VAGRANT_HOME/elgg

	# Create elgg data folder, set permissions
	mkdir $VAGRANT_HOME/elgg/current_data
	chown www-data:www-data -R $VAGRANT_HOME/elgg/current_data

	rm -rf /var/www
	ln -s $VAGRANT_HOME/elgg/current /var/www

	cp /vagrant/config_files/htaccess_dist $VAGRANT_HOME/elgg/current/.htaccess
	cp /vagrant/config_files/settings.php $VAGRANT_HOME/elgg/current/engine/settings.php
	cp /vagrant/config_files/default /etc/apache2/sites-available/default

	mysql -u root -proot <<< "CREATE DATABASE elgg_1_8_14;"
	mysql -u root -proot elgg_1_8_14 < /vagrant/config_files/db.sql

	service apache2 reload
fi

