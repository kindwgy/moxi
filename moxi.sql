-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.25-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 moxi 的数据库结构
CREATE DATABASE IF NOT EXISTS `moxi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `moxi`;


-- 导出  表 moxi.admin 结构
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userName` char(20) DEFAULT NULL COMMENT '用户名',
  `password` char(20) DEFAULT NULL COMMENT '密码',
  `realName` char(20) DEFAULT NULL COMMENT '真实名',
  `age` int(11) DEFAULT '0' COMMENT '最近登录时间',
  `phoneNumber` varchar(32) DEFAULT NULL COMMENT '电话',
  `headPicture` varchar(32) DEFAULT NULL COMMENT '头像',
  `addDate` datetime DEFAULT NULL COMMENT '创建录时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `state` int(11) DEFAULT '0' COMMENT '状态 1:启用，0停用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 正在导出表  moxi.admin 的数据：1 rows
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `userName`, `password`, `realName`, `age`, `phoneNumber`, `headPicture`, `addDate`, `updateDate`, `state`) VALUES
	(1, 'admin', 'admin', 'admin', 0, '1222212', NULL, '2017-07-05 15:51:53', NULL, 1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- 导出  表 moxi.news 结构
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(20) DEFAULT NULL COMMENT '用户名',
  `description` varchar(2000) DEFAULT NULL COMMENT '密码',
  `category` char(20) DEFAULT NULL COMMENT '真实名',
  `age` int(11) DEFAULT '0' COMMENT '最近登录时间',
  `image` varchar(320) DEFAULT NULL COMMENT '电话',
  `content` varchar(4000) DEFAULT NULL COMMENT '头像',
  `addDate` datetime DEFAULT NULL COMMENT '创建录时间',
  `updateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `commendState` int(11) DEFAULT '0' COMMENT '状态',
  `state` int(11) DEFAULT '0' COMMENT '状态',
  `browses` int(11) DEFAULT '0',
  `likes` int(11) DEFAULT '0',
  `comments` int(11) DEFAULT '0',
  `score` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章';

-- 正在导出表  moxi.news 的数据：0 rows
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`id`, `title`, `description`, `category`, `age`, `image`, `content`, `addDate`, `updateDate`, `commendState`, `state`, `browses`, `likes`, `comments`, `score`) VALUES
	(1, 'RabbitMq组件', 'RabbitMq组件', '1', 0, '', '<p>1，发送示例</p><p>public class MqFanoutSendUtil_Test {<br>&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; &nbsp;@Test<br>&nbsp;&nbsp; &nbsp;public void eventTemplateSend() throws IOException{<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;String jsonTxt="{\\"domainName\\":\\"<a href="http://www.eventTemplateSend.com" class="external-link" rel="nofollow">www.eventTemplateSend.com</a>\\",\\"id\\":11,\\"siteCode\\":\\"TG\\",\\"siteName\\":\\"trendsgal英文站点\\",\\"status\\":1}";<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;try {<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;System.out.println("eventTemplateSend:"+jsonTxt);<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;MqFanoutSendUtil.send(jsonTxt, "EXCHANGE_RELEASE_FREEZE");<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;} catch (Exception e) {<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;e.printStackTrace();<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}<br>&nbsp;&nbsp; &nbsp;}</p><p>&nbsp;</p><p>&nbsp;&nbsp;&nbsp; @Test<br>&nbsp;&nbsp; &nbsp;public void eventTemplateSend() throws IOException{<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;String jsonTxt="{\\"domainName\\":\\"<a href="http://www.eventTemplateSend.com" class="external-link" rel="nofollow">www.eventTemplateSend.com</a>--eventTemplateSend\\",\\"id\\":11,\\"siteCode\\":\\"TG\\",\\"siteName\\":\\"trendsgal英文站点\\",\\"status\\":1}";<br>&nbsp; &nbsp; &nbsp; &nbsp;/*</p><p>&nbsp; &nbsp; &nbsp; &nbsp; RabbitmqConfig.getInstance("");<br>&nbsp; &nbsp; &nbsp; &nbsp; String CONN_HOSTNAME = RabbitmqConfig.getHost();<br>&nbsp; &nbsp; &nbsp; &nbsp; String CONN_USERNAME = RabbitmqConfig.getUserName();<br>&nbsp; &nbsp; &nbsp; &nbsp; String CONN_PASSWORD = RabbitmqConfig.getPassWord();<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;EventControlConfig config = new EventControlConfig(CONN_HOSTNAME,CONN_USERNAME,CONN_PASSWORD,RabbitmqConfig.getVhost());<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;DefaultEventController controller = DefaultEventController.getInstance(config);<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;EventTemplate eventTemplate = controller.getEopEventTemplate();</p><p>&nbsp; &nbsp; &nbsp; */<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;try {<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;System.out.println("eventTemplateSend:"+jsonTxt);<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; //eventTemplate.send("", "EXCHANGE_RELEASE_FREEZE", jsonTxt);</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MqDirectTextSendUtil.sendByVhost(queue, exchange, <span>jsonTxt</span>, "soa_default");<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;} catch (SendRefuseException e) {<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;e.printStackTrace();<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}<br>&nbsp;&nbsp; &nbsp;}<br>}</p>', '2017-07-05 16:01:36', '2017-07-05 16:01:36', 1, 1, 0, 0, 0, 0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;


-- 导出  表 moxi.news_category 结构
CREATE TABLE IF NOT EXISTS `news_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL COMMENT '名称',
  `description` varchar(2000) DEFAULT NULL COMMENT '密码',
  `image` varchar(320) DEFAULT NULL COMMENT '头像',
  `addDate` datetime DEFAULT NULL COMMENT '创建录时间',
  `state` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- 正在导出表  moxi.news_category 的数据：4 rows
/*!40000 ALTER TABLE `news_category` DISABLE KEYS */;
INSERT INTO `news_category` (`id`, `name`, `description`, `image`, `addDate`, `state`) VALUES
	(1, '工程框架组件', '\r\n工程框架组件 ', '', '2017-07-05 15:58:55', 1),
	(2, '工程规范说明', '工程规范说明', '', '2017-07-05 15:59:09', 1),
	(3, '技术框架预研', '技术框架预研', '', '2017-07-05 15:59:24', 1),
	(4, '环境部署规划', '环境部署规划', '', '2017-07-05 15:59:36', 1);
/*!40000 ALTER TABLE `news_category` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
