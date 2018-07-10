-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: mezzanine_mysql
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `achievement`
--

DROP TABLE IF EXISTS `achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `order` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement`
--

LOCK TABLES `achievement` WRITE;
/*!40000 ALTER TABLE `achievement` DISABLE KEYS */;
INSERT INTO `achievement` VALUES (2,'MIT Professional Education Program','Certificate for the \"Data Science: Data to Insights\" online course on Data Science and Machine Learning',1,'https://mitxpro.mit.edu/certificates/8c1eea3404c447968295be53c177a82b'),(5,'Online courses','Certificates (Coursera, Lynda) on programming, machine learning, and network science',5,'https://www.linkedin.com/public-profile/settings?trk=d_flagship3_profile_self_view_public_profile'),(7,'Tech articles','My articles on Developer Community, InterSystems\' online community for developers',6,'https://community.intersystems.com/user/14041/posts');
/*!40000 ALTER TABLE `achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add achievement',1,'add_achievement'),(2,'Can change achievement',1,'change_achievement'),(3,'Can delete achievement',1,'delete_achievement'),(4,'Can add education',2,'add_education'),(5,'Can change education',2,'change_education'),(6,'Can delete education',2,'delete_education'),(7,'Can add job accomplishment',3,'add_jobaccomplishment'),(8,'Can change job accomplishment',3,'change_jobaccomplishment'),(9,'Can delete job accomplishment',3,'delete_jobaccomplishment'),(10,'Can add job',4,'add_job'),(11,'Can change job',4,'change_job'),(12,'Can delete job',4,'delete_job'),(13,'Can add language',5,'add_language'),(14,'Can change language',5,'change_language'),(15,'Can delete language',5,'delete_language'),(16,'Can add overview',6,'add_overview'),(17,'Can change overview',6,'change_overview'),(18,'Can delete overview',6,'delete_overview'),(19,'Can add programming area',7,'add_programmingarea'),(20,'Can change programming area',7,'change_programmingarea'),(21,'Can delete programming area',7,'delete_programmingarea'),(22,'Can add programming language',8,'add_programminglanguage'),(23,'Can change programming language',8,'change_programminglanguage'),(24,'Can delete programming language',8,'delete_programminglanguage'),(25,'Can add publication',9,'add_publication'),(26,'Can change publication',9,'change_publication'),(27,'Can delete publication',9,'delete_publication'),(28,'Can add skill',10,'add_skill'),(29,'Can change skill',10,'change_skill'),(30,'Can delete skill',10,'delete_skill'),(31,'Can add skillset',11,'add_skillset'),(32,'Can change skillset',11,'change_skillset'),(33,'Can delete skillset',11,'delete_skillset'),(34,'Can add project type',12,'add_projecttype'),(35,'Can change project type',12,'change_projecttype'),(36,'Can delete project type',12,'delete_projecttype'),(37,'Can add project',13,'add_project'),(38,'Can change project',13,'change_project'),(39,'Can delete project',13,'delete_project'),(40,'Can add personal info',14,'add_personalinfo'),(41,'Can change personal info',14,'change_personalinfo'),(42,'Can delete personal info',14,'delete_personalinfo'),(43,'Can add category',15,'add_category'),(44,'Can change category',15,'change_category'),(45,'Can delete category',15,'delete_category'),(46,'Can add category relation',16,'add_categoryrelation'),(47,'Can change category relation',16,'change_categoryrelation'),(48,'Can delete category relation',16,'delete_categoryrelation'),(49,'Can add group',17,'add_group'),(50,'Can change group',17,'change_group'),(51,'Can delete group',17,'delete_group'),(52,'Can add permission',18,'add_permission'),(53,'Can change permission',18,'change_permission'),(54,'Can delete permission',18,'delete_permission'),(55,'Can add user',19,'add_user'),(56,'Can change user',19,'change_user'),(57,'Can delete user',19,'delete_user'),(58,'Can add content type',20,'add_contenttype'),(59,'Can change content type',20,'change_contenttype'),(60,'Can delete content type',20,'delete_contenttype'),(61,'Can add redirect',21,'add_redirect'),(62,'Can change redirect',21,'change_redirect'),(63,'Can delete redirect',21,'delete_redirect'),(64,'Can add session',22,'add_session'),(65,'Can change session',22,'change_session'),(66,'Can delete session',22,'delete_session'),(67,'Can add site',23,'add_site'),(68,'Can change site',23,'change_site'),(69,'Can delete site',23,'delete_site'),(70,'Can add Setting',24,'add_setting'),(71,'Can change Setting',24,'change_setting'),(72,'Can delete Setting',24,'delete_setting'),(73,'Can add Site permission',25,'add_sitepermission'),(74,'Can change Site permission',25,'change_sitepermission'),(75,'Can delete Site permission',25,'delete_sitepermission'),(76,'Can add Rating',26,'add_rating'),(77,'Can change Rating',26,'change_rating'),(78,'Can delete Rating',26,'delete_rating'),(79,'Can add assigned keyword',27,'add_assignedkeyword'),(80,'Can change assigned keyword',27,'change_assignedkeyword'),(81,'Can delete assigned keyword',27,'delete_assignedkeyword'),(82,'Can add Keyword',28,'add_keyword'),(83,'Can change Keyword',28,'change_keyword'),(84,'Can delete Keyword',28,'delete_keyword'),(85,'Can add Comment',29,'add_threadedcomment'),(86,'Can change Comment',29,'change_threadedcomment'),(87,'Can delete Comment',29,'delete_threadedcomment'),(88,'Can add Page',30,'add_page'),(89,'Can change Page',30,'change_page'),(90,'Can delete Page',30,'delete_page'),(91,'Can add Rich text page',31,'add_richtextpage'),(92,'Can change Rich text page',31,'change_richtextpage'),(93,'Can delete Rich text page',31,'delete_richtextpage'),(94,'Can add Link',32,'add_link'),(95,'Can change Link',32,'change_link'),(96,'Can delete Link',32,'delete_link'),(97,'Can add Blog Category',33,'add_blogcategory'),(98,'Can change Blog Category',33,'change_blogcategory'),(99,'Can delete Blog Category',33,'delete_blogcategory'),(100,'Can add Blog post',34,'add_blogpost'),(101,'Can change Blog post',34,'change_blogpost'),(102,'Can delete Blog post',34,'delete_blogpost'),(103,'Can add Form entry',35,'add_formentry'),(104,'Can change Form entry',35,'change_formentry'),(105,'Can delete Form entry',35,'delete_formentry'),(106,'Can add Form field entry',36,'add_fieldentry'),(107,'Can change Form field entry',36,'change_fieldentry'),(108,'Can delete Form field entry',36,'delete_fieldentry'),(109,'Can add Field',37,'add_field'),(110,'Can change Field',37,'change_field'),(111,'Can delete Field',37,'delete_field'),(112,'Can add Form',38,'add_form'),(113,'Can change Form',38,'change_form'),(114,'Can delete Form',38,'delete_form'),(115,'Can add Gallery',39,'add_gallery'),(116,'Can change Gallery',39,'change_gallery'),(117,'Can delete Gallery',39,'delete_gallery'),(118,'Can add Image',40,'add_galleryimage'),(119,'Can change Image',40,'change_galleryimage'),(120,'Can delete Image',40,'delete_galleryimage'),(121,'Can add Twitter query',41,'add_query'),(122,'Can change Twitter query',41,'change_query'),(123,'Can delete Twitter query',41,'delete_query'),(124,'Can add Tweet',42,'add_tweet'),(125,'Can change Tweet',42,'change_tweet'),(126,'Can delete Tweet',42,'delete_tweet'),(127,'Can add log entry',43,'add_logentry'),(128,'Can change log entry',43,'change_logentry'),(129,'Can delete log entry',43,'delete_logentry'),(130,'Can add comment flag',44,'add_commentflag'),(131,'Can change comment flag',44,'change_commentflag'),(132,'Can delete comment flag',44,'delete_commentflag'),(133,'Can add comment',45,'add_comment'),(134,'Can change comment',45,'change_comment'),(135,'Can delete comment',45,'delete_comment'),(136,'Can moderate comments',45,'can_moderate');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$T8LkxFqjchHI$2ziqaQ0cagVJ4qV+FpNymyq7HZSt0PM9XpiBrti5AHI=','2018-06-12 22:42:04.960000',1,'admin','','','',1,1,'2018-03-05 02:15:33.884000'),(2,'pbkdf2_sha256$30000$fdkK9qE6ZNTz$hEsEKV5GkznMcp9tovCFr+AcBDC+IjS4y6wXSJQFUiM=','2018-07-10 21:07:39.081289',1,'amarin','','','alessandromarin80@gmail.com',1,1,'2018-07-10 18:09:00.249336');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogcategory`
--

DROP TABLE IF EXISTS `blog_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogcategory_site_id_42b9c96d_fk_django_site_id` (`site_id`),
  CONSTRAINT `blog_blogcategory_site_id_42b9c96d_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogcategory`
--

LOCK TABLES `blog_blogcategory` WRITE;
/*!40000 ALTER TABLE `blog_blogcategory` DISABLE KEYS */;
INSERT INTO `blog_blogcategory` VALUES (1,'Bootstrap','bootstrap',1),(2,'CSS','css',1),(3,'Django','django',1),(4,'Python','python',1),(5,'HTML','html',1),(6,'InterSystems','intersystems',1),(7,'IRIS/Caché','iriscaché',1),(8,'DeepSee','deepsee',1),(9,'Javascript','javascript',1),(10,'Machine Learning','machine-learning',1),(11,'Mezzanine','mezzanine',1),(12,'PostgreSQL','postgresql',1),(13,'MySQL','mysql',1);
/*!40000 ALTER TABLE `blog_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogpost`
--

DROP TABLE IF EXISTS `blog_blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments_count` int(11) NOT NULL,
  `keywords_string` varchar(500) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime(6) DEFAULT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogpost_site_id_7995688f_fk_django_site_id` (`site_id`),
  KEY `blog_blogpost_user_id_12ed6b16_fk_auth_user_id` (`user_id`),
  KEY `blog_blogpost_publish_date_703abc16_uniq` (`publish_date`),
  CONSTRAINT `blog_blogpost_site_id_7995688f_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `blog_blogpost_user_id_12ed6b16_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogpost`
--

LOCK TABLES `blog_blogpost` WRITE;
/*!40000 ALTER TABLE `blog_blogpost` DISABLE KEYS */;
INSERT INTO `blog_blogpost` VALUES (1,0,'',0,0,0,'Anchor with no redirect','anchor-with-no-redirect','','http://arsalantamiz.blogspot.com/2008/10/html-anchor-tag-link-with-no.html',1,'2018-07-09 21:13:59.976624','2018-07-09 21:13:59.976624',1,'2018-07-09 21:13:59.974714',NULL,NULL,1,'<p style=\"margin: 0px 0px 10px; text-align: start;\"><a href=\"http://arsalantamiz.blogspot.com/2008/10/html-anchor-tag-link-with-no.html\" style=\"text-decoration: none;\">http://arsalantamiz.blogspot.com/2008/10/html-anchor-tag-link-with-no.html</a></p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\"></p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">Link to my page in LinkedIn got redirected from</p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\"><a href=\"https://www.linkedin.com/public-profile/settings?trk=d_flagship3_profile_self_view_public_profile\" style=\"text-decoration: none;\">https://www.linkedin.com/public-profile/settings?trk=d_flagship3_profile_self_view_public_profile</a></p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">to</p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">https://www.linkedin.com/feed/?trk=login_reg_redirect#certifications</p>\n<p></p>',1,'',1,1),(2,0,'',0,0,0,'Changing the author of a Mezzanine blog post','changing-the-author-of-a-mezzanine-blog-post','','When I started writing blog posts in the Mezzanine Django CMS, I logged in in the admin interface with the admin user and started typing away. Some time after that i realized I wanted to display the nlog posts with my username amarin. This is how I changed the username for those posts. The solution lies in Mezzanine\'s&nbsp;BlogPost class.',1,'2018-07-09 21:14:28.218131','2018-07-10 18:41:46.975281',2,'2018-07-09 21:14:28.000000',NULL,NULL,1,'<p style=\"margin: 0px 0px 10px; text-align: start;\">When I started writing blog posts in the <a href=\"http://mezzanine.jupo.org/\">Mezzanine Django CMS</a>, I logged in in the admin interface with the admin user and started typing away. Some time after that i realized I wanted to display the nlog posts with my username amarin. This is how I changed the username for those posts. The solution lies in Mezzanine\'s<span>&nbsp;</span><a href=\"https://github.com/stephenmcd/mezzanine/blob/master/mezzanine/blog/models.py#L11\" style=\"text-decoration: none;\">BlogPost class</a>.</p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">If you do not have it yet install<span>&nbsp;</span><a href=\"https://github.com/django-extensions/django-extensions\" style=\"text-decoration: none;\">django-extensions</a>, which is a great collection of extensions. Then use shell_plus and notice that it automatically imports all models:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">python manage.py shell_plus<br>...<br>from django.contrib.auth.models import Group, Permission, User<br>...<br>from mezzanine.blog.models import BlogCategory, BlogPost<br>&gt;&gt;&gt;</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">Then get an instance of BlogPost and look into it:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">&gt;&gt;&gt; b0=BlogPost.objects.all()[0]<br>&gt;&gt;&gt; b0.__dict__{\'short_url\': None, \'site_id\': 1, \'keywords_string\': u\'\', \'in_sitemap\': True, \'featured_image\': u\'\', \'_state\': &lt;django.db.models.base.ModelState object at 0x7fcb43429bd0&gt;, \'id\': 5, \'user_id\': 1, \'title\': u\'Changing the author of a Mezzanine blog post\', \'content\': u\'&lt;p&gt;Some text&lt;/p&gt;\', ....... }<br>&gt;&gt;&gt; b0.user_id<br>1<br>&gt;&gt;&gt; b0.user<br>&lt;User: admin&gt;</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">As you can see the first blog has admin as user with user_id = 1. Let\'s get two instances of the User class corresponding to admin and username:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">&gt;&gt;&gt; u0=User.objects.all()[0]<br>&gt;&gt;&gt; u1=User.objects.all()[1]<br>&gt;&gt;&gt; u0.username<br>u\'username\'<br>&gt;&gt;&gt; u1.username<br>u\'admin\'</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">Now you can change user in the BlogPost:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">&gt;&gt;&gt; b0.user=u1<br>&gt;&gt;&gt; b0.save()<br>&gt;&gt;&gt; b0.user&lt;User: username&gt;</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">Now you can change the user for the blog post:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">&gt;&gt;&gt; b0.user=u0<br>&gt;&gt;&gt; b0.save()</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">Next time you create a blog post though, log in with your username instread of admin :)</p>',1,'',1,1),(3,0,'',0,0,0,'Sending emails from Mezzanine','sending-emails-from-django-and-mezzanine','','Django and the Mezzanine Django CMS provide you with an admin interface that you can reach on the /admin page. Mezzanine incorporates a \"Forgot Password?\" functionality, that is you can reset your password.',1,'2018-07-10 18:32:31.299974','2018-07-10 18:42:39.895340',2,'2018-07-10 18:32:31.000000',NULL,NULL,1,'<p>Django and the <a href=\"http://mezzanine.jupo.org/\">Mezzanine Django CMS</a> provide you with an admin interface that you can reach on the /admin page. Mezzanine incorporates a \"Forgot Password?\" functionality, that is you can reset your password.</p>\n<p>The configuration needed in your settings.py file is the following:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">EMAIL_USE_TLS = True<br>EMAIL_HOST = \'smtp.gmail.com\'<br>EMAIL_HOST_USER = \'youremail@gmail.com\'<br>EMAIL_HOST_PASSWORD = \'Set it up as environment variable\'<br>EMAIL_PORT = 587<br>DEFAULT_FROM_EMAIL = \'youremail@gmail.com\'</pre>\n<p>As you can see, I am using gmail in this example.</p>\n<p>The most secure way to pass gmail\'s password to EMAIL_HOST_PASSWORD is by using an environment variable as I will describe in another post. If you are testing this from your local computer, you can easily set it in your terminal as follows (Linux and Mac):</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">export EMAIL_HOST_PASSWORD=\"your password\"</pre>\n<p>gmail might still try to block your emails. To troubleshoot this problem, check any Error log in your server.<br>One typical problems is due to gmail\'s settings; your Google account should allow less secure apps to sign-in. You can find this setting in your gmail account &gt; Settings on the top-right icon of the page &gt; Sing-in &amp; security &gt; Allow less secure apps should be ON). <br>Another problem that occurred while deploying on pythonanywhere.com and I found out by looking in the error log, was that I had to log again in my gmail account.</p>\n<p>Once you can get emails from your site, you might see a message as follows:</p>\n<pre>You\'re receiving this email because you requested a password reset for your user account at example.com.<br>Please go to the following page and choose a new password:\n...</pre>\n<p>Resetting the email should work but how to change that link to example.com? That is the default site present in Mezzanine. You can easily change it to your site in the admin page &gt; Sites tab.</p>',1,'',1,2),(4,0,'',0,0,0,'Deploying Django sites - Using environmnet variables','deploying-django-sites-using-environmnet-variables','','',1,'2018-07-10 18:45:27.506844','2018-07-10 18:45:33.922747',1,'2018-07-10 18:45:27.504985',NULL,NULL,1,'<p></p>\n<p></p>\n<p>pip install python-dotenv</p>',1,'',1,2),(5,0,'',0,0,0,'Bootstrap Carousel with fixed height','bootstrap-carousel-with-fixed-height','','WORK IN PROGRESS!',1,'2018-07-10 19:06:50.633449','2018-07-10 19:06:50.633449',1,'2018-07-10 19:06:50.625931',NULL,NULL,1,'<p style=\"margin: 0px 0px 10px; text-align: start;\"><strong>WORK IN PROGRESS!</strong></p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\"></p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">CSS:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">.carousel-inner .item {<br>       height: 600px;<br>   background-color: #68A4C4;<br>   background-size: contain;<br>   background-repeat: no-repeat;<br>   background-position: center center;<br>   }<br><br></pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">Use the image as a background for other elements such as &lt;div&gt;. Use the background-image property, not the background property. Then set the &lt;div&gt; sizes in CSS otherwise the div will probably have zero dimensions.</p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\"></p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">&lt;<span>div </span><span>class=</span><span>\"container\"</span>&gt;<br>  &lt;<span>div </span><span>id=</span><span>\"main-slider2\" </span><span>class=</span><span>\"carousel slide\" </span><span>data-ride=</span><span>\"carousel\"</span>&gt;<br>    <span>&lt;!-- Indicators --&gt;<br></span><span>    </span>&lt;<span>ul </span><span>class=</span><span>\"carousel-indicators\"</span>&gt;<br>      &lt;<span>li </span><span>data-target=</span><span>\"#main-slider2\" </span><span>data-slide-to=</span><span>\"0\" </span><span>class=</span><span>\"active\"</span>&gt;&lt;/<span>li</span>&gt;<br>      &lt;<span>li </span><span>data-target=</span><span>\"#main-slider2\" </span><span>data-slide-to=</span><span>\"1\"</span>&gt;&lt;/<span>li</span>&gt;<br>      &lt;<span>li </span><span>data-target=</span><span>\"#main-slider2\" </span><span>data-slide-to=</span><span>\"2\"</span>&gt;&lt;/<span>li</span>&gt;<br>    &lt;/<span>ul</span>&gt;<br>    <span>&lt;!-- Wrapper for slides --&gt;<br></span><span>    </span>&lt;<span>div </span><span>class=</span><span>\"carousel-inner\" </span><span>role=</span><span>\"listbox\"</span>&gt;<br>      &lt;<span>div </span><span>class=</span><span>\"item active\" </span><span>style=</span><span>\"</span>background-image: url({% static \'img/slides/phd_smile.jpg\' %});<span>\"</span>&gt;<br>      &lt;/<span>div</span>&gt;<br><span>&lt;!-- Left and right controls --&gt;<br></span>&lt;<span>a </span><span>class=</span><span>\"left carousel-control\" </span><span>href=</span><span>\"#main-slider2\" </span><span>role=</span><span>\"button\" </span><span>data-slide=</span><span>\"prev\"</span>&gt;<br>  &lt;<span>span </span><span>class=</span><span>\"glyphicon glyphicon-chevron-left\" </span><span>aria-hidden=</span><span>\"true\"</span>&gt;&lt;/<span>span</span>&gt;<br>  &lt;<span>span </span><span>class=</span><span>\"sr-only\"</span>&gt;Previous&lt;/<span>span</span>&gt;<br>&lt;/<span>a</span>&gt;<br>&lt;<span>a </span><span>class=</span><span>\"right carousel-control\" </span><span>href=</span><span>\"#main-slider2\" </span><span>role=</span><span>\"button\" </span><span>data-slide=</span><span>\"next\"</span>&gt;<br>  &lt;<span>span </span><span>class=</span><span>\"glyphicon glyphicon-chevron-right\" </span><span>aria-hidden=</span><span>\"true\"</span>&gt;&lt;/<span>span</span>&gt;<br>  &lt;<span>span </span><span>class=</span><span>\"sr-only\"</span>&gt;Next&lt;/<span>span</span>&gt;<br>&lt;/<span>a</span>&gt;</pre>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\"><br> &lt;/<span>div</span>&gt;<br>&lt;/<span>div</span>&gt;</pre>\n<p></p>',1,'',1,2),(6,0,'',0,0,0,'Change password for PostgreSQL users','change-password-for-postgresql-users','','Changing passwords for database users are very basic operations. However, I feel I should write a post about this because I keep on looking it up in my notes.',1,'2018-07-10 19:22:51.648855','2018-07-10 19:27:40.227353',2,'2018-07-10 19:22:51.000000',NULL,NULL,1,'<p>Changing passwords for database users are very basic operations. However, I feel I should write a post about this because I keep on looking it up in my notes.</p>\n<p>First of all, this is on way to create a new (super)user from UNIX shell:</p>\n<pre class=\"lang-sql prettyprint prettyprinted\"><code><span class=\"pln\">sudo </span><span class=\"pun\">-</span><span class=\"pln\">u postgres createuser </span><span class=\"pln\">--superuser </span><span class=\"pun\">username</span><span class=\"kwd\"></span><span class=\"pln\"></span></code></pre>\n<p>The \\du command lists users.</p>\n<p>The easiest way to change the password of an existing user is to log in to PostgreSQL with the postgres superuser and run the \\password &lt;username&gt; command:</p>\n<pre>amarin&gt;sudo -u postgres psql<br>[sudo] password for amarin: <br>psql (9.3.22)<br>Type \"help\" for help.<br><br>postgres=# \\password amarin<br>Enter new password: <br>Enter it again: <br>postgres=# \\quit</pre>\n<p>The more convoluted way to do the same is by using SQL:</p>\n<pre>ALTER USER amarin WITH PASSWORD \'new_password\';<br><br></pre>\n<p></p>\n<p></p>',1,'',1,2),(7,0,'',0,0,0,'Export Mezzanine with a PostgreSQL pg_dump','export-mezzanine-with-a-postgresql-pg_dump','','I want to deploy a Development site, which uses the Django CMS Mezzanine based on PostgreSQL. How to export Mezzanine\'s data? The best way to do this is exporting and importing the underlying PostgreSQL database, but there is a gotcha.&nbsp;For Django sites you can use commands such as the following:',1,'2018-07-10 19:25:50.611228','2018-07-10 19:25:50.611228',2,'2018-07-10 19:25:50.608977',NULL,NULL,1,'<p style=\"margin: 0px 0px 10px; text-align: start;\">I want to deploy a Development site, which uses the Django CMS Mezzanine based on PostgreSQL. How to export Mezzanine\'s data? The best way to do this is exporting and importing the underlying PostgreSQL database, but there is a gotcha.<span>&nbsp;</span><br><br>For Django sites you can use commands such as the following:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">python manage.py dumpdata -o data.json<br>python manage.py loaddata data.json</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">or using fixtures and more options to make the export file behave better:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">python manage.py dumpdata --natural-foreign --natural-primary --exclude admin.logentry --exclude contenttypes --exclude auth.Permission --indent=4 -o myapp/fixtures/data.json<br>python manage.py loaddata resume/fixtures/data.json</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">If you do so you will notice that Mezzanine configurations such as the pages you defined in /admin will not be exported.<br><br>The way to go it exporting the database on which Mezzanine is based on using the pg_dump command. Try it using the postgres superuser and you will see this error:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">pg_dump -U postgres -Fc mydatabase &gt; Ale.db<br>pg_dump: [archiver (db)] connection to database \"mydatabase\" failed: FATAL:&nbsp; Peer authentication failed for user \"postgres\"</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">To fix this, first edit this configuration file:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">sudo vi /etc/postgresql/9.3/main/pg_hba.conf</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">and change the line for all users from:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\"># TYPE&nbsp; DATABASE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADDRESS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; METHOD<br># \"local\" is for Unix domain socket connections only<br>local&nbsp;&nbsp;&nbsp;&nbsp; all&nbsp;&nbsp;&nbsp;&nbsp; all&nbsp;&nbsp;&nbsp;&nbsp; peer</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">to:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">local&nbsp;&nbsp;&nbsp;&nbsp; all&nbsp;&nbsp;&nbsp;&nbsp; all&nbsp;&nbsp;&nbsp;&nbsp; md5</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">and restart the PostgreSQL service:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">sudo service postgresql restart</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">Now exporting with pg_dump should work. Use the -F flag to export to different formats:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">pg_dump -U postgres -Fc mydatabase &gt; mydb.db<br>pg_dump -j 4 -Fd -f mydb<br>pg_dump -U postgres -W -Ft mydatabase &gt; mydb.tar</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">After than you can use pg_restore to import the database:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">pg_restore -d newdb mydb</pre>\n<p></p>',1,'',1,2),(8,0,'',0,0,0,'Django and sensitive information','django-and-sensitive-information','','Django requires to set up some passwords. This post shows to to set passwords in Linux/Unix environmnet variables so that they do not have to be written in plain text',1,'2018-07-10 19:26:31.481988','2018-07-10 19:26:31.481988',2,'2018-07-10 19:26:31.480215',NULL,NULL,1,'<p style=\"margin: 0px 0px 10px; text-align: start;\">Django requires to set up some passwords. This post shows to to set passwords in Linux/Unix environmnet variables so that they do not have to be written in plain text</p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">In brief, see this code</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">if os.environ.get(\'PASSWORD\') is None:<br>&nbsp;&nbsp;&nbsp; print(\'\')<br>&nbsp;&nbsp;&nbsp; import sys<br>&nbsp;&nbsp;&nbsp; sys.exit(\"Define an environment variable as follows:\\nexport PASSWORD=\'database password\'\")<br><br>if os.environ.get(\'SECRET_KEY\') is None:<br>&nbsp;&nbsp;&nbsp; print(\'\')<br>&nbsp;&nbsp;&nbsp; import sys<br>&nbsp;&nbsp;&nbsp; sys.exit(\"Define an environment variable as follows:\\nexport SECRET_KEY=\'Project password\'\")<br><br>if os.environ.get(\'EMAIL_HOST_PASSWORD\') is None:<br>&nbsp;&nbsp;&nbsp; print(\'EMAIL_HOST_PASSWORD not found as environment variable. You might want to set it\')<br><br>DATABASES[\'default\'][\'PASSWORD\'] = os.environ.get(\'PASSWORD\')<br><br>SECRET_KEY=os.environ.get(\'SECRET_KEY\')</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\"><br>This code retries<span>&nbsp;</span><a href=\"https://docs.djangoproject.com/en/2.0/ref/settings/#password\" style=\"text-decoration: none;\">PASSWORD</a>,<span>&nbsp;</span><a href=\"https://docs.djangoproject.com/en/2.0/ref/settings/#std:setting-SECRET_KEY\" style=\"text-decoration: none;\">SECRET_KEY</a>,<span>&nbsp;</span><a href=\"https://docs.djangoproject.com/en/2.0/ref/settings/#std:setting-EMAIL_HOST_PASSWORD\" style=\"text-decoration: none;\">EMAIL_HOST_PASSWORD</a><span>&nbsp;</span>from environmnet variables that you can set up as follows in Linux/UNIX:</p>\n<pre style=\"display: block; margin: 0px 0px 10px; border: 1px solid #cccccc; text-align: start;\">export PASSWORD=\'My database password\'<br>export SECRET_KEY</pre>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">If these environment variables are not present, Django commands such as python manage.py runserver will show a message (for EMAIL_HOST_PASSWORD) or quit with an error message.</p>\n<p style=\"margin: 0px 0px 10px; text-align: start;\">This works well in Development, but for Deploying remember to set the environment variables in the webapp</p>\n<p></p>',1,'',1,2);
/*!40000 ALTER TABLE `blog_blogpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogpost_categories`
--

DROP TABLE IF EXISTS `blog_blogpost_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogpost_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogpost_id` int(11) NOT NULL,
  `blogcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blogpost_categories_blogpost_id_a64d32c5_uniq` (`blogpost_id`,`blogcategory_id`),
  KEY `blog_blogpost_c_blogcategory_id_f6695246_fk_blog_blogcategory_id` (`blogcategory_id`),
  CONSTRAINT `blog_blogpost_c_blogcategory_id_f6695246_fk_blog_blogcategory_id` FOREIGN KEY (`blogcategory_id`) REFERENCES `blog_blogcategory` (`id`),
  CONSTRAINT `blog_blogpost_categorie_blogpost_id_daeea608_fk_blog_blogpost_id` FOREIGN KEY (`blogpost_id`) REFERENCES `blog_blogpost` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogpost_categories`
--

LOCK TABLES `blog_blogpost_categories` WRITE;
/*!40000 ALTER TABLE `blog_blogpost_categories` DISABLE KEYS */;
INSERT INTO `blog_blogpost_categories` VALUES (1,3,11),(2,4,3),(3,4,11),(4,5,1),(5,5,2),(6,5,5),(7,6,12),(8,7,3),(9,7,11),(10,7,12),(11,8,3),(12,8,11);
/*!40000 ALTER TABLE `blog_blogpost_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogpost_related_posts`
--

DROP TABLE IF EXISTS `blog_blogpost_related_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blogpost_related_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_blogpost_id` int(11) NOT NULL,
  `to_blogpost_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blogpost_related_posts_from_blogpost_id_3bd0f49f_uniq` (`from_blogpost_id`,`to_blogpost_id`),
  KEY `blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blogpost_id` (`to_blogpost_id`),
  CONSTRAINT `blog_blogpost_rela_from_blogpost_id_27ea4c18_fk_blog_blogpost_id` FOREIGN KEY (`from_blogpost_id`) REFERENCES `blog_blogpost` (`id`),
  CONSTRAINT `blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blogpost_id` FOREIGN KEY (`to_blogpost_id`) REFERENCES `blog_blogpost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogpost_related_posts`
--

LOCK TABLES `blog_blogpost_related_posts` WRITE;
/*!40000 ALTER TABLE `blog_blogpost_related_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_blogpost_related_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_category`
--

DROP TABLE IF EXISTS `categories_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `thumbnail_width` int(11) DEFAULT NULL,
  `thumbnail_height` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `alternate_title` varchar(100) NOT NULL,
  `alternate_url` varchar(200) NOT NULL,
  `description` longtext,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_extra` longtext NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_category_parent_id_893f7987_uniq` (`parent_id`,`name`),
  KEY `categories_category_2dbcba41` (`slug`),
  KEY `categories_category_caf7cc51` (`lft`),
  KEY `categories_category_3cfbd988` (`rght`),
  KEY `categories_category_656442a0` (`tree_id`),
  KEY `categories_category_c9e9a848` (`level`),
  KEY `categories_category_6be37982` (`parent_id`),
  CONSTRAINT `categories_category_parent_id_f141de59_fk_categories_category_id` FOREIGN KEY (`parent_id`) REFERENCES `categories_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_category`
--

LOCK TABLES `categories_category` WRITE;
/*!40000 ALTER TABLE `categories_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_categoryrelation`
--

DROP TABLE IF EXISTS `categories_categoryrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_categoryrelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `relation_type` varchar(200) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_catego_category_id_e5e686b2_fk_categories_category_id` (`category_id`),
  KEY `categories_ca_content_type_id_f686b696_fk_django_content_type_id` (`content_type_id`),
  CONSTRAINT `categories_ca_content_type_id_f686b696_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `categories_catego_category_id_e5e686b2_fk_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_categoryrelation`
--

LOCK TABLES `categories_categoryrelation` WRITE;
/*!40000 ALTER TABLE `categories_categoryrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_categoryrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conf_setting`
--

DROP TABLE IF EXISTS `conf_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conf_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` varchar(2000) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conf_setting_site_id_b235f7ed_fk_django_site_id` (`site_id`),
  CONSTRAINT `conf_setting_site_id_b235f7ed_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conf_setting`
--

LOCK TABLES `conf_setting` WRITE;
/*!40000 ALTER TABLE `conf_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `conf_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_sitepermission`
--

DROP TABLE IF EXISTS `core_sitepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_sitepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `core_sitepermission_user_id_0a3cbb11_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_sitepermission`
--

LOCK TABLES `core_sitepermission` WRITE;
/*!40000 ALTER TABLE `core_sitepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_sitepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_sitepermission_sites`
--

DROP TABLE IF EXISTS `core_sitepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_sitepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_sitepermission_sites_sitepermission_id_e3e7353a_uniq` (`sitepermission_id`,`site_id`),
  KEY `core_sitepermission_sites_site_id_38038b76_fk_django_site_id` (`site_id`),
  CONSTRAINT `core_sitepe_sitepermission_id_d33bc79e_fk_core_sitepermission_id` FOREIGN KEY (`sitepermission_id`) REFERENCES `core_sitepermission` (`id`),
  CONSTRAINT `core_sitepermission_sites_site_id_38038b76_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_sitepermission_sites`
--

LOCK TABLES `core_sitepermission_sites` WRITE;
/*!40000 ALTER TABLE `core_sitepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_sitepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-07-09 21:10:29.259806','1','resume',1,'[{\"added\": {}}]',31,1),(2,'2018-07-09 21:12:17.536109','2','Blog',1,'[{\"added\": {}}]',31,1),(3,'2018-07-09 21:12:42.265567','3','About',1,'[{\"added\": {}}]',31,1),(4,'2018-07-09 21:13:59.985402','1','Anchor with no redirect',1,'[{\"added\": {}}]',34,1),(5,'2018-07-09 21:14:28.234309','2','Changing the author of a Mezzanine blog post',1,'[{\"added\": {}}]',34,1),(6,'2018-07-09 21:14:47.731099','1','Bootstrap',1,'[{\"added\": {}}]',33,1),(7,'2018-07-09 21:14:57.860206','2','CSS',1,'[{\"added\": {}}]',33,1),(8,'2018-07-09 21:15:04.547215','3','Django',1,'[{\"added\": {}}]',33,1),(9,'2018-07-09 21:15:09.837059','4','Python',1,'[{\"added\": {}}]',33,1),(10,'2018-07-09 21:15:18.181903','5','HTML',1,'[{\"added\": {}}]',33,1),(11,'2018-07-09 21:15:25.026762','6','InterSystems',1,'[{\"added\": {}}]',33,1),(12,'2018-07-09 21:15:43.477540','7','IRIS/Caché',1,'[{\"added\": {}}]',33,1),(13,'2018-07-09 21:15:51.140554','8','DeepSee',1,'[{\"added\": {}}]',33,1),(14,'2018-07-09 21:16:04.100678','9','Javascript',1,'[{\"added\": {}}]',33,1),(15,'2018-07-09 21:16:09.011904','10','Machine Learning',1,'[{\"added\": {}}]',33,1),(16,'2018-07-09 21:16:16.172872','11','Mezzanine',1,'[{\"added\": {}}]',33,1),(17,'2018-07-09 21:16:24.187283','12','PostgreSQL',1,'[{\"added\": {}}]',33,1),(18,'2018-07-09 21:16:29.307312','13','MySQL',1,'[{\"added\": {}}]',33,1),(19,'2018-07-10 18:32:31.310308','3','Sending emails from Django and Mezzanine',1,'[{\"added\": {}}]',34,2),(20,'2018-07-10 18:36:56.718073','3','Sending emails from Django and Mezzanine',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',34,2),(21,'2018-07-10 18:38:36.549023','3','Sending emails from Mezzanine',2,'[{\"changed\": {\"fields\": [\"title\", \"content\", \"keywords\"]}}]',34,2),(22,'2018-07-10 18:41:46.991015','2','Changing the author of a Mezzanine blog post',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',34,2),(23,'2018-07-10 18:42:39.908437','3','Sending emails from Mezzanine',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',34,2),(24,'2018-07-10 18:45:27.530019','4','Deploying Django sites - Using environmnet variables',1,'[{\"added\": {}}]',34,2),(25,'2018-07-10 18:45:33.929350','4','Deploying Django sites - Using environmnet variables',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',34,2),(26,'2018-07-10 19:06:50.645376','5','Bootstrap Carousel with fixed height',1,'[{\"added\": {}}]',34,2),(27,'2018-07-10 19:22:51.674373','6','Change password for PostgreSQL users',1,'[{\"added\": {}}]',34,2),(28,'2018-07-10 19:23:38.040856','6','Change password for PostgreSQL users',2,'[{\"changed\": {\"fields\": [\"content\", \"description\", \"keywords\"]}}]',34,2),(29,'2018-07-10 19:24:30.198545','6','Change password for PostgreSQL users',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',34,2),(30,'2018-07-10 19:25:50.634672','7','Export Mezzanine with a PostgreSQL pg_dump',1,'[{\"added\": {}}]',34,2),(31,'2018-07-10 19:26:31.491460','8','Django and sensitive information',1,'[{\"added\": {}}]',34,2),(32,'2018-07-10 19:27:40.239759','6','Change password for PostgreSQL users',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',34,2),(33,'2018-07-10 21:07:54.767829','3','About',2,'[{\"changed\": {\"fields\": [\"content\", \"description\", \"keywords\"]}}]',31,2),(34,'2018-07-10 21:08:00.326584','2','Blog',2,'[{\"changed\": {\"fields\": [\"in_menus\", \"keywords\"]}}]',31,2),(35,'2018-07-10 21:08:06.010990','1','resume',2,'[{\"changed\": {\"fields\": [\"in_menus\", \"keywords\"]}}]',31,2),(36,'2018-07-10 21:08:10.852605','3','About',2,'[{\"changed\": {\"fields\": [\"content\", \"in_menus\", \"description\", \"keywords\"]}}]',31,2),(37,'2018-07-10 21:08:32.256257','1','http://amarin.pythonanywhere.com',2,'[{\"changed\": {\"fields\": [\"domain\", \"name\"]}}]',23,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comment_flags`
--

DROP TABLE IF EXISTS `django_comment_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime(6) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_comment_flags_user_id_537f77a7_uniq` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_comment_id_d8054933_fk_django_comments_id` (`comment_id`),
  KEY `django_comment_flags_327a6c43` (`flag`),
  CONSTRAINT `django_comment_flags_comment_id_d8054933_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `django_comment_flags_user_id_f3f81f0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comment_flags`
--

LOCK TABLES `django_comment_flags` WRITE;
/*!40000 ALTER TABLE `django_comment_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_comment_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comments`
--

DROP TABLE IF EXISTS `django_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` longtext NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_commen_content_type_id_c4afe962_fk_django_content_type_id` (`content_type_id`),
  KEY `django_comments_site_id_9dcf666e_fk_django_site_id` (`site_id`),
  KEY `django_comments_user_id_a0a440a1_fk_auth_user_id` (`user_id`),
  KEY `django_comments_submit_date_514ed2d9_uniq` (`submit_date`),
  CONSTRAINT `django_commen_content_type_id_c4afe962_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_comments_site_id_9dcf666e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `django_comments_user_id_a0a440a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comments`
--

LOCK TABLES `django_comments` WRITE;
/*!40000 ALTER TABLE `django_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (43,'admin','logentry'),(17,'auth','group'),(18,'auth','permission'),(19,'auth','user'),(33,'blog','blogcategory'),(34,'blog','blogpost'),(15,'categories','category'),(16,'categories','categoryrelation'),(24,'conf','setting'),(20,'contenttypes','contenttype'),(25,'core','sitepermission'),(45,'django_comments','comment'),(44,'django_comments','commentflag'),(37,'forms','field'),(36,'forms','fieldentry'),(38,'forms','form'),(35,'forms','formentry'),(39,'galleries','gallery'),(40,'galleries','galleryimage'),(27,'generic','assignedkeyword'),(28,'generic','keyword'),(26,'generic','rating'),(29,'generic','threadedcomment'),(32,'pages','link'),(30,'pages','page'),(31,'pages','richtextpage'),(21,'redirects','redirect'),(1,'resume','achievement'),(2,'resume','education'),(4,'resume','job'),(3,'resume','jobaccomplishment'),(5,'resume','language'),(6,'resume','overview'),(14,'resume','personalinfo'),(7,'resume','programmingarea'),(8,'resume','programminglanguage'),(13,'resume','project'),(12,'resume','projecttype'),(9,'resume','publication'),(10,'resume','skill'),(11,'resume','skillset'),(22,'sessions','session'),(23,'sites','site'),(41,'twitter','query'),(42,'twitter','tweet');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-07-09 20:32:14.542032'),(2,'auth','0001_initial','2018-07-09 20:32:15.675722'),(3,'admin','0001_initial','2018-07-09 20:32:15.947341'),(4,'admin','0002_logentry_remove_auto_add','2018-07-09 20:32:15.984658'),(5,'contenttypes','0002_remove_content_type_name','2018-07-09 20:32:16.154343'),(6,'auth','0002_alter_permission_name_max_length','2018-07-09 20:32:16.188299'),(7,'auth','0003_alter_user_email_max_length','2018-07-09 20:32:16.219567'),(8,'auth','0004_alter_user_username_opts','2018-07-09 20:32:16.239901'),(9,'auth','0005_alter_user_last_login_null','2018-07-09 20:32:16.325470'),(10,'auth','0006_require_contenttypes_0002','2018-07-09 20:32:16.332137'),(11,'auth','0007_alter_validators_add_error_messages','2018-07-09 20:32:16.361757'),(12,'auth','0008_alter_user_username_max_length','2018-07-09 20:32:16.418304'),(13,'sites','0001_initial','2018-07-09 20:32:16.472198'),(14,'blog','0001_initial','2018-07-09 20:32:17.547195'),(15,'blog','0002_auto_20150527_1555','2018-07-09 20:32:17.615950'),(16,'categories','0001_initial','2018-07-09 20:32:18.268088'),(17,'categories','0002_auto_20170217_1111','2018-07-09 20:32:18.331853'),(18,'conf','0001_initial','2018-07-09 20:32:18.521042'),(19,'core','0001_initial','2018-07-09 20:32:18.981476'),(20,'core','0002_auto_20150414_2140','2018-07-09 20:32:19.137783'),(21,'django_comments','0001_initial','2018-07-09 20:32:19.908003'),(22,'django_comments','0002_update_user_email_field_length','2018-07-09 20:32:19.976135'),(23,'django_comments','0003_add_submit_date_index','2018-07-09 20:32:20.052996'),(24,'pages','0001_initial','2018-07-09 20:32:20.740785'),(25,'forms','0001_initial','2018-07-09 20:32:21.607152'),(26,'forms','0002_auto_20141227_0224','2018-07-09 20:32:21.670938'),(27,'forms','0003_emailfield','2018-07-09 20:32:21.743346'),(28,'forms','0004_auto_20150517_0510','2018-07-09 20:32:21.797644'),(29,'forms','0005_auto_20151026_1600','2018-07-09 20:32:21.856064'),(30,'galleries','0001_initial','2018-07-09 20:32:22.190117'),(31,'galleries','0002_auto_20141227_0224','2018-07-09 20:32:22.246056'),(32,'generic','0001_initial','2018-07-09 20:32:23.326190'),(33,'generic','0002_auto_20141227_0224','2018-07-09 20:32:23.435288'),(34,'pages','0002_auto_20141227_0224','2018-07-09 20:32:23.551527'),(35,'pages','0003_auto_20150527_1555','2018-07-09 20:32:23.637396'),(36,'redirects','0001_initial','2018-07-09 20:32:23.962376'),(37,'resume','0001_initial','2018-07-09 20:32:25.311951'),(38,'resume','0002_personalinfo_cv_pdf','2018-07-09 20:32:25.409214'),(39,'sessions','0001_initial','2018-07-09 20:32:25.500016'),(40,'sites','0002_alter_domain_unique','2018-07-09 20:32:25.591232'),(41,'twitter','0001_initial','2018-07-09 20:32:25.805156');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_redirect`
--

DROP TABLE IF EXISTS `django_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `old_path` varchar(200) NOT NULL,
  `new_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_redirect_site_id_ac5dd16b_uniq` (`site_id`,`old_path`),
  KEY `django_redirect_91a0b591` (`old_path`),
  CONSTRAINT `django_redirect_site_id_c3e37341_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_redirect`
--

LOCK TABLES `django_redirect` WRITE;
/*!40000 ALTER TABLE `django_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0hvsabwlo0cdv7bxf297eppkhxtpv2ru','M2Q1MWI3YTkwMGEzY2YxZWNjNTU5YWRlOTAzYzRkYjJjODI5NTI1Mjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzODRiODY3MzAwMTYxMjNjYzE3OGFiZDBlOWNhYTMzZjJkNmM5N2IzIn0=','2018-04-16 22:01:14.763000'),('0qs4cm692lsqdpl0jreufas7u40dsf7q','ZDdmZjczYTE5NWViZDgyMmUxY2FlZjkzNWZmOTg5YTcxOTc1YmViZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDJhZTVhMDVmODVhNGM5NGEzNjAxYmJiYmI3NjRlMWRlZGQyNTgyZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-06-25 22:39:41.234000'),('3ac79jf57nrlpzmvhzrnxv2nm4akt52r','NzI1YmYzNGU0MWUyZDA4N2FmN2I2ZjhhNTIxZjkyZTI2MmY1Y2E1MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI3NmQxYmY0ODM4NDIzMDA5OGExZDQ1ZjMzODcyZDEwOTFmYzQ1NzEyIn0=','2018-04-28 14:39:27.097000'),('3okun2gq9y2e6p6p53j1n8u2h7l4iuja','ODM5MTExZGZiYmQ5OWE4MmI0MmVmNGYzN2JkMTc0Njg2YTc1ZDcxMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIzODRiODY3MzAwMTYxMjNjYzE3OGFiZDBlOWNhYTMzZjJkNmM5N2IzIn0=','2018-03-19 02:15:49.166000'),('5t2dl6vn5s6y9z5hhfed1wpki76podin','YjZhZGQ3MmQ1MjU0YzQ4OGRkNmU3MjczYTQ4NjMxMTdjYWRmZWZlNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmQxYmY0ODM4NDIzMDA5OGExZDQ1ZjMzODcyZDEwOTFmYzQ1NzEyIn0=','2018-04-24 00:36:31.469000'),('5vmylk30ftemkjy8allgwlntque4l3p2','NTJkMDQwNzAxNzFiMzFlMzg3NzcwYTgxYTcwZjJiNTYwNjUwMWY4NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzODRiODY3MzAwMTYxMjNjYzE3OGFiZDBlOWNhYTMzZjJkNmM5N2IzIn0=','2018-03-19 14:09:43.712000'),('6wem6a4v04vjgk7b6c8qw4mqvs7b29xi','NjUxNzZjZjI3ZjFmYmZhOWY2NTcyOGE4MWExZTIwN2RmODAxOGI3Njp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzZkMWJmNDgzODQyMzAwOThhMWQ0NWYzMzg3MmQxMDkxZmM0NTcxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-04-30 15:40:38.750000'),('7ky99cpsg8risvt8h0sooq8l6rvpgco5','NTU3MjIyYzgzYjRiNGY2Y2RiOTZmYWZhODk3YWIxNjNiZWY3OTc2Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiIzODRiODY3MzAwMTYxMjNjYzE3OGFiZDBlOWNhYTMzZjJkNmM5N2IzIn0=','2018-04-14 18:13:20.091000'),('8q9bb4cr1a07tpi6kogzs6w95frur3zx','YjI0ZTk1NWQzOWE5ZGEwM2UyOWUyMTc3MGQyYjBmMDY5ODI4ZjY2NDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc2ZDFiZjQ4Mzg0MjMwMDk4YTFkNDVmMzM4NzJkMTA5MWZjNDU3MTIiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-04-23 12:52:57.013000'),('9p95bmtebpmz3dmqk3d1we1jjqm1oh1r','NzQ3MGJiYWIxZDExMjU3M2EwZTc4YWRkNTZiZDU3MTYyM2QzYjQyMzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc2ZDFiZjQ4Mzg0MjMwMDk4YTFkNDVmMzM4NzJkMTA5MWZjNDU3MTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2018-04-21 11:31:11.833000'),('afia1a7q67c2k6yeawini7pp17rajvjv','NjUxNzZjZjI3ZjFmYmZhOWY2NTcyOGE4MWExZTIwN2RmODAxOGI3Njp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzZkMWJmNDgzODQyMzAwOThhMWQ0NWYzMzg3MmQxMDkxZmM0NTcxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-04-24 22:00:57.013000'),('b4kmrjqxx320wx1cb5tys8go5gvm8tsv','OTc5OWI1NGFkODdkYWVlZmQyYTdmZGNhZGQ5ZWZmZGJkYzU0NTQ1NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyYWU1YTA1Zjg1YTRjOTRhMzYwMWJiYmJiNzY0ZTFkZWRkMjU4MmUiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-06-26 20:33:23.611000'),('dtwgnd2u4mg8tt7blwuhcniu2tku9df9','NjE1ODI2YzY2Y2RkMjUxOTIyZTY0MWZjMTAzNzBiODIzZDk0MjMxZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzg0Yjg2NzMwMDE2MTIzY2MxNzhhYmQwZTljYWEzM2YyZDZjOTdiMyIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2018-04-15 01:59:29.222000'),('e26yrfy05g2w44qxe0seix8s0dmymm2j','MTFiZWU2OWE5Mzk2NDhiNjQxYTgzZjc0MDgwYmMxODg5MTY4YmI2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4NGI4NjczMDAxNjEyM2NjMTc4YWJkMGU5Y2FhMzNmMmQ2Yzk3YjMiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-04-14 18:23:14.347000'),('ff5s35bd0yke8pdhjazf5tf9i1bp8ak9','ODM5MTExZGZiYmQ5OWE4MmI0MmVmNGYzN2JkMTc0Njg2YTc1ZDcxMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIzODRiODY3MzAwMTYxMjNjYzE3OGFiZDBlOWNhYTMzZjJkNmM5N2IzIn0=','2018-03-19 02:40:00.696000'),('g6avmabm0crk539glsym3riyx6gebj3r','NTUxMzVkYWMzN2RmNjExOWQ1NzQxODBlODAwNWZhZDJlOTc5MzMwMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4NGI4NjczMDAxNjEyM2NjMTc4YWJkMGU5Y2FhMzNmMmQ2Yzk3YjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2018-04-15 11:02:48.434000'),('hguiu08w46xmyyln45fenppu24o1cx3g','NTUxMzVkYWMzN2RmNjExOWQ1NzQxODBlODAwNWZhZDJlOTc5MzMwMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4NGI4NjczMDAxNjEyM2NjMTc4YWJkMGU5Y2FhMzNmMmQ2Yzk3YjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2018-04-15 10:59:38.758000'),('hlhv1ysh91g303r751uhzwmvh5jtjs52','NmFiZThmYjU2MjMzYzJhNjM4NWQ0ZTQ1YzYyZGM5OGI1MmUwMzhkNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzg0Yjg2NzMwMDE2MTIzY2MxNzhhYmQwZTljYWEzM2YyZDZjOTdiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-04-05 04:46:24.712000'),('i4pld6i6qvvcvxr9b6k2qhnsr88nmla8','NjUxNzZjZjI3ZjFmYmZhOWY2NTcyOGE4MWExZTIwN2RmODAxOGI3Njp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzZkMWJmNDgzODQyMzAwOThhMWQ0NWYzMzg3MmQxMDkxZmM0NTcxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-04-25 10:57:50.871000'),('ibv2ap2zchm032nmdjpvwvv1wundbt6l','OTkwY2U5MDBiYWZkYjU5YzM5ZjI1MTYzNWFkNzA1ZWEwY2JjYzkxMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjViYWNhNDQ0MzE3NDVjZDkwN2E5YTdkNjBjZjYzM2RjMWQyYjRiY2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMiJ9','2018-07-24 21:07:39.090778'),('iirj7q4ul3vpkb5ilc274kky5g7kofpf','ODM5MTExZGZiYmQ5OWE4MmI0MmVmNGYzN2JkMTc0Njg2YTc1ZDcxMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIzODRiODY3MzAwMTYxMjNjYzE3OGFiZDBlOWNhYTMzZjJkNmM5N2IzIn0=','2018-03-20 00:44:53.257000'),('jiu5rp1cbyuriu82v1aaodzrya6bysag','M2IwMzU0NzkyOGUzZjZlMTZlMWYzNGIwZjhjY2JmZDRhOTE4Nzg0MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyYWU1YTA1Zjg1YTRjOTRhMzYwMWJiYmJiNzY0ZTFkZWRkMjU4MmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2018-06-26 22:42:04.971000'),('lf70s4rkf21v62qmt5u633hyi5by6ixf','ZDBmYmIyYTEzZmE5MjhjY2FmYzI2NzBiYWFhYTI3ODczZmUyNmQzNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImMwYTQ1YzFkZWMyYzBhNzU5ZmQwYTU2M2VhM2MwM2ZkZThkNDE5MWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2018-07-23 21:11:47.859361'),('ncxx4u1adba98q94xw60e064qpggvqxb','NzQ3MGJiYWIxZDExMjU3M2EwZTc4YWRkNTZiZDU3MTYyM2QzYjQyMzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc2ZDFiZjQ4Mzg0MjMwMDk4YTFkNDVmMzM4NzJkMTA5MWZjNDU3MTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2018-05-01 01:41:47.853000'),('ptb2u43xdhn5dpln74ouzv4im1q110gf','MTFiZWU2OWE5Mzk2NDhiNjQxYTgzZjc0MDgwYmMxODg5MTY4YmI2Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4NGI4NjczMDAxNjEyM2NjMTc4YWJkMGU5Y2FhMzNmMmQ2Yzk3YjMiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-04-14 14:26:01.597000'),('pw5ky7bqlvqbdny0rmz89vxggjqgnavn','OTkwY2U5MDBiYWZkYjU5YzM5ZjI1MTYzNWFkNzA1ZWEwY2JjYzkxMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjViYWNhNDQ0MzE3NDVjZDkwN2E5YTdkNjBjZjYzM2RjMWQyYjRiY2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMiJ9','2018-07-24 18:09:58.233175'),('rc164ours5jkkjbtt9um68ukcz3ulngx','ZDBmYmIyYTEzZmE5MjhjY2FmYzI2NzBiYWFhYTI3ODczZmUyNmQzNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImMwYTQ1YzFkZWMyYzBhNzU5ZmQwYTU2M2VhM2MwM2ZkZThkNDE5MWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2018-07-23 21:09:02.605117'),('rwb29lc5tgkrwkzr4ye2fth6px81tpa0','YjI0ZTk1NWQzOWE5ZGEwM2UyOWUyMTc3MGQyYjBmMDY5ODI4ZjY2NDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc2ZDFiZjQ4Mzg0MjMwMDk4YTFkNDVmMzM4NzJkMTA5MWZjNDU3MTIiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-05-01 01:52:24.163000'),('sui8kpyg6zq6qker5w4c0vm3r1v1d810','NTUxMzVkYWMzN2RmNjExOWQ1NzQxODBlODAwNWZhZDJlOTc5MzMwMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4NGI4NjczMDAxNjEyM2NjMTc4YWJkMGU5Y2FhMzNmMmQ2Yzk3YjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2018-04-15 11:04:40.522000'),('tifseralbjjbfkuanx9myynw8j119xtz','ZDBmYmIyYTEzZmE5MjhjY2FmYzI2NzBiYWFhYTI3ODczZmUyNmQzNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImMwYTQ1YzFkZWMyYzBhNzU5ZmQwYTU2M2VhM2MwM2ZkZThkNDE5MWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2018-07-23 21:12:32.050585'),('tkzc7op97m0wmu8zll47mpgeubspzdxy','NmFiZThmYjU2MjMzYzJhNjM4NWQ0ZTQ1YzYyZGM5OGI1MmUwMzhkNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzg0Yjg2NzMwMDE2MTIzY2MxNzhhYmQwZTljYWEzM2YyZDZjOTdiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-04-13 10:53:36.883000'),('vhr0hi0mpev4rh7ftqew6cql9xzr8ia1','YjI0ZTk1NWQzOWE5ZGEwM2UyOWUyMTc3MGQyYjBmMDY5ODI4ZjY2NDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc2ZDFiZjQ4Mzg0MjMwMDk4YTFkNDVmMzM4NzJkMTA5MWZjNDU3MTIiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-04-24 03:11:48.303000'),('wmkdqwu6zspla0pmzcsnp7hw35f05zdm','YjZhZGQ3MmQ1MjU0YzQ4OGRkNmU3MjczYTQ4NjMxMTdjYWRmZWZlNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmQxYmY0ODM4NDIzMDA5OGExZDQ1ZjMzODcyZDEwOTFmYzQ1NzEyIn0=','2018-05-01 20:46:25.701000'),('znhdw7ae2vbb110kejlzley17jkd5ltp','OTkwY2U5MDBiYWZkYjU5YzM5ZjI1MTYzNWFkNzA1ZWEwY2JjYzkxMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjViYWNhNDQ0MzE3NDVjZDkwN2E5YTdkNjBjZjYzM2RjMWQyYjRiY2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMiJ9','2018-07-24 19:06:02.387209');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'http://amarin.pythonanywhere.com','http://amarin.pythonanywhere.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_field`
--

DROP TABLE IF EXISTS `forms_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `label` varchar(200) NOT NULL,
  `field_type` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `choices` varchar(1000) NOT NULL,
  `default` varchar(2000) NOT NULL,
  `placeholder_text` varchar(100) NOT NULL,
  `help_text` varchar(100) NOT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id` (`form_id`),
  CONSTRAINT `forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_field`
--

LOCK TABLES `forms_field` WRITE;
/*!40000 ALTER TABLE `forms_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_fieldentry`
--

DROP TABLE IF EXISTS `forms_fieldentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_fieldentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `value` varchar(2000) DEFAULT NULL,
  `entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id` (`entry_id`),
  CONSTRAINT `forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id` FOREIGN KEY (`entry_id`) REFERENCES `forms_formentry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_fieldentry`
--

LOCK TABLES `forms_fieldentry` WRITE;
/*!40000 ALTER TABLE `forms_fieldentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_fieldentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_form`
--

DROP TABLE IF EXISTS `forms_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_form` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `response` longtext NOT NULL,
  `send_email` tinyint(1) NOT NULL,
  `email_from` varchar(254) NOT NULL,
  `email_copies` varchar(200) NOT NULL,
  `email_subject` varchar(200) NOT NULL,
  `email_message` longtext NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_form`
--

LOCK TABLES `forms_form` WRITE;
/*!40000 ALTER TABLE `forms_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_formentry`
--

DROP TABLE IF EXISTS `forms_formentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_formentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_time` datetime(6) NOT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id` (`form_id`),
  CONSTRAINT `forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_formentry`
--

LOCK TABLES `forms_formentry` WRITE;
/*!40000 ALTER TABLE `forms_formentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_formentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_gallery`
--

DROP TABLE IF EXISTS `galleries_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_gallery` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `zip_import` varchar(100) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_gallery`
--

LOCK TABLES `galleries_gallery` WRITE;
/*!40000 ALTER TABLE `galleries_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_galleryimage`
--

DROP TABLE IF EXISTS `galleries_galleryimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_galleryimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `file` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_g_gallery_id_af12d3f5_fk_galleries_gallery_page_ptr_id` (`gallery_id`),
  CONSTRAINT `galleries_g_gallery_id_af12d3f5_fk_galleries_gallery_page_ptr_id` FOREIGN KEY (`gallery_id`) REFERENCES `galleries_gallery` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_galleryimage`
--

LOCK TABLES `galleries_galleryimage` WRITE;
/*!40000 ALTER TABLE `galleries_galleryimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_galleryimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_assignedkeyword`
--

DROP TABLE IF EXISTS `generic_assignedkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_assignedkeyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `object_pk` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_assig_content_type_id_3dd89a7f_fk_django_content_type_id` (`content_type_id`),
  KEY `generic_assignedkeywor_keyword_id_44c17f9d_fk_generic_keyword_id` (`keyword_id`),
  CONSTRAINT `generic_assig_content_type_id_3dd89a7f_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `generic_assignedkeywor_keyword_id_44c17f9d_fk_generic_keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `generic_keyword` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_assignedkeyword`
--

LOCK TABLES `generic_assignedkeyword` WRITE;
/*!40000 ALTER TABLE `generic_assignedkeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_assignedkeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_keyword`
--

DROP TABLE IF EXISTS `generic_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_keyword_site_id_c5be0acc_fk_django_site_id` (`site_id`),
  CONSTRAINT `generic_keyword_site_id_c5be0acc_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_keyword`
--

LOCK TABLES `generic_keyword` WRITE;
/*!40000 ALTER TABLE `generic_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_rating`
--

DROP TABLE IF EXISTS `generic_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) NOT NULL,
  `rating_date` datetime(6) DEFAULT NULL,
  `object_pk` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_ratin_content_type_id_eaf475fa_fk_django_content_type_id` (`content_type_id`),
  KEY `generic_rating_user_id_60020469_fk_auth_user_id` (`user_id`),
  CONSTRAINT `generic_ratin_content_type_id_eaf475fa_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `generic_rating_user_id_60020469_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_rating`
--

LOCK TABLES `generic_rating` WRITE;
/*!40000 ALTER TABLE `generic_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_threadedcomment`
--

DROP TABLE IF EXISTS `generic_threadedcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_threadedcomment` (
  `comment_ptr_id` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `by_author` tinyint(1) NOT NULL,
  `replied_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_ptr_id`),
  KEY `D5c2cbe5d32cde8f103bcc4ab6ba0d0b` (`replied_to_id`),
  CONSTRAINT `D5c2cbe5d32cde8f103bcc4ab6ba0d0b` FOREIGN KEY (`replied_to_id`) REFERENCES `generic_threadedcomment` (`comment_ptr_id`),
  CONSTRAINT `generic_threadedco_comment_ptr_id_e208ed60_fk_django_comments_id` FOREIGN KEY (`comment_ptr_id`) REFERENCES `django_comments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_threadedcomment`
--

LOCK TABLES `generic_threadedcomment` WRITE;
/*!40000 ALTER TABLE `generic_threadedcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_threadedcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobaccomplishment`
--

DROP TABLE IF EXISTS `jobaccomplishment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobaccomplishment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `order` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobaccomplishment_job_id_a04554fd_fk_jobs_id` (`job_id`),
  CONSTRAINT `jobaccomplishment_job_id_a04554fd_fk_jobs_id` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobaccomplishment`
--

LOCK TABLES `jobaccomplishment` WRITE;
/*!40000 ALTER TABLE `jobaccomplishment` DISABLE KEYS */;
INSERT INTO `jobaccomplishment` VALUES (1,'Solve customer issues and requests (400+ till date), coordinate with clients and developers on any proposed changes',1,2),(3,'Developed a nonlinear superposition model in MATLAB to extract charge yields from spectroscopic data',1,1),(5,'Development of applications using HTML, Javascript, ObjectScript, SQL, MDX',2,2),(6,'Develop and improve analytical models, architecture, software performance, and dashboards for Business Intelligence',3,2),(7,'Developed MATLAB software for data processing, performed model-based\r\nanalysis of spectroscopic data on high performance servers',1,3),(8,'Co-developer of the C (LabWindows) software for a laser detector. Set up\r\nreal-time instrument control and digital data processing at high-repetition rates',2,3),(9,'Published 6 peer-reviewed publications (4 first author) in academic journals',3,3),(10,'Preprocessed movies of the cochlea with wavelet denoising and deconvolution',1,4),(11,'Implemented software using queues and event-driven programming in LabVIEW for laser systems',2,1),(12,'Consistently receive 10/10\'s in customer experience scores',5,2),(13,'Join client meetings to troubleshoot issues and coordinate project development',4,2),(15,'Invented and developed a MATLAB algorithm that uses optical flow to couple a simulation of cochlear movement \r\n  with microscopic movies',2,4),(16,'Published a peer reviewed publication in an academic journal',3,4);
/*!40000 ALTER TABLE `jobaccomplishment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(250) NOT NULL,
  `companyurl` varchar(200) NOT NULL,
  `location` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_current` tinyint(1) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `company_image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Delft University of Technology','https://www.tudelft.nl/en/','Delft, the Netherlands','Postdoctoral Scientist','Investigated the molecular electronic processes in organic semiconductors by modeling spectroscopic data','2011-09-01','2013-06-30',0,1,''),(2,'InterSystems Co.','https://www.intersystems.com/','Cambridge, MA','Support Specialist - Business Intelligence and Analytics','Provide technical support for InterSystems’ Business Intelligence platform <a href=\"http://docs.intersystems.com/latest/csp/docbook/DocBook.UI.Page.cls?KEY=D2GS_ch_intro\" target=\"_block\">DeepSee<a>','2014-05-01','2020-04-01',1,1,''),(3,'Vrije Universiteit','https://www.nat.vu.nl/en/research/biophysics/index.aspx','Amsterdam,<br>the Netherlands','Ph.D. in Biophysics of Photosynthesis','Researched the transport of light energy in plant and algal photosynthesis','2006-04-01','2011-06-30',0,1,''),(4,'Karolinska Institute','https://ki.se/en/neuro/ulfendahl-laboratory','Stockholm, Sweden','Master Thesis in Hearing Research','Researched cochlear mechanics','2004-08-01','2005-06-30',0,1,'');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_link`
--

DROP TABLE IF EXISTS `pages_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_link` (
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `pages_link_page_ptr_id_37d469f7_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_link`
--

LOCK TABLES `pages_link` WRITE;
/*!40000 ALTER TABLE `pages_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_page`
--

DROP TABLE IF EXISTS `pages_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords_string` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime(6) DEFAULT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `in_menus` varchar(100) DEFAULT NULL,
  `titles` varchar(1000) DEFAULT NULL,
  `content_model` varchar(50) DEFAULT NULL,
  `login_required` tinyint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_page_parent_id_133fa4d3_fk_pages_page_id` (`parent_id`),
  KEY `pages_page_site_id_47a43e5b_fk_django_site_id` (`site_id`),
  KEY `pages_page_publish_date_eb7c8d46_uniq` (`publish_date`),
  CONSTRAINT `pages_page_parent_id_133fa4d3_fk_pages_page_id` FOREIGN KEY (`parent_id`) REFERENCES `pages_page` (`id`),
  CONSTRAINT `pages_page_site_id_47a43e5b_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_page`
--

LOCK TABLES `pages_page` WRITE;
/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;
INSERT INTO `pages_page` VALUES (1,'','resume','resume','','place holder',1,'2018-07-09 21:10:29.251804','2018-07-10 21:08:06.002486',2,'2018-07-09 21:10:29.000000',NULL,NULL,1,0,'1','resume','richtextpage',0,NULL,1),(2,'','Blog','blog','','My blog about computer programming, machine learning, and troubleshooting issues, etc',1,'2018-07-09 21:12:17.513448','2018-07-10 21:08:00.320560',2,'2018-07-09 21:12:17.000000',NULL,NULL,1,1,'1','Blog','richtextpage',0,NULL,1),(3,'','About','about','','Welcome to my personal website!\nI am a physicist who loves programming and in general working with computers. I graduated at the University of Padova, Italy, and Ph.D. in Biophysics at the Vrije Universiteit of Amsterdam, the Netherlands. I am currently living and working in Boston, MA.',1,'2018-07-09 21:12:42.260002','2018-07-10 21:08:10.846152',1,'2018-07-09 21:12:42.000000',NULL,NULL,1,2,'1','About','richtextpage',0,NULL,1);
/*!40000 ALTER TABLE `pages_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_richtextpage`
--

DROP TABLE IF EXISTS `pages_richtextpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_richtextpage` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_richtextpage`
--

LOCK TABLES `pages_richtextpage` WRITE;
/*!40000 ALTER TABLE `pages_richtextpage` DISABLE KEYS */;
INSERT INTO `pages_richtextpage` VALUES (1,'<p>place holder</p>'),(2,'<p>My blog about computer programming, machine learning, and troubleshooting issues, etc</p>'),(3,'<h1>Welcome to my personal website!</h1>\n<p>I am a physicist who loves programming and in general working with computers. I graduated at the University of Padova, Italy, and Ph.D. in Biophysics at the Vrije Universiteit of Amsterdam, the Netherlands. I am currently living and working in Boston, MA.</p>\n<p>My original aim when I started building this site was learning Django. Once I created an<span>&nbsp;</span><a href=\"/resume\">online resume</a>, I included it in Mezzanine, a Content Management System that uses the Django framework.</p>\n<p>My<span>&nbsp;</span><a href=\"/blog\">blog</a><span>&nbsp;</span>contains posts about programming and troubleshooting.</p>\n<p>If you would like to contact me please use the form below.</p>\n<p></p>');
/*!40000 ALTER TABLE `pages_richtextpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programminglanguage`
--

DROP TABLE IF EXISTS `programminglanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programminglanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `level` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `order` int(11) NOT NULL,
  `programmingarea_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `program_programmingarea_id_1edf0110_fk_resume_programmingarea_id` (`programmingarea_id`),
  CONSTRAINT `program_programmingarea_id_1edf0110_fk_resume_programmingarea_id` FOREIGN KEY (`programmingarea_id`) REFERENCES `resume_programmingarea` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programminglanguage`
--

LOCK TABLES `programminglanguage` WRITE;
/*!40000 ALTER TABLE `programminglanguage` DISABLE KEYS */;
INSERT INTO `programminglanguage` VALUES (5,'Python',5,'Proficient',1,1),(6,'Javascript',3,'Intermediate',3,2),(7,'C',2,'Used in the past',9,1),(8,'Django',4,'Daily use',4,1),(9,'Caché ObjectScript',5,'Proficient',2,1),(10,'MDX',5,'',3,3),(11,'SQL',4,'',6,1),(12,'MATLAB',4,'Daily use until 2013',3,1),(13,'Java',3,'',8,1),(14,'LabWindows/CVI',3,'',10,1),(15,'ShellScript (Bash)',4,'',5,1),(16,'LabVIEW',4,'',7,1),(17,'LaTeX',3,'',7,3),(18,'HTML',4,'',1,2),(19,'CSS',3,'',2,2),(20,'Python libraries (scikit learn, pandas, numpy, matplotlib, nltk, etc)',3,'',1,3),(21,'Bootstrap',3,'',4,2),(22,'REST',3,'',7,1),(23,'D3',3,'',4,2),(24,'amCharts',3,'Refer to my DeepSee_TimeCharts project on GitHub',5,2);
/*!40000 ALTER TABLE `programminglanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `authors` longtext NOT NULL,
  `author_underlined` varchar(50) NOT NULL,
  `journal` varchar(150) NOT NULL,
  `year` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `journalpages` longtext NOT NULL,
  `link` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (1,'Excitation-induced polarization decay in the plant light-harvesting complex LHCII.','Marin A, van Stokkum IH, Novoderezhkin VI, van Grondelle R.','Marin A','Journal of Photochemistry and Photobiology, A: Chemistry',2012,1,'234:91-99','https://www.sciencedirect.com/science/article/pii/S1010603012000172'),(2,'Flow of excitation energy in the cryptophyte light-harvesting antenna phycocyanin 645.','Marin A, Doust AB, Scholes GD, Wilk KE, Curmi PMG, van Stokkum IHM, van Grondelle\r\nR.','Marin A','Biophysical Journal',2011,1,'101:1004-1013','https://www.sciencedirect.com/science/article/pii/S0006349511008423'),(3,'Intra- and inter-monomeric transfers in the light harvesting LHCII complex: the Redfield-Frster picture.','Novoderezhkin VI, Marin A, van Grondelle R.','Marin A','Physical Chemistry Chemical Physics',2011,2,'13(38):17093-103','http://pubs.rsc.org/en/content/articlelanding/2011/cp/c1cp21079c#!divAbstract'),(4,'Minor complexes at work: light-harvesting by Carotenoids in the Photosystem II antenna complexes CP24 and CP26','Marin A, Passarini F, van Stokkum IH, Croce R, van Grondelle R.','Marin A','Biophysical Journal',2011,3,'100(11):2829-2838','https://www.ncbi.nlm.nih.gov/pubmed/21641329'),(5,'Molecular adaptation of photoprotection: Triplet states in light-harvesting proteins','Gall A, Berera R, Alexandre MTA, Pascal AA, Bordes L, Mendes-Pinto MM, Andrianambinintso\r\nS, Stoitchkova KV, Marin A, Valkunas L, Horton P, Kennis JTM, van Grondelle R, Ruban A,\r\nRobert B.','Marin A','Biophysical Journal',2011,4,'101(4):934-942','https://www.ncbi.nlm.nih.gov/pubmed/21843485'),(6,'The energy transfer pathways in the CP24 and CP26 antenna complexes of higher plant Photosystem II. A comparative study.','Marin A, Passarini F, Croce R, van Grondelle R.','Marin A','Biophysical Journal',2010,1,'99:4056-4065','https://www.ncbi.nlm.nih.gov/pubmed/21156149'),(7,'From cochlear kinematics to cochlear mechanics: matching model to experiments','Boutet de Monvel J, Marin A, Jacob S, Tomo I, von Tiedemann M, Fridberger A, Ulfendahl M,\r\nSteele CR.','Marin A','Otol Jpn',2007,1,'16(2):76-84','https://www.jstage.jst.go.jp/article/otoljpn1991/17/2/17_2_76/_pdf');
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_education`
--

DROP TABLE IF EXISTS `resume_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name2` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `location2` varchar(250) NOT NULL,
  `schoolurl` varchar(200) NOT NULL,
  `schoolurl2` varchar(200) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `degree` longtext NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_education`
--

LOCK TABLES `resume_education` WRITE;
/*!40000 ALTER TABLE `resume_education` DISABLE KEYS */;
INSERT INTO `resume_education` VALUES (1,'University of Padova','Karolinska Institute','Padova, Italy','Stockholm, Sweden','http://www.unipd.it/en/','https://ki.se/en/neuro/ulfendahl-laboratory','1999-09-01','2005-11-30','BSc in Physics, MSc in Applied Physics','Bachelor and Master in Physics at University of Padova.  <br>\r\n  \r\n  Master thesis in Biophysics of the cochlea at Karolinska Institutet'),(2,'Conservatory of Music Benedetto Marcello','','Venice, Italy','','http://www.conservatoriovenezia.net/','','2001-09-01','2004-06-30','Bachelor of Music, Piano','3 years piano, 1 year composition'),(3,'Vrije Universiteit','','Amsterdam, the Netherlands','','https://www.nat.vu.nl/en/research/biophysics/index.aspx','','2005-04-01','2012-06-30','PhD in Biophysics of Photosynthesis','Full time research in biophysics of photosynthesis on the EU funded project Harvest');
/*!40000 ALTER TABLE `resume_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_language`
--

DROP TABLE IF EXISTS `resume_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(20) NOT NULL,
  `order` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_language`
--

LOCK TABLES `resume_language` WRITE;
/*!40000 ALTER TABLE `resume_language` DISABLE KEYS */;
INSERT INTO `resume_language` VALUES (6,'Dutch',2,4),(7,'English',1,4),(8,'Spanish',1,3),(9,'French',2,3),(10,'Italian',1,5);
/*!40000 ALTER TABLE `resume_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_overview`
--

DROP TABLE IF EXISTS `resume_overview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume_overview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_overview`
--

LOCK TABLES `resume_overview` WRITE;
/*!40000 ALTER TABLE `resume_overview` DISABLE KEYS */;
INSERT INTO `resume_overview` VALUES (1,'Qualified by 4 years as Support Specialist and 7 years of doctoral and post-doctoral academic experience \r\n  in biophysics and solar energy research. Expertise in programming, data acquisition and data analysis, including machine learning and modeling. <br>\r\nI am interested in leveraging my skills for a role in development and data analysis.');
/*!40000 ALTER TABLE `resume_overview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_personalinfo`
--

DROP TABLE IF EXISTS `resume_personalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume_personalinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `site` varchar(200) NOT NULL,
  `twittername` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `cv_pdf` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_personalinfo`
--

LOCK TABLES `resume_personalinfo` WRITE;
/*!40000 ALTER TABLE `resume_personalinfo` DISABLE KEYS */;
INSERT INTO `resume_personalinfo` VALUES (1,'Alessandro','','Marin','PhD','Boston','MA','Support Specialist - Business Intelligence and Analytics','AlessandroMarin80@gmail.com','https://www.linkedin.com/in/alessandromarin80/','','https://github.com/aless80','https://aless80.pythonanywhere.com/resume','','static/resume/img/profile.jpg','static/resume/img/Alessandro_Marin_PhD_CV_kdNYTYy.pdf');
/*!40000 ALTER TABLE `resume_personalinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_programmingarea`
--

DROP TABLE IF EXISTS `resume_programmingarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume_programmingarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_programmingarea`
--

LOCK TABLES `resume_programmingarea` WRITE;
/*!40000 ALTER TABLE `resume_programmingarea` DISABLE KEYS */;
INSERT INTO `resume_programmingarea` VALUES (1,'Back end',1),(2,'Front-end',3),(3,'Machine Learning/Other',6);
/*!40000 ALTER TABLE `resume_programmingarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_project`
--

DROP TABLE IF EXISTS `resume_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `short_description` longtext NOT NULL,
  `long_description` longtext NOT NULL,
  `link` varchar(200) NOT NULL,
  `order` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `projtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_project_projtype_id_36ffa15d_fk_resume_projecttype_id` (`projtype_id`),
  CONSTRAINT `resume_project_projtype_id_36ffa15d_fk_resume_projecttype_id` FOREIGN KEY (`projtype_id`) REFERENCES `resume_projecttype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_project`
--

LOCK TABLES `resume_project` WRITE;
/*!40000 ALTER TABLE `resume_project` DISABLE KEYS */;
INSERT INTO `resume_project` VALUES (1,'Djangoresume','My Django-based online resume','My Django-based online resume','https://github.com/aless80/Djangoresume',4,'static/resume/img/Djangoresume.png',1),(5,'Machine Learning Notebooks','IPython notebooks for Machine Learning projects','ipython notebooks for Machine Learning projects','https://aless80.github.io/#machine-learning',1,'',1),(6,'iGrow','Webapp allowing users to plot a child’s weight, length and BMI in comparison to\r\nreference data from the World Health Organization.','Webapp allowing users to plot a child’s weight, length and BMI in comparison to\r\nreference data from the World Health Organization. My first javascript project','http://edosil.net/igrow',7,'static/resume/img/iGrow.png',1),(7,'Tantrix','Implementation in Python of a puzzle game','Implementation in Python of the Tantrix puzzle game. My first Python project. It uses TKinter for the UI','https://github.com/aless80/tantrix',6,'static/resume/img/tantrix.gif',1),(9,'DeepSeeButtons','Gather and analyze system information from InterSystems platforms','Reporting routine for InterSystems\' Business Intelligence product DeepSee. This project will be added to the product. This project uses InterSystems\' proprietary language Caché ObjectScript, as well as HTML/CSS/JavaScript','https://github.com/aless80/DeepSeeButtons',1,'static/resume/img/DeepSeeButtons.gif',2),(10,'PyPanda','Optimized a method for modeling transcriptional networks in Python','Optimized a method for modeling transcriptional networks in Python. The algorithm was published by the Quackenbush Lab at the Dana Farber cancer institute','https://github.com/aless80/pypanda',2,'static/resume/img/panda_topgenes.png',1),(11,'InterSystems','Miscellaneous projects involving InterSystems\' technology','Miscellaneous projects involving InterSystems\' technology, in particular InterSystems\' Business Intelligence product DeepSee','https://aless80.github.io/#intersystems',6,'',2),(12,'PyPuma','Wrote a Python application of a computational biology method for miRNA network inference','Wrote a Python application of a computational biology method for miRNA network inference. The algorithm was published by the Quackenbush Lab at the Dana Farber cancer institute','https://github.com/aless80/PyPuma',3,'',1),(13,'Install-Samples-BI','Automatically install SAMPLES in IRIS Data Platform','Automatically install SAMPLES in IRIS Data Platform. This project uses InterSystems\' proprietary language Caché ObjectScript.','https://github.com/aless80/Install-Samples-BI',5,'static/resume/img/Install-Samples-BI.png',1),(14,'Mezzanine-website','My Django/Mezzanine-based site','My Django/Mezzanine-based site (online resume, blog)','https://github.com/aless80/Mezzanine-website',2,'static/resume/img/Mezzanine-website.png',2);
/*!40000 ALTER TABLE `resume_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_projecttype`
--

DROP TABLE IF EXISTS `resume_projecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume_projecttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_projecttype`
--

LOCK TABLES `resume_projecttype` WRITE;
/*!40000 ALTER TABLE `resume_projecttype` DISABLE KEYS */;
INSERT INTO `resume_projecttype` VALUES (1,'Projects',1),(2,'Ongoing Projects',2);
/*!40000 ALTER TABLE `resume_projecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_skill`
--

DROP TABLE IF EXISTS `resume_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `order` int(11) NOT NULL,
  `skillset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_skill_skillset_id_c155f55d_fk_resume_skillset_id` (`skillset_id`),
  CONSTRAINT `resume_skill_skillset_id_c155f55d_fk_resume_skillset_id` FOREIGN KEY (`skillset_id`) REFERENCES `resume_skillset` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_skill`
--

LOCK TABLES `resume_skill` WRITE;
/*!40000 ALTER TABLE `resume_skill` DISABLE KEYS */;
INSERT INTO `resume_skill` VALUES (1,'Data analysis using MATLAB, Python (pandas, numpy, etc), R',3,1),(2,'Databases: relational (SQL) and NoSQL databases',6,1),(3,'UI and website development: HTML/CSS/Javascript (jQuery, D3, amCharts), Django, Python (Tkinter), LabView, LabWindows',2,1),(4,'Troubleshooting technical issues using the scientific method and problem solving theory',2,2),(6,'Business Intelligence Analytics: diagnosing issues with data, BI models, architecture. Recommending optimizations for performance problems, efficient parallel processing of data',5,1),(7,'Version control software: Git, Perforce',7,1),(8,'Machine learning in Python (scikit-learn, gensim, nltk, etc): regression, classification/clustering, ensemble methods, dimensionality reduction, time series analysis, web scraping, \r\n    natural language processing (topic analysis), anomaly detection, familiarity with recommendation systems, neural networks',4,1),(10,'Professional experience with large-scale code bases (InterSystems Caché) with desire to dive in existing code',1,2),(11,'Teamwork: launched and supported research projects resulting in 7 academic publications',3,2),(13,'Management responsibilities and teaching: mentored a new hire and BSc and MSc students, who completed their projects on time and to a high standard. Two years teaching assistant in the MATLAB/LabVIEW course “Applied Informatics for Medical Students” given in Dutch',4,2),(15,'Software development: Python, MATLAB, ObjectScript, Java, Javascript, LabVIEW, UNIX shell',1,1),(16,'Scientific/Technical writing: published 4 first-authored academic publications, as well as 12 technical articles for the Developer Community of InterSystems',5,2),(17,'Communication: presented 16 oral talks at international conferences',7,2);
/*!40000 ALTER TABLE `resume_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_skillset`
--

DROP TABLE IF EXISTS `resume_skillset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume_skillset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_skillset`
--

LOCK TABLES `resume_skillset` WRITE;
/*!40000 ALTER TABLE `resume_skillset` DISABLE KEYS */;
INSERT INTO `resume_skillset` VALUES (1,'Technical Skills'),(2,'Transferable Skills');
/*!40000 ALTER TABLE `resume_skillset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_query`
--

DROP TABLE IF EXISTS `twitter_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `value` varchar(140) NOT NULL,
  `interested` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_query`
--

LOCK TABLES `twitter_query` WRITE;
/*!40000 ALTER TABLE `twitter_query` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_tweet`
--

DROP TABLE IF EXISTS `twitter_tweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_tweet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remote_id` varchar(50) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `text` longtext,
  `profile_image_url` varchar(200) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `retweeter_profile_image_url` varchar(200) DEFAULT NULL,
  `retweeter_user_name` varchar(100) DEFAULT NULL,
  `retweeter_full_name` varchar(100) DEFAULT NULL,
  `query_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `twitter_tweet_query_id_bd42b699_fk_twitter_query_id` (`query_id`),
  CONSTRAINT `twitter_tweet_query_id_bd42b699_fk_twitter_query_id` FOREIGN KEY (`query_id`) REFERENCES `twitter_query` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_tweet`
--

LOCK TABLES `twitter_tweet` WRITE;
/*!40000 ALTER TABLE `twitter_tweet` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-10 17:08:58
