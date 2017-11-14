-- phpMyAdmin SQL Dump
-- version 4.3.13.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-09-11 16:01:28
-- 服务器版本： 5.6.26
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apitpldb`
--

-- --------------------------------------------------------

--
-- 表的结构 `adminuser`
--

CREATE TABLE IF NOT EXISTS `adminuser` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `realname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '电子邮箱',
  `status` int(11) NOT NULL DEFAULT '10' COMMENT '状态',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `auth_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '授权key',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码重置token',
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '访问token',
  `expire_at` int(11) DEFAULT NULL COMMENT '过期时间',
  `logged_at` int(11) DEFAULT NULL COMMENT '登入时间',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(11) DEFAULT NULL COMMENT '最后修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `adminuser`
--

INSERT INTO `adminuser` (`id`, `username`, `realname`, `email`, `status`, `password_hash`, `auth_key`, `password_reset_token`, `access_token`, `expire_at`, `logged_at`, `created_at`, `updated_at`) VALUES
(1, 'weixi', '魏曦', 'weixistyle@qq.com', 10, '$2y$13$HtJqGRmc76KIRIwokii8AOQ1XZljXiuWCKUGFnH9vkTnfBpHtqgFu', 'pG7TRyTIXlEbcenpi34TzmMYS2zDsMTF', NULL, '', 1506008463, 1505998873, 1505998873, 1505998873),
(2, 'heyx', '何泳筱', 'heyx@weixistyle.com', 10, '$2y$13$HtJqGRmc76KIRIwokii8AOQ1XZljXiuWCKUGFnH9vkTnfBpHtqgFu', 'IXlEbcenpi34TzmMpG7TRTFyTYS2zDsM', '1', '', 1506008463, 1505998873, 1505998873, 1505998873);

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `title` varchar(512) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `category_id` int(11) DEFAULT NULL COMMENT '分类',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `created_by` int(11) DEFAULT NULL COMMENT '创建人',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(11) DEFAULT NULL COMMENT '最后修改时间'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `category_id`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '关于我们', '<p>\r\n魏曦教你学<sup>&reg;</sup>是一套高质量的视频教程:\r\n\r\n<ul>\r\n  <li>讲解思路清晰</li>\r\n  <li>采用案例驱动</li>\r\n  <li>大量使用动画和图表帮助理解</li>\r\n  <li>边输代码边看效果，实操感强</li>\r\n  <li>视频制作精美</li>\r\n</ul>\r\n\r\n<p>\r\n魏曦教你学<sup>&reg;</sup>由魏曦担任主讲老师，他从事技术开发和技术管理，有超过10年的经验，负责开发了校园网软件、在线教育平台、在线旅游平台、连锁酒店系统、电商平台等多个大中型项目。\r\n<p>\r\n魏曦教你学<sup>&reg;</sup>的愿望是做一套听得懂、学得会的视频教程，助你成功掌握Web应用开发。\r\n\r\n\r\n<p>\r\n<h2>联系方式</h2> \r\n\r\n<br>\r\n    <table class="table">\r\n\r\n      <tbody>\r\n        <tr>\r\n          <td>QQ</td>\r\n          <td>502028657</td>\r\n        </tr>\r\n        <tr>\r\n          <td>微信</td>\r\n          <td>weixistyle</td>\r\n        </tr>\r\n        \r\n        <tr>\r\n          <td>Email</td>\r\n          <td>weixistyle@qq.com</td>\r\n        </tr>\r\n        <tr>\r\n          <td>Yii2交流群</td>\r\n          <td>48925935</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>', 1, 10, 1, 1504152206, 1504152206),
(2, '商务合作', '<p>\r\n魏曦教你学<sup>&reg;</sup>旨在供应高质量的IT视频教程，欢迎任何商务合作的提议。<p>\r\n\r\n\r\n<p>\r\n<h2>联系方式</h2> \r\n\r\n<br>\r\n    <table class="table">\r\n\r\n      <tbody>\r\n        <tr>\r\n          <td>QQ</td>\r\n          <td>502028657</td>\r\n        </tr>\r\n        <tr>\r\n          <td>微信</td>\r\n          <td>weixistyle</td>\r\n        </tr>\r\n        \r\n        <tr>\r\n          <td>Email</td>\r\n          <td>weixistyle@qq.com</td>\r\n        </tr>\r\n\r\n      </tbody>\r\n    </table>', 1, 10, 1, 1504152206, 1504735281),
(3, '使用条款', '<p>\r\n魏曦教你学网站提供的内容仅用于培训，不保证内容的正确性。</p>\r\n\r\n<p>通过使用本站内容随之而来的风险与本站无关。魏曦教你学提供的所有演示代码仅供测试，对任何法律问题及风险不承担任何责任。 </p>\r\n\r\n<p>当使用本站时，代表您已接受了本站的使用条款。</p>', 1, 10, 1, 1504152206, 1504152206),
(4, '版权声明', '<p>魏曦教你学网站内的所有视频、文档、程序、数据及其他信息（包括但不限于文字、图像、图片、照片、音频、视频、图表、色彩、版面设计、电子文档）的所有权利（包括但不限于版权、商标权、专利权、商业秘密及其他所有相关权利）均归魏曦个人所有。</p>\r\n\r\n<p>未经许可，任何人不得擅自使用（包括但不限于通过任何机器人、蜘蛛等程序或设备监视、复制、传播、展示、镜像、上载、下载本网站的任何内容）。</p>', 1, 10, 1, 1504734678, 1504734678),
(5, '最新推出《HTML+CSS网页设计》', '<p>魏曦教你学于8月28日，最新推出《HTML+CSS网页设计》视频教程。\r\n<ul>\r\n<li>系统完整的讲解了用HTML和CSS设计网页的知识，是从事Web开发人员的必修基础课程</li>\r\n<li>讲解思路清晰，语言简洁利索，采用案例驱动，大量使用动画、图表和代码帮助理解</li>\r\n<li>教程用不到6个半小时，真正的干货</li>\r\n</ul>', 2, 10, 1, 1504735494, 1504752907),
(6, '讲师介绍', '魏曦从事技术开发和技术管理，有超过10年的经验，擅长的技术是PHP和iOS开发，负责开发了校园网软件、在线教育平台、在线旅游平台、连锁酒店系统、电商平台等多个大中型项目。', 1, 10, 2, 1504752766, 1504752766),
(7, '《Yii2.0视频教程》发布', '<p>魏曦教你学于1月3日，推出《Yii2.0视频教程》。</p>\r\n<p>本套教程通过实现一个博客系统，循序渐进介绍了Yii框架的主要知识点，是快速入门Yii框架的好帮手。</p>\r\n<p>教程共计7个小时，讲解思路清晰，语言简洁利索，采用案例驱动，大量使用动画、图表和代码帮助理解。是一套与众不同、高品质的视频教程。</p>', 2, 10, 2, 1504753076, 1504753076),
(8, '打赏获赠高清视频和配套文档', '<p>以下2项内容，都以百度网盘共享方式提供，请自备网盘账号，保证剩余空间12G以上。</p>\r\n      \r\n<h4>1.高清视频</h4>\r\n<p>可以将视频下载到本地。可以通过来回拖动、快进慢放、反复观看来进行更方便顺畅的学习。</p>\r\n<ul>\r\n<li>视频以百度网盘方式提供下载</li>\r\n<li>超清视频，分辨率为1280*800</li>\r\n<li>文件格式为mov</li>\r\n<li>视频总时长为425分钟</li>\r\n<li>告别烦人的广告和卡顿，值得收藏</li>\r\n</ul>\r\n\r\n\r\n<h4>2.配套文档</h4>\r\n<p>\r\n当你需要再次查看视频中某个知识点的时候，要找到视频中找出对应的片段，会比较耗时，如果有一本配套的文档，查找起来就会非常方便。\r\n</p>\r\n<ul>\r\n<li>配套文档的主要内容是视频的解说词</li>\r\n<li>文档中的知识点都标记了视频的对应时间点，非常方便查阅</li>\r\n<li>配套文档介绍知识点，较权威指南更为细致深入，可以作为权威指南的配套文档来使用</li>\r\n<li>会逐步对视频中没有讲解的知识点进行扩展，不断升级</li>\r\n<li>文档所有的升级版本会免费提供给获赠的同学</li>\r\n<li>下载目录中还包含所有17个版本的源码以及所有SQL文件</li>\r\n<li>文档为PDF格式，共180页，下面为目录的预览</li>\r\n</ul>', 2, 10, 2, 1504754653, 1504754653);

-- --------------------------------------------------------

--
-- 表的结构 `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1504592435),
('m130524_201442_init', 1504592457);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'weixi', 'bLiu5SswLNN1-VYHh8NXOlZQl-S5Siuy', '$2y$13$LWgS09QUVrRsINs.PrU0/ehnBCK6oJPYgqBiUjYaR.cWOzxaJXEne', NULL, 'weixi@weixistyle.com', 10, 1504597979, 1504597979);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminuser`
--
ALTER TABLE `adminuser`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_article_author` (`created_by`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminuser`
--
ALTER TABLE `adminuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 限制导出的表
--

--
-- 限制表 `article`
--
ALTER TABLE `article`
ADD CONSTRAINT `fk_article_author` FOREIGN KEY (`created_by`) REFERENCES `adminuser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
