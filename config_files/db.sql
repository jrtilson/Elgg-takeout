-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: elgg_1_8_14
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `elgg_access_collection_membership`
--

DROP TABLE IF EXISTS `elgg_access_collection_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collection_membership`
--

LOCK TABLES `elgg_access_collection_membership` WRITE;
/*!40000 ALTER TABLE `elgg_access_collection_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collection_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_access_collections`
--

DROP TABLE IF EXISTS `elgg_access_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collections`
--

LOCK TABLES `elgg_access_collections` WRITE;
/*!40000 ALTER TABLE `elgg_access_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_annotations`
--

DROP TABLE IF EXISTS `elgg_annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_annotations`
--

LOCK TABLES `elgg_annotations` WRITE;
/*!40000 ALTER TABLE `elgg_annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_api_users`
--

DROP TABLE IF EXISTS `elgg_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_api_users`
--

LOCK TABLES `elgg_api_users` WRITE;
/*!40000 ALTER TABLE `elgg_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_config`
--

DROP TABLE IF EXISTS `elgg_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_config`
--

LOCK TABLES `elgg_config` WRITE;
/*!40000 ALTER TABLE `elgg_config` DISABLE KEYS */;
INSERT INTO `elgg_config` VALUES ('view','s:7:\"default\";',1),('language','s:2:\"en\";',1),('default_access','s:1:\"2\";',1),('allow_registration','b:1;',1),('walled_garden','b:0;',1),('allow_user_default_access','i:0;',1);
/*!40000 ALTER TABLE `elgg_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_datalists`
--

DROP TABLE IF EXISTS `elgg_datalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_datalists`
--

LOCK TABLES `elgg_datalists` WRITE;
/*!40000 ALTER TABLE `elgg_datalists` DISABLE KEYS */;
INSERT INTO `elgg_datalists` VALUES ('filestore_run_once','1365196726'),('plugin_run_once','1365196726'),('elgg_widget_run_once','1365196726'),('installed','1365196769'),('path','/home/vagrant/elgg/current_root/'),('dataroot','/home/vagrant/elgg/data_1_8_14/'),('default_site','1'),('version','2013030600'),('simplecache_enabled','0'),('system_cache_enabled','0'),('processed_upgrades','a:41:{i:0;s:14:\"2008100701.php\";i:1;s:14:\"2008101303.php\";i:2;s:14:\"2009022701.php\";i:3;s:14:\"2009041701.php\";i:4;s:14:\"2009070101.php\";i:5;s:14:\"2009102801.php\";i:6;s:14:\"2010010501.php\";i:7;s:14:\"2010033101.php\";i:8;s:14:\"2010040201.php\";i:9;s:14:\"2010052601.php\";i:10;s:14:\"2010060101.php\";i:11;s:14:\"2010060401.php\";i:12;s:14:\"2010061501.php\";i:13;s:14:\"2010062301.php\";i:14;s:14:\"2010062302.php\";i:15;s:14:\"2010070301.php\";i:16;s:14:\"2010071001.php\";i:17;s:14:\"2010071002.php\";i:18;s:14:\"2010111501.php\";i:19;s:14:\"2010121601.php\";i:20;s:14:\"2010121602.php\";i:21;s:14:\"2010121701.php\";i:22;s:14:\"2010123101.php\";i:23;s:14:\"2011010101.php\";i:24;s:61:\"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php\";i:25;s:61:\"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php\";i:26;s:60:\"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php\";i:27;s:51:\"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php\";i:28;s:57:\"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php\";i:29;s:61:\"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php\";i:30;s:59:\"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php\";i:31;s:14:\"2011052801.php\";i:32;s:60:\"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php\";i:33;s:62:\"2011092500-1.8.0.1-forum_reply_river_view-5758ce8d86ac56ce.php\";i:34;s:54:\"2011123100-1.8.2-fix_friend_river-b17e7ff8345c2269.php\";i:35;s:53:\"2011123101-1.8.2-fix_blog_status-b14c2a0e7b9e7d55.php\";i:36;s:50:\"2012012000-1.8.3-ip_in_syslog-87fe0f068cf62428.php\";i:37;s:50:\"2012012100-1.8.3-system_cache-93100e7d55a24a11.php\";i:38;s:59:\"2012041800-1.8.3-dont_filter_passwords-c0ca4a18b38ae2bc.php\";i:39;s:58:\"2012041801-1.8.3-multiple_user_tokens-852225f7fd89f6c5.php\";i:40;s:59:\"2013030600-1.8.13-update_user_location-8999eb8bf1bdd9a3.php\";}'),('admin_registered','1'),('simplecache_lastupdate_default','1365196802'),('simplecache_lastcached_default','1365196802'),('__site_secret__','ea5223591e8a17f398e32e098d8bb013');
/*!40000 ALTER TABLE `elgg_datalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entities`
--

DROP TABLE IF EXISTS `elgg_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entities`
--

LOCK TABLES `elgg_entities` WRITE;
/*!40000 ALTER TABLE `elgg_entities` DISABLE KEYS */;
INSERT INTO `elgg_entities` VALUES (1,'site',0,0,1,0,2,1365196769,1365196811,1365196769,'yes'),(2,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(3,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(4,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(5,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(6,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(7,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(8,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(9,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(10,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(11,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(12,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(13,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(14,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(15,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(16,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(17,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(18,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(19,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(20,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(21,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(22,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(23,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(24,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(25,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(26,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(27,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(28,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(29,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(30,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(31,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(32,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(33,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(34,'object',2,1,1,1,2,1365196769,1365196769,1365196769,'yes'),(35,'user',0,0,1,0,2,1365196799,1365197609,1365197572,'yes'),(36,'object',3,35,1,35,0,1365196799,1365196799,1365196799,'yes'),(37,'object',3,35,1,35,0,1365196799,1365196799,1365196799,'yes'),(38,'object',3,35,1,35,0,1365196799,1365196799,1365196799,'yes'),(39,'object',3,35,1,35,0,1365196799,1365196799,1365196799,'yes'),(40,'object',3,35,1,35,0,1365196799,1365196799,1365196799,'yes'),(41,'object',1,35,1,35,2,1365196969,1365196969,1365196969,'yes'),(42,'object',5,35,1,35,2,1365197052,1365197052,1365197052,'yes'),(43,'object',5,35,1,35,2,1365197094,1365197094,1365197094,'yes');
/*!40000 ALTER TABLE `elgg_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_relationships`
--

DROP TABLE IF EXISTS `elgg_entity_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_relationships`
--

LOCK TABLES `elgg_entity_relationships` WRITE;
/*!40000 ALTER TABLE `elgg_entity_relationships` DISABLE KEYS */;
INSERT INTO `elgg_entity_relationships` VALUES (1,2,'active_plugin',1,1365196769),(2,3,'active_plugin',1,1365196769),(3,11,'active_plugin',1,1365196769),(4,12,'active_plugin',1,1365196769),(5,13,'active_plugin',1,1365196769),(6,14,'active_plugin',1,1365196769),(7,15,'active_plugin',1,1365196769),(8,16,'active_plugin',1,1365196769),(9,17,'active_plugin',1,1365196769),(10,18,'active_plugin',1,1365196769),(11,19,'active_plugin',1,1365196769),(12,20,'active_plugin',1,1365196769),(13,21,'active_plugin',1,1365196769),(14,22,'active_plugin',1,1365196769),(15,24,'active_plugin',1,1365196769),(16,25,'active_plugin',1,1365196769),(17,26,'active_plugin',1,1365196769),(18,27,'active_plugin',1,1365196769),(19,29,'active_plugin',1,1365196769),(20,30,'active_plugin',1,1365196769),(21,33,'active_plugin',1,1365196769),(22,34,'active_plugin',1,1365196769),(23,35,'member_of_site',1,1365196799);
/*!40000 ALTER TABLE `elgg_entity_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_subtypes`
--

DROP TABLE IF EXISTS `elgg_entity_subtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_subtypes`
--

LOCK TABLES `elgg_entity_subtypes` WRITE;
/*!40000 ALTER TABLE `elgg_entity_subtypes` DISABLE KEYS */;
INSERT INTO `elgg_entity_subtypes` VALUES (1,'object','file','ElggFile'),(2,'object','plugin','ElggPlugin'),(3,'object','widget','ElggWidget'),(4,'object','blog','ElggBlog'),(5,'object','thewire','ElggWire');
/*!40000 ALTER TABLE `elgg_entity_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_geocode_cache`
--

DROP TABLE IF EXISTS `elgg_geocode_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_geocode_cache`
--

LOCK TABLES `elgg_geocode_cache` WRITE;
/*!40000 ALTER TABLE `elgg_geocode_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_groups_entity`
--

DROP TABLE IF EXISTS `elgg_groups_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_groups_entity`
--

LOCK TABLES `elgg_groups_entity` WRITE;
/*!40000 ALTER TABLE `elgg_groups_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_groups_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_hmac_cache`
--

DROP TABLE IF EXISTS `elgg_hmac_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_hmac_cache`
--

LOCK TABLES `elgg_hmac_cache` WRITE;
/*!40000 ALTER TABLE `elgg_hmac_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_hmac_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metadata`
--

DROP TABLE IF EXISTS `elgg_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metadata`
--

LOCK TABLES `elgg_metadata` WRITE;
/*!40000 ALTER TABLE `elgg_metadata` DISABLE KEYS */;
INSERT INTO `elgg_metadata` VALUES (1,1,1,2,'text',0,2,1365196769,'yes'),(2,35,3,4,'text',35,2,1365196799,'yes'),(3,35,5,4,'text',0,2,1365196799,'yes'),(4,35,6,7,'text',0,2,1365196799,'yes'),(15,41,20,21,'text',35,2,1365196969,'yes'),(16,41,22,23,'text',35,2,1365196969,'yes'),(17,41,24,25,'text',35,2,1365196969,'yes'),(18,41,26,27,'text',35,2,1365196969,'yes'),(19,41,28,29,'text',35,2,1365196969,'yes'),(20,41,30,31,'text',35,2,1365196969,'yes'),(21,41,32,33,'text',35,2,1365196969,'yes'),(22,42,34,35,'text',35,2,1365197052,'yes'),(23,42,36,37,'integer',35,2,1365197052,'yes'),(24,43,34,35,'text',35,2,1365197094,'yes'),(25,43,36,38,'integer',35,2,1365197094,'yes');
/*!40000 ALTER TABLE `elgg_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metastrings`
--

DROP TABLE IF EXISTS `elgg_metastrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metastrings`
--

LOCK TABLES `elgg_metastrings` WRITE;
/*!40000 ALTER TABLE `elgg_metastrings` DISABLE KEYS */;
INSERT INTO `elgg_metastrings` VALUES (1,'email'),(2,'admin@localhost.local'),(3,'notification:method:email'),(4,'1'),(5,'validated'),(6,'validated_method'),(7,'admin_user'),(8,'x1'),(9,'0'),(10,'x2'),(11,'y1'),(12,'y2'),(13,'icontime'),(14,'1365196858'),(15,'1365196873'),(16,'11'),(17,'286'),(18,'10'),(19,'285'),(20,'tags'),(21,''),(22,'filename'),(23,'file/1365196969readme.txt'),(24,'mimetype'),(25,'text/plain'),(26,'originalfilename'),(27,'README.txt'),(28,'simpletype'),(29,'document'),(30,'filestore::dir_root'),(31,'/home/vagrant/elgg/data_1_8_14/'),(32,'filestore::filestore'),(33,'ElggDiskFilestore'),(34,'method'),(35,'site'),(36,'wire_thread'),(37,'42'),(38,'43'),(39,'1365197565'),(40,'1365197572');
/*!40000 ALTER TABLE `elgg_metastrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_objects_entity`
--

DROP TABLE IF EXISTS `elgg_objects_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_objects_entity`
--

LOCK TABLES `elgg_objects_entity` WRITE;
/*!40000 ALTER TABLE `elgg_objects_entity` DISABLE KEYS */;
INSERT INTO `elgg_objects_entity` VALUES (2,'blog',''),(3,'bookmarks',''),(4,'categories',''),(5,'custom_index',''),(6,'dashboard',''),(7,'developers',''),(8,'diagnostics',''),(9,'embed',''),(10,'externalpages',''),(11,'file',''),(12,'garbagecollector',''),(13,'groups',''),(14,'htmlawed',''),(15,'invitefriends',''),(16,'likes',''),(17,'logbrowser',''),(18,'logrotate',''),(19,'members',''),(20,'messageboard',''),(21,'messages',''),(22,'notifications',''),(23,'oauth_api',''),(24,'pages',''),(25,'profile',''),(26,'reportedcontent',''),(27,'search',''),(28,'tagcloud',''),(29,'thewire',''),(30,'tinymce',''),(31,'twitter',''),(32,'twitter_api',''),(33,'uservalidationbyemail',''),(34,'zaudio',''),(36,'',''),(37,'',''),(38,'',''),(39,'',''),(40,'',''),(41,'Readme!',''),(42,'','Login with: \r\n\r\nusername: admin\r\npassword: administrator'),(43,'','Login: admin / administrator');
/*!40000 ALTER TABLE `elgg_objects_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_private_settings`
--

DROP TABLE IF EXISTS `elgg_private_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_private_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_private_settings`
--

LOCK TABLES `elgg_private_settings` WRITE;
/*!40000 ALTER TABLE `elgg_private_settings` DISABLE KEYS */;
INSERT INTO `elgg_private_settings` VALUES (1,2,'elgg:internal:priority','1'),(2,3,'elgg:internal:priority','2'),(3,4,'elgg:internal:priority','3'),(4,5,'elgg:internal:priority','4'),(5,6,'elgg:internal:priority','5'),(6,7,'elgg:internal:priority','6'),(7,8,'elgg:internal:priority','7'),(8,9,'elgg:internal:priority','8'),(9,10,'elgg:internal:priority','9'),(10,11,'elgg:internal:priority','10'),(11,12,'elgg:internal:priority','11'),(12,13,'elgg:internal:priority','12'),(13,14,'elgg:internal:priority','13'),(14,15,'elgg:internal:priority','14'),(15,16,'elgg:internal:priority','15'),(16,17,'elgg:internal:priority','16'),(17,18,'elgg:internal:priority','17'),(18,19,'elgg:internal:priority','18'),(19,20,'elgg:internal:priority','19'),(20,21,'elgg:internal:priority','20'),(21,22,'elgg:internal:priority','21'),(22,23,'elgg:internal:priority','22'),(23,24,'elgg:internal:priority','23'),(24,25,'elgg:internal:priority','24'),(25,26,'elgg:internal:priority','25'),(26,27,'elgg:internal:priority','26'),(27,28,'elgg:internal:priority','27'),(28,29,'elgg:internal:priority','28'),(29,30,'elgg:internal:priority','29'),(30,31,'elgg:internal:priority','30'),(31,32,'elgg:internal:priority','31'),(32,33,'elgg:internal:priority','32'),(33,34,'elgg:internal:priority','33'),(34,36,'handler','control_panel'),(35,36,'context','admin'),(36,36,'column','1'),(37,36,'order','0'),(38,37,'handler','admin_welcome'),(39,37,'context','admin'),(40,37,'order','10'),(41,37,'column','1'),(42,38,'handler','online_users'),(43,38,'context','admin'),(44,38,'column','2'),(45,38,'order','0'),(46,39,'handler','new_users'),(47,39,'context','admin'),(48,39,'order','10'),(49,39,'column','2'),(50,40,'handler','content_stats'),(51,40,'context','admin'),(52,40,'order','20'),(53,40,'column','2'),(54,38,'num_display','8'),(55,39,'num_display','5'),(56,40,'num_display','8');
/*!40000 ALTER TABLE `elgg_private_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_river`
--

DROP TABLE IF EXISTS `elgg_river`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_river`
--

LOCK TABLES `elgg_river` WRITE;
/*!40000 ALTER TABLE `elgg_river` DISABLE KEYS */;
INSERT INTO `elgg_river` VALUES (5,'object','thewire','create',2,'river/object/thewire/create',35,43,0,1365197094);
/*!40000 ALTER TABLE `elgg_river` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_sites_entity`
--

DROP TABLE IF EXISTS `elgg_sites_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_sites_entity`
--

LOCK TABLES `elgg_sites_entity` WRITE;
/*!40000 ALTER TABLE `elgg_sites_entity` DISABLE KEYS */;
INSERT INTO `elgg_sites_entity` VALUES (1,'Elgg Vagrant','','http://127.0.0.1:8080/');
/*!40000 ALTER TABLE `elgg_sites_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_system_log`
--

DROP TABLE IF EXISTS `elgg_system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_system_log`
--

LOCK TABLES `elgg_system_log` WRITE;
/*!40000 ALTER TABLE `elgg_system_log` DISABLE KEYS */;
INSERT INTO `elgg_system_log` VALUES (1,2,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(2,3,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(3,4,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(4,5,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(5,6,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(6,7,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(7,8,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(8,9,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(9,10,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(10,11,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(11,12,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(12,13,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(13,14,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(14,15,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(15,16,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(16,17,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(17,18,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(18,19,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(19,20,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(20,21,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(21,22,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(22,23,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(23,24,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(24,25,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(25,26,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(26,27,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(27,28,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(28,29,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(29,30,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(30,31,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(31,32,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(32,33,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(33,34,'ElggPlugin','object','plugin','create',0,1,2,'yes',1365196769,'10.0.2.2'),(34,1,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1365196769,'10.0.2.2'),(35,23,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1365196799,'10.0.2.2'),(36,35,'ElggUser','user','','create',0,0,2,'yes',1365196799,'10.0.2.2'),(37,2,'ElggMetadata','metadata','notification:method:email','create',0,35,2,'yes',1365196799,'10.0.2.2'),(38,36,'ElggWidget','object','widget','create',0,35,0,'yes',1365196799,'10.0.2.2'),(39,37,'ElggWidget','object','widget','create',0,35,0,'yes',1365196799,'10.0.2.2'),(40,38,'ElggWidget','object','widget','create',0,35,0,'yes',1365196799,'10.0.2.2'),(41,39,'ElggWidget','object','widget','create',0,35,0,'yes',1365196799,'10.0.2.2'),(42,40,'ElggWidget','object','widget','create',0,35,0,'yes',1365196799,'10.0.2.2'),(43,35,'ElggUser','user','','make_admin',0,0,2,'yes',1365196799,'10.0.2.2'),(44,3,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1365196799,'10.0.2.2'),(45,4,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1365196799,'10.0.2.2'),(46,35,'ElggUser','user','','update',35,0,2,'yes',1365196799,'10.0.2.2'),(47,35,'ElggUser','user','','login',35,0,2,'yes',1365196799,'10.0.2.2'),(48,1,'ElggSite','site','','update',35,0,2,'yes',1365196811,'10.0.2.2'),(49,5,'ElggMetadata','metadata','x1','create',35,35,2,'yes',1365196858,'10.0.2.2'),(50,6,'ElggMetadata','metadata','x2','create',35,35,2,'yes',1365196858,'10.0.2.2'),(51,7,'ElggMetadata','metadata','y1','create',35,35,2,'yes',1365196858,'10.0.2.2'),(52,8,'ElggMetadata','metadata','y2','create',35,35,2,'yes',1365196858,'10.0.2.2'),(53,9,'ElggMetadata','metadata','icontime','create',35,35,2,'yes',1365196858,'10.0.2.2'),(54,35,'ElggUser','user','','profileiconupdate',35,0,2,'yes',1365196858,'10.0.2.2'),(55,9,'ElggMetadata','metadata','icontime','delete',35,35,2,'yes',1365196873,'10.0.2.2'),(56,10,'ElggMetadata','metadata','icontime','create',35,35,2,'yes',1365196873,'10.0.2.2'),(57,5,'ElggMetadata','metadata','x1','delete',35,35,2,'yes',1365196873,'10.0.2.2'),(58,11,'ElggMetadata','metadata','x1','create',35,35,2,'yes',1365196873,'10.0.2.2'),(59,6,'ElggMetadata','metadata','x2','delete',35,35,2,'yes',1365196873,'10.0.2.2'),(60,12,'ElggMetadata','metadata','x2','create',35,35,2,'yes',1365196873,'10.0.2.2'),(61,7,'ElggMetadata','metadata','y1','delete',35,35,2,'yes',1365196873,'10.0.2.2'),(62,13,'ElggMetadata','metadata','y1','create',35,35,2,'yes',1365196873,'10.0.2.2'),(63,8,'ElggMetadata','metadata','y2','delete',35,35,2,'yes',1365196873,'10.0.2.2'),(64,14,'ElggMetadata','metadata','y2','create',35,35,2,'yes',1365196873,'10.0.2.2'),(65,15,'ElggMetadata','metadata','tags','create',35,35,2,'yes',1365196969,'10.0.2.2'),(66,16,'ElggMetadata','metadata','filename','create',35,35,2,'yes',1365196969,'10.0.2.2'),(67,17,'ElggMetadata','metadata','mimetype','create',35,35,2,'yes',1365196969,'10.0.2.2'),(68,18,'ElggMetadata','metadata','originalfilename','create',35,35,2,'yes',1365196969,'10.0.2.2'),(69,19,'ElggMetadata','metadata','simpletype','create',35,35,2,'yes',1365196969,'10.0.2.2'),(70,41,'ElggFile','object','file','create',35,35,2,'yes',1365196969,'10.0.2.2'),(71,20,'ElggMetadata','metadata','filestore::dir_root','create',35,35,2,'yes',1365196969,'10.0.2.2'),(72,21,'ElggMetadata','metadata','filestore::filestore','create',35,35,2,'yes',1365196969,'10.0.2.2'),(73,35,'ElggUser','user','','logout',35,0,2,'yes',1365197009,'10.0.2.2'),(74,35,'ElggUser','user','','update',35,0,2,'yes',1365197009,'10.0.2.2'),(75,35,'ElggUser','user','','update',35,0,2,'yes',1365197021,'10.0.2.2'),(76,35,'ElggUser','user','','login',35,0,2,'yes',1365197021,'10.0.2.2'),(77,22,'ElggMetadata','metadata','method','create',35,35,2,'yes',1365197052,'10.0.2.2'),(78,42,'ElggWire','object','thewire','create',35,35,2,'yes',1365197052,'10.0.2.2'),(79,23,'ElggMetadata','metadata','wire_thread','create',35,35,2,'yes',1365197052,'10.0.2.2'),(80,24,'ElggMetadata','metadata','method','create',35,35,2,'yes',1365197094,'10.0.2.2'),(81,43,'ElggWire','object','thewire','create',35,35,2,'yes',1365197094,'10.0.2.2'),(82,25,'ElggMetadata','metadata','wire_thread','create',35,35,2,'yes',1365197094,'10.0.2.2'),(83,35,'ElggUser','user','','logout',35,0,2,'yes',1365197100,'10.0.2.2'),(84,35,'ElggUser','user','','update',35,0,2,'yes',1365197100,'10.0.2.2'),(85,35,'ElggUser','user','','update',35,0,2,'yes',1365197115,'10.0.2.2'),(86,35,'ElggUser','user','','login',35,0,2,'yes',1365197115,'10.0.2.2'),(87,35,'ElggUser','user','','logout',35,0,2,'yes',1365197126,'10.0.2.2'),(88,35,'ElggUser','user','','update',35,0,2,'yes',1365197126,'10.0.2.2'),(89,35,'ElggUser','user','','update',35,0,2,'yes',1365197529,'10.0.2.2'),(90,35,'ElggUser','user','','login',35,0,2,'yes',1365197529,'10.0.2.2'),(91,11,'ElggMetadata','metadata','x1','delete',35,35,2,'yes',1365197545,'10.0.2.2'),(92,12,'ElggMetadata','metadata','x2','delete',35,35,2,'yes',1365197545,'10.0.2.2'),(93,13,'ElggMetadata','metadata','y1','delete',35,35,2,'yes',1365197545,'10.0.2.2'),(94,14,'ElggMetadata','metadata','y2','delete',35,35,2,'yes',1365197545,'10.0.2.2'),(95,10,'ElggMetadata','metadata','icontime','delete',35,35,2,'yes',1365197545,'10.0.2.2'),(96,26,'ElggMetadata','metadata','x1','create',35,35,2,'yes',1365197565,'10.0.2.2'),(97,27,'ElggMetadata','metadata','x2','create',35,35,2,'yes',1365197565,'10.0.2.2'),(98,28,'ElggMetadata','metadata','y1','create',35,35,2,'yes',1365197565,'10.0.2.2'),(99,29,'ElggMetadata','metadata','y2','create',35,35,2,'yes',1365197565,'10.0.2.2'),(100,30,'ElggMetadata','metadata','icontime','create',35,35,2,'yes',1365197565,'10.0.2.2'),(101,35,'ElggUser','user','','profileiconupdate',35,0,2,'yes',1365197565,'10.0.2.2'),(102,30,'ElggMetadata','metadata','icontime','delete',35,35,2,'yes',1365197572,'10.0.2.2'),(103,31,'ElggMetadata','metadata','icontime','create',35,35,2,'yes',1365197572,'10.0.2.2'),(104,26,'ElggMetadata','metadata','x1','delete',35,35,2,'yes',1365197572,'10.0.2.2'),(105,32,'ElggMetadata','metadata','x1','create',35,35,2,'yes',1365197572,'10.0.2.2'),(106,27,'ElggMetadata','metadata','x2','delete',35,35,2,'yes',1365197572,'10.0.2.2'),(107,33,'ElggMetadata','metadata','x2','create',35,35,2,'yes',1365197572,'10.0.2.2'),(108,28,'ElggMetadata','metadata','y1','delete',35,35,2,'yes',1365197572,'10.0.2.2'),(109,34,'ElggMetadata','metadata','y1','create',35,35,2,'yes',1365197572,'10.0.2.2'),(110,29,'ElggMetadata','metadata','y2','delete',35,35,2,'yes',1365197572,'10.0.2.2'),(111,35,'ElggMetadata','metadata','y2','create',35,35,2,'yes',1365197572,'10.0.2.2'),(112,32,'ElggMetadata','metadata','x1','delete',35,35,2,'yes',1365197580,'10.0.2.2'),(113,33,'ElggMetadata','metadata','x2','delete',35,35,2,'yes',1365197580,'10.0.2.2'),(114,34,'ElggMetadata','metadata','y1','delete',35,35,2,'yes',1365197580,'10.0.2.2'),(115,35,'ElggMetadata','metadata','y2','delete',35,35,2,'yes',1365197580,'10.0.2.2'),(116,31,'ElggMetadata','metadata','icontime','delete',35,35,2,'yes',1365197580,'10.0.2.2'),(117,35,'ElggUser','user','','logout',35,0,2,'yes',1365197588,'10.0.2.2'),(118,35,'ElggUser','user','','update',35,0,2,'yes',1365197588,'10.0.2.2'),(119,35,'ElggUser','user','','update',35,0,2,'yes',1365197599,'10.0.2.2'),(120,35,'ElggUser','user','','login',35,0,2,'yes',1365197599,'10.0.2.2'),(121,35,'ElggUser','user','','logout',35,0,2,'yes',1365197609,'10.0.2.2'),(122,35,'ElggUser','user','','update',35,0,2,'yes',1365197609,'10.0.2.2');
/*!40000 ALTER TABLE `elgg_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_apisessions`
--

DROP TABLE IF EXISTS `elgg_users_apisessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_apisessions`
--

LOCK TABLES `elgg_users_apisessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_apisessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_apisessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_entity`
--

DROP TABLE IF EXISTS `elgg_users_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `code` (`code`),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_entity`
--

LOCK TABLES `elgg_users_entity` WRITE;
/*!40000 ALTER TABLE `elgg_users_entity` DISABLE KEYS */;
INSERT INTO `elgg_users_entity` VALUES (35,'Administrator','admin','21697ebaf99d733b194749c425b041da','bfb5c358','admin@localhost.local','en','','no','yes',1365197608,1365197608,1365197599,1365197529);
/*!40000 ALTER TABLE `elgg_users_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_sessions`
--

DROP TABLE IF EXISTS `elgg_users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_sessions`
--

LOCK TABLES `elgg_users_sessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_sessions` DISABLE KEYS */;
INSERT INTO `elgg_users_sessions` VALUES ('fmu0fkh9baso36hnikk2g5ro33',1365197013,'__elgg_session|s:32:\"c646aedddf18d23b0289067ca7463f87\";msg|a:0:{}'),('k004mv0kjm1mroa4h3mn1vb652',1365197104,'__elgg_session|s:32:\"b5c60e9a82260afed447309c405740ea\";msg|a:0:{}'),('lb4tkaul3b7cmn84sd4plii887',1365197129,'__elgg_session|s:32:\"fe4326c2846a2dd166773740ac444ee6\";msg|a:0:{}'),('461ue85c2g4bk88mcis9o71ib6',1365197520,'__elgg_session|s:32:\"e0fa3827eb44dad5a47b7b79a6088029\";msg|a:0:{}'),('pmhdla625n6i9ha111sjv11vs5',1365197591,'__elgg_session|s:32:\"6978a4dbdda41cbaf2a89b4667207256\";msg|a:0:{}'),('rd87rcamr44mqf9cfjt07r8d56',1365197612,'__elgg_session|s:32:\"6a4bf70374699b975b40bbea2919cf7a\";msg|a:0:{}');
/*!40000 ALTER TABLE `elgg_users_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-05 21:34:04
