-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2016 at 08:04 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `flowershop`
--

-- --------------------------------------------------------

--
-- Table structure for table `sym_authors`
--

CREATE TABLE IF NOT EXISTS `sym_authors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_seen` datetime DEFAULT '0000-00-00 00:00:00',
  `user_type` enum('author','manager','developer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'author',
  `primary` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_token_active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `language` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sym_authors`
--

INSERT INTO `sym_authors` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `last_seen`, `user_type`, `primary`, `default_area`, `auth_token_active`, `language`) VALUES
(1, 'user', 'PBKDF2v1|10000|20c3dc8c4ac5db749975|Aj+IoI21saiFhKhOKvb+MuUscb32btqDd8fjdm3C7ej/SHkqMY0SvQ==', 'Fname', 'Lname', 'some@email.com', '2016-08-04 20:03:54', 'developer', 'yes', '1', 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sym_cache`
--

CREATE TABLE IF NOT EXISTS `sym_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation` int(14) NOT NULL DEFAULT '0',
  `expiry` int(14) unsigned DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries`
--

CREATE TABLE IF NOT EXISTS `sym_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_date_gmt` datetime NOT NULL,
  `modification_date` datetime NOT NULL,
  `modification_date_gmt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`),
  KEY `modification_date` (`modification_date`),
  KEY `modification_date_gmt` (`modification_date_gmt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `sym_entries`
--

INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES
(1, 2, 1, '2016-07-31 17:30:21', '2016-07-31 15:30:21', '2016-07-31 17:30:21', '2016-07-31 15:30:21'),
(2, 2, 1, '2016-07-31 17:30:30', '2016-07-31 15:30:30', '2016-07-31 17:30:30', '2016-07-31 15:30:30'),
(3, 2, 1, '2016-07-31 17:30:39', '2016-07-31 15:30:39', '2016-07-31 17:30:39', '2016-07-31 15:30:39'),
(4, 2, 1, '2016-07-31 17:30:55', '2016-07-31 15:30:55', '2016-07-31 17:30:55', '2016-07-31 15:30:55'),
(5, 2, 1, '2016-07-31 17:31:06', '2016-07-31 15:31:06', '2016-07-31 17:31:06', '2016-07-31 15:31:06'),
(6, 2, 1, '2016-07-31 17:31:18', '2016-07-31 15:31:18', '2016-07-31 17:31:18', '2016-07-31 15:31:18'),
(7, 2, 1, '2016-07-31 17:31:30', '2016-07-31 15:31:30', '2016-07-31 17:31:30', '2016-07-31 15:31:30'),
(8, 2, 1, '2016-07-31 17:32:10', '2016-07-31 15:32:10', '2016-07-31 17:32:10', '2016-07-31 15:32:10'),
(9, 2, 1, '2016-07-31 17:32:21', '2016-07-31 15:32:21', '2016-07-31 17:32:21', '2016-07-31 15:32:21'),
(10, 1, 1, '2016-07-31 17:33:56', '2016-07-31 15:33:56', '2016-08-03 23:21:37', '2016-08-03 21:21:37'),
(11, 3, 1, '2016-07-31 17:35:38', '2016-07-31 15:35:38', '2016-08-03 23:21:11', '2016-08-03 21:21:11'),
(12, 1, 1, '2016-07-31 22:53:52', '2016-07-31 20:53:52', '2016-07-31 22:57:19', '2016-07-31 20:57:19'),
(13, 1, 1, '2016-07-31 23:02:09', '2016-07-31 21:02:09', '2016-07-31 23:02:19', '2016-07-31 21:02:19'),
(14, 1, 1, '2016-07-31 23:04:04', '2016-07-31 21:04:04', '2016-07-31 23:04:04', '2016-07-31 21:04:04'),
(15, 1, 1, '2016-07-31 23:05:28', '2016-07-31 21:05:28', '2016-07-31 23:05:28', '2016-07-31 21:05:28'),
(16, 1, 1, '2016-07-31 23:06:47', '2016-07-31 21:06:47', '2016-07-31 23:06:47', '2016-07-31 21:06:47'),
(17, 1, 1, '2016-07-31 23:07:42', '2016-07-31 21:07:42', '2016-07-31 23:07:42', '2016-07-31 21:07:42'),
(18, 1, 1, '2016-07-31 23:08:46', '2016-07-31 21:08:46', '2016-07-31 23:08:46', '2016-07-31 21:08:46'),
(19, 1, 1, '2016-07-31 23:09:29', '2016-07-31 21:09:29', '2016-07-31 23:09:29', '2016-07-31 21:09:29'),
(20, 5, 1, '2016-08-02 20:01:37', '2016-08-02 18:01:37', '2016-08-02 20:03:25', '2016-08-02 18:03:25'),
(21, 5, 1, '2016-08-02 20:02:10', '2016-08-02 18:02:10', '2016-08-02 20:02:10', '2016-08-02 18:02:10'),
(22, 5, 1, '2016-08-02 20:02:32', '2016-08-02 18:02:32', '2016-08-02 20:02:32', '2016-08-02 18:02:32'),
(23, 5, 1, '2016-08-02 20:03:04', '2016-08-02 18:03:04', '2016-08-02 20:03:04', '2016-08-02 18:03:04'),
(24, 3, 1, '2016-08-03 23:25:05', '2016-08-03 21:25:05', '2016-08-03 23:25:05', '2016-08-03 21:25:05'),
(25, 3, 1, '2016-08-03 23:25:26', '2016-08-03 21:25:26', '2016-08-03 23:25:26', '2016-08-03 21:25:26'),
(26, 3, 1, '2016-08-03 23:26:28', '2016-08-03 21:26:28', '2016-08-03 23:26:28', '2016-08-03 21:26:28'),
(27, 3, 1, '2016-08-03 23:26:45', '2016-08-03 21:26:45', '2016-08-03 23:26:45', '2016-08-03 21:26:45'),
(28, 3, 1, '2016-08-04 11:40:45', '2016-08-04 09:40:45', '2016-08-04 11:40:45', '2016-08-04 09:40:45'),
(29, 3, 1, '2016-08-04 12:31:54', '2016-08-04 10:31:54', '2016-08-04 12:31:54', '2016-08-04 10:31:54'),
(30, 3, 1, '2016-08-04 12:32:16', '2016-08-04 10:32:16', '2016-08-04 12:32:16', '2016-08-04 10:32:16'),
(31, 3, 1, '2016-08-04 12:33:08', '2016-08-04 10:33:08', '2016-08-04 12:33:08', '2016-08-04 10:33:08'),
(32, 3, 1, '2016-08-04 12:33:34', '2016-08-04 10:33:34', '2016-08-04 12:33:34', '2016-08-04 10:33:34'),
(33, 3, 1, '2016-08-04 12:34:30', '2016-08-04 10:34:30', '2016-08-04 12:34:30', '2016-08-04 10:34:30'),
(34, 3, 1, '2016-08-04 12:34:56', '2016-08-04 10:34:56', '2016-08-04 12:34:56', '2016-08-04 10:34:56'),
(35, 3, 1, '2016-08-04 12:35:53', '2016-08-04 10:35:53', '2016-08-04 12:35:53', '2016-08-04 10:35:53'),
(36, 3, 1, '2016-08-04 12:36:57', '2016-08-04 10:36:57', '2016-08-04 12:36:57', '2016-08-04 10:36:57'),
(37, 4, 1, '2016-08-04 19:06:05', '2016-08-04 17:06:05', '2016-08-04 19:06:05', '2016-08-04 17:06:05'),
(38, 4, 1, '2016-08-04 19:14:31', '2016-08-04 17:14:31', '2016-08-04 19:14:31', '2016-08-04 17:14:31'),
(39, 4, 1, '2016-08-04 19:16:05', '2016-08-04 17:16:05', '2016-08-04 19:16:05', '2016-08-04 17:16:05'),
(40, 4, 1, '2016-08-04 19:16:51', '2016-08-04 17:16:51', '2016-08-04 19:16:51', '2016-08-04 17:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_1`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `sym_entries_data_1`
--

INSERT INTO `sym_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES
(7, 12, 'spathiphyllum', 'Spathiphyllum'),
(9, 13, 'lotus', 'Lotus'),
(10, 14, 'flower-01', 'Flower 01'),
(11, 15, 'flower-02', 'Flower 02'),
(12, 16, 'flower-03', 'Flower 03'),
(13, 17, 'flower-04', 'Flower 04'),
(14, 18, 'flower-05', 'Flower 05'),
(15, 19, 'flower-06', 'Flower 06'),
(19, 10, 'orchid', 'Orchid');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_3`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `sym_entries_data_3`
--

INSERT INTO `sym_entries_data_3` (`id`, `entry_id`, `value`, `value_formatted`) VALUES
(7, 12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus massa eget hendrerit ultricies. Sed luctus congue semper. Nullam turpis ligula, malesuada quis quam ac, tincidunt posuere ante. Proin id auctor arcu. Morbi consequat suscipit feugiat. Etiam vel dui condimentum lectus mollis dignissim et ut dui. Integer tristique mi sagittis nisl faucibus fringilla. Ut convallis tempus congue.\r\n\r\nIn convallis sodales ipsum non ultricies. Etiam est diam, malesuada ut elementum vel, pharetra vitae ante. Pellentesque rhoncus, justo vitae cursus accumsan, urna leo mollis metus, vel malesuada turpis risus ut urna. Aenean erat leo, pretium in accumsan nec, placerat et metus. Pellentesque at sem eu lacus tempus varius. Morbi a tempor diam, sit amet malesuada mi. Mauris ullamcorper suscipit nisi, eget consequat erat iaculis in. Sed id porttitor tellus. Nulla lobortis consectetur risus. Nam vel orci nec ligula eleifend bibendum. Nulla elit risus, semper vel cursus nec, facilisis a turpis. Sed malesuada, magna mollis laoreet semper, lorem est elementum nisi, nec congue nibh nisl vitae quam. Etiam feugiat orci quis venenatis semper. Integer nulla ligula, porta id tempus et, vehicula vel nulla. Ut faucibus interdum dui et hendrerit. Fusce blandit sed est eu interdum.\r\n\r\nEtiam facilisis sollicitudin laoreet. Duis non risus et orci cursus pretium id eu odio. Duis ut eros malesuada lectus lacinia volutpat. Pellentesque facilisis dui ut ante posuere, tempus rutrum neque bibendum. Vestibulum lacinia felis in nunc tristique efficitur. Vestibulum porttitor ipsum id maximus venenatis. Pellentesque eleifend, lectus in suscipit finibus, felis neque sollicitudin metus, elementum semper justo purus in est. Aenean a tortor sodales, pulvinar dolor sed, auctor justo. Sed consequat viverra lectus sit amet dictum. Vestibulum sit amet auctor mi. Phasellus consequat dui vitae urna lobortis, eget posuere enim mollis. Praesent commodo cursus dolor eu tincidunt. Sed libero sem, lacinia nec justo quis, tincidunt malesuada felis.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus massa eget hendrerit ultricies. Sed luctus congue semper. Nullam turpis ligula, malesuada quis quam ac, tincidunt posuere ante. Proin id auctor arcu. Morbi consequat suscipit feugiat. Etiam vel dui condimentum lectus mollis dignissim et ut dui. Integer tristique mi sagittis nisl faucibus fringilla. Ut convallis tempus congue.</p>\n\n<p>In convallis sodales ipsum non ultricies. Etiam est diam, malesuada ut elementum vel, pharetra vitae ante. Pellentesque rhoncus, justo vitae cursus accumsan, urna leo mollis metus, vel malesuada turpis risus ut urna. Aenean erat leo, pretium in accumsan nec, placerat et metus. Pellentesque at sem eu lacus tempus varius. Morbi a tempor diam, sit amet malesuada mi. Mauris ullamcorper suscipit nisi, eget consequat erat iaculis in. Sed id porttitor tellus. Nulla lobortis consectetur risus. Nam vel orci nec ligula eleifend bibendum. Nulla elit risus, semper vel cursus nec, facilisis a turpis. Sed malesuada, magna mollis laoreet semper, lorem est elementum nisi, nec congue nibh nisl vitae quam. Etiam feugiat orci quis venenatis semper. Integer nulla ligula, porta id tempus et, vehicula vel nulla. Ut faucibus interdum dui et hendrerit. Fusce blandit sed est eu interdum.</p>\n\n<p>Etiam facilisis sollicitudin laoreet. Duis non risus et orci cursus pretium id eu odio. Duis ut eros malesuada lectus lacinia volutpat. Pellentesque facilisis dui ut ante posuere, tempus rutrum neque bibendum. Vestibulum lacinia felis in nunc tristique efficitur. Vestibulum porttitor ipsum id maximus venenatis. Pellentesque eleifend, lectus in suscipit finibus, felis neque sollicitudin metus, elementum semper justo purus in est. Aenean a tortor sodales, pulvinar dolor sed, auctor justo. Sed consequat viverra lectus sit amet dictum. Vestibulum sit amet auctor mi. Phasellus consequat dui vitae urna lobortis, eget posuere enim mollis. Praesent commodo cursus dolor eu tincidunt. Sed libero sem, lacinia nec justo quis, tincidunt malesuada felis.</p>\n'),
(9, 13, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed ac tristique augue. Phasellus ultricies enim lectus, a suscipit purus euismod sed. Vivamus vel pulvinar erat. Nunc fringilla elit in mattis hendrerit.\r\n\r\nAenean convallis, diam ac aliquam maximus, mauris nisi pretium sem, vel molestie felis augue ut purus. Vestibulum eget nibh et elit finibus vehicula. Morbi molestie tellus non ipsum vehicula, vel commodo libero placerat. Praesent nec porttitor sem. Aliquam quis eros sit amet elit tempor fermentum. Donec vel odio quis lorem elementum cursus sed vitae dui. Proin suscipit elementum leo, sed dignissim magna accumsan at. In vel accumsan dui, sed tristique sapien.', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed ac tristique augue. Phasellus ultricies enim lectus, a suscipit purus euismod sed. Vivamus vel pulvinar erat. Nunc fringilla elit in mattis hendrerit.</p>\n\n<p>Aenean convallis, diam ac aliquam maximus, mauris nisi pretium sem, vel molestie felis augue ut purus. Vestibulum eget nibh et elit finibus vehicula. Morbi molestie tellus non ipsum vehicula, vel commodo libero placerat. Praesent nec porttitor sem. Aliquam quis eros sit amet elit tempor fermentum. Donec vel odio quis lorem elementum cursus sed vitae dui. Proin suscipit elementum leo, sed dignissim magna accumsan at. In vel accumsan dui, sed tristique sapien.</p>\n'),
(10, 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus massa eget hendrerit ultricies. Sed luctus congue semper. Nullam turpis ligula, malesuada quis quam ac, tincidunt posuere ante. Proin id auctor arcu. Morbi consequat suscipit feugiat. Etiam vel dui condimentum lectus mollis dignissim et ut dui. Integer tristique mi sagittis nisl faucibus fringilla. Ut convallis tempus congue.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus massa eget hendrerit ultricies. Sed luctus congue semper. Nullam turpis ligula, malesuada quis quam ac, tincidunt posuere ante. Proin id auctor arcu. Morbi consequat suscipit feugiat. Etiam vel dui condimentum lectus mollis dignissim et ut dui. Integer tristique mi sagittis nisl faucibus fringilla. Ut convallis tempus congue.</p>\n'),
(11, 15, 'In convallis sodales ipsum non ultricies. Etiam est diam, malesuada ut elementum vel, pharetra vitae ante. Pellentesque rhoncus, justo vitae cursus accumsan, urna leo mollis metus, vel malesuada turpis risus ut urna. Aenean erat leo, pretium in accumsan nec, placerat et metus. Pellentesque at sem eu lacus tempus varius. Morbi a tempor diam, sit amet malesuada mi. Mauris ullamcorper suscipit nisi, eget consequat erat iaculis in. Sed id porttitor tellus. Nulla lobortis consectetur risus. Nam vel orci nec ligula eleifend bibendum. Nulla elit risus, semper vel cursus nec, facilisis a turpis. Sed malesuada, magna mollis laoreet semper, lorem est elementum nisi, nec congue nibh nisl vitae quam. Etiam feugiat orci quis venenatis semper. Integer nulla ligula, porta id tempus et, vehicula vel nulla. Ut faucibus interdum dui et hendrerit. Fusce blandit sed est eu interdum.', '<p>In convallis sodales ipsum non ultricies. Etiam est diam, malesuada ut elementum vel, pharetra vitae ante. Pellentesque rhoncus, justo vitae cursus accumsan, urna leo mollis metus, vel malesuada turpis risus ut urna. Aenean erat leo, pretium in accumsan nec, placerat et metus. Pellentesque at sem eu lacus tempus varius. Morbi a tempor diam, sit amet malesuada mi. Mauris ullamcorper suscipit nisi, eget consequat erat iaculis in. Sed id porttitor tellus. Nulla lobortis consectetur risus. Nam vel orci nec ligula eleifend bibendum. Nulla elit risus, semper vel cursus nec, facilisis a turpis. Sed malesuada, magna mollis laoreet semper, lorem est elementum nisi, nec congue nibh nisl vitae quam. Etiam feugiat orci quis venenatis semper. Integer nulla ligula, porta id tempus et, vehicula vel nulla. Ut faucibus interdum dui et hendrerit. Fusce blandit sed est eu interdum.</p>\n'),
(12, 16, 'Aliquam scelerisque dolor non sapien porttitor faucibus. Suspendisse dui urna, posuere in tempus nec, maximus sit amet arcu. Etiam sollicitudin ex at urna fringilla, id cursus eros blandit. Aenean nisl ante, vehicula nec neque in, eleifend volutpat ante. Cras est nibh, imperdiet in velit sed, viverra dictum velit. Sed facilisis tortor vel cursus sagittis. Duis tincidunt bibendum erat eget scelerisque.\r\n\r\nSed suscipit efficitur arcu. Curabitur eu dui vitae nibh suscipit efficitur non ultricies orci. Praesent sapien diam, consequat nec fermentum et, molestie eget metus. Duis egestas imperdiet faucibus. Vestibulum convallis, enim vitae aliquam sagittis, turpis risus bibendum metus, et condimentum ante est vel tortor. Cras ut tortor rhoncus, lobortis quam ut, laoreet ex.', '<p>Aliquam scelerisque dolor non sapien porttitor faucibus. Suspendisse dui urna, posuere in tempus nec, maximus sit amet arcu. Etiam sollicitudin ex at urna fringilla, id cursus eros blandit. Aenean nisl ante, vehicula nec neque in, eleifend volutpat ante. Cras est nibh, imperdiet in velit sed, viverra dictum velit. Sed facilisis tortor vel cursus sagittis. Duis tincidunt bibendum erat eget scelerisque.</p>\n\n<p>Sed suscipit efficitur arcu. Curabitur eu dui vitae nibh suscipit efficitur non ultricies orci. Praesent sapien diam, consequat nec fermentum et, molestie eget metus. Duis egestas imperdiet faucibus. Vestibulum convallis, enim vitae aliquam sagittis, turpis risus bibendum metus, et condimentum ante est vel tortor. Cras ut tortor rhoncus, lobortis quam ut, laoreet ex.</p>\n'),
(13, 17, 'Etiam facilisis sollicitudin laoreet. Duis non risus et orci cursus pretium id eu odio. Duis ut eros malesuada lectus lacinia volutpat. Pellentesque facilisis dui ut ante posuere, tempus rutrum neque bibendum. Vestibulum lacinia felis in nunc tristique efficitur. Vestibulum porttitor ipsum id maximus venenatis. Pellentesque eleifend, lectus in suscipit finibus, felis neque sollicitudin metus, elementum semper justo purus in est. Aenean a tortor sodales, pulvinar dolor sed, auctor justo. Sed consequat viverra lectus sit amet dictum. Vestibulum sit amet auctor mi. Phasellus consequat dui vitae urna lobortis, eget posuere enim mollis. Praesent commodo cursus dolor eu tincidunt. Sed libero sem, lacinia nec justo quis, tincidunt malesuada felis.', '<p>Etiam facilisis sollicitudin laoreet. Duis non risus et orci cursus pretium id eu odio. Duis ut eros malesuada lectus lacinia volutpat. Pellentesque facilisis dui ut ante posuere, tempus rutrum neque bibendum. Vestibulum lacinia felis in nunc tristique efficitur. Vestibulum porttitor ipsum id maximus venenatis. Pellentesque eleifend, lectus in suscipit finibus, felis neque sollicitudin metus, elementum semper justo purus in est. Aenean a tortor sodales, pulvinar dolor sed, auctor justo. Sed consequat viverra lectus sit amet dictum. Vestibulum sit amet auctor mi. Phasellus consequat dui vitae urna lobortis, eget posuere enim mollis. Praesent commodo cursus dolor eu tincidunt. Sed libero sem, lacinia nec justo quis, tincidunt malesuada felis.</p>\n'),
(14, 18, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed ac tristique augue. Phasellus ultricies enim lectus, a suscipit purus euismod sed. Vivamus vel pulvinar erat. Nunc fringilla elit in mattis hendrerit. Aenean convallis, diam ac aliquam maximus, mauris nisi pretium sem, vel molestie felis augue ut purus. Vestibulum eget nibh et elit finibus vehicula. Morbi molestie tellus non ipsum vehicula, vel commodo libero placerat. Praesent nec porttitor sem. Aliquam quis eros sit amet elit tempor fermentum. Donec vel odio quis lorem elementum cursus sed vitae dui. Proin suscipit elementum leo, sed dignissim magna accumsan at. In vel accumsan dui, sed tristique sapien.', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed ac tristique augue. Phasellus ultricies enim lectus, a suscipit purus euismod sed. Vivamus vel pulvinar erat. Nunc fringilla elit in mattis hendrerit. Aenean convallis, diam ac aliquam maximus, mauris nisi pretium sem, vel molestie felis augue ut purus. Vestibulum eget nibh et elit finibus vehicula. Morbi molestie tellus non ipsum vehicula, vel commodo libero placerat. Praesent nec porttitor sem. Aliquam quis eros sit amet elit tempor fermentum. Donec vel odio quis lorem elementum cursus sed vitae dui. Proin suscipit elementum leo, sed dignissim magna accumsan at. In vel accumsan dui, sed tristique sapien.</p>\n'),
(15, 19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus massa eget hendrerit ultricies. Sed luctus congue semper. Nullam turpis ligula, malesuada quis quam ac, tincidunt posuere ante. Proin id auctor arcu. Morbi consequat suscipit feugiat. Etiam vel dui condimentum lectus mollis dignissim et ut dui. Integer tristique mi sagittis nisl faucibus fringilla. Ut convallis tempus congue.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus massa eget hendrerit ultricies. Sed luctus congue semper. Nullam turpis ligula, malesuada quis quam ac, tincidunt posuere ante. Proin id auctor arcu. Morbi consequat suscipit feugiat. Etiam vel dui condimentum lectus mollis dignissim et ut dui. Integer tristique mi sagittis nisl faucibus fringilla. Ut convallis tempus congue.</p>\n'),
(19, 10, '# Tlajslkdsafk\r\n\r\n+ alskjfds\r\n+ asdlfjdaslkfj\r\n+ aslkdkfjadsk\r\n\r\n## aslkdjfladskjflkadsjf\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pharetra, elit at gravida ornare, velit est mattis nisl, id facilisis magna mi et tortor. Praesent nisl lorem, vestibulum non iaculis in, tincidunt ut felis. In convallis, metus a euismod facilisis, nibh felis ullamcorper nulla, quis pulvinar massa mi eget justo. Vivamus condimentum mollis metus eu elementum. Quisque molestie tempor ex, nec rutrum dolor varius sed. Etiam ultrices semper laoreet. Cras massa ipsum, tristique nec mauris ut, efficitur cursus arcu. Nullam volutpat orci eget magna pretium consequat. Vivamus sollicitudin varius metus eget consectetur. In ligula odio, tristique sed purus maximus, ultricies cursus ligula. Etiam placerat porttitor ex, eu semper eros maximus lacinia. Ut sodales lacus id lorem hendrerit pretium. Vestibulum quis ante a tortor rutrum tristique. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\n', '<h1>Tlajslkdsafk</h1>\n\n<ul>\n<li>alskjfds</li>\n<li>asdlfjdaslkfj</li>\n<li>aslkdkfjadsk</li>\n</ul>\n\n<h2>aslkdjfladskjflkadsjf</h2>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pharetra, elit at gravida ornare, velit est mattis nisl, id facilisis magna mi et tortor. Praesent nisl lorem, vestibulum non iaculis in, tincidunt ut felis. In convallis, metus a euismod facilisis, nibh felis ullamcorper nulla, quis pulvinar massa mi eget justo. Vivamus condimentum mollis metus eu elementum. Quisque molestie tempor ex, nec rutrum dolor varius sed. Etiam ultrices semper laoreet. Cras massa ipsum, tristique nec mauris ut, efficitur cursus arcu. Nullam volutpat orci eget magna pretium consequat. Vivamus sollicitudin varius metus eget consectetur. In ligula odio, tristique sed purus maximus, ultricies cursus ligula. Etiam placerat porttitor ex, eu semper eros maximus lacinia. Ut sodales lacus id lorem hendrerit pretium. Vestibulum quis ante a tortor rutrum tristique. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_4`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `sym_entries_data_4`
--

INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `value`) VALUES
(19, 10, 'yes'),
(7, 12, 'yes'),
(9, 13, 'yes'),
(10, 14, 'yes'),
(11, 15, 'yes'),
(12, 16, 'yes'),
(13, 17, 'yes'),
(14, 18, 'yes'),
(15, 19, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_5`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `sym_entries_data_5`
--

INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`) VALUES
(19, 10, 'yes'),
(7, 12, 'yes'),
(9, 13, 'yes'),
(10, 14, 'yes'),
(11, 15, 'yes'),
(12, 16, 'yes'),
(13, 17, 'yes'),
(14, 18, 'yes'),
(15, 19, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_6`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sym_entries_data_6`
--

INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES
(1, 1, 'blue', 'Blue'),
(2, 2, 'white', 'White'),
(3, 3, 'red', 'Red'),
(4, 4, 'green', 'Green'),
(5, 5, 'purple', 'Purple'),
(6, 6, 'orange', 'Orange'),
(7, 7, 'yellow', 'Yellow'),
(8, 8, 'fancy', 'Fancy'),
(9, 9, 'interesting', 'Interesting');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_7`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`),
  KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `sym_entries_data_7`
--

INSERT INTO `sym_entries_data_7` (`id`, `entry_id`, `value`, `date`) VALUES
(2, 11, '2016-07-22T23:21:11+02:00', '2016-07-22 21:21:11'),
(3, 24, '2016-08-01T23:25:05+02:00', '2016-08-01 21:25:05'),
(4, 25, '2016-07-19T23:25:26+02:00', '2016-07-19 21:25:26'),
(5, 26, '2016-08-03T23:26:28+02:00', '2016-08-03 21:26:28'),
(6, 27, '2016-08-04T23:26:45+02:00', '2016-08-04 21:26:45'),
(7, 28, '2016-08-04T11:40:45+02:00', '2016-08-04 09:40:45'),
(8, 29, '2016-01-08T12:31:54+01:00', '2016-01-08 11:31:54'),
(9, 30, '2016-01-26T12:32:16+01:00', '2016-01-26 11:32:16'),
(10, 31, '2016-02-07T12:33:08+01:00', '2016-02-07 11:33:08'),
(11, 32, '2016-03-19T12:33:34+01:00', '2016-03-19 11:33:34'),
(12, 33, '2016-05-18T12:34:30+02:00', '2016-05-18 10:34:30'),
(13, 34, '2016-05-20T12:34:56+02:00', '2016-05-20 10:34:56'),
(14, 35, '2016-06-22T12:35:53+02:00', '2016-06-22 10:35:53'),
(15, 36, '2016-08-04T12:36:57+02:00', '2016-08-04 10:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_9`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sym_entries_data_9`
--

INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `handle`, `value`) VALUES
(1, 37, 'alksjfklasj', 'alksjfklasj'),
(2, 38, 'asfasd', 'asfasd'),
(3, 39, 'aadskljkfdsj', 'aadskljkfdsj'),
(4, 40, 'askldfladsj', 'askldfladsj');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_10`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sym_entries_data_10`
--

INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES
(1, 37, 'aslkjfsldkj', 'aslkjfsldkj'),
(2, 38, 'asdfads', 'asdfads'),
(3, 39, 'alskfdsjk', 'alskfdsjk'),
(4, 40, 'laskkfjds', 'laskkfjds');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_11`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sym_entries_data_11`
--

INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `handle`, `value`) VALUES
(1, 37, 'alsdkjf-gmail-com', 'alsdkjf@gmail.com'),
(2, 38, 'mail-email-com', 'mail@email.com'),
(3, 39, 'email-email-com', 'email@email.com'),
(4, 40, 'mail-email-com', 'mail@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_12`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sym_entries_data_12`
--

INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `handle`, `value`) VALUES
(1, 38, 'asdfads', 'asdfads'),
(2, 39, 'aslkjfads', 'aslkjfads'),
(3, 40, 'aslkdfj', 'aslkdfj');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_13`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sym_entries_data_13`
--

INSERT INTO `sym_entries_data_13` (`id`, `entry_id`, `value`, `value_formatted`) VALUES
(1, 37, 'asdklfjasdklfj\r\nadslfaskdljf\r\naslkdkfjadsklčfjadskl\r\nasdfkljadsklfjčlk', NULL),
(2, 38, 'asdfasdf', NULL),
(3, 39, 'aslkjfadslkjf', NULL),
(4, 40, 'alskdjfkladsjfčlads\r\nasdlfasdjlkfj\r\naslfkladslkfadsjč', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_14`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sym_entries_data_14`
--

INSERT INTO `sym_entries_data_14` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES
(1, 37, 'flowers-01.jpg', 174033, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-08-04T19:06:04+02:00";s:5:"width";i:968;s:6:"height";i:460;}');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_15`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=81 ;

--
-- Dumping data for table `sym_entries_data_15`
--

INSERT INTO `sym_entries_data_15` (`id`, `entry_id`, `handle`, `value`) VALUES
(80, 10, 'yellow', 'Yellow'),
(79, 10, 'white', 'White'),
(78, 10, 'purple', 'Purple'),
(77, 10, 'green', 'Green'),
(31, 12, 'yellow', 'Yellow'),
(30, 12, 'white', 'White'),
(29, 12, 'interesting', 'Interesting'),
(28, 12, 'green', 'Green'),
(27, 12, 'fancy', 'Fancy'),
(41, 13, 'white', 'White'),
(40, 13, 'purple', 'Purple'),
(39, 13, 'interesting', 'Interesting'),
(38, 13, 'green', 'Green'),
(37, 13, 'fancy', 'Fancy'),
(42, 14, 'fancy', 'Fancy'),
(43, 14, 'green', 'Green'),
(44, 14, 'orange', 'Orange'),
(45, 14, 'yellow', 'Yellow'),
(46, 15, 'blue', 'Blue'),
(47, 15, 'fancy', 'Fancy'),
(48, 15, 'red', 'Red'),
(49, 16, 'fancy', 'Fancy'),
(50, 16, 'interesting', 'Interesting'),
(51, 16, 'orange', 'Orange'),
(52, 16, 'white', 'White'),
(53, 17, 'blue', 'Blue'),
(54, 17, 'green', 'Green'),
(55, 17, 'interesting', 'Interesting'),
(56, 17, 'white', 'White'),
(57, 18, 'blue', 'Blue'),
(58, 18, 'green', 'Green'),
(59, 18, 'orange', 'Orange'),
(60, 19, 'blue', 'Blue'),
(61, 19, 'fancy', 'Fancy'),
(62, 19, 'interesting', 'Interesting'),
(63, 19, 'purple', 'Purple'),
(64, 19, 'white', 'White');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_16`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `sym_entries_data_16`
--

INSERT INTO `sym_entries_data_16` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES
(40, 10, 'orchid-04.jpg', 299298, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-07-31T18:24:24+02:00";s:5:"width";i:1024;s:6:"height";i:768;}'),
(39, 10, 'orchid-03.jpg', 60934, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-07-31T18:24:24+02:00";s:5:"width";i:562;s:6:"height";i:900;}'),
(37, 10, 'orchid-01.jpg', 1285731, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-07-31T18:24:24+02:00";s:5:"width";i:1920;s:6:"height";i:1200;}'),
(38, 10, 'orchid-02.jpg', 56848, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-07-31T18:24:24+02:00";s:5:"width";i:637;s:6:"height";i:300;}'),
(18, 12, 'spathiphyllum-03.jpg', 185564, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-07-31T22:56:51+02:00";s:5:"width";i:960;s:6:"height";i:640;}'),
(17, 12, 'spathiphyllum-02.jpg', 160796, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-07-31T22:56:51+02:00";s:5:"width";i:900;s:6:"height";i:675;}'),
(16, 12, 'spathiphyllum-01.jpg', 319306, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-07-31T22:56:51+02:00";s:5:"width";i:1243;s:6:"height";i:1600;}'),
(24, 13, 'lotus-03.jpg', 463032, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-07-31T23:02:02+02:00";s:5:"width";i:2560;s:6:"height";i:1600;}'),
(23, 13, 'lotus-02.jpg', 366257, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-07-31T23:02:02+02:00";s:5:"width";i:1920;s:6:"height";i:1200;}'),
(22, 13, 'lotus-01.jpg', 790016, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-07-31T23:02:02+02:00";s:5:"width";i:2560;s:6:"height";i:1600;}');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_17`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `sym_entries_data_17`
--

INSERT INTO `sym_entries_data_17` (`id`, `entry_id`, `value`) VALUES
(16, 10, 30.99),
(4, 12, 20.45),
(6, 13, 45),
(7, 14, 29.99),
(8, 15, 15.25),
(9, 16, 17.23),
(10, 17, 35),
(11, 18, 16.99),
(12, 19, 50);

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_18`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sym_entries_data_18`
--

INSERT INTO `sym_entries_data_18` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES
(5, 20, 'flowers-01.jpg', 174033, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-08-02T20:01:35+02:00";s:5:"width";i:968;s:6:"height";i:460;}'),
(2, 21, 'flowers-02.jpg', 41562, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-08-02T20:02:09+02:00";s:5:"width";i:900;s:6:"height";i:586;}'),
(3, 22, 'flowers-03.jpg', 1861508, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-08-02T20:02:31+02:00";s:5:"width";i:1698;s:6:"height";i:1131;}'),
(4, 23, 'flowers-04.jpg', 347415, 'image/jpeg', 'a:3:{s:8:"creation";s:25:"2016-08-02T20:03:03+02:00";s:5:"width";i:2800;s:6:"height";i:1925;}');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_19`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sym_entries_data_19`
--

INSERT INTO `sym_entries_data_19` (`id`, `entry_id`, `value`) VALUES
(5, 20, 'no'),
(2, 21, 'yes'),
(3, 22, 'yes'),
(4, 23, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_20`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sym_entries_data_20`
--

INSERT INTO `sym_entries_data_20` (`id`, `entry_id`, `value`) VALUES
(5, 20, 2),
(2, 21, 3),
(3, 22, 1),
(4, 23, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sym_entries_data_21`
--

CREATE TABLE IF NOT EXISTS `sym_entries_data_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `sym_entries_data_21`
--

INSERT INTO `sym_entries_data_21` (`id`, `entry_id`, `relation_id`) VALUES
(1, 11, 10),
(2, 24, 10),
(3, 25, 10),
(4, 26, 10),
(5, 27, 10),
(6, 28, 13),
(7, 29, 15),
(8, 30, 18),
(9, 31, 12),
(10, 32, 14),
(11, 33, 17),
(12, 34, 10),
(13, 35, 13),
(14, 36, 18);

-- --------------------------------------------------------

--
-- Table structure for table `sym_extensions`
--

CREATE TABLE IF NOT EXISTS `sym_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('enabled','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enabled',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `sym_extensions`
--

INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES
(1, 'debugdevkit', 'enabled', '1.3.3'),
(2, 'profiledevkit', 'enabled', '1.5.2'),
(3, 'markdown', 'enabled', '1.21'),
(4, 'multiuploadfield', 'enabled', '1.6.0'),
(5, 'simplemde', 'enabled', '0.3'),
(6, 'numberfield', 'enabled', '1.7.1'),
(7, 'ajax_checkbox', 'enabled', '1.4.0'),
(8, 'html5_doctype', 'enabled', '1.3.4'),
(9, 'order_entries', 'enabled', '2.3.5'),
(10, 'jit_image_manipulation', 'enabled', '2.0.2'),
(11, 'selectbox_link_field', 'enabled', '2.0.0'),
(12, 'export_ensemble', 'enabled', '2.2.0');

-- --------------------------------------------------------

--
-- Table structure for table `sym_extensions_delegates`
--

CREATE TABLE IF NOT EXISTS `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `delegate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `callback` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `sym_extensions_delegates`
--

INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES
(1, 1, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve'),
(2, 1, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation'),
(3, 2, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve'),
(4, 2, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation'),
(5, 5, '/backend/', 'InitaliseAdminPageHead', 'appendAssets'),
(6, 7, '/backend/', 'InitaliseAdminPageHead', 'appendToHead'),
(7, 8, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html'),
(8, 8, '/frontend/', 'FrontendPageResolved', 'setRenderTrigger'),
(9, 8, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences'),
(10, 9, '/backend/', 'InitialiseAdminPageHead', 'prepareIndex'),
(11, 9, '/backend/', 'AdminPagePreGenerate', 'adjustTable'),
(12, 9, '/backend/', 'AdminPagePostGenerate', 'resetPagination'),
(13, 9, '/frontend/', 'DataSourcePreExecute', 'saveFilterContext'),
(18, 10, '/system/preferences/', 'Save', '__SavePreferences'),
(17, 10, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences'),
(19, 10, '/all/', 'ModifySymphonyLauncher', 'modifySymphonyLauncher'),
(20, 12, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields`
--

CREATE TABLE IF NOT EXISTS `sym_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `element_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `parent_section` int(11) NOT NULL DEFAULT '0',
  `required` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sortorder` int(11) NOT NULL DEFAULT '1',
  `location` enum('main','sidebar') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main',
  `show_column` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `sym_fields`
--

INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES
(1, 'Name', 'name', 'input', 1, 'yes', 0, 'main', 'yes'),
(17, 'Price', 'price', 'number', 1, 'yes', 1, 'main', 'yes'),
(3, 'Description', 'description', 'textarea', 1, 'yes', 2, 'main', 'no'),
(4, 'Published', 'published', 'checkbox', 1, 'no', 3, 'sidebar', 'yes'),
(5, 'Featured', 'featured', 'checkbox', 1, 'no', 4, 'sidebar', 'yes'),
(6, 'Name', 'name', 'input', 2, 'yes', 0, 'main', 'yes'),
(7, 'Date', 'date', 'date', 3, 'yes', 0, 'main', 'yes'),
(21, 'Flower', 'flower', 'selectbox_link', 3, 'yes', 1, 'main', 'yes'),
(9, 'Name', 'name', 'input', 4, 'yes', 0, 'main', 'yes'),
(10, 'Surname', 'surname', 'input', 4, 'yes', 1, 'main', 'yes'),
(11, 'Email', 'email', 'input', 4, 'yes', 2, 'main', 'yes'),
(12, 'Phone', 'phone', 'input', 4, 'no', 3, 'main', 'yes'),
(13, 'Message', 'message', 'textarea', 4, 'yes', 4, 'main', 'no'),
(14, 'Attachment', 'attachment', 'upload', 4, 'no', 5, 'sidebar', 'yes'),
(15, 'Tags', 'tags', 'select', 1, 'no', 5, 'sidebar', 'yes'),
(16, 'Gallery', 'gallery', 'multiupload', 1, 'no', 6, 'main', 'yes'),
(18, 'Slide', 'slide', 'upload', 5, 'yes', 0, 'main', 'yes'),
(19, 'Enabled', 'enabled', 'checkbox', 5, 'no', 1, 'sidebar', 'yes'),
(20, 'Order', 'order', 'order_entries', 5, 'no', 2, 'sidebar', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_author`
--

CREATE TABLE IF NOT EXISTS `sym_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_checkbox`
--

CREATE TABLE IF NOT EXISTS `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `sym_fields_checkbox`
--

INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES
(11, 4, 'on', NULL),
(12, 5, 'on', NULL),
(14, 19, 'on', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_date`
--

CREATE TABLE IF NOT EXISTS `sym_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `time` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sym_fields_date`
--

INSERT INTO `sym_fields_date` (`id`, `field_id`, `pre_populate`, `calendar`, `time`) VALUES
(2, 7, 'now', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_input`
--

CREATE TABLE IF NOT EXISTS `sym_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `sym_fields_input`
--

INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES
(20, 1, NULL),
(3, 6, NULL),
(8, 9, NULL),
(9, 10, NULL),
(10, 11, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i'),
(11, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_multiupload`
--

CREATE TABLE IF NOT EXISTS `sym_fields_multiupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sym_fields_multiupload`
--

INSERT INTO `sym_fields_multiupload` (`id`, `field_id`, `destination`, `validator`) VALUES
(4, 16, '/workspace/images/flowers', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_number`
--

CREATE TABLE IF NOT EXISTS `sym_fields_number` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sym_fields_number`
--

INSERT INTO `sym_fields_number` (`id`, `field_id`) VALUES
(1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_order_entries`
--

CREATE TABLE IF NOT EXISTS `sym_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') COLLATE utf8_bin DEFAULT 'no',
  `hide` enum('yes','no') COLLATE utf8_bin DEFAULT 'no',
  `disable_pagination` enum('yes','no') COLLATE utf8_bin DEFAULT 'no',
  `filtered_fields` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sym_fields_order_entries`
--

INSERT INTO `sym_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`, `disable_pagination`, `filtered_fields`) VALUES
(1, 20, NULL, 'yes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_select`
--

CREATE TABLE IF NOT EXISTS `sym_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `sym_fields_select`
--

INSERT INTO `sym_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `sort_options`, `static_options`, `dynamic_options`) VALUES
(6, 15, 'yes', 'no', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_selectbox_link`
--

CREATE TABLE IF NOT EXISTS `sym_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `hide_when_prepopulated` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sym_fields_selectbox_link`
--

INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `hide_when_prepopulated`, `related_field_id`, `limit`) VALUES
(1, 21, 'no', 'no', '1', 20);

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_taglist`
--

CREATE TABLE IF NOT EXISTS `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_textarea`
--

CREATE TABLE IF NOT EXISTS `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sym_fields_textarea`
--

INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES
(3, 13, NULL, 15),
(8, 3, 'markdown_extra_with_smartypants', 15);

-- --------------------------------------------------------

--
-- Table structure for table `sym_fields_upload`
--

CREATE TABLE IF NOT EXISTS `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sym_fields_upload`
--

INSERT INTO `sym_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES
(2, 14, '/workspace/attachments', NULL),
(4, 18, '/workspace/images/slider', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- --------------------------------------------------------

--
-- Table structure for table `sym_forgotpass`
--

CREATE TABLE IF NOT EXISTS `sym_forgotpass` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sym_pages`
--

CREATE TABLE IF NOT EXISTS `sym_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_sources` text COLLATE utf8_unicode_ci,
  `events` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `sym_pages`
--

INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES
(2, NULL, 'Home', 'home', NULL, NULL, 'featured_flowers,home_slider', NULL, 3),
(3, NULL, 'Flowers', 'flowers', NULL, 'page', 'flowers,tags', NULL, 4),
(4, NULL, 'Transactions', 'transactions', NULL, 'page', 'flower_prices,transactions', NULL, 5),
(5, NULL, 'Contact', 'contact', NULL, NULL, NULL, 'contact_form', 6),
(6, NULL, 'Flower', 'flower', NULL, 'handle', 'flower', NULL, 7),
(7, NULL, '404', '404', NULL, NULL, NULL, NULL, 8),
(10, NULL, 'Report', 'report', NULL, NULL, 'flower_prices,report', NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `sym_pages_types`
--

CREATE TABLE IF NOT EXISTS `sym_pages_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `sym_pages_types`
--

INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES
(9, 7, '404'),
(8, 2, 'index'),
(15, 10, 'JSON'),
(14, 4, 'admin'),
(16, 10, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `sym_sections`
--

CREATE TABLE IF NOT EXISTS `sym_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `filter` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `navigation_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Content',
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sym_sections`
--

INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `filter`, `navigation_group`) VALUES
(1, 'Flowers', 'flowers', 1, 'no', 'no', 'Content'),
(2, 'Tags', 'tags', 2, 'no', 'no', 'Meta'),
(3, 'Transactions', 'transactions', 3, 'no', 'no', 'Content'),
(4, 'Inquiries', 'inquiries', 4, 'no', 'no', 'Meta'),
(5, 'Home Slides', 'home-slides', 5, 'no', 'no', 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `sym_sections_association`
--

CREATE TABLE IF NOT EXISTS `sym_sections_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned DEFAULT NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `hide_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `interface` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `editor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sym_sections_association`
--

INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`, `interface`, `editor`) VALUES
(7, 1, 1, 3, 21, 'no', NULL, NULL),
(6, 2, 6, 1, 15, 'no', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sym_sessions`
--

CREATE TABLE IF NOT EXISTS `sym_sessions` (
  `session` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session`),
  KEY `session_expires` (`session_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sym_sessions`
--

INSERT INTO `sym_sessions` (`session`, `session_expires`, `session_data`) VALUES
('sho2radaq8rsd7qvbde3n0ia30', 1469999373, 'sym-|a:3:{s:10:"xsrf-token";s:27:"MTBlYzI0OGY4YWJlMzM1NThkNzI";s:8:"username";s:7:"reygoch";s:4:"pass";s:92:"PBKDF2v1|10000|5350db82d52e597b2d75|jUYiarNBK9I5+jNcHfZvYX7bPImOvvvTihBrffGEIeCFTGYeVkWw9w==";}'),
('q87oshb5cl8oln35ahfmnrvlu7', 1470333821, 'sym-|a:1:{s:10:"xsrf-token";s:27:"NmI2MWMxZDJkZjFhYmNhODI5OWU";}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
