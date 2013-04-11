<?php
/**
 * Elgg Takeout Installer Script
 * 
 * Sets up Elgg DB and creates settings files (settings.php and .htaccess)
 */

if (PHP_SAPI !== 'cli') {
	echo "You must use the command line to run this script.";
	exit;
}

require_once(dirname(dirname(__FILE__)) . "/elgg/install/ElggInstaller.php");

$installer = new ElggInstaller();

// none of the following may be empty
$params = array(
	// database parameters
	'dbuser' => 'root',
	'dbpassword' => 'root',
	'dbname' => 'elgg',

	// site settings
	'sitename' => 'Elgg Vagrant',
	'siteemail' => 'admin@localhost.local',
	'wwwroot' => 'http://127.0.0.1:8080/',
	'dataroot' => '/home/vagrant/elgg/elgg_data/',

	// admin account
	'displayname' => 'Administrator',
	'email' => 'admin@localhost.local',
	'username' => 'admin',
	'password' => 'administrator',
);

// install and create the .htaccess file
$installer->batchInstall($params, TRUE);

// at this point installation has completed (otherwise an exception halted execution).