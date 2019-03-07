-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019 年 3 朁E07 日 14:50
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_f02_db31`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(3, 'test', 'http://test', 'hoge', '2019-02-14 12:56:41'),
(4, 'google', 'https://www.google.co.jp/', 'googleee', '2019-02-14 13:04:09'),
(5, 'hogehoge', 'http://test.com', 'hoge', '2019-02-16 17:32:07');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_data_table`
--

CREATE TABLE IF NOT EXISTS `gs_data_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_data_table`
--

INSERT INTO `gs_data_table` (`id`, `name`, `email`, `detail`, `indate`) VALUES
(1, 'kodama', 'kodama@gs.gs', 'test01', '2018-09-15 15:21:00'),
(2, 'yamasaki', 'yamasaki@gs.gs', 'test02', '2018-09-15 15:22:57'),
(3, 'osg', 'osg@gs.gs', 'test03', '2018-09-15 15:23:20'),
(4, 'morita', 'morita@gs.gs', 'test04', '2018-09-15 15:23:48'),
(5, 'kimura', 'kimura@gs.gs', 'test05', '2018-09-15 15:24:48'),
(6, 'kamiyama', 'kamiyama@gs.gs', 'test06', '2018-09-15 16:12:26'),
(7, 'kanou', 'kanou@gs.gs', 'test07', '2018-09-15 16:13:06'),
(8, 'kosuge', 'kosuge@gs.gs', 'test08', '2018-09-15 16:17:04'),
(9, 'iseki', 'iseki@gs.gs', 'test09', '2018-09-15 16:47:30');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'ohsugi', 'osg', 'osg', 1, 0),
(2, 'kodama', 'kdm', 'kdm', 0, 0),
(3, 'yamasaki', 'ymsk', 'ymsk', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE IF NOT EXISTS `php02_table` (
`id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `image`, `indate`) VALUES
(3, 'test', '2019-12-31', 'c', 'upload/20190302073452d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 15:34:52'),
(4, 't', '2019-12-31', 'cc', 'upload/20190302073504d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 15:35:04'),
(5, 't', '2019-12-31', 'c', 'upload/20190302073922d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 15:39:22'),
(6, 't', '2019-12-31', 'c', 'upload/20190302073933d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 15:39:33'),
(7, 'hoge', '2019-12-31', 'hoge', NULL, '2019-03-02 16:09:30'),
(8, 'hogehoge', '2019-12-31', 'hogehoge\n', NULL, '2019-03-02 16:12:38'),
(9, 'a', '2019-12-31', 'aa', 'upload/20190302092451d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 17:24:51'),
(10, 'nnn', '2019-12-31', 'nnn', 'upload/20190302092658d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 17:26:58'),
(11, 'mm', '2019-12-31', 'mm', 'upload/20190302092815d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 17:28:15'),
(12, 'aa', '2019-12-31', 'aa', 'upload/20190302093559d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 17:35:59'),
(13, 'mm', '2019-12-31', 'm', 'upload/20190302093904d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 17:39:04'),
(14, 'o', '2018-12-31', 'o', 'upload/20190302094007d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 17:40:07'),
(15, 'p', '2019-12-31', 'p', 'upload/20190302094019d41d8cd98f00b204e9800998ecf8427e.bmp', '2019-03-02 17:40:19'),
(16, 'p', '2019-12-31', 'p', 'upload/20190302094047d41d8cd98f00b204e9800998ecf8427e.bmp', '2019-03-02 17:40:47'),
(17, 'tyo', '2019-12-31', 'o', 'upload/20190302094211d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 17:42:11'),
(18, 'ppp', '2019-12-31', 'pp', 'upload/20190302094903d41d8cd98f00b204e9800998ecf8427e.psg', '2019-03-02 17:49:03'),
(19, 'ppp', '2019-12-31', 'o', 'upload/20190302095223d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 17:52:23'),
(20, 'ppp', '2019-12-31', 'p', 'upload/20190302095530d41d8cd98f00b204e9800998ecf8427e.psd', '2019-03-02 17:55:31'),
(21, 'ppp', '2019-12-31', 'piopipoio', 'upload/20190302095556d41d8cd98f00b204e9800998ecf8427e.psd', '2019-03-02 17:55:56'),
(22, 'test', '2019-12-31', 'test', 'upload/20190307144901d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-07 22:49:01');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE IF NOT EXISTS `user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(6, 'name', 'lid', 'lpass', 0, 0),
(7, '21', '1', '1', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_data_table`
--
ALTER TABLE `gs_data_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php02_table`
--
ALTER TABLE `php02_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gs_data_table`
--
ALTER TABLE `gs_data_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `php02_table`
--
ALTER TABLE `php02_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
