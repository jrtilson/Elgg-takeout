<?php
/**
 * Elgg Takeout Installer Script
 * 
 * Sets up Elgg DB and creates settings files (settings.php and .htaccess)
 */

// Suppress notices
ini_set('error_reporting',E_ALL ^ E_NOTICE);

// change to true to run this script. Change back to false when done.
$enabled = true;

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


// Do not edit below this line. //////////////////////////////


if (!$enabled) {
	echo "To enable this script, change \$enabled to true.\n";
	echo "You *must* disable this script after a successful installation.\n";
	exit;
}

if (PHP_SAPI !== 'cli') {
	echo "You must use the command line to run this script.";
	exit;
}

require_once dirname(dirname(__FILE__)) . "/elgg/autoloader.php";

$installer = new ElggInstaller();

// install and create the .htaccess file
$installer->batchInstall($params, TRUE);

echo "\nWarning: You *must* disable this script by setting \$enabled = false;.\n";
echo "Leaving this script enabled could endanger your installation.\n";
