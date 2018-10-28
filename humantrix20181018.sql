-- MySQL dump 10.13  Distrib 5.5.60, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: humantrix
-- ------------------------------------------------------
-- Server version	5.5.60-0ubuntu0.14.04.1

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
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ora_name` varchar(255) NOT NULL,
  `type` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` VALUES (1,0,'162wnd5u4wjm.jpg','app1.jpg','jpg'),(2,0,'162x58ilgvcn.jpg','app2.jpg','jpg'),(3,0,'162x58uuc6h8.jpg','app3.jpg','jpg'),(4,0,'162x5944pahx.jpg','app4.jpg','jpg'),(5,0,'162x59cz7zfh.jpg','app5.jpg','jpg'),(6,0,'162x5eifnv5f.jpg','app6.jpg','jpg'),(7,0,'162x5ettu9ow.jpg','app7.jpg','jpg'),(8,0,'162x5f2ym8zb.jpg','app8.jpg','jpg'),(9,0,'162x5fbcplp2.jpg','app9.jpg','jpg'),(10,0,'162x5fkdd7q4.jpg','app10.jpg','jpg'),(11,0,'162x5fs34cyi.jpg','app11.jpg','jpg'),(12,0,'162x5g1b42um.jpg','app11.jpg','jpg'),(13,0,'162x5g95m04m.jpg','app12.jpg','jpg'),(14,0,'162x5glnt4lv.jpg','app13.jpg','jpg'),(15,0,'162x5gu96my5.jpg','app14.jpg','jpg'),(16,0,'162x5h2kalj1.jpg','app15.jpg','jpg'),(17,0,'162x5hhot55e.jpg','crm1.jpg','jpg'),(18,0,'47hpqyzvhse.jpg','crm2.jpg','jpg'),(19,0,'162x5hx7bbwa.jpg','crm3.jpg','jpg'),(20,0,'162x5i6i39ej.jpg','crm4.jpg','jpg'),(21,0,'162x5idugt1k.jpg','crm5.jpg','jpg'),(22,0,'162x5ilj931h.jpg','crm5.jpg','jpg'),(23,0,'162x5iusoz71.jpg','crm7.jpg','jpg'),(24,0,'162x5j1tnn65.jpg','crm8.jpg','jpg'),(25,0,'162x5j92i2fo.jpg','crm9.jpg','jpg'),(26,0,'162x5jfwwnim.jpg','crm10.jpg','jpg'),(27,0,'5gc0jnhla.jpg','crm11.jpg','jpg'),(28,0,'162x5ju3eibg.jpg','crm12.jpg','jpg'),(29,0,'47hpr7h0z1x.jpg','crm13.jpg','jpg'),(30,0,'47hpr85f8ec.jpg','crm14.jpg','jpg'),(31,0,'162x5kh7pm8x.jpg','crm15.jpg','jpg'),(32,0,'162x5kni8h9f.jpg','crm16.jpg','jpg'),(33,0,'162x5l3mu5vu.jpg','ec1.jpg','jpg'),(34,0,'162x5lan5ip8.jpg','ec2.jpg','jpg'),(35,0,'162x5lhdqa62.jpg','ec3.jpg','jpg'),(36,0,'162x5lo9t0xx.jpg','ec4.jpg','jpg'),(37,0,'162x5lvaslpv.jpg','ec5.jpg','jpg'),(38,0,'162x5mbs8n97.jpg','erp1.jpg','jpg'),(39,0,'162x77hed0at.jpg','erp2.jpg','jpg'),(40,0,'162x77oag0cn.jpg','erp3.jpg','jpg'),(41,0,'162x77uc37a6.jpg','erp4.jpg','jpg'),(42,0,'162x7811ngn6.jpg','erp5.jpg','jpg'),(43,0,'162x788alftr.jpg','erp6.jpg','jpg'),(44,0,'162x78g52mhz.jpg','erp7.jpg','jpg'),(45,0,'162x78oh3xii.jpg','erp8.jpg','jpg'),(46,0,'162x78vbtzso.jpg','erp9.jpg','jpg'),(47,0,'162x792dnd37.jpg','erp10.jpg','jpg'),(48,0,'162x799vrsnk.jpg','erp10.jpg','jpg'),(49,0,'162x79hbwcxq.jpg','erp11.jpg','jpg'),(50,0,'162x79oo6h2r.jpg','erp12.jpg','jpg'),(51,0,'162x79urkqae.jpg','erp13.jpg','jpg'),(52,0,'162x7a8cgzcs.jpeg','inv1.jpeg','jpeg'),(53,0,'162x7afcqjru.jpeg','inv2.jpeg','jpeg'),(54,0,'162x7amfsrqc.jpg','inv3.jpg','jpg'),(55,0,'162x7asy3lvt.jpg','inv4.jpg','jpg'),(56,0,'162x7b0d771x.jpg','inv5.jpg','jpg'),(57,0,'162x7b7nih4h.jpg','inv6.jpg','jpg'),(58,0,'47hpxjvmt3s.jpg','inv7.jpg','jpg'),(59,0,'162x7bt8jlx2.jpg','inv8.jpg','jpg'),(60,0,'162x7c1k3fia.jpg','inv9.jpg','jpg'),(61,0,'162x7c92ccpp.jpg','inv10.jpg','jpg'),(62,0,'162x7chdx4ex.jpg','inv11.jpg','jpg'),(63,0,'162x7cogl7i5.jpeg','inv12.jpeg','jpeg'),(64,0,'162x7cv4rw4m.jpg','inv13.jpg','jpg'),(65,0,'162x7d2hqn05.jpg','inv14.jpg','jpg'),(66,0,'162x7dvltbsl.jpg','inv15.jpg','jpg'),(67,0,'162x7e2twk6z.jpg','inv16.jpg','jpg'),(68,0,'162x7e9fmoyc.jpg','inv17.jpg','jpg'),(69,0,'162x7efrqmla.jpg','inv18.jpg','jpg'),(70,0,'47hpxv5kww7.jpg','inv19.jpg','jpg'),(71,0,'162x7f2j4jz1.png','mis1.png','png'),(72,0,'162x7knsl1gz.jpg','mis2.jpg','jpg'),(73,0,'162x7kuuublf.jpg','mis3.jpg','jpg'),(74,0,'162x7l1g0cck.jpg','mis4.jpg','jpg'),(75,0,'162x7l8hf8mu.jpg','mis5.jpg','jpg'),(76,0,'162x7lerldve.jpg','mis6.jpg','jpg'),(77,0,'162x7lkl8iic.jpg','mis7.jpg','jpg'),(78,0,'162x7lw7w55x.jpg','oa1.jpg','jpg'),(79,0,'162x7m3lpyhu.jpg','oa2.jpg','jpg'),(80,0,'162x7mbcai6u.jpeg','oa3.jpeg','jpeg'),(81,0,'47hpynea039.jpeg','oa4.jpeg','jpeg'),(82,0,'162x7mpdks4c.jpg','oa5.jpg','jpg'),(83,0,'162x7mwm3p4w.jpg','oa6.jpg','jpg'),(84,0,'162x7n3mmqst.jpg','oa7.jpg','jpg'),(85,0,'162x7naibfer.jpg','oa8.jpg','jpg'),(86,0,'162x7nlth5zc.jpg','oa9.jpg','jpg'),(87,0,'162x7ntny3wu.jpg','oa10.jpg','jpg'),(88,0,'162x7o1qhpmp.jpg','oa11.jpg','jpg'),(89,0,'162x7o93cqda.jpg','oa12.jpg','jpg'),(90,0,'162x7oiw7hsq.jpg','oa13.jpg','jpg'),(91,0,'162x7opz1ipx.jpg','oa14.jpg','jpg'),(92,0,'162x7oyh8wnr.jpg','oa15.jpg','jpg'),(93,0,'162x7p5qudy9.jpeg','oa16.jpeg','jpeg'),(94,0,'162x7pdu21tu.jpg','oa17.jpg','jpg'),(95,0,'162x7pkqh95q.jpg','oa18.jpg','jpg'),(96,0,'162x7prm11ax.jpg','oa19.jpg','jpg'),(97,0,'162x7q51mneg.jpg','sc1.jpg','jpg'),(98,0,'162x7qcdz9ze.jpg','sc2.jpg','jpg'),(99,0,'162x7qj2y8ba.jpg','sc3.jpg','jpg'),(100,0,'162x7qpasdhk.jpg','sc4.jpg','jpg'),(101,0,'162x7qw0qo95.jpg','sc5.jpg','jpg'),(102,0,'162x7r2qm6fl.jpg','sc6.jpg','jpg'),(103,0,'162x7r8kbxwi.jpg','sc7.jpg','jpg'),(104,0,'162x7rn3omzs.jpg','web-ec1.jpg','jpg'),(105,0,'162x7rtdjy79.jpg','web-ec2.jpg','jpg'),(106,0,'162x7s1avx18.jpg','web-ec3.jpg','jpg'),(107,0,'162x7s85hk0i.jpg','web-ec4.jpg','jpg'),(108,0,'f5debnsqet.jpg','web-ec5.jpg','jpg'),(109,0,'162x7sl5u7ff.jpg','web-ec6.jpg','jpg'),(110,0,'162x7t2grau0.jpeg','web-ps1.jpeg','jpeg'),(111,0,'162x7t9cwz16.jpeg','web-ps2.jpeg','jpeg'),(112,0,'162x7tglfp7g.jpg','web-ps3.jpg','jpg'),(113,0,'162x7tnbvzrk.jpg','web-ps4.jpg','jpg'),(114,0,'47hpzdwqnhi.jpg','web-ps5.jpg','jpg'),(115,0,'162x7u2oeykr.jpg','web-ps6.jpg','jpg'),(116,0,'162x7uawbblm.jpg','web-ps7.jpg','jpg'),(117,0,'162x7uhh9oah.jpg','web-ps8.jpg','jpg'),(118,0,'162x7uq7tfmc.jpg','web-ps9.jpg','jpg'),(119,0,'162x7uwzigis.jpg','web-ps10.jpg','jpg'),(120,0,'162x7v3ojcyl.jpg','web-ps11.jpg','jpg'),(121,0,'162x7ve0yti3.jpg','web-pt1.jpg','jpg'),(122,0,'162x7vk8cpo2.jpg','web-pt2.jpg','jpg'),(123,0,'162x7vqnxd9y.jpg','web-pt3.jpg','jpg'),(124,0,'47hpzlaa45e.jpg','web-pt4.jpg','jpg'),(125,0,'162x7w48jjet.jpg','web-pt5.jpg','jpg'),(126,0,'162x7wbgg55p.jpg','web-pt6.jpg','jpg'),(127,0,'162x7whfyom5.jpg','web-pt7.jpg','jpg'),(128,0,'162x7wrbcqmk.jpeg','web1.jpeg','jpeg'),(129,0,'162x7wxj9yjw.jpeg','web2.jpeg','jpeg'),(130,0,'162x7x4bj0go.jpg','web3.jpg','jpg'),(131,0,'162x7xbmfg8l.jpg','web4.jpg','jpg'),(132,0,'162x7xi614rm.jpg','web5.jpg','jpg'),(133,0,'47hpzrq71yf.jpg','web6.jpg','jpg'),(134,0,'162x7xw6g7e7.jpg','web7.jpg','jpg'),(135,0,'47hpztasoh4.jpg','web8.jpg','jpg'),(136,0,'162x7ybg7tlw.jpg','web9.jpg','jpg'),(137,0,'162x7yi8zsrz.jpg','web10.jpg','jpg'),(138,0,'162x7yqdx6fu.jpg','web11.jpg','jpg'),(139,0,'162x7yx7ormn.jpg','web12.jpg','jpg'),(140,0,'162x7z4jgrqy.jpg','web13.jpg','jpg'),(141,0,'162x7zc8ps6y.jpg','web14.jpg','jpg'),(142,0,'f5dee8qrk0.jpeg','web15.jpeg','jpeg'),(143,0,'162x7zsdixsx.jpg','web16.jpg','jpg'),(144,0,'162x80006ca9.jpg','web17.jpg','jpg'),(145,0,'162x807tbwb8.jpg','web18.jpg','jpg'),(146,0,'162x80iigkf2.jpg','web19.jpg','jpg'),(147,0,'162x80swef6m.jpg','web20.jpg','jpg'),(148,0,'162x814qrt5p.jpeg','web21.jpeg','jpeg'),(149,0,'162x81l9s8re.gif','we1.gif','gif'),(150,0,'162x81t10gtk.gif','we2.gif','gif'),(151,0,'162x821gqsp2.jpg','we3.jpg','jpg'),(152,0,'162x829uneyz.jpg','we4.jpg','jpg'),(153,0,'162x82hdo1n2.jpg','we5.jpg','jpg'),(154,0,'162x82opbe7s.jpg','we6.jpg','jpg'),(155,0,'162x82wavha0.jpg','we8.jpg','jpg'),(156,0,'162x837303gg.jpg','we9.jpg','jpg'),(157,0,'162x83fq6bge.jpg','we10.jpg','jpg'),(158,0,'162x83rtl4va.jpg','we11.jpg','jpg'),(159,0,'162x83zq9r4h.jpg','we12.jpg','jpg'),(160,0,'162x847puheo.jpg','we13.jpg','jpg'),(161,0,'162x84h8yxb8.jpg','we15.jpg','jpg'),(162,0,'162x84rdzxzi.jpg','we16.jpg','jpg'),(163,0,'162x84yb4oix.jpg','we17.jpg','jpg'),(164,0,'162x8578y62e.jpg','we18.jpg','jpg'),(165,0,'162x85foailo.jpg','we20.jpg','jpg'),(166,0,'162x85nkzug5.jpg','we21.jpg','jpg'),(167,0,'162x85vjqjfm.jpg','we22.jpg','jpg'),(168,0,'162x8620n000.jpg','we23.jpg','jpg'),(169,0,'162x867ywtnf.jpg','we24.jpg','jpg'),(170,0,'162x86l38q34.jpg','we-mp1.jpg','jpg'),(171,0,'162x86s5c7l4.jpg','we-mp2.jpg','jpg'),(172,0,'162x86xw1z7x.jpg','we-mp3.jpg','jpg'),(173,0,'162x873jqd8i.jpg','we-mp4.jpg','jpg'),(174,0,'162x87e0a5ug.jpg','we-mp5.jpg','jpg'),(175,0,'162x87miiq85.jpg','we-mp6.jpg','jpg'),(176,0,'162x87udg7d6.jpg','we-mp7.jpg','jpg'),(177,0,'47hq0sysal4.jpg','we-mp8.jpg','jpg'),(178,0,'162x88a9jc9q.jpg','we-mp9.jpg','jpg'),(179,0,'162x88ibf40d.jpg','we-mp10.jpg','jpg'),(180,0,'47hq0vqq6fd.jpg','we-mp11.jpg','jpg'),(181,0,'47hq0wnnwx8.jpg','we-mp12.jpg','jpg'),(182,0,'162x89cktjha.jpg','we-mp13.jpg','jpg'),(183,0,'47hq0ykg8mh.jpg','we-mp14.jpg','jpg'),(184,0,'162x89z3x402.jpg','we-sb1.jpg','jpg'),(185,0,'162x8a5iyfjw.jpg','we-sb2.jpg','jpg'),(186,0,'162x8abkzwdz.jpg','we-sb3.jpg','jpg'),(187,0,'162x8akz853q.jpg','we-sb4.jpg','jpg'),(188,0,'47hq12s70de.jpg','we-sb6.jpg','jpg'),(189,0,'162x8b0hxuk8.jpeg','we-sb7.jpeg','jpeg'),(190,0,'162x8b6r5xrb.jpg','we-sb8.jpg','jpg'),(191,0,'162x8bdmgtyt.jpg','we-sb9.jpg','jpg'),(192,0,'162x8bm62jp5.jpg','we-sb10.jpg','jpg'),(193,0,'162x8bsmpryc.jpg','we-sb11.jpg','jpg'),(194,0,'162x8c0qijug.jpg','we-sb13.jpg','jpg'),(195,0,'162x8c8389a3.jpg','we-sb15.jpg','jpg'),(196,0,'162x8ce8cb7v.jpg','we-sb16.jpg','jpg'),(197,0,'162x8clmg1zl.jpg','we-sb17.jpg','jpg'),(198,0,'162x8cr5nzws.jpg','we-sb18.jpg','jpg'),(199,0,'162x8cyb0m8j.jpg','we-sb19.jpg','jpg'),(200,0,'16399n3w14b2.png','map-address.png','png');
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_develop`
--

DROP TABLE IF EXISTS `custom_develop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_develop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `clent_type` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL,
  `subject_time` float NOT NULL,
  `total_pages` float NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `use_people` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_70fjt675iewt7a9fm2wwgal5j` (`type_id`),
  CONSTRAINT `FK_70fjt675iewt7a9fm2wwgal5j` FOREIGN KEY (`type_id`) REFERENCES `product_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_develop`
--

LOCK TABLES `custom_develop` WRITE;
/*!40000 ALTER TABLE `custom_develop` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_develop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_develop_product_interface`
--

DROP TABLE IF EXISTS `custom_develop_product_interface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_develop_product_interface` (
  `custom_develop_interfaces_id` bigint(20) DEFAULT NULL,
  `product_interface_id` bigint(20) DEFAULT NULL,
  KEY `FK_8oy43u37nnahsk34dewnhpatg` (`product_interface_id`),
  KEY `FK_rm7cgdwyin5wxkr7qlqmdahu1` (`custom_develop_interfaces_id`),
  CONSTRAINT `FK_8oy43u37nnahsk34dewnhpatg` FOREIGN KEY (`product_interface_id`) REFERENCES `product_interface` (`id`),
  CONSTRAINT `FK_rm7cgdwyin5wxkr7qlqmdahu1` FOREIGN KEY (`custom_develop_interfaces_id`) REFERENCES `custom_develop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_develop_product_interface`
--

LOCK TABLES `custom_develop_product_interface` WRITE;
/*!40000 ALTER TABLE `custom_develop_product_interface` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_develop_product_interface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `content` varchar(8000) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (1,1,'<p>成都人之初科技有限公司是一家专业提供软件定制设计，手机APP软件定制开发，微信平台程序开发，HTML5开发，直销系统设计，网络推广的软件外包服务公司。我们会尽全力为你设计优秀的软件。不仅让你的软件更专业，同时也增加您的商务利润! 我们是一支由系统架构师、高级工程师和系统安全工程师组成的高端软件研发团队;定制你需要的软件功能。如果你的决定选择我们，我们将为你提供高品质的软件与服务。</p>\r\n\r\n<p>1000多个项目实战,已经沉淀有大量的成熟技术，从而保障为你的提供高质量的软件;也正因为如此,我们的客户满意度在不断提高！这也是我们在软件定制行业成功的秘决!</p>','成都人之初科技有限公司','关于我们'),(2,3,'<p>地址：成都市武侯区金融成天府新谷701</p>\r\n\r\n<p>邮编：61041</p>\r\n\r\n<p>邮箱：pa@humantrix.com</p>','成都人之初科技有限公司','联系我们'),(3,1,'<p>你拥有丰富的经验、技能及热情，而我们相信你可以将这些带到点点客，换取有竞争力的薪酬、内容丰富的职业和生活，你会惊讶于这个行业无限的潜力，我们所已经开拓到的广度、深度和我们对于移动营销前景的期待与热情。 我们提供多样化的产品和服务，帮助企业更快捷的实现传统业务向移动互联网的迁移。</p>\r\n\r\n<p>联系邮箱:hr@humantrix.com</p>','成都人之初科技有限公司','加入我们'),(4,0,'<p>申请本站友情链接请联系邮箱：webmaster@humantrix.com</p>','友情链接','友情链接');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_attachment`
--

DROP TABLE IF EXISTS `document_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_attachment` (
  `document_attachments_id` bigint(20) DEFAULT NULL,
  `attachment_id` bigint(20) DEFAULT NULL,
  KEY `FK_qbuq371rlfyhu6r7rr7y6p3ff` (`attachment_id`),
  KEY `FK_t60cqq4bg8wqq3e6fg12lr25a` (`document_attachments_id`),
  CONSTRAINT `FK_qbuq371rlfyhu6r7rr7y6p3ff` FOREIGN KEY (`attachment_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FK_t60cqq4bg8wqq3e6fg12lr25a` FOREIGN KEY (`document_attachments_id`) REFERENCES `document` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_attachment`
--

LOCK TABLES `document_attachment` WRITE;
/*!40000 ALTER TABLE `document_attachment` DISABLE KEYS */;
INSERT INTO `document_attachment` VALUES (2,200);
/*!40000 ALTER TABLE `document_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_permission` (`user_id`,`permission`),
  CONSTRAINT `FK_6p3mx8al2w4f7ltqiwf1j88fm` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,0,'*:*',1),(2,0,'queryAndStatistic:querySelfData',2);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `detail` varchar(8000) NOT NULL,
  `if_show` bit(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `price` float NOT NULL,
  `price_type` varchar(16) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `use_in` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_f2algorag6t9ytxokfg6rwx1e` (`type_id`),
  CONSTRAINT `FK_f2algorag6t9ytxokfg6rwx1e` FOREIGN KEY (`type_id`) REFERENCES `product_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'适合个人日志记录，个人个性展示，加密文档存放，通讯录，日记，相册，音乐，视频等一切资料均可加密存放。','','个人网站',1000,'永久',13,'个人'),(2,0,'适用于只是展示一些产品、企业介绍、公司新闻、案例......等基本信息，简单、大方、朴实，只是很清晰的把自己的主要信息传达给每一位浏览者','','产品展示网站',2000,'永久',1,'个人或公司'),(3,0,'提供某类综合性互联网信息资源并提供有关信息服务的应用系统。门户网站最初提供搜索引擎、目录服务。','','行业,门户功能性网站',5000,'永久',1,'个人或公司'),(4,1,'企业，公司，店铺的官网小程序版。虽然说现在的官网都可以做到自适应，其实并不需要小程序。但是因为小程序是不允许重复命名的，所以在乎自己品牌的公司和企业会选择注册自己的小程序，避免被同行恶意注册。公司的需求并不是要用户消费，而是品牌宣传，那么自然，小程序就会选择展示自己的网站内容了。','','企业展示小程序',2000,'永久',2,'个人或公司'),(5,1,'服务类小程序的特点是“轻、快”，在线下场景看到一个小程序码，扫码即可体验到媲美APP的体验，使得用户在小程序内完成整个业务流程都十分流畅，提升了用户体验，也可以激活很多不愿下载APP的用户，提升业务量。','','预约服务小程序',3000,'永久',2,'公司'),(6,1,'店铺“小程序”一站式建站服务，针对中小商家，一对一专属服务，千万级流量扶持，低门槛丰富获客渠道。','','店铺小程序',3000,'永久',2,'个人或公司'),(7,0,'面向组织的日常运作和管理，员工及管理者使用频率最高的应用系统，组织不可缺的核心应用系统。主要推行一种无纸化办公模式。','','通用OA系统',8000,'永久',3,'公司'),(8,0,'最大限度的利用现代计算机及网络通讯技术加强企业的信息管理，通过对企业拥有的人力、物力、财力、设备、技术等资源的调查了解，建立正确的数据，加工处理并编制成各种信息资料及时提供给管理人员，以便进行正确的决策，不断提高企业的管理水平和经济效益。目前，企业的计算机网络已成为企业进行技术改造及提高企业管理水平的重要手段。随着我国与世界信息高速公路的接轨，企业通过计算机网络获得信息必将为企业带来巨大的经济效益和社会效益，企业的办公及管理都将朝着高效、快速、无纸化的方向发展。','','通用MIS系统',25000,'永久',4,'公司'),(9,0,'以\"客户关系一对一理论\"为基础，旨在改善企业与客户之间关系的新型管理机制。客户关系管理的定义是：企业为提高核心竞争力，利用相应的信息技术以及互联网技术来协调企业与顾客间在销售、营销和服务上的交互，从而提升其管理方式，向客户提供创新式的个性化的客户交互和服务的过程。其最终目标是吸引新客户、保留老客户以及将已有客户转为忠实客户，增加市场份额。','','通用CRM系统',15000,'永久',5,'公司'),(10,0,'建立在信息技术基础上，集信息技术与先进管理思想于一身，以系统化的管理思想，为企业员工及决策层提供决策手段的管理平台。它是从MRP（物料需求计划）发展而来的新一代集成化管理信息系统，它扩展了MRP的功能，其核心思想是供应链管理。它跳出了传统企业边界，从供应链范围去优化企业的资源，优化了现代企业的运行模式，反映了市场对企业合理调配资源的要求。它对于改善企业业务流程、提高企业核心竞争力具有显著作用。','','通用ERP系统',80000,'永久',6,'公司'),(11,0,'公司内部办公系统适配到手机,平板APP上,更加方便公司人员的办公效率，和即时处理紧急任务。','','公司移动办公APP',20000,'永久',7,'公司'),(12,0,'1,精准营销:\r\n\r\n微信公众平台可以给关注者推送文字、语音、视频、图片、以及多图文消息，推送的内容可以是重要通知、趣味互动或产品营销等。我们总是转发到朋友圈的文章就是多图文消息。当消息推送出去时，每位关注的用户能收到，这便是微信最大的好处，直指用户，精准营销。\r\n\r\n2,自动回复:\r\n\r\n当我们关注一个微信公众号后，就会收到一条信息，这个就是被添加自动回复。微信公众平台还具有一对一沟通和互动，绝对是一个客户利器。比如现在做自动回复最好就是银行业。你可以向公众平台提问，提问的内容可以通过文字发送或者语音发送，平台会自动识别内容，直接把问题答案回复给你。\r\n\r\n3,数据分析:\r\n\r\n微信公众号后台可以对用户数据进行分析。如用户增减数据，用户性别、语言、省份、地理位置、使用的移动终端设备机型等。图文消息的到达率、阅读率、转发收藏率以及消息分析和接口分析等。通过这些数据分析可以更精准营销。\r\n\r\n4,品牌传播:\r\n\r\n微信公众平台服务用户，可以更好的引导用户了解企业文化，参与品牌的互动活动，扩散信息曝光率。最重要的是大幅度的降低了企业组织的营销成本。同时可以更好的帮助企业实体店实现O2O。','','通用公众号',5000,'永久',8,'公司'),(13,0,'1.微信公众平台订阅号每天都可以群发一条群发信息。群发的信息直接出现在订阅号文件夹中。\r\n2.订阅号群发信息时候，手机微信用户将不会收到像短信那样的消息提醒。\r\n3.在手机微信用户的通讯录中，订阅号将被放入订阅号文件夹中。','','通用订阅号',3000,'永久',9,'公司'),(14,0,'围绕核心企业，通过对信息流，物流，资金流的控制，从采购原材料开始，制成中间产品以及最终产品，最后由销售网络把产品送到消费者手中的将供应商，制造商，分销商，零售商，直到最终用户连成一个整体的功能网链结构。它不仅是一条连接供应商到用户的物流链、信息链、资金链，而且是一条增值链，物料在供应链上因加工、包装、运输等过程而增加其价值，给相关企业带来收益。','','通用供应链系统',50000,'永久',11,'公司'),(15,0,'电子商务平台即是一个为企业或个人提供网上交易洽谈的平台。企业电子商务平台是建立在Internet网上进行商务活动的虚拟网络空间和保障商务顺利运营的管理环境；是协调、整合信息流、货物流、资金流有序、关联、高效流动的重要场所。企业、商家可充分利用电子商务平台提供的网络基础设施、支付平台、安全平台、管理平台等共享资源有效地、低成本地开展自己的商业活动。','','通用电商平台',12000,'永久',12,'公司');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_attachment`
--

DROP TABLE IF EXISTS `product_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_attachment` (
  `product_attachments_id` bigint(20) DEFAULT NULL,
  `attachment_id` bigint(20) DEFAULT NULL,
  KEY `FK_mf6lvlimgmpjei3jsai1jfxof` (`attachment_id`),
  KEY `FK_ntuf6lbjbnnxv7vr6yx9nbwck` (`product_attachments_id`),
  CONSTRAINT `FK_mf6lvlimgmpjei3jsai1jfxof` FOREIGN KEY (`attachment_id`) REFERENCES `attachment` (`id`),
  CONSTRAINT `FK_ntuf6lbjbnnxv7vr6yx9nbwck` FOREIGN KEY (`product_attachments_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attachment`
--

LOCK TABLES `product_attachment` WRITE;
/*!40000 ALTER TABLE `product_attachment` DISABLE KEYS */;
INSERT INTO `product_attachment` VALUES (1,110),(2,128),(3,134),(7,78),(8,71),(9,17),(10,38),(11,1),(4,149),(5,150),(6,151),(12,170),(13,184),(14,97),(15,33);
/*!40000 ALTER TABLE `product_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_interface`
--

DROP TABLE IF EXISTS `product_interface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_interface` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `type` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_interface`
--

LOCK TABLES `product_interface` WRITE;
/*!40000 ALTER TABLE `product_interface` DISABLE KEYS */;
INSERT INTO `product_interface` VALUES (1,0,'微信支付',1000,'通用'),(2,0,'支付宝支付',1000,'通用'),(3,0,'PayPal支付',1000,'通用'),(4,0,'银联支付',1000,'通用'),(5,0,'短信接口',1000,'通用'),(6,0,'小型接口(不超过3个功能)',2000,'定制'),(7,0,'中型接口(不超过10个功能)',5000,'定制');
/*!40000 ALTER TABLE `product_interface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_support`
--

DROP TABLE IF EXISTS `product_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_support` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_support`
--

LOCK TABLES `product_support` WRITE;
/*!40000 ALTER TABLE `product_support` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `father_id` bigint(20) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8sw31oav7591reaursuafhgv3` (`father_id`),
  CONSTRAINT `FK_8sw31oav7591reaursuafhgv3` FOREIGN KEY (`father_id`) REFERENCES `product_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,0,NULL,'网站'),(2,1,NULL,'微信小程序'),(3,0,NULL,'OA系统'),(4,0,NULL,'MIS系统'),(5,0,NULL,'CRM系统'),(6,0,NULL,'ERP系统'),(7,0,NULL,'手机APP'),(8,0,NULL,'微信公众号'),(9,0,NULL,'微信订阅号'),(10,0,NULL,'进销存系统'),(11,0,NULL,'供应链'),(12,0,NULL,'电商平台'),(13,0,1,'个人网站'),(14,0,1,'公司门户网站'),(15,0,1,'网上商店'),(16,0,7,'移动办公APP'),(17,0,7,'企业门户移动客户端APP'),(18,0,7,'移动商店APP');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_aowtuxc62mgcnvdbdfs7b4twd` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,0,'ROLE_ADMIN'),(2,0,'ROLE_USER');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_51bvuyvihefoh4kp5syh2jpi4` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,0,'\0','\0','','$2a$10$aI5PC48dAzAd7qIwaqylL.EAvYg46w82uIvmXIfz3qUh8qfZ5dFcy','\0','admin'),(2,0,'\0','\0','','$2a$10$zxlhybTRmQa3uRNHNeixeeUKnbncBbh81Ae/OOgkRLLqNpsN0wRtG','\0','user');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_sys_role`
--

DROP TABLE IF EXISTS `sys_user_sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_sys_role` (
  `sys_user_id` bigint(20) NOT NULL,
  `sys_role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`sys_user_id`,`sys_role_id`),
  KEY `FK_563pqjwg8av2892qn8bolnc96` (`sys_role_id`),
  CONSTRAINT `FK_563pqjwg8av2892qn8bolnc96` FOREIGN KEY (`sys_role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `FK_dyo61fvlg3kt1j3u5sj99gm5r` FOREIGN KEY (`sys_user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_sys_role`
--

LOCK TABLES `sys_user_sys_role` WRITE;
/*!40000 ALTER TABLE `sys_user_sys_role` DISABLE KEYS */;
INSERT INTO `sys_user_sys_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_sys_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-18 10:32:16
