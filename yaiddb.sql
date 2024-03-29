-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2019 at 11:15 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yaiddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(255) NOT NULL,
  `viewed` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crons`
--

CREATE TABLE `crons` (
  `id` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `sort` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crons`
--

INSERT INTO `crons` (`id`, `active`, `sort`, `name`, `file`, `createdby`, `created`, `modified`) VALUES
(1, 0, 100, 'Auto-Backup', 'backup.php', 1, '2017-09-16 07:49:22', '2017-11-11 20:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `crons_logs`
--

CREATE TABLE `crons_logs` (
  `id` int(11) NOT NULL,
  `cron_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `website_name` varchar(100) NOT NULL,
  `smtp_server` varchar(100) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `email_login` varchar(150) NOT NULL,
  `email_pass` varchar(100) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `from_email` varchar(150) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `verify_url` varchar(255) NOT NULL,
  `email_act` int(1) NOT NULL,
  `debug_level` int(1) NOT NULL DEFAULT 0,
  `isSMTP` int(1) NOT NULL DEFAULT 0,
  `isHTML` varchar(5) NOT NULL DEFAULT 'true',
  `useSMTPauth` varchar(6) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `website_name`, `smtp_server`, `smtp_port`, `email_login`, `email_pass`, `from_name`, `from_email`, `transport`, `verify_url`, `email_act`, `debug_level`, `isSMTP`, `isHTML`, `useSMTPauth`) VALUES
(1, 'Yateem Aid', 'smtp.gmail.com', 587, 'yourEmail@gmail.com', '1234', 'User Spice', 'yourEmail@gmail.com', 'tls', 'http://localhost/43', 0, 0, 0, 'true', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `fb_formbuilder`
--

CREATE TABLE `fb_formbuilder` (
  `id` int(11) NOT NULL,
  `form` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fb_formbuilder`
--

INSERT INTO `fb_formbuilder` (`id`, `form`) VALUES
(2, 'fb_settings'),
(3, 'ya_yateeminfo_01'),
(5, 'ya_kafilinfo_01'),
(6, 'ya_kafalahinfo_01'),
(7, 'ya_settings_currency'),
(8, 'ya_settings_sex'),
(9, 'ya_settings_jobtype'),
(10, 'ya_settings_yesno'),
(11, 'ya_settings_mstate'),
(12, 'ya_settings_hometype'),
(13, 'ya_settings_fstate'),
(14, 'ya_settings_fsource'),
(15, 'ya_settings_kafalahloop'),
(16, 'ya_settings_kafalahtype'),
(17, 'ya_yateeminfo_02'),
(18, 'ya_settings_ystate'),
(19, 'ya_settings_cities');

-- --------------------------------------------------------

--
-- Table structure for table `fb_javascript`
--

CREATE TABLE `fb_javascript` (
  `id` int(11) NOT NULL,
  `div_class1` varchar(255) DEFAULT NULL,
  `div_class2` varchar(255) DEFAULT NULL,
  `label_class` varchar(255) DEFAULT NULL,
  `input_class` varchar(255) DEFAULT NULL,
  `type_html` varchar(255) DEFAULT NULL,
  `submit_new` varchar(255) DEFAULT NULL,
  `install_check` int(11) DEFAULT NULL,
  `fb_version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fb_javascript_fb_fields`
--

CREATE TABLE `fb_javascript_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fb_settings`
--

CREATE TABLE `fb_settings` (
  `id` int(11) NOT NULL,
  `div_class1` varchar(255) DEFAULT NULL,
  `div_class2` varchar(255) DEFAULT NULL,
  `label_class` varchar(255) DEFAULT NULL,
  `input_class` varchar(255) DEFAULT NULL,
  `type_html` varchar(255) DEFAULT NULL,
  `submit_new` varchar(255) DEFAULT NULL,
  `install_check` int(11) DEFAULT NULL,
  `fb_version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fb_settings`
--

INSERT INTO `fb_settings` (`id`, `div_class1`, `div_class2`, `label_class`, `input_class`, `type_html`, `submit_new`, `install_check`, `fb_version`) VALUES
(1, 'form-row', 'form-group', 'form-group', 'form-control', NULL, 'false', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `fb_settings_fb_fields`
--

CREATE TABLE `fb_settings_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fb_settings_fb_fields`
--

INSERT INTO `fb_settings_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 1, 'div_class1', 'text', '{\"div_class2\":\"form-group\",\"label\":\"div Class1: (DEFAULT)\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"input_step\":\"\"}', '', NULL, NULL, NULL, NULL),
(2, 2, 'div_class2', 'text', '{\"div_class2\":\"form-group\",\"label\":\"div Class2: (DEFAULT)\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"input_step\":\"\"}', '', NULL, NULL, NULL, NULL),
(3, 3, 'label_class', 'text', '{\"div_class2\":\"form-group\",\"label\":\"Label Class: (DEFAULT)\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"input_step\":\"\"}', '', NULL, NULL, NULL, NULL),
(4, 4, 'input_class', 'text', '{\"div_class2\":\"form-group\",\"label\":\"Input Class: (DEFAULT)\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"input_step\":\"\"}', '', NULL, NULL, NULL, NULL),
(5, 5, 'type_html', 'text', '{\"div_class2\":\"form-group\",\"label\":\"Type HTML: (DEFAULT)\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"input_step\":\"\"}', '', NULL, NULL, NULL, NULL),
(6, 6, 'submit_new', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"When Creating Form, On Submit: Exit?\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '', '[{\"id\":\"true\",\"value\":\"Yes\"},{\"id\":\"false\",\"value\":\"No\"}]', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups_menus`
--

CREATE TABLE `groups_menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  `menu_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups_menus`
--

INSERT INTO `groups_menus` (`id`, `group_id`, `menu_id`) VALUES
(6, 0, 1),
(8, 0, 51),
(9, 0, 52),
(10, 0, 37),
(11, 0, 38),
(12, 2, 39),
(13, 2, 40),
(14, 2, 41),
(15, 2, 42),
(16, 2, 43),
(17, 2, 44),
(18, 2, 45),
(19, 0, 46),
(20, 0, 47),
(21, 0, 49),
(25, 0, 18),
(26, 0, 20),
(27, 0, 21),
(28, 0, 7),
(29, 0, 8),
(30, 2, 9),
(31, 2, 10),
(32, 2, 11),
(33, 2, 12),
(34, 2, 13),
(35, 2, 14),
(36, 2, 15),
(37, 0, 16),
(38, 1, 15),
(58, 0, 3),
(60, 0, 23),
(62, 0, 2),
(63, 0, 25),
(64, 0, 24),
(67, 0, 27),
(68, 0, 28),
(69, 0, 29),
(70, 0, 30),
(71, 0, 31),
(72, 0, 26);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `stripe_ts` varchar(255) NOT NULL,
  `stripe_tp` varchar(255) NOT NULL,
  `stripe_ls` varchar(255) NOT NULL,
  `stripe_lp` varchar(255) NOT NULL,
  `recap_pub` varchar(100) NOT NULL,
  `recap_pri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(3) NOT NULL,
  `logdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `logtype` varchar(25) NOT NULL,
  `lognote` mediumtext NOT NULL,
  `ip` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `logdate`, `logtype`, `lognote`, `ip`) VALUES
(1, 1, '2019-09-03 08:08:25', 'System Updates', 'Inserted ip to logs table', '127.0.0.1'),
(2, 1, '2019-09-03 08:08:25', 'System Updates', 'Update 2ZB9mg1l0JXe successfully deployed.', '127.0.0.1'),
(3, 1, '2019-09-03 08:08:25', 'System Updates', 'Update B9t6He7qmFXa successfully deployed.', '127.0.0.1'),
(4, 1, '2019-09-03 08:08:25', 'System Updates', 'Updated group_menu int columns to 11 and unsigned', '127.0.0.1'),
(5, 1, '2019-09-03 08:08:25', 'System Updates', 'Updated users int columns to 11 and unsigned', '127.0.0.1'),
(6, 1, '2019-09-03 08:08:25', 'System Updates', 'Update 86FkFVV4TGRg successfully deployed.', '127.0.0.1'),
(7, 1, '2019-09-03 08:08:25', 'System Updates', 'Added default language to settings table', '127.0.0.1'),
(8, 1, '2019-09-03 08:08:25', 'System Updates', 'Added default language to settings table', '127.0.0.1'),
(9, 1, '2019-09-03 08:08:25', 'System Updates', 'Added language info to settings table', '127.0.0.1'),
(10, 1, '2019-09-03 08:08:25', 'System Updates', 'Added default language to settings table', '127.0.0.1'),
(11, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(12, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(13, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(14, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(15, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(16, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(17, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(18, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(19, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(20, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(21, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(22, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(23, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(24, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(25, 1, '2019-09-03 08:08:25', 'System Updates', 'Update y4A1Y0u9n2Rt successfully deployed.', '127.0.0.1'),
(26, 1, '2019-09-03 08:08:25', 'System Updates', 'Modified menus for multilanguage', '127.0.0.1'),
(27, 1, '2019-09-03 08:08:25', 'System Updates', 'Update Tm5xY22MM8eC successfully deployed.', '127.0.0.1'),
(28, 1, '2019-09-03 08:08:25', 'System Updates', 'Update 0YXdrInkjV86F successfully deployed.', '127.0.0.1'),
(29, 1, '2019-09-03 08:08:25', 'System Updates', 'Added us_plugin_hooks table', '127.0.0.1'),
(30, 1, '2019-09-03 08:08:25', 'System Updates', 'Update 99plgnkjV86 successfully deployed.', '127.0.0.1'),
(31, 1, '2019-09-03 08:08:25', 'System Updates', 'Update 0DaShInkjV86 successfully deployed.', '127.0.0.1'),
(32, 1, '2019-09-03 08:08:25', 'System Updates', 'Update 0DaShInkjVz1 successfully deployed.', '127.0.0.1'),
(33, 1, '2019-09-03 08:08:25', 'System Updates', 'Added column for spice shaker', '127.0.0.1'),
(34, 1, '2019-09-03 08:08:25', 'System Updates', 'Update y4A1Y0u9n2SS successfully deployed.', '127.0.0.1'),
(35, 1, '2019-09-03 08:08:25', 'System Updates', 'Update 0DaShInkjV87 successfully deployed.', '127.0.0.1'),
(36, 1, '2019-09-03 08:08:25', 'System Updates', 'Update 0DaShInkjV88 successfully deployed.', '127.0.0.1'),
(37, 1, '2019-09-03 08:08:43', 'User', 'User logged in.', NULL),
(38, 1, '2019-09-03 08:10:03', 'Pages Manager', 'Added 1 permission(s) to ysys/addnew.php.', '127.0.0.1'),
(39, 1, '2019-09-03 08:10:12', 'Pages Manager', 'Added 1 permission(s) to ysys/index.php.', '127.0.0.1'),
(40, 1, '2019-09-03 08:11:11', 'User', 'Changed fname from The to ???? ??????.', '127.0.0.1'),
(41, 1, '2019-09-03 08:11:12', 'User', 'Changed email from userspicephp@userspice.com to almohseneen.it@gmail.com.', '127.0.0.1'),
(42, 1, '2019-09-03 08:15:02', 'USPlugins', 'formbuilder installed', '127.0.0.1'),
(43, 1, '2019-09-03 08:15:08', 'USPlugins', 'formbuilder Activated', '127.0.0.1'),
(44, 1, '2019-09-04 07:45:57', 'Email Settings', 'Updated website_name from User Spice to Yateem Aid.', '::1'),
(45, 1, '2019-09-05 06:57:09', 'System Updates', 'Inserted announcements checker to settings table', '::1'),
(46, 1, '2019-09-05 06:57:09', 'System Updates', 'Update 2019-09-04a successfully deployed.', '::1'),
(47, 1, '2019-09-05 08:32:45', 'Pages Manager', 'Added 1 permission(s) to ysys/yateem_addnew.php.', '::1'),
(48, 1, '2019-09-07 05:11:19', 'User', 'User logged in.', NULL),
(49, 1, '2019-09-07 05:56:53', 'System Updates', 'Update 2019-09-05c successfully deployed.', '::1'),
(50, 1, '2019-09-07 08:38:50', 'Pages Manager', 'Added 1 permission(s) to ysys/kafil_addnew.php.', '::1'),
(51, 1, '2019-09-07 08:39:01', 'Pages Manager', 'Added 1 permission(s) to ysys/kafil_viewall.php.', '::1'),
(52, 1, '2019-09-07 08:48:00', 'Pages Manager', 'Added 1 permission(s) to ysys/kafalah_addnew.php.', '::1'),
(53, 1, '2019-09-07 08:48:09', 'Pages Manager', 'Added 1 permission(s) to ysys/kafalah_viewall.php.', '::1'),
(54, 2, '2019-09-07 09:48:45', 'User', 'User logged in.', NULL),
(55, 2, '2019-09-07 09:50:12', 'User', 'Changed fname from Sample to ???? ????????.', '10.0.0.68'),
(56, 2, '2019-09-07 09:56:04', 'User', 'User logged in.', NULL),
(57, 1, '2019-09-09 08:15:34', 'USPlugins', 'forms installed', '::1'),
(58, 1, '2019-09-09 08:16:41', 'USPlugins', 'forms Activated', '::1'),
(59, 1, '2019-09-09 08:18:47', 'USPlugins', 'formbuilder Activated', '::1'),
(60, 1, '2019-09-09 08:18:50', 'USPlugins', 'forms uninstalled', '::1'),
(61, 1, '2019-09-09 08:35:50', 'USPlugins', 'forms installed', '::1'),
(62, 1, '2019-09-09 08:35:56', 'USPlugins', 'forms Activated', '::1'),
(63, 1, '2019-09-14 05:31:16', 'User', 'User logged in.', NULL),
(64, 1, '2019-09-14 05:34:42', 'Menu Manager', 'Added new dropdown', '::1'),
(65, 1, '2019-09-14 05:34:52', 'Menu Manager', 'Added new dropdown', '::1'),
(66, 1, '2019-09-14 05:35:45', 'Menu Manager', 'Updated 23', '::1'),
(67, 1, '2019-09-14 05:39:55', 'Menu Manager', 'Updated 23', '::1'),
(68, 1, '2019-09-14 05:40:58', 'Menu Manager', 'Updated 23', '::1'),
(69, 1, '2019-09-14 06:40:48', 'Menu Manager', 'Updated 23', '::1'),
(70, 1, '2019-09-14 06:41:25', 'Menu Manager', 'Updated 24', '::1'),
(71, 1, '2019-09-14 06:41:27', 'Menu Manager', 'Added new dropdown', '::1'),
(72, 1, '2019-09-14 06:41:39', 'Menu Manager', 'Updated 25', '::1'),
(73, 1, '2019-09-14 06:41:57', 'User', 'User logged in.', NULL),
(74, 1, '2019-09-14 06:44:24', 'Menu Manager', 'Updated 24', '::1'),
(75, 1, '2019-09-14 06:44:34', 'Menu Manager', 'Updated 23', '::1'),
(76, 1, '2019-09-14 07:42:05', 'Menu Manager', 'Updated 25', '::1'),
(77, 1, '2019-09-14 07:42:23', 'Menu Manager', 'Updated 25', '::1'),
(78, 1, '2019-09-14 07:42:50', 'Menu Manager', 'Updated 23', '::1'),
(79, 1, '2019-09-14 07:42:58', 'Menu Manager', 'Updated 24', '::1'),
(80, 1, '2019-09-14 07:44:27', 'Menu Manager', 'Updated 2', '::1'),
(81, 1, '2019-09-14 07:45:08', 'Menu Manager', 'Updated 25', '::1'),
(82, 1, '2019-09-14 07:46:04', 'Menu Manager', 'Updated 23', '::1'),
(83, 1, '2019-09-14 07:48:34', 'Menu Manager', 'Updated 3', '::1'),
(84, 1, '2019-09-14 07:49:08', 'Menu Manager', 'Deleted menu 3', '::1'),
(85, 1, '2019-09-14 07:49:59', 'Menu Manager', 'Updated 25', '::1'),
(86, 1, '2019-09-14 07:50:20', 'Menu Manager', 'Updated 23', '::1'),
(87, 1, '2019-09-14 07:51:02', 'Menu Manager', 'Updated 24', '::1'),
(88, 1, '2019-09-14 07:52:45', 'Menu Manager', 'Updated 2', '::1'),
(89, 1, '2019-09-14 07:53:01', 'Menu Manager', 'Updated 25', '::1'),
(90, 1, '2019-09-14 07:53:12', 'Menu Manager', 'Updated 24', '::1'),
(91, 1, '2019-09-14 07:53:27', 'Menu Manager', 'Added new item', '::1'),
(92, 1, '2019-09-14 07:54:17', 'Menu Manager', 'Updated 26', '::1'),
(93, 1, '2019-09-15 05:50:17', 'User', 'User logged in.', NULL),
(94, 1, '2019-09-15 05:54:32', 'Menu Manager', 'Updated 26', '::1'),
(95, 1, '2019-09-15 05:54:49', 'Menu Manager', 'Added new item', '::1'),
(96, 1, '2019-09-15 05:56:17', 'Menu Manager', 'Updated 27', '::1'),
(97, 1, '2019-09-15 05:57:31', 'Menu Manager', 'Added new item', '::1'),
(98, 1, '2019-09-15 05:58:06', 'Menu Manager', 'Updated 28', '::1'),
(99, 1, '2019-09-15 05:58:09', 'Menu Manager', 'Added new item', '::1'),
(100, 1, '2019-09-15 05:58:46', 'Menu Manager', 'Updated 29', '::1'),
(101, 1, '2019-09-15 05:59:25', 'Menu Manager', 'Added new item', '::1'),
(102, 1, '2019-09-15 06:00:08', 'Menu Manager', 'Updated 30', '::1'),
(103, 1, '2019-09-15 06:00:11', 'Menu Manager', 'Added new item', '::1'),
(104, 1, '2019-09-15 06:00:38', 'Menu Manager', 'Updated 31', '::1'),
(105, 1, '2019-09-15 07:22:54', 'USPlugins', 'forms Activated', '::1'),
(106, 1, '2019-09-16 06:28:52', 'Pages Manager', 'Added 2 permission(s) to ysys/kafil_addnew.php.', '::1'),
(107, 1, '2019-09-16 06:29:02', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_addnew.php.', '::1'),
(108, 1, '2019-09-16 06:29:17', 'Pages Manager', 'Added 2 permission(s) to ysys/index.php.', '::1'),
(109, 1, '2019-09-16 06:29:26', 'Pages Manager', 'Added 2 permission(s) to ysys/kafalah_viewall.php.', '::1'),
(110, 1, '2019-09-16 06:29:34', 'Pages Manager', 'Added 2 permission(s) to ysys/kafil_viewall.php.', '::1'),
(111, 1, '2019-09-16 06:31:23', 'Pages Manager', 'Added 2 permission(s) to ysys/kafalah_addnew.php.', '::1'),
(112, 1, '2019-09-17 14:41:13', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_viewyateem.php.', '::1'),
(113, 1, '2019-09-18 05:07:39', 'User', 'User logged in.', NULL),
(114, 1, '2019-09-18 06:13:34', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_viewyateem.php.', '::1'),
(115, 1, '2019-09-18 08:52:31', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_addnew.php.', '::1'),
(116, 1, '2019-09-18 08:56:16', 'Pages Manager', 'Added 2 permission(s) to ysys/index.php.', '::1'),
(117, 1, '2019-09-18 09:50:03', 'Pages Manager', 'Added 2 permission(s) to ysys/kafil_addnew.php.', '::1'),
(118, 1, '2019-09-18 09:50:13', 'Pages Manager', 'Added 2 permission(s) to ysys/kafil_viewall.php.', '::1'),
(119, 1, '2019-09-18 09:50:26', 'Pages Manager', 'Added 2 permission(s) to ysys/kafalah_addnew.php.', '::1'),
(120, 1, '2019-09-18 10:10:56', 'Pages Manager', 'Added 2 permission(s) to ysys/kafalah_viewall.php.', '::1'),
(121, 1, '2019-09-21 07:45:54', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_addnew_01.php.', '127.0.0.1'),
(122, 1, '2019-09-22 07:18:33', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_addnew_02.php.', '::1'),
(123, 1, '2019-09-24 07:24:15', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_addnew_03.php.', '::1'),
(124, 1, '2019-09-24 08:49:13', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_addnew_04.php.', '::1'),
(125, 1, '2019-09-24 09:00:46', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_addnew_05.php.', '::1'),
(126, 1, '2019-09-24 09:16:30', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_addnew_06.php.', '::1'),
(127, 1, '2019-09-28 09:20:56', 'Pages Manager', 'Added 2 permission(s) to ysys/kafalh_dokafalah.php.', '::1'),
(128, 1, '2019-09-30 07:00:45', 'User', 'User logged in.', '::1'),
(129, 1, '2019-09-30 08:01:44', 'Pages Manager', 'Added 2 permission(s) to ysys/yateem_edityateemdata.php.', '::1'),
(130, 1, '2019-09-30 09:22:22', 'Menu Manager', 'Updated 26', '::1'),
(131, 2, '2019-10-02 07:52:53', 'User', 'User logged in.', '10.0.0.81'),
(132, 2, '2019-10-02 07:53:22', 'User', 'User logged in.', '10.0.0.81'),
(133, 1, '2019-10-02 09:41:36', 'User', 'User logged in.', '::1'),
(134, 1, '2019-10-08 08:35:46', 'User', 'User logged in.', '::1'),
(135, 1, '2019-10-08 08:37:06', 'User', 'User logged in.', '::1'),
(136, 1, '2019-10-08 09:06:45', 'Pages Manager', 'Added 2 permission(s) to ysys/projects_addnew.php.', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `logs_exempt`
--

CREATE TABLE `logs_exempt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `parent` int(10) NOT NULL,
  `dropdown` int(1) NOT NULL,
  `logged_in` int(1) NOT NULL,
  `display_order` int(10) NOT NULL,
  `label` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon_class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_title`, `parent`, `dropdown`, `logged_in`, `display_order`, `label`, `link`, `icon_class`) VALUES
(1, 'main', 2, 0, 1, 1, '{{home}}', '', 'fa fa-fw fa-home'),
(2, 'main', -1, 1, 1, 50, '', '', 'fa fa-fw fa-cogs'),
(4, 'main', -1, 1, 0, 3, '{{help}}', '', 'fa fa-fw fa-life-ring'),
(5, 'main', -1, 0, 0, 2, '{{register}}', 'users/join.php', 'fa fa-fw fa-plus-square'),
(6, 'main', -1, 0, 0, 1, '{{login}}', 'users/login.php', 'fa fa-fw fa-sign-in'),
(7, 'main', 2, 0, 1, 2, '{{account}}', 'users/account.php', 'fa fa-fw fa-user'),
(8, 'main', 2, 0, 1, 3, '{{hr}}', '', ''),
(9, 'main', 2, 0, 1, 4, '{{dashboard}}', 'users/admin.php', 'fa fa-fw fa-cogs'),
(10, 'main', 2, 0, 1, 5, '{{users}}', 'users/admin.php?view=users', 'fa fa-fw fa-user'),
(11, 'main', 2, 0, 1, 6, '{{perms}}', 'users/admin.php?view=permissions', 'fa fa-fw fa-lock'),
(12, 'main', 2, 0, 1, 7, '{{pages}}', 'users/admin.php?view=pages', 'fa fa-fw fa-wrench'),
(13, 'main', 2, 0, 1, 9, '{{logs}}', 'users/admin.php?view=logs', 'fa fa-fw fa-search'),
(14, 'main', 2, 0, 1, 10, '{{hr}}', '', ''),
(15, 'main', 2, 0, 1, 11, '{{logout}}', 'users/logout.php', 'fa fa-fw fa-sign-out'),
(16, 'main', -1, 0, 0, 0, '{{home}}', '', 'fa fa-fw fa-home'),
(17, 'main', -1, 0, 1, 10, '{{home}}', '', 'fa fa-fw fa-home'),
(18, 'main', 4, 0, 0, 1, '{{forgot}}', 'users/forgot_password.php', 'fa fa-fw fa-wrench'),
(20, 'main', 4, 0, 0, 99999, '{{resend}}', 'users/verify_resend.php', 'fa fa-exclamation-triangle'),
(23, 'main', -1, 1, 1, 12, 'الأيتام', './ysys/', ''),
(24, 'main', -1, 1, 1, 32, 'الكفالات', './ysys/kafalah_viewall.php', ''),
(25, 'main', -1, 1, 1, 22, 'الكافلين', './ysys/kafil_viewall.php', ''),
(26, 'main', 23, 0, 1, 10, 'إضافة يتيم', './ysys/yateem_addnew_01.php', ''),
(27, 'main', 23, 0, 1, 20, 'استعراض الأيتام', './ysys/index.php', ''),
(28, 'main', 25, 0, 1, 10, 'اضافة كافل', './ysys/kafil_addnew.php', ''),
(29, 'main', 25, 0, 1, 20, 'استعراض الكافلين', './ysys/kafil_viewall.php', ''),
(30, 'main', 24, 0, 1, 10, 'اضافة كفالة', './ysys/kafalah_addnew.php', ''),
(31, 'main', 24, 0, 1, 20, 'استعراض الكفالات', './ysys/kafalah_viewall.php', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_body` mediumtext NOT NULL,
  `msg_read` int(1) NOT NULL,
  `msg_thread` int(11) NOT NULL,
  `deleted` int(1) NOT NULL,
  `sent_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msg_from`, `msg_to`, `msg_body`, `msg_read`, `msg_thread`, `deleted`, `sent_on`) VALUES
(1, 1, 2, '&lt;p&gt;fgds&lt;/p&gt;', 0, 1, 0, '2017-08-06 00:13:47'),
(2, 1, 2, '&lt;p&gt;Did it work?&lt;/p&gt;', 0, 2, 0, '2017-09-09 15:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `message_threads`
--

CREATE TABLE `message_threads` (
  `id` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_subject` varchar(255) NOT NULL,
  `last_update` datetime NOT NULL,
  `last_update_by` int(11) NOT NULL,
  `archive_from` int(1) NOT NULL DEFAULT 0,
  `archive_to` int(1) NOT NULL DEFAULT 0,
  `hidden_from` int(1) NOT NULL DEFAULT 0,
  `hidden_to` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message_threads`
--

INSERT INTO `message_threads` (`id`, `msg_to`, `msg_from`, `msg_subject`, `last_update`, `last_update_by`, `archive_from`, `archive_to`, `hidden_from`, `hidden_to`) VALUES
(1, 2, 1, 'Testiing123', '2017-08-06 00:13:47', 1, 0, 0, 0, 0),
(2, 2, 1, 'Testing Message Badge', '2017-09-09 15:10:09', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `is_archived` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `class` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `private` int(11) NOT NULL DEFAULT 0,
  `re_auth` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `title`, `private`, `re_auth`) VALUES
(1, 'index.php', 'Home', 0, 0),
(2, 'z_us_root.php', '', 0, 0),
(3, 'users/account.php', 'Account Dashboard', 1, 0),
(4, 'users/admin.php', 'Admin Dashboard', 1, 0),
(14, 'users/forgot_password.php', 'Forgotten Password', 0, 0),
(15, 'users/forgot_password_reset.php', 'Reset Forgotten Password', 0, 0),
(16, 'users/index.php', 'Home', 0, 0),
(17, 'users/init.php', '', 0, 0),
(18, 'users/join.php', 'Join', 0, 0),
(19, 'users/joinThankYou.php', 'Join', 0, 0),
(20, 'users/login.php', 'Login', 0, 0),
(21, 'users/logout.php', 'Logout', 0, 0),
(24, 'users/user_settings.php', 'User Settings', 1, 0),
(25, 'users/verify.php', 'Account Verification', 0, 0),
(26, 'users/verify_resend.php', 'Account Verification', 0, 0),
(45, 'users/maintenance.php', 'Maintenance', 0, 0),
(68, 'users/update.php', 'Update Manager', 1, 0),
(81, 'users/admin_pin.php', 'Verification PIN Set', 1, 0),
(97, 'users/user_agreement_acknowledge.php', '', 1, 0),
(98, 'users/views_admin_notifications.php', '', 1, 0),
(106, 'ysys/yateem_viewyateem.php', '', 1, 0),
(107, 'ysys/yateem_addnew.php', '', 1, 0),
(108, 'ysys/index.php', '', 1, 0),
(109, 'ysys/kafil_addnew.php', '', 1, 0),
(110, 'ysys/kafil_viewall.php', '', 1, 0),
(111, 'ysys/kafalah_addnew.php', '', 1, 0),
(112, 'ysys/kafalah_viewall.php', '', 1, 0),
(113, 'ysys/yateem_addnew_01.php', '', 1, 0),
(114, 'ysys/yateem_addnew_02.php', '', 1, 0),
(115, 'ysys/yateem_addnew_03.php', '', 1, 0),
(116, 'ysys/yateem_addnew_04.php', '', 1, 0),
(117, 'ysys/yateem_addnew_05.php', '', 1, 0),
(118, 'ysys/yateem_addnew_06.php', '', 1, 0),
(119, 'ysys/kafalh_dokafalah.php', '', 1, 0),
(120, 'ysys/yateem_edityateemdata.php', '', 1, 0),
(121, 'ysys/projects_addnew.php', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `permission_page_matches`
--

CREATE TABLE `permission_page_matches` (
  `id` int(11) NOT NULL,
  `permission_id` int(15) NOT NULL,
  `page_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_page_matches`
--

INSERT INTO `permission_page_matches` (`id`, `permission_id`, `page_id`) VALUES
(2, 2, 27),
(3, 1, 24),
(4, 1, 22),
(5, 2, 13),
(6, 2, 12),
(7, 1, 11),
(8, 2, 10),
(9, 2, 9),
(10, 2, 8),
(11, 2, 7),
(12, 2, 6),
(13, 2, 5),
(14, 2, 4),
(15, 1, 3),
(16, 2, 37),
(17, 2, 39),
(19, 2, 40),
(21, 2, 41),
(23, 2, 42),
(27, 1, 42),
(28, 1, 27),
(29, 1, 41),
(30, 1, 40),
(31, 2, 44),
(32, 2, 47),
(33, 2, 51),
(34, 2, 50),
(35, 2, 49),
(36, 2, 53),
(37, 2, 52),
(38, 2, 68),
(39, 2, 55),
(40, 2, 56),
(41, 2, 71),
(42, 2, 58),
(43, 2, 57),
(44, 2, 53),
(45, 2, 74),
(46, 2, 75),
(47, 1, 75),
(48, 1, 76),
(49, 2, 76),
(50, 1, 77),
(51, 2, 77),
(52, 2, 78),
(53, 2, 80),
(54, 1, 81),
(55, 1, 82),
(56, 1, 83),
(57, 2, 84),
(58, 1, 90),
(59, 1, 91),
(60, 1, 92),
(61, 1, 93),
(62, 1, 94),
(63, 1, 95),
(64, 1, 96),
(65, 1, 99),
(66, 2, 99),
(67, 1, 100),
(68, 2, 100),
(69, 1, 101),
(70, 2, 101),
(71, 1, 102),
(72, 2, 102),
(73, 1, 103),
(74, 2, 103),
(75, 1, 104),
(76, 2, 104),
(77, 1, 105),
(78, 2, 105),
(79, 1, 106),
(80, 2, 106),
(81, 1, 107),
(82, 2, 107),
(83, 1, 108),
(84, 2, 108),
(85, 1, 109),
(86, 2, 109),
(87, 1, 110),
(88, 2, 110),
(89, 1, 111),
(90, 2, 111),
(91, 1, 112),
(92, 2, 112),
(93, 1, 113),
(94, 2, 113),
(95, 1, 114),
(96, 2, 114),
(97, 1, 115),
(98, 2, 115),
(99, 1, 116),
(100, 2, 116),
(101, 1, 117),
(102, 2, 117),
(103, 1, 118),
(104, 2, 118),
(105, 1, 119),
(106, 2, 119),
(107, 1, 120),
(108, 2, 120),
(109, 1, 121),
(110, 2, 121);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`) VALUES
(1, 1, '&lt;h1&gt;This is the Admin&#039;s bio.&lt;/h1&gt;'),
(2, 2, 'This is your bio');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(50) NOT NULL,
  `recaptcha` int(1) NOT NULL DEFAULT 0,
  `force_ssl` int(1) NOT NULL,
  `css_sample` int(1) NOT NULL,
  `us_css1` varchar(255) NOT NULL,
  `us_css2` varchar(255) NOT NULL,
  `us_css3` varchar(255) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `language` varchar(255) NOT NULL,
  `track_guest` int(1) NOT NULL,
  `site_offline` int(1) NOT NULL,
  `force_pr` int(1) NOT NULL,
  `glogin` int(1) NOT NULL DEFAULT 0,
  `fblogin` int(1) NOT NULL,
  `gid` varchar(255) NOT NULL,
  `gsecret` varchar(255) NOT NULL,
  `gredirect` varchar(255) NOT NULL,
  `ghome` varchar(255) NOT NULL,
  `fbid` varchar(255) NOT NULL,
  `fbsecret` varchar(255) NOT NULL,
  `fbcallback` varchar(255) NOT NULL,
  `graph_ver` varchar(255) NOT NULL,
  `finalredir` varchar(255) NOT NULL,
  `req_cap` int(1) NOT NULL,
  `req_num` int(1) NOT NULL,
  `min_pw` int(2) NOT NULL,
  `max_pw` int(3) NOT NULL,
  `min_un` int(2) NOT NULL,
  `max_un` int(3) NOT NULL,
  `messaging` int(1) NOT NULL,
  `snooping` int(1) NOT NULL,
  `echouser` int(11) NOT NULL,
  `wys` int(1) NOT NULL,
  `change_un` int(1) NOT NULL,
  `backup_dest` varchar(255) NOT NULL,
  `backup_source` varchar(255) NOT NULL,
  `backup_table` varchar(255) NOT NULL,
  `msg_notification` int(1) NOT NULL,
  `permission_restriction` int(1) NOT NULL,
  `auto_assign_un` int(1) NOT NULL,
  `page_permission_restriction` int(1) NOT NULL,
  `msg_blocked_users` int(1) NOT NULL,
  `msg_default_to` int(1) NOT NULL,
  `notifications` int(1) NOT NULL,
  `notif_daylimit` int(3) NOT NULL,
  `recap_public` varchar(100) NOT NULL,
  `recap_private` varchar(100) NOT NULL,
  `page_default_private` int(1) NOT NULL,
  `navigation_type` tinyint(1) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `custom_settings` int(1) NOT NULL,
  `system_announcement` varchar(255) NOT NULL,
  `twofa` int(1) DEFAULT 0,
  `force_notif` tinyint(1) DEFAULT NULL,
  `cron_ip` varchar(255) DEFAULT NULL,
  `registration` tinyint(1) DEFAULT NULL,
  `join_vericode_expiry` int(9) UNSIGNED NOT NULL,
  `reset_vericode_expiry` int(9) UNSIGNED NOT NULL,
  `admin_verify` tinyint(1) NOT NULL,
  `admin_verify_timeout` int(9) NOT NULL,
  `session_manager` tinyint(1) NOT NULL,
  `template` varchar(255) DEFAULT 'standard',
  `saas` tinyint(1) DEFAULT NULL,
  `redirect_uri_after_login` text DEFAULT NULL,
  `show_tos` tinyint(1) DEFAULT 1,
  `default_language` varchar(11) DEFAULT NULL,
  `allow_language` tinyint(1) DEFAULT NULL,
  `spice_api` varchar(75) DEFAULT NULL,
  `announce` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `recaptcha`, `force_ssl`, `css_sample`, `us_css1`, `us_css2`, `us_css3`, `site_name`, `language`, `track_guest`, `site_offline`, `force_pr`, `glogin`, `fblogin`, `gid`, `gsecret`, `gredirect`, `ghome`, `fbid`, `fbsecret`, `fbcallback`, `graph_ver`, `finalredir`, `req_cap`, `req_num`, `min_pw`, `max_pw`, `min_un`, `max_un`, `messaging`, `snooping`, `echouser`, `wys`, `change_un`, `backup_dest`, `backup_source`, `backup_table`, `msg_notification`, `permission_restriction`, `auto_assign_un`, `page_permission_restriction`, `msg_blocked_users`, `msg_default_to`, `notifications`, `notif_daylimit`, `recap_public`, `recap_private`, `page_default_private`, `navigation_type`, `copyright`, `custom_settings`, `system_announcement`, `twofa`, `force_notif`, `cron_ip`, `registration`, `join_vericode_expiry`, `reset_vericode_expiry`, `admin_verify`, `admin_verify_timeout`, `session_manager`, `template`, `saas`, `redirect_uri_after_login`, `show_tos`, `default_language`, `allow_language`, `spice_api`, `announce`) VALUES
(1, 0, 0, 0, '../users/css/color_schemes/bootstrap.min.css', '../users/css/sb-admin.css', '../users/css/custom.css', 'مساعد اليتيم', 'en', 1, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, 6, 30, 4, 30, 0, 1, 0, 1, 0, '/', 'everything', '', 0, 0, 0, 0, 0, 1, 0, 7, '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI', '6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe', 1, 1, 'Khalid Dhafir', 1, '', 0, 0, 'off', 1, 24, 15, 1, 120, 0, 'bs4', NULL, 'index.php', 1, 'ar-EG', 0, 'JDMSC-YNAYD-X5D76-096E2-69A6', '2019-10-08 11:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `migration` varchar(15) NOT NULL,
  `applied_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_skipped` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `migration`, `applied_on`, `update_skipped`) VALUES
(15, '1XdrInkjV86F', '2018-02-18 22:33:24', NULL),
(16, '3GJYaKcqUtw7', '2018-04-25 16:51:08', NULL),
(17, '3GJYaKcqUtz8', '2018-04-25 16:51:08', NULL),
(18, '69qa8h6E1bzG', '2018-04-25 16:51:08', NULL),
(19, '2XQjsKYJAfn1', '2018-04-25 16:51:08', NULL),
(20, '549DLFeHMNw7', '2018-04-25 16:51:08', NULL),
(21, '4Dgt2XVjgz2x', '2018-04-25 16:51:08', NULL),
(22, 'VLBp32gTWvEo', '2018-04-25 16:51:08', NULL),
(23, 'Q3KlhjdtxE5X', '2018-04-25 16:51:08', NULL),
(24, 'ug5D3pVrNvfS', '2018-04-25 16:51:08', NULL),
(25, '69FbVbv4Jtrz', '2018-04-25 16:51:09', NULL),
(26, '4A6BdJHyvP4a', '2018-04-25 16:51:09', NULL),
(27, '37wvsb5BzymK', '2018-04-25 16:51:09', NULL),
(28, 'c7tZQf926zKq', '2018-04-25 16:51:09', NULL),
(29, 'ockrg4eU33GP', '2018-04-25 16:51:09', NULL),
(30, 'XX4zArPs4tor', '2018-04-25 16:51:09', NULL),
(31, 'pv7r2EHbVvhD', '2018-04-26 00:00:00', NULL),
(32, 'uNT7NpgcBDFD', '2018-04-26 00:00:00', NULL),
(33, 'mS5VtQCZjyJs', '2018-12-11 14:19:16', NULL),
(34, '23rqAv5elJ3G', '2018-12-11 14:19:51', NULL),
(35, 'qPEARSh49fob', '2019-01-01 12:01:01', NULL),
(36, 'FyMYJ2oeGCTX', '2019-01-01 12:01:01', NULL),
(37, 'iit5tHSLatiS', '2019-01-01 12:01:01', NULL),
(38, 'hcA5B3PLhq6E', '2019-09-03 08:08:25', NULL),
(39, 'VNEno3E4zaNz', '2019-09-03 08:08:25', NULL),
(40, '2ZB9mg1l0JXe', '2019-09-03 08:08:25', NULL),
(41, 'B9t6He7qmFXa', '2019-09-03 08:08:25', NULL),
(42, '86FkFVV4TGRg', '2019-09-03 08:08:25', NULL),
(43, 'y4A1Y0u9n2Rt', '2019-09-03 08:08:25', NULL),
(44, 'Tm5xY22MM8eC', '2019-09-03 08:08:25', NULL),
(45, '0YXdrInkjV86F', '2019-09-03 08:08:25', NULL),
(46, '99plgnkjV86', '2019-09-03 08:08:25', NULL),
(47, '0DaShInkjV86', '2019-09-03 08:08:25', NULL),
(48, '0DaShInkjVz1', '2019-09-03 08:08:25', NULL),
(49, 'y4A1Y0u9n2SS', '2019-09-03 08:08:25', NULL),
(50, '0DaShInkjV87', '2019-09-03 08:08:25', NULL),
(51, '0DaShInkjV88', '2019-09-03 08:08:25', NULL),
(52, '2019-09-04a', '2019-09-05 06:57:09', NULL),
(53, '2019-09-05c', '2019-09-07 05:56:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(155) NOT NULL,
  `email_new` varchar(155) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `permissions` int(11) NOT NULL,
  `logins` int(11) UNSIGNED NOT NULL,
  `account_owner` tinyint(4) NOT NULL DEFAULT 0,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `company` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT 0,
  `vericode` varchar(15) NOT NULL,
  `active` int(1) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `locale` varchar(10) NOT NULL,
  `gpluslink` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `fb_uid` varchar(255) NOT NULL,
  `un_changed` int(1) NOT NULL,
  `msg_exempt` int(1) NOT NULL DEFAULT 0,
  `last_confirm` datetime DEFAULT NULL,
  `protected` int(1) NOT NULL DEFAULT 0,
  `dev_user` int(1) NOT NULL DEFAULT 0,
  `msg_notification` int(1) NOT NULL DEFAULT 1,
  `force_pr` int(1) NOT NULL DEFAULT 0,
  `twoKey` varchar(16) DEFAULT NULL,
  `twoEnabled` int(1) DEFAULT 0,
  `twoDate` datetime DEFAULT NULL,
  `cloak_allowed` tinyint(1) NOT NULL DEFAULT 0,
  `org` int(11) DEFAULT NULL,
  `account_mgr` int(11) DEFAULT 0,
  `oauth_tos_accepted` tinyint(1) DEFAULT NULL,
  `vericode_expiry` datetime DEFAULT NULL,
  `language` varchar(255) DEFAULT 'en-US'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_new`, `username`, `password`, `pin`, `fname`, `lname`, `permissions`, `logins`, `account_owner`, `account_id`, `company`, `join_date`, `last_login`, `email_verified`, `vericode`, `active`, `oauth_provider`, `oauth_uid`, `gender`, `locale`, `gpluslink`, `picture`, `created`, `modified`, `fb_uid`, `un_changed`, `msg_exempt`, `last_confirm`, `protected`, `dev_user`, `msg_notification`, `force_pr`, `twoKey`, `twoEnabled`, `twoDate`, `cloak_allowed`, `org`, `account_mgr`, `oauth_tos_accepted`, `vericode_expiry`, `language`) VALUES
(1, 'almohseneen.it@gmail.com', NULL, 'admin', '$2y$12$1v06jm2KMOXuuo3qP7erTuTIJFOnzhpds1Moa8BadnUUeX0RV3ex.', NULL, 'مدير النظام', 'Admin', 1, 10, 1, 0, 'UserSpice', '2016-01-01 00:00:00', '2019-10-08 11:37:06', 1, 'nlPsJDtyeqFWsS', 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '1899-11-30 00:00:00', '', 0, 1, '2017-10-08 15:24:37', 1, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 'ar-EG'),
(2, 'noreply@userspice.com', NULL, 'user', '$2y$12$HZa0/d7evKvuHO8I3U8Ff.pOjJqsGTZqlX8qURratzP./EvWetbkK', NULL, 'مدخل البيانات', 'User', 1, 4, 1, 0, 'none', '2016-01-02 00:00:00', '2019-10-02 10:53:22', 1, '2ENJN4xD8nnjOgk', 1, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, NULL, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 'en-US');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `user_id` int(10) NOT NULL,
  `session` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `ip`, `timestamp`, `user_id`, `session`) VALUES
(1, '::1', '1544553219', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `uagent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_permission_matches`
--

CREATE TABLE `user_permission_matches` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_permission_matches`
--

INSERT INTO `user_permission_matches` (`id`, `user_id`, `permission_id`) VALUES
(100, 1, 1),
(101, 1, 2),
(102, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `us_announcements`
--

CREATE TABLE `us_announcements` (
  `id` int(11) NOT NULL,
  `dismissed` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `ignore` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `us_announcements`
--

INSERT INTO `us_announcements` (`id`, `dismissed`, `link`, `title`, `message`, `ignore`, `class`) VALUES
(1, 3, 'https://www.userspice.com/updates', 'New Version', 'December 11, 2018 - Thank you for trying UserSpice Beta!', '4.5.0', 'warning');

-- --------------------------------------------------------

--
-- Table structure for table `us_fingerprints`
--

CREATE TABLE `us_fingerprints` (
  `kFingerprintID` int(11) UNSIGNED NOT NULL,
  `fkUserID` int(11) NOT NULL,
  `Fingerprint` varchar(32) NOT NULL,
  `Fingerprint_Expiry` datetime NOT NULL,
  `Fingerprint_Added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `us_fingerprint_assets`
--

CREATE TABLE `us_fingerprint_assets` (
  `kFingerprintAssetID` int(11) UNSIGNED NOT NULL,
  `fkFingerprintID` int(11) NOT NULL,
  `IP_Address` varchar(255) NOT NULL,
  `User_Browser` varchar(255) NOT NULL,
  `User_OS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `us_forms`
--

CREATE TABLE `us_forms` (
  `id` int(11) NOT NULL,
  `form` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `us_forms`
--

INSERT INTO `us_forms` (`id`, `form`) VALUES
(2, 'yayateeminfo1'),
(3, 'yayateemprojects');

-- --------------------------------------------------------

--
-- Table structure for table `us_form_validation`
--

CREATE TABLE `us_form_validation` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `us_form_validation`
--

INSERT INTO `us_form_validation` (`id`, `value`, `description`, `params`) VALUES
(1, 'min', 'Minimum # of Characters', 'number'),
(2, 'max', 'Maximum # of Characters', 'number'),
(3, 'is_numeric', 'Must be a number', 'true'),
(4, 'valid_email', 'Must be a valid email address', 'true'),
(5, '<', 'Must be a number less than', 'number'),
(6, '>', 'Must be a number greater than', 'number'),
(7, '<=', 'Must be a number less than or equal to', 'number'),
(8, '>=', 'Must be a number greater than or equal to', 'number'),
(9, '!=', 'Must not be equal to', 'text'),
(10, '==', 'Must be equal to', 'text'),
(11, 'is_integer', 'Must be an integer', 'true'),
(12, 'is_timezone', 'Must be a valid timezone name', 'true'),
(13, 'is_datetime', 'Must be a valid DateTime', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `us_form_views`
--

CREATE TABLE `us_form_views` (
  `id` int(11) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `view_name` varchar(255) NOT NULL,
  `fields` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `us_form_views`
--

INSERT INTO `us_form_views` (`id`, `form_name`, `view_name`, `fields`) VALUES
(1, 'yayateeminfo1', 'yateeminfoview001', '[\"2\",\"4\",\"5\",\"6\",\"7\",\"8\",\"10\",\"11\",\"12\",\"13\",\"14\",\"16\",\"17\",\"18\",\"19\",\"20\",\"62\",\"64\",\"77\"]');

-- --------------------------------------------------------

--
-- Table structure for table `us_ip_blacklist`
--

CREATE TABLE `us_ip_blacklist` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `last_user` int(11) NOT NULL DEFAULT 0,
  `reason` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `us_ip_blacklist`
--

INSERT INTO `us_ip_blacklist` (`id`, `ip`, `last_user`, `reason`) VALUES
(3, '192.168.0.21', 1, 0),
(4, '192.168.0.22', 1, 0),
(10, '192.168.0.222', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `us_ip_list`
--

CREATE TABLE `us_ip_list` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `us_ip_list`
--

INSERT INTO `us_ip_list` (`id`, `ip`, `user_id`, `timestamp`) VALUES
(1, '::1', 1, '2017-10-09 15:20:03'),
(2, '127.0.0.1', 1, '2019-09-03 08:08:43'),
(3, '10.0.0.68', 2, '2019-09-07 09:48:45'),
(4, '10.0.0.252', 2, '2019-09-07 09:56:04'),
(5, '10.0.0.81', 2, '2019-10-02 07:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `us_ip_whitelist`
--

CREATE TABLE `us_ip_whitelist` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `us_ip_whitelist`
--

INSERT INTO `us_ip_whitelist` (`id`, `ip`) VALUES
(2, '192.168.0.21'),
(3, '192.168.0.23');

-- --------------------------------------------------------

--
-- Table structure for table `us_management`
--

CREATE TABLE `us_management` (
  `id` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `feature` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `us_management`
--

INSERT INTO `us_management` (`id`, `page`, `view`, `feature`, `access`) VALUES
(1, '_admin_manage_ip.php', 'ip', 'IP Whitelist/Blacklist', ''),
(2, '_admin_messages.php', 'messages', 'Messages', ''),
(3, '_admin_nav.php', 'nav', 'Navigation', ''),
(4, '_admin_nav_item.php', 'nav_item', 'Navigation', ''),
(5, '_admin_notifications.php', 'notifications', 'Notifications', ''),
(6, '_admin_page.php', 'page', 'Page Management', ''),
(7, '_admin_pages.php', 'pages', 'Page Management', ''),
(10, '_admin_security_logs.php', 'security_logs', 'Security Logs', ''),
(11, '_admin_sessions.php', 'sessions', 'Session Management', ''),
(12, '_admin_templates.php', 'templates', 'Templates', ''),
(13, '_admin_tools_check_updates.php', 'updates', 'Check Updates', '');

-- --------------------------------------------------------

--
-- Table structure for table `us_plugins`
--

CREATE TABLE `us_plugins` (
  `id` int(11) NOT NULL,
  `plugin` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updates` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `us_plugins`
--

INSERT INTO `us_plugins` (`id`, `plugin`, `status`, `updates`) VALUES
(1, 'formbuilder', 'active', '[\"5\"]'),
(3, 'forms', 'active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `us_plugin_hooks`
--

CREATE TABLE `us_plugin_hooks` (
  `id` int(11) UNSIGNED NOT NULL,
  `page` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `hook` varchar(255) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `us_saas_levels`
--

CREATE TABLE `us_saas_levels` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `users` int(11) NOT NULL,
  `details` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `us_saas_orgs`
--

CREATE TABLE `us_saas_orgs` (
  `id` int(11) NOT NULL,
  `org` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `us_user_sessions`
--

CREATE TABLE `us_user_sessions` (
  `kUserSessionID` int(11) UNSIGNED NOT NULL,
  `fkUserID` int(11) UNSIGNED NOT NULL,
  `UserFingerprint` varchar(255) NOT NULL,
  `UserSessionIP` varchar(255) NOT NULL,
  `UserSessionOS` varchar(255) NOT NULL,
  `UserSessionBrowser` varchar(255) NOT NULL,
  `UserSessionStarted` datetime NOT NULL,
  `UserSessionLastUsed` datetime DEFAULT NULL,
  `UserSessionLastPage` varchar(255) NOT NULL,
  `UserSessionEnded` tinyint(1) NOT NULL DEFAULT 0,
  `UserSessionEnded_Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yayateeminfo1`
--

CREATE TABLE `yayateeminfo1` (
  `id` int(11) NOT NULL,
  `dateOfEntry` date DEFAULT NULL,
  `yName` varchar(255) DEFAULT NULL,
  `ySex` varchar(255) DEFAULT NULL,
  `yDateOfBirth` date DEFAULT NULL,
  `yBirthPlace` varchar(255) DEFAULT NULL,
  `yNationality` varchar(255) DEFAULT NULL,
  `yFeatures` text DEFAULT NULL,
  `yAddress` varchar(255) DEFAULT NULL,
  `yRankInFamily` decimal(50,0) DEFAULT NULL,
  `fDeathDate` date DEFAULT NULL,
  `fDeathReason` varchar(255) DEFAULT NULL,
  `yEduLevel` varchar(255) DEFAULT NULL,
  `yEduClass` varchar(255) DEFAULT NULL,
  `yEduSchoolName` varchar(255) DEFAULT NULL,
  `yEduSchoolPhone` decimal(50,0) DEFAULT NULL,
  `yEduNoEduReason` text DEFAULT NULL,
  `yHealthStatus` varchar(255) DEFAULT NULL,
  `yHealthSickness` text DEFAULT NULL,
  `yQuranLevel` varchar(255) DEFAULT NULL,
  `yQuranSchool` varchar(255) DEFAULT NULL,
  `rSectionName` varchar(255) DEFAULT NULL,
  `rName` varchar(255) DEFAULT NULL,
  `rSex` varchar(255) DEFAULT NULL,
  `rDateOfBirth` date DEFAULT NULL,
  `rRelation` varchar(255) DEFAULT NULL,
  `rMobile` varchar(12) DEFAULT NULL,
  `rMobilePerson` varchar(255) DEFAULT NULL,
  `rWorkName` varchar(255) DEFAULT NULL,
  `rWorkType` varchar(255) DEFAULT NULL,
  `mSection` varchar(255) DEFAULT NULL,
  `mSectionName` varchar(255) DEFAULT NULL,
  `mName` varchar(255) DEFAULT NULL,
  `mAlive` varchar(255) DEFAULT NULL,
  `mStatus` varchar(255) DEFAULT NULL,
  `mWork` varchar(255) DEFAULT NULL,
  `fNumberOfBrothers` decimal(50,0) DEFAULT NULL,
  `fRankInFamily` decimal(50,0) DEFAULT NULL,
  `fHomeType` varchar(255) DEFAULT NULL,
  `fAddress` varchar(255) DEFAULT NULL,
  `fFinanceStatus` varchar(255) DEFAULT NULL,
  `fFinanceSalary` decimal(50,0) DEFAULT NULL,
  `fFinanceSource` text DEFAULT NULL,
  `sOpinion` text DEFAULT NULL,
  `BasicInfo` varchar(255) DEFAULT NULL,
  `identifierName` varchar(255) DEFAULT NULL,
  `identifierSection` varchar(255) DEFAULT NULL,
  `idName` varchar(255) DEFAULT NULL,
  `idMobile` varchar(12) DEFAULT NULL,
  `idAddress` varchar(255) DEFAULT NULL,
  `mIDCard` varchar(255) DEFAULT NULL,
  `rIDCard` varchar(255) DEFAULT NULL,
  `BasicInfoSection` varchar(255) DEFAULT NULL,
  `kafalahID` decimal(50,0) DEFAULT NULL,
  `kafalahAmountY` decimal(50,0) DEFAULT NULL,
  `kafalahCurrencyY` varchar(255) DEFAULT NULL,
  `kafalahSection` varchar(255) DEFAULT NULL,
  `kafalahStartDate` date DEFAULT NULL,
  `kafalahEndDate` date DEFAULT NULL,
  `kafalahEndreason` text DEFAULT NULL,
  `yState` varchar(255) DEFAULT NULL,
  `cityName` varchar(255) DEFAULT NULL,
  `kafalahAmount` decimal(11,2) DEFAULT NULL,
  `kafalahCurrency` varchar(255) DEFAULT NULL,
  `yBirthCertLink` varchar(255) DEFAULT NULL,
  `yDeathCertLink` varchar(255) DEFAULT NULL,
  `yPersonalPhotoLink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yayateeminfo1`
--

INSERT INTO `yayateeminfo1` (`id`, `dateOfEntry`, `yName`, `ySex`, `yDateOfBirth`, `yBirthPlace`, `yNationality`, `yFeatures`, `yAddress`, `yRankInFamily`, `fDeathDate`, `fDeathReason`, `yEduLevel`, `yEduClass`, `yEduSchoolName`, `yEduSchoolPhone`, `yEduNoEduReason`, `yHealthStatus`, `yHealthSickness`, `yQuranLevel`, `yQuranSchool`, `rSectionName`, `rName`, `rSex`, `rDateOfBirth`, `rRelation`, `rMobile`, `rMobilePerson`, `rWorkName`, `rWorkType`, `mSection`, `mSectionName`, `mName`, `mAlive`, `mStatus`, `mWork`, `fNumberOfBrothers`, `fRankInFamily`, `fHomeType`, `fAddress`, `fFinanceStatus`, `fFinanceSalary`, `fFinanceSource`, `sOpinion`, `BasicInfo`, `identifierName`, `identifierSection`, `idName`, `idMobile`, `idAddress`, `mIDCard`, `rIDCard`, `BasicInfoSection`, `kafalahID`, `kafalahAmountY`, `kafalahCurrencyY`, `kafalahSection`, `kafalahStartDate`, `kafalahEndDate`, `kafalahEndreason`, `yState`, `cityName`, `kafalahAmount`, `kafalahCurrency`, `yBirthCertLink`, `yDeathCertLink`, `yPersonalPhotoLink`) VALUES
(1, '2019-09-19', 'ككشسيبت', '2', '2019-09-11', 'يشيب', 'يشي', 'شيب', 'شيسب', '2', '0000-00-00', 'سيب', '', '', '', '0', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mSalary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '20000', NULL, NULL, NULL, NULL, NULL, '2', '1', NULL, NULL, NULL, NULL, NULL),
(2, '0000-00-00', 'محمد محمد محمد محمد', '1', '0000-00-00', 'صنعاء', 'يمني', 'حفظ القرآن - الحساب', 'باب اليمن', '3', '0000-00-00', 'الاجل', 'اعدادي', 'السابع', 'الامل', '111111111111', '', 'جيده', 'لا يوجد', 'خمسة اجزاء', 'الامل', NULL, 'وصي وصي وصي', '', '0000-00-00', '', '111111111111', 'نفسه', 'جهة عمل', '', NULL, NULL, 'أم أم أم أم', '', '1', '', '6', '3', '2', '', '', '0', 'mHelps', '', NULL, NULL, NULL, '', '', '', '333333333333333', '23232323', NULL, '2', '30000', '1', NULL, '0000-00-00', '0000-00-00', '', '2', '1', NULL, NULL, NULL, NULL, NULL),
(14, '0000-00-00', 'علي أحمد أحمد أحمد', '1', '2010-09-05', 'صنعاء', 'يمني', 'الانشاد', 'باب اليمن', '3', '2017-09-09', 'الاجل', 'الابتدائي', '5', 'الامل', '0', '', 'بخير', '', 'خمسة اجزاء', 'الامل', NULL, 'وصي وصي وصي', 'male', '1970-09-12', 'خاله', '324209009', 'نفسه', '', 'gov', NULL, NULL, '', NULL, 'widow', '', '5', '2', 'owner', '', 'meduim', '0', NULL, '', NULL, NULL, NULL, '', '', '', '', '', NULL, '0', NULL, NULL, NULL, '2019-09-10', '0000-00-00', '', '3', '1', '0.00', 'yer', NULL, NULL, NULL),
(19, '0000-00-00', 'صالح', '1', '2019-09-11', 'يشيب', 'يشي', 'شيب', 'شيسب', '2', '0000-00-00', 'سيب', '', '', '', '0', '', '', '', '', '', NULL, '', NULL, '0000-00-00', '', '', '', '', 'special', NULL, NULL, '', 'yes', 'widow', '', '0', '0', 'rent', '', 'meduim', '0', NULL, '', NULL, NULL, NULL, '', '', '', '', '', NULL, '1', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '3', '1', '0.00', NULL, NULL, NULL, NULL),
(20, '0000-00-00', 'محمد محمد محمد محمد', '1', '0000-00-00', 'صنعاء', 'يمني', 'حفظ القرآن - الحساب', 'باب اليمن', '3', '0000-00-00', 'الاجل', 'اعدادي', 'السابع', 'الامل', '0', '', 'جيده', 'لا يوجد', 'خمسة اجزاء', 'الامل', NULL, 'وصي وصي وصي', NULL, '0000-00-00', '', '111111111111', 'نفسه', 'جهة عمل', NULL, NULL, NULL, 'أم أم أم أم', NULL, '1', '', '6', '3', '2', '', NULL, '0', NULL, '', NULL, NULL, NULL, '', '', '', '333333333333333', '23232323', NULL, '2', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '3', '1', '0.00', NULL, NULL, NULL, NULL),
(21, '0000-00-00', 'أحمد', '1', '0000-00-00', 'صنعاء', 'يمني', 'حفظ القرآن - الحساب', 'باب اليمن', '3', '0000-00-00', 'الاجل', 'اعدادي', 'السابع', 'الامل', '0', '', 'جيده', 'لا يوجد', 'خمسة اجزاء', 'الامل', NULL, 'وصي وصي وصي', NULL, '0000-00-00', '', '111111111111', 'نفسه', 'جهة عمل', NULL, NULL, NULL, 'أم أم أم أم', NULL, '1', '', '6', '3', '2', '', NULL, '0', NULL, '', NULL, NULL, NULL, '', '', '', '333333333333333', '23232323', NULL, '2', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '3', '1', '0.00', NULL, NULL, NULL, NULL),
(22, '2019-09-04', 'صالح مسعد', 'male', '2011-09-20', 'الأمانة', 'يمني', '', 'الحصبة', NULL, '2017-09-12', 'الاجل', 'اعدادي', 'السابع', 'الامل', NULL, '', 'بخير', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '2', '3', '0.00', NULL, NULL, NULL, NULL),
(23, '2019-09-22', 'حسن صالح محسن', '1', '2008-04-20', 'صنعاء', 'يمني', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '2', '3', '0.00', NULL, NULL, NULL, NULL),
(24, '2019-09-22', 'تجربة1', 'male', '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '2', '1', '0.00', NULL, NULL, NULL, NULL),
(25, '2019-09-04', 'تجربة2', 'male', '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '2', '1', '0.00', NULL, NULL, NULL, NULL),
(26, '2019-09-22', 'تجربة3', 'male', '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '2', '1', '0.00', NULL, NULL, NULL, NULL),
(27, '2019-09-22', 'تجربة5', 'male', '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '2', '1', '0.00', NULL, NULL, NULL, NULL),
(28, '2019-09-22', 'تجربة1', 'male', '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '2', '1', '0.00', NULL, NULL, NULL, NULL),
(29, '2019-09-22', 'تجربة10', 'male', '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, 'وصي وصي وصي', 'male', '1987-09-24', '', '234234', '', '', 'charity', NULL, NULL, 'ام تجربة', 'yes', NULL, '', '0', '0', NULL, '', NULL, '0', NULL, 'كلام صحيح', NULL, NULL, NULL, 'معرف معرف معرف', '234234324', 'سكن المعرف', '929384923', '324124', NULL, '3', NULL, NULL, NULL, '2020-10-02', '0000-00-00', '', '1', '1', '100.00', '2', NULL, NULL, NULL),
(30, '2019-09-23', 'محسن', 'male', '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, 'وصي وصي وصي', NULL, '1994-09-10', 'عم', '8737723', 'نفسه', 'عمل حر', NULL, NULL, NULL, 'الأم الحنون', 'yes', '1', 'لاي يوجد', '5', '3', '1', 'الحثيلي', '1', '20000', 'null', 'تمام', NULL, NULL, NULL, 'معرف معرف معرف', '234234324', 'سكن المعرف', '32423423', '234252345234', NULL, '3', NULL, NULL, NULL, '2020-10-02', '0000-00-00', '', '1', '2', '100.00', '2', './aytamattachments/30_birthCert.png', './aytamattachments/30_deathCert.png', './aytamattachments/30_personalPhoto.png'),
(32, '2019-09-24', 'علياء', 'female', '2011-10-13', 'صنعاء', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, 'أم علياء', NULL, 'married', '', '0', '0', 'owner', '', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '2', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '1', '2', '0.00', 'yer', './aytamattachments/32_birthCert.png', './aytamattachments/32_deathCert.png', NULL),
(33, '2019-09-25', 'تجربة يتيم د', 'male', '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '1', '2', '0.00', 'yer', NULL, NULL, NULL),
(34, '2019-09-25', 'تجربة يتيم د', 'male', '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, '', NULL, '0000-00-00', '', '', '', '', '1', NULL, NULL, 'ام اليتيم', NULL, NULL, '', '0', '0', NULL, '', NULL, '0', NULL, '', NULL, NULL, NULL, '', '', '', '', '', NULL, '3', NULL, NULL, NULL, '2020-10-02', '0000-00-00', '', '1', '2', '100.00', '2', './aytamattachments/34_birthCert.png', './aytamattachments/34_deathCert.png', NULL),
(35, '2019-10-01', 'test', '', '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, '', '', '0000-00-00', '', '', '', '', '1', NULL, NULL, '', NULL, '', '', '0', '0', '', '', '', '0', 'null', '', NULL, NULL, NULL, '', '', '', '', '', NULL, '3', NULL, NULL, NULL, '2020-10-02', '0000-00-00', '', '1', '2', '100.00', '2', NULL, NULL, NULL),
(36, '2019-10-01', 'باراك اوباما', '1', '2010-07-01', 'نيويورك', 'امريكي', 'رئيس امريكا', 'بيت بوس', NULL, '2018-07-10', 'ضبح', 'اعدادي', 'السابع', 'الامل', NULL, '', 'جيده', '', 'لا شيء', 'لا يوجد', NULL, 'وصي وصي وصي', '1', '1969-08-14', 'عم', '8737723', 'نفسه', 'عمل حر', '3', NULL, NULL, 'أم باراك', 'yes', '1', 'محامية', '5', '4', '2', 'الحثيلي - نيويورك', '1', '10000', 'null', '', NULL, NULL, NULL, 'معرف معرف معرف', '234234324', 'سكن المعرف', '324234232', '324124', NULL, '3', NULL, NULL, NULL, '2020-10-02', '0000-00-00', '', '1', '1', '100.00', '2', '/yateemAid/ysys/aytamattachments/36_birthCert.png', '/yateemAid/ysys/aytamattachments/36_deathCert.png', '/yateemAid/ysys/aytamattachments/36_personalPhoto.png'),
(37, NULL, 'يتيم', NULL, '0000-00-00', '', '', '', '', NULL, '0000-00-00', '', '', '', '', NULL, '', '', '', '', '', NULL, '', '', '0000-00-00', '', '', '', '', '', NULL, NULL, '', NULL, '', '', '0', '0', '', '', '', '0', 'null', '', NULL, NULL, NULL, '', '', '', '', '', NULL, '0', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '', '', NULL, '0.00', '', NULL, NULL, '/yateemAid/ysys/aytamattachments/37_personalPhoto.png');

-- --------------------------------------------------------

--
-- Table structure for table `yayateeminfo1_form`
--

CREATE TABLE `yayateeminfo1_form` (
  `id` int(11) NOT NULL,
  `ord` int(11) NOT NULL,
  `col` varchar(255) NOT NULL,
  `form_descrip` varchar(255) NOT NULL,
  `table_descrip` varchar(255) NOT NULL,
  `col_type` varchar(255) NOT NULL,
  `field_type` varchar(100) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `validation` text NOT NULL,
  `label_class` varchar(255) NOT NULL,
  `field_class` varchar(255) NOT NULL,
  `input_html` text NOT NULL,
  `select_opts` text NOT NULL,
  `special_field_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yayateeminfo1_form`
--

INSERT INTO `yayateeminfo1_form` (`id`, `ord`, `col`, `form_descrip`, `table_descrip`, `col_type`, `field_type`, `required`, `validation`, `label_class`, `field_class`, `input_html`, `select_opts`, `special_field_type`) VALUES
(2, 20, 'yName', 'اسم اليتيم رباعياً مع اللقب', 'اسم اليتيم', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(4, 40, 'yDateOfBirth', 'تاريخ ميلاد اليتيم', 'ميلاد اليتيم', 'date', 'date', 0, '', '', 'form-control', '', 'null', ''),
(5, 50, 'yBirthPlace', 'محل الميلاد', 'محل الميلاد', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(6, 60, 'yNationality', 'جنسية اليتيم', 'جنسية اليتيم', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(7, 70, 'yFeatures', 'مواهب ومميزات اليتيم', 'مواهب ومميزات اليتيم', 'text', 'textarea', 0, '', '', 'form-control', '', 'null', ''),
(8, 80, 'yAddress', 'محل اقامة اليتيم [ مديرية - عزلة / حي ]', 'محل اقامة اليتيم', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(10, 100, 'fDeathDate', 'تاريخ وفاة الأب', 'تاريخ وفاة الأب', 'date', 'date', 0, '', '', 'form-control', '', 'null', ''),
(11, 110, 'fDeathReason', 'سبب وفاة الأب', 'سبب وفاة الأب', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(12, 120, 'yEduLevel', 'المستوى التعليمي', 'المستوى التعليمي', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(13, 130, 'yEduClass', 'الصف الدراسي', 'الصف الدراسي', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(14, 140, 'yEduSchoolName', 'اسم المدرسة', 'اسم المدرسة', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(16, 160, 'yEduNoEduReason', 'سبب الانقاطع عن التعليم [ في حال الانقطاع ]', 'سبب الانقاطع عن التعليم', 'text', 'textarea', 0, '', '', 'form-control', '', 'null', ''),
(17, 170, 'yHealthStatus', 'الحالة الصحية', 'الحالة الصحية', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(18, 180, 'yHealthSickness', 'بيان المرض [ إن وجد ]', 'بيان المرض', 'text', 'textarea', 0, '', '', 'form-control', '', 'null', ''),
(19, 190, 'yQuranLevel', 'مقدار الحفظ من القرآن', 'مقدار الحفظ من القرآن', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(20, 200, 'yQuranSchool', 'اسم مدرسة التحفيظ', 'اسم مدرسة التحفيظ', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(22, 220, 'rName', 'اسم الوصي', 'اسم الوصي', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(24, 240, 'rDateOfBirth', 'تاريخ ميلاد الوصي', 'ميلاد الوصي', 'date', 'date', 0, '', '', 'form-control', '', 'null', ''),
(25, 250, 'rRelation', 'صلة قرابة الوصي باليتيم', 'صلة قرابة الوصي باليتيم', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(26, 260, 'rMobile', 'رقم موبايل الوصي', 'رقم موبايل الوصي', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(27, 270, 'rMobilePerson', 'صاحب الموبايل (مسجل باسم من)', 'صاحب الموبايل (مسجل باسم من)', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(28, 280, 'rWorkName', 'جهة عمل الوصي', 'جهة عمل الوصي', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(32, 310, 'mName', 'اسم الأم', 'اسم الأم', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(35, 350, 'mWork', 'عمل الأم [ إن وجد ]', 'عمل الأم [ إن وجد ]', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(39, 390, 'fAddress', 'عنوان سكن الأسرة', 'عنوان سكن الأسرة', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(43, 430, 'sOpinion', 'رأي الإدارة المعنية [ المختص ]', 'رأي الإدارة المعنية [ المختص ]', 'text', 'textarea', 0, '', '', 'form-control', '', 'null', ''),
(47, 470, 'idName', 'اسم المعرف', 'اسم المعرف', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(48, 480, 'idMobile', 'رقم موبايل المعرف', 'رقم موبايل المعرف', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(49, 490, 'idAddress', 'عنوان سكن المعرف', 'عنوان سكن المعرف', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(50, 320, 'mIDCard', 'رقم هوية الأم', 'رقم هوية الأم', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(51, 300, 'rIDCard', 'رقم هوية الوصي', 'رقم هوية الوصي', 'varchar', 'text', 0, '', '', 'form-control', '', 'null', ''),
(59, 590, 'kafalahEndreason', 'سبب انتهاء الكفالة', 'سبب انتهاء الكفالة', 'text', 'textarea', 0, '', '', 'form-control', '', 'null', ''),
(62, 10, 'dateOfEntry', 'تاريخ الادخال', 'تاريخ الادخال', 'date', 'date', 1, '', '', 'form-control', '', '{\"\":\"\"}', ''),
(64, 30, 'ySex', 'جنس اليتيم', 'جنس اليتيم', 'varchar', 'dropdown', 0, '', '', 'form-control', '', '{\"male\":\"\\u0630\\u0643\\u0631\",\"female\":\"\\u0623\\u0646\\u062b\\u0649\"}', ''),
(65, 90, 'yRankInFamily', 'ترتيب اليتيم بين اخوانه واخواته [ من الأكبر الى الأصغر ]', 'ترتيب اليتيم', 'int', 'number', 0, '', '', 'form-control', '', '{\"\":\"\"}', ''),
(66, 150, 'yEduSchoolPhone', 'رقم هاتف المدرسة', 'رقم هاتف المدرسة', 'int', 'number', 0, '', '', 'form-control', '', '{\"\":\"\"}', ''),
(67, 230, 'rSex', 'جنس الوصي', 'جنس الوصي', 'varchar', 'dropdown', 0, '', '', 'form-control', '', '{\"male\":\"\\u0630\\u0643\\u0631\",\"female\":\"\\u0623\\u0646\\u062b\\u0649\"}', ''),
(68, 290, 'rWorkType', 'نوع العمل', 'نوع العمل', 'varchar', 'dropdown', 0, '', '', 'form-control', '', '{\"gov\":\"\\u062d\\u0643\\u0648\\u0645\\u064a\",\"special\":\"\\u062e\\u0627\\u0635\",\"charity\":\"\\u062e\\u064a\\u0631\\u064a\",\"free\":\"\\u062d\\u0631\",\"none\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f\"}', ''),
(69, 360, 'fNumberOfBrothers', 'عدد الاخوة والأخوات', 'عدد الاخوة والأخوات', 'int', 'number', 0, '', '', 'form-control', '', '{\"\":\"\"}', ''),
(70, 370, 'fRankInFamily', 'ترتيب اليتيم بين اخوانه واخواته [ من الأكبر الى الأصغر ]', 'ترتيب اليتيم', 'int', 'number', 0, '', '', 'form-control', '', '{\"\":\"\"}', ''),
(71, 410, 'fFinanceSalary', 'الدخل الشهري للأسرة', 'الدخل الشهري للأسرة', 'money', 'money', 0, '', '', 'form-control', '', '{\"\":\"\"}', ''),
(72, 420, 'fFinanceSource', 'مصدر الدخل للأسرة', 'مصدر الدخل للأسرة', 'text', 'checkbox', 0, '', '', 'form-control', '', '{\"mSalary\":\"\\u0631\\u0627\\u062a\\u0628 \\u0634\\u0647\\u0631\\u064a\",\"mHelps\":\"\\u0645\\u0633\\u0627\\u0639\\u062f\\u0627\\u062a \\u0634\\u0647\\u0631\\u064a\\u0629\",\"other\":\"\\u0645\\u0635\\u0627\\u062f\\u0631 \\u0623\\u062e\\u0631\\u0649\"}', ''),
(73, 530, 'kafalahID', 'رقم الكفالة', 'رقم الكفالة', 'int', 'number', 0, '', '', 'form-control', '', '{\"\":\"\"}', ''),
(74, 540, 'kafalahAmount', 'مبلغ الكفالة لليتيم', 'مبلغ الكفالة لليتيم', 'money', 'money', 0, '', '', 'form-control', '', '{\"\":\"\"}', ''),
(75, 570, 'kafalahStartDate', 'تاريخ بدء الكفالة لليتيم', 'تاريخ بدء الكفالة لليتيم', 'date', 'date', 0, '', '', 'form-control', '', '{\"\":\"\"}', ''),
(76, 580, 'kafalahEndDate', 'تاريخ انتهاء الكفالة لليتيم', 'تاريخ انتهاء الكفالة لليتيم', 'date', 'date', 0, '', '', 'form-control', '', '{\"\":\"\"}', ''),
(77, 75, 'cityName', 'المدينة / المحافظة', 'المدينة', 'varchar', 'dropdown', 0, '', '', 'form-control', '', '{\"sanaa\":\"\\u0635\\u0646\\u0639\\u0627\\u0621\",\"aden\":\"\\u0639\\u062f\\u0646\",\"ibb\":\"\\u0625\\u0628\",\"taiz\":\"\\u062a\\u0639\\u0632\",\"mareb\":\"\\u0645\\u0627\\u0631\\u0628\"}', ''),
(78, 600, 'yState', 'حالة اليتيم', 'حالة اليتيم', 'varchar', 'dropdown', 0, '', '', 'form-control', '', '{\"\\u0644\\u0627\\u0633\\u062a\\u0643\\u0645\\u0627\\u0644 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\":\"\\u0644\\u0627\\u0633\\u062a\\u0643\\u0645\\u0627\\u0644 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a\",\"\\u0644\\u0644\\u062a\\u0633\\u0648\\u064a\\u0642\":\"\\u0644\\u0644\\u062a\\u0633\\u0648\\u064a\\u0642\",\"\\u0645\\u0643\\u0641\\u0648\\u0644\":\"\\u0645\\u0643\\u0641\\u0648\\u0644\",\"\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0645\\u0646\\u062a\\u0647\\u064a\\u0629\":\"\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0645\\u0646\\u062a\\u0647\\u064a\\u0629\"}', ''),
(79, 550, 'kafalahCurrency', 'عملة الكفالة', 'عملة الكفالة', 'varchar', 'dropdown', 0, '', '', 'form-control', '', '{\"yer\":\"\\u0631\\u064a\\u0627\\u0644 \\u064a\\u0645\\u0646\\u064a\",\"usd\":\"\\u062f\\u0648\\u0644\\u0627\\u0631 \\u0623\\u0645\\u0631\\u064a\\u0643\\u064a\",\"sar\":\"\\u0631\\u064a\\u0627\\u0644 \\u0633\\u0639\\u0648\\u062f\\u064a\",\"qar\":\"\\u0631\\u064a\\u0627\\u0644 \\u0642\\u0637\\u0631\\u064a\"}', ''),
(80, 330, 'mAlive', 'هل الأم على قيد الحياة', 'هل الأم على قيد الحياة', 'varchar', 'radio', 0, '', '', 'form-control', '', '{\"yes\":\"\\u0646\\u0639\\u0645\",\"no\":\"\\u0644\\u0627\"}', ''),
(81, 340, 'mStatus', 'حالة الأم الاجتماعية', 'حالة الأم', 'varchar', 'dropdown', 0, '', '', 'form-control', '', '{\"widow\":\"\\u0623\\u0631\\u0645\\u0644\\u0629\",\"married\":\"\\u0645\\u062a\\u0632\\u0648\\u062c\\u0629\"}', ''),
(82, 400, 'fFinanceStatus', 'الوضع المادي للأسرة', 'الوضع المادي للأسرة', 'varchar', 'dropdown', 0, '', '', 'form-control', '', '{\"meduim\":\"\\u0645\\u062a\\u0648\\u0633\\u0637\",\"poor\":\"\\u0641\\u0642\\u064a\\u0631\\u0629\",\"verypoor\":\"\\u0645\\u0639\\u062f\\u0645\\u0629\"}', ''),
(83, 380, 'fHomeType', 'نوع السكن', 'نوع السكن', 'varchar', 'dropdown', 0, '', '', 'form-control', '', '{\"owner\":\"\\u0645\\u0644\\u0643\",\"rent\":\"\\u0627\\u064a\\u062c\\u0627\\u0631\"}', ''),
(84, 610, 'yBirthCertLink', 'شهادة الميلاد', 'شهادة الميلاد', 'varchar', 'text', 0, '', '', 'form-control', '', '{\"\":\"\"}', 'image'),
(85, 620, 'yDeathCertLink', 'شهادة وفاة الأب', 'شهادة وفاة الأب', 'varchar', 'text', 0, '', '', 'form-control', '', '{\"\":\"\"}', 'image'),
(86, 15, 'yPersonalPhotoLink', 'صورة شخصية', 'صورة شخصية', 'varchar', 'text', 0, '', '', 'form-control', '', '{\"\":\"\"}', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `yayateemprojects`
--

CREATE TABLE `yayateemprojects` (
  `id` int(11) NOT NULL,
  `prName` varchar(255) DEFAULT NULL,
  `kafilID` int(11) DEFAULT NULL,
  `prCurrency` int(11) DEFAULT NULL,
  `prStartDate` datetime DEFAULT NULL,
  `prEndDate` date DEFAULT NULL,
  `prCycle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yayateemprojects_form`
--

CREATE TABLE `yayateemprojects_form` (
  `id` int(11) NOT NULL,
  `ord` int(11) NOT NULL,
  `col` varchar(255) NOT NULL,
  `form_descrip` varchar(255) NOT NULL,
  `table_descrip` varchar(255) NOT NULL,
  `col_type` varchar(255) NOT NULL,
  `field_type` varchar(100) NOT NULL,
  `length` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `validation` text NOT NULL,
  `label_class` varchar(255) NOT NULL,
  `field_class` varchar(255) NOT NULL,
  `input_html` text NOT NULL,
  `select_opts` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yayateemprojects_form`
--

INSERT INTO `yayateemprojects_form` (`id`, `ord`, `col`, `form_descrip`, `table_descrip`, `col_type`, `field_type`, `length`, `required`, `validation`, `label_class`, `field_class`, `input_html`, `select_opts`) VALUES
(1, 10, 'prName', 'اسم المشروع', 'اسم المشروع', 'varchar', 'text', 0, 1, '', '', 'form-control', '', '{\"\":\"\"}'),
(2, 20, 'kafilID', 'الكافل', 'الكافل', 'int', 'number', 0, 0, '', '', 'form-control', '', '{\"\":\"\"}'),
(3, 30, 'prCurrency', 'العملة', 'العملة', 'int', 'number', 0, 0, '', '', 'form-control', '', '{\"\":\"\"}'),
(5, 40, 'prStartDate', 'تاريخ البدء', 'تاريخ البدء', 'date', 'date', 0, 0, '', '', 'form-control', '', '{\"\":\"\"}'),
(6, 50, 'prEndDate', 'تاريخ الانتهاء', 'تاريخ الانتهاء', 'date', 'date', 0, 0, '', '', 'form-control', '', '{\"\":\"\"}'),
(7, 60, 'prCycle', 'التكرار', 'التكرار', 'int', 'number', 0, 0, '', '', 'form-control', '', '{\"\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `ya_kafalahinfo_01`
--

CREATE TABLE `ya_kafalahinfo_01` (
  `id` int(11) NOT NULL,
  `kafilID` varchar(255) DEFAULT NULL,
  `kafalahAmount` decimal(50,0) DEFAULT NULL,
  `kafalahCurrency` varchar(255) DEFAULT NULL,
  `kafalahDuration` decimal(50,0) DEFAULT NULL,
  `kafalahLoop` varchar(255) DEFAULT NULL,
  `kafalahAytam` decimal(50,0) DEFAULT NULL,
  `kafalahType` varchar(255) DEFAULT NULL,
  `kafalahSDate` date DEFAULT NULL,
  `kafalahRepeat` decimal(50,0) DEFAULT NULL,
  `kafalahLable` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_kafalahinfo_01`
--

INSERT INTO `ya_kafalahinfo_01` (`id`, `kafilID`, `kafalahAmount`, `kafalahCurrency`, `kafalahDuration`, `kafalahLoop`, `kafalahAytam`, `kafalahType`, `kafalahSDate`, `kafalahRepeat`, `kafalahLable`) VALUES
(1, '1', '500000', 'YER', '1', 'w', '400', '', '0000-00-00', '2', 'كفالة 500 يتيم - راف'),
(2, '1', '500', 'USD', '2', 'w', '40', '', '2019-09-09', '3', 'كفالة 10 ايتام - ابو محمد'),
(3, '4', '100000', '2', '12', '2', '100', '', '0000-00-00', '3', 'كفالة الشيخ عدنان الصلوي لـ 100 يتيم');

-- --------------------------------------------------------

--
-- Table structure for table `ya_kafalahinfo_01_fb_fields`
--

CREATE TABLE `ya_kafalahinfo_01_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_kafalahinfo_01_fb_fields`
--

INSERT INTO `ya_kafalahinfo_01_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 10, 'kafilID', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\"}', '', 'ya_kafilinfo_01', 'kName', ''),
(2, 20, 'kafalahAmount', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', '', '', ''),
(3, 30, 'kafalahCurrency', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0639\\u0645\\u0644\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0639\\u0645\\u0644\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', 'ya_settings_currency', 'cNameAra', ''),
(4, 40, 'kafalahDuration', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0645\\u062f\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0628\\u0627\\u0644\\u0623\\u0634\\u0647\\u0631\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0645\\u062f\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0628\\u0627\\u0644\\u0623\\u0634\\u0647\\u0631\"}', '', '', '', ''),
(5, 60, 'kafalahLoop', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062f\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062f\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', 'ya_settings_kafalahloop', 'loopName', ''),
(6, 80, 'kafalahAytam', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u064a\\u062a\\u0627\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u064a\\u062a\\u0627\\u0645\"}', '', '', '', ''),
(7, 90, 'kafalahType', 'radio', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', 'ya_settings_kafalahtype', 'kafalahType', ''),
(8, 50, 'kafalahSDate', 'date', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0628\\u062f\\u0621\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0628\\u062f\\u0621\"}', '', '', '', ''),
(9, 70, 'kafalahRepeat', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u062a\\u0643\\u0631\\u0627\\u0631\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u062a\\u0643\\u0631\\u0627\\u0631\"}', '', '', '', ''),
(10, 0, 'kafalahLable', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062a\\u0633\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062a\\u0633\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_kafilinfo_01`
--

CREATE TABLE `ya_kafilinfo_01` (
  `id` int(11) NOT NULL,
  `kName` varchar(255) DEFAULT NULL,
  `kAddress` varchar(255) DEFAULT NULL,
  `kPhone` decimal(50,0) DEFAULT NULL,
  `kType` varchar(255) DEFAULT NULL,
  `kCountry` varchar(255) DEFAULT NULL,
  `kEmail` varchar(255) DEFAULT NULL,
  `kWebsite` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_kafilinfo_01`
--

INSERT INTO `ya_kafilinfo_01` (`id`, `kName`, `kAddress`, `kPhone`, `kType`, `kCountry`, `kEmail`, `kWebsite`) VALUES
(1, 'فاعل خير', 'اليمن - صنعاء', '777777777', '', 'اليمن', NULL, NULL),
(2, 'كافل يتيم', '', '0', '', '', 'شيبششسيبسيبشيسب', ''),
(3, 'تجربة', 'اليمن - صنعاء', '774030703', '', 'اليمن', '', ''),
(4, 'الشيخ عدنان الصلوي', '', '0', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_kafilinfo_01_fb_fields`
--

CREATE TABLE `ya_kafilinfo_01_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_kafilinfo_01_fb_fields`
--

INSERT INTO `ya_kafilinfo_01_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'kName', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\",\"required\":true}', '', '', '', ''),
(2, 0, 'kAddress', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\"}', '', '', '', ''),
(3, 0, 'kPhone', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641 \\/ \\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641 \\/ \\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\"}', '', '', '', ''),
(4, 0, 'kType', 'radio', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\"}', '[{\"id\":\"i\",\"value\":\"\\u062f\\u0627\\u062e\\u0644\\u064a\"},{\"id\":\"o\",\"value\":\"\\u062e\\u0627\\u0631\\u062c\\u064a\"}]', '', '', ''),
(5, 0, 'kCountry', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u062f\\u0648\\u0644\\u0629\"}', '', '', '', ''),
(6, 0, 'kEmail', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\"}', '', '', '', ''),
(7, 0, 'kWebsite', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0627\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\"}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_cities`
--

CREATE TABLE `ya_settings_cities` (
  `id` int(11) NOT NULL,
  `cityName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_cities`
--

INSERT INTO `ya_settings_cities` (`id`, `cityName`) VALUES
(1, 'صنعاء'),
(2, 'عدن'),
(3, 'إب'),
(4, 'تعز'),
(5, 'الحديدة'),
(6, 'مأرب');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_cities_fb_fields`
--

CREATE TABLE `ya_settings_cities_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_cities_fb_fields`
--

INSERT INTO `ya_settings_cities_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'cityName', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629\"}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_currency`
--

CREATE TABLE `ya_settings_currency` (
  `id` int(11) NOT NULL,
  `cNameAra` varchar(255) DEFAULT NULL,
  `cNameEn` varchar(255) DEFAULT NULL,
  `cSymbol` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_currency`
--

INSERT INTO `ya_settings_currency` (`id`, `cNameAra`, `cNameEn`, `cSymbol`) VALUES
(1, 'ريال يمني', 'Yemeni Riyal', 'ر.ي'),
(2, 'دولار أمريكي', 'US Dollar', 'USD'),
(3, 'ريال سعودي', 'Saudi Riyal', 'SAR'),
(4, 'ريال قطري', 'Qatari Riyal', 'QAR');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_currency_fb_fields`
--

CREATE TABLE `ya_settings_currency_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_currency_fb_fields`
--

INSERT INTO `ya_settings_currency_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'cNameAra', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0629 \\u0628\\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0629 \\u0628\\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\",\"required\":true}', '', '', '', ''),
(2, 0, 'cNameEn', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0629 \\u0628\\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0629 \\u0628\\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629\"}', '', '', '', ''),
(3, 0, 'cSymbol', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0631\\u0645\\u0632 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0629\"}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_fsource`
--

CREATE TABLE `ya_settings_fsource` (
  `id` int(11) NOT NULL,
  `fSource` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_fsource`
--

INSERT INTO `ya_settings_fsource` (`id`, `fSource`) VALUES
(1, 'راتب شهري'),
(2, 'مساعدات شهرية'),
(3, 'مصادر أخرى');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_fsource_fb_fields`
--

CREATE TABLE `ya_settings_fsource_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_fsource_fb_fields`
--

INSERT INTO `ya_settings_fsource_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'fSource', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0645\\u0635\\u062f\\u0631 \\u0627\\u0644\\u062f\\u062e\\u0644 \\u0644\\u0644\\u0623\\u0633\\u0631\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0645\\u0635\\u062f\\u0631 \\u0627\\u0644\\u062f\\u062e\\u0644 \\u0644\\u0644\\u0623\\u0633\\u0631\\u0629\",\"required\":true}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_fstate`
--

CREATE TABLE `ya_settings_fstate` (
  `id` int(11) NOT NULL,
  `fState` varchar(255) DEFAULT NULL,
  `fFinanceStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_fstate`
--

INSERT INTO `ya_settings_fstate` (`id`, `fState`, `fFinanceStatus`) VALUES
(1, 'متوسط', 'متوسط'),
(2, 'فقيرة', 'فقيرة'),
(3, 'معدمة', 'معدمة');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_fstate_fb_fields`
--

CREATE TABLE `ya_settings_fstate_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_fstate_fb_fields`
--

INSERT INTO `ya_settings_fstate_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'fFinanceStatus', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u0648\\u0636\\u0639 \\u0627\\u0644\\u0645\\u0627\\u062f\\u064a \\u0644\\u0644\\u0623\\u0633\\u0631\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0648\\u0636\\u0639 \\u0627\\u0644\\u0645\\u0627\\u062f\\u064a \\u0644\\u0644\\u0623\\u0633\\u0631\\u0629\",\"required\":true}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_hometype`
--

CREATE TABLE `ya_settings_hometype` (
  `id` int(11) NOT NULL,
  `hType` varchar(255) DEFAULT NULL,
  `fHomeType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_hometype`
--

INSERT INTO `ya_settings_hometype` (`id`, `hType`, `fHomeType`) VALUES
(1, 'ملك', 'ملك'),
(2, 'ايجار', 'ايجار');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_hometype_fb_fields`
--

CREATE TABLE `ya_settings_hometype_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_hometype_fb_fields`
--

INSERT INTO `ya_settings_hometype_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'fHomeType', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0633\\u0643\\u0646\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0633\\u0643\\u0646\",\"required\":true}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_jobtype`
--

CREATE TABLE `ya_settings_jobtype` (
  `id` int(11) NOT NULL,
  `jName` varchar(255) DEFAULT NULL,
  `rWorkType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_jobtype`
--

INSERT INTO `ya_settings_jobtype` (`id`, `jName`, `rWorkType`) VALUES
(1, 'حكومي', NULL),
(2, 'خاص', NULL),
(3, 'خيري', NULL),
(4, 'حر', NULL),
(5, 'لا يوجد', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_jobtype_fb_fields`
--

CREATE TABLE `ya_settings_jobtype_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_jobtype_fb_fields`
--

INSERT INTO `ya_settings_jobtype_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'rWorkType', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0639\\u0645\\u0644\",\"required\":true}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_kafalahloop`
--

CREATE TABLE `ya_settings_kafalahloop` (
  `id` int(11) NOT NULL,
  `loopName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_kafalahloop`
--

INSERT INTO `ya_settings_kafalahloop` (`id`, `loopName`) VALUES
(1, 'سنوية'),
(2, 'شهرية'),
(3, 'اسبوعية');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_kafalahloop_fb_fields`
--

CREATE TABLE `ya_settings_kafalahloop_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_kafalahloop_fb_fields`
--

INSERT INTO `ya_settings_kafalahloop_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'loopName', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062f\\u0648\\u0631\\u0629 \\u0644\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u062f\\u0648\\u0631\\u0629 \\u0644\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"required\":true}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_kafalahtype`
--

CREATE TABLE `ya_settings_kafalahtype` (
  `id` int(11) NOT NULL,
  `kafalahType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_kafalahtype`
--

INSERT INTO `ya_settings_kafalahtype` (`id`, `kafalahType`) VALUES
(1, 'مستمرة'),
(2, 'منقطعة');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_kafalahtype_fb_fields`
--

CREATE TABLE `ya_settings_kafalahtype_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_kafalahtype_fb_fields`
--

INSERT INTO `ya_settings_kafalahtype_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'kafalahType', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"required\":true}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_mstate`
--

CREATE TABLE `ya_settings_mstate` (
  `id` int(11) NOT NULL,
  `msName` varchar(255) DEFAULT NULL,
  `mStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_mstate`
--

INSERT INTO `ya_settings_mstate` (`id`, `msName`, `mStatus`) VALUES
(1, 'أرملة', 'أرملة'),
(2, 'متزوجة', 'متزوجة');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_mstate_fb_fields`
--

CREATE TABLE `ya_settings_mstate_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_mstate_fb_fields`
--

INSERT INTO `ya_settings_mstate_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'mStatus', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0623\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0623\\u0645\",\"required\":true}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_sex`
--

CREATE TABLE `ya_settings_sex` (
  `id` int(11) NOT NULL,
  `sNameAra` varchar(255) DEFAULT NULL,
  `sNameEng` varchar(255) DEFAULT NULL,
  `sSymbol` varchar(255) DEFAULT NULL,
  `ySex` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_sex`
--

INSERT INTO `ya_settings_sex` (`id`, `sNameAra`, `sNameEng`, `sSymbol`, `ySex`) VALUES
(1, 'ذكر', 'Male', 'M', NULL),
(2, 'أنثى', 'Female', 'F', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_sex_fb_fields`
--

CREATE TABLE `ya_settings_sex_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_sex_fb_fields`
--

INSERT INTO `ya_settings_sex_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'ySex', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u062c\\u0646\\u0633 \\u0628\\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u062c\\u0646\\u0633 \\u0628\\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\",\"required\":true}', '', '', '', ''),
(2, 0, 'sNameEng', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0628\\u0627\\u0644\\u0627\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0627\\u0633\\u0645 \\u0628\\u0627\\u0644\\u0627\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629\"}', '', '', '', ''),
(3, 0, 'sSymbol', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u0631\\u0645\\u0632\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0631\\u0645\\u0632\"}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_yesno`
--

CREATE TABLE `ya_settings_yesno` (
  `id` int(11) NOT NULL,
  `aName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_yesno`
--

INSERT INTO `ya_settings_yesno` (`id`, `aName`) VALUES
(1, 'نعم'),
(2, 'لا');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_yesno_fb_fields`
--

CREATE TABLE `ya_settings_yesno_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_yesno_fb_fields`
--

INSERT INTO `ya_settings_yesno_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'aName', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0646\\u0639\\u0645 \\u0623\\u0648 \\u0644\\u0627\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0646\\u0639\\u0645 \\u0623\\u0648 \\u0644\\u0627\",\"required\":true}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_ystate`
--

CREATE TABLE `ya_settings_ystate` (
  `id` int(11) NOT NULL,
  `yState` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_ystate`
--

INSERT INTO `ya_settings_ystate` (`id`, `yState`) VALUES
(1, 'مكفول'),
(2, 'في الانتظار'),
(3, 'لاستكمال البيانات'),
(4, 'كفالة منتهية');

-- --------------------------------------------------------

--
-- Table structure for table `ya_settings_ystate_fb_fields`
--

CREATE TABLE `ya_settings_ystate_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_settings_ystate_fb_fields`
--

INSERT INTO `ya_settings_ystate_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'yState', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\"}', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_yateeminfo_01`
--

CREATE TABLE `ya_yateeminfo_01` (
  `id` int(11) NOT NULL,
  `dateOfEntry` date DEFAULT NULL,
  `yName` varchar(255) DEFAULT NULL,
  `ySex` varchar(255) DEFAULT NULL,
  `yDateOfBirth` date DEFAULT NULL,
  `yBirthPlace` varchar(255) DEFAULT NULL,
  `yNationality` varchar(255) DEFAULT NULL,
  `yFeatures` text DEFAULT NULL,
  `yAddress` varchar(255) DEFAULT NULL,
  `yRankInFamily` decimal(50,0) DEFAULT NULL,
  `fDeathDate` date DEFAULT NULL,
  `fDeathReason` varchar(255) DEFAULT NULL,
  `yEduLevel` varchar(255) DEFAULT NULL,
  `yEduClass` varchar(255) DEFAULT NULL,
  `yEduSchoolName` varchar(255) DEFAULT NULL,
  `yEduSchoolPhone` decimal(50,0) DEFAULT NULL,
  `yEduNoEduReason` text DEFAULT NULL,
  `yHealthStatus` varchar(255) DEFAULT NULL,
  `yHealthSickness` text DEFAULT NULL,
  `yQuranLevel` varchar(255) DEFAULT NULL,
  `yQuranSchool` varchar(255) DEFAULT NULL,
  `rSectionName` varchar(255) DEFAULT NULL,
  `rName` varchar(255) DEFAULT NULL,
  `rSex` varchar(255) DEFAULT NULL,
  `rDateOfBirth` date DEFAULT NULL,
  `rRelation` varchar(255) DEFAULT NULL,
  `rMobile` varchar(12) DEFAULT NULL,
  `rMobilePerson` varchar(255) DEFAULT NULL,
  `rWorkName` varchar(255) DEFAULT NULL,
  `rWorkType` varchar(255) DEFAULT NULL,
  `mSection` varchar(255) DEFAULT NULL,
  `mSectionName` varchar(255) DEFAULT NULL,
  `mName` varchar(255) DEFAULT NULL,
  `mAlive` varchar(255) DEFAULT NULL,
  `mStatus` varchar(255) DEFAULT NULL,
  `mWork` varchar(255) DEFAULT NULL,
  `fNumberOfBrothers` decimal(50,0) DEFAULT NULL,
  `fRankInFamily` decimal(50,0) DEFAULT NULL,
  `fHomeType` varchar(255) DEFAULT NULL,
  `fAddress` varchar(255) DEFAULT NULL,
  `fFinanceStatus` varchar(255) DEFAULT NULL,
  `fFinanceSalary` decimal(50,0) DEFAULT NULL,
  `fFinanceSource` varchar(255) DEFAULT NULL,
  `sOpinion` text DEFAULT NULL,
  `BasicInfo` varchar(255) DEFAULT NULL,
  `identifierName` varchar(255) DEFAULT NULL,
  `identifierSection` varchar(255) DEFAULT NULL,
  `idName` varchar(255) DEFAULT NULL,
  `idMobile` varchar(12) DEFAULT NULL,
  `idAddress` varchar(255) DEFAULT NULL,
  `mIDCard` varchar(255) DEFAULT NULL,
  `rIDCard` varchar(255) DEFAULT NULL,
  `BasicInfoSection` varchar(255) DEFAULT NULL,
  `kafalahID` decimal(50,0) DEFAULT NULL,
  `kafalahAmountY` decimal(50,0) DEFAULT NULL,
  `kafalahCurrencyY` varchar(255) DEFAULT NULL,
  `kafalahSection` varchar(255) DEFAULT NULL,
  `kafalahStartDate` datetime DEFAULT NULL,
  `kafalahEndDate` date DEFAULT NULL,
  `kafalahEndreason` text DEFAULT NULL,
  `yState` varchar(255) DEFAULT NULL,
  `cityName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_yateeminfo_01`
--

INSERT INTO `ya_yateeminfo_01` (`id`, `dateOfEntry`, `yName`, `ySex`, `yDateOfBirth`, `yBirthPlace`, `yNationality`, `yFeatures`, `yAddress`, `yRankInFamily`, `fDeathDate`, `fDeathReason`, `yEduLevel`, `yEduClass`, `yEduSchoolName`, `yEduSchoolPhone`, `yEduNoEduReason`, `yHealthStatus`, `yHealthSickness`, `yQuranLevel`, `yQuranSchool`, `rSectionName`, `rName`, `rSex`, `rDateOfBirth`, `rRelation`, `rMobile`, `rMobilePerson`, `rWorkName`, `rWorkType`, `mSection`, `mSectionName`, `mName`, `mAlive`, `mStatus`, `mWork`, `fNumberOfBrothers`, `fRankInFamily`, `fHomeType`, `fAddress`, `fFinanceStatus`, `fFinanceSalary`, `fFinanceSource`, `sOpinion`, `BasicInfo`, `identifierName`, `identifierSection`, `idName`, `idMobile`, `idAddress`, `mIDCard`, `rIDCard`, `BasicInfoSection`, `kafalahID`, `kafalahAmountY`, `kafalahCurrencyY`, `kafalahSection`, `kafalahStartDate`, `kafalahEndDate`, `kafalahEndreason`, `yState`, `cityName`) VALUES
(1, '0000-00-00', 'ككشسيبت', '1', '0000-00-00', 'يشيب', 'يشي', 'شيب', 'شيسب', '2', '0000-00-00', 'سيب', '', '', '', '0', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '20000', NULL, NULL, NULL, NULL, NULL, '2', '1'),
(2, '0000-00-00', 'محمد محمد محمد محمد', '1', '0000-00-00', 'صنعاء', 'يمني', 'حفظ القرآن - الحساب', 'باب اليمن', '3', '0000-00-00', 'الاجل', 'اعدادي', 'السابع', 'الامل', '111111111111', '', 'جيده', 'لا يوجد', 'خمسة اجزاء', 'الامل', NULL, 'وصي وصي وصي', '', '0000-00-00', '', '111111111111', 'نفسه', 'جهة عمل', '', NULL, NULL, 'أم أم أم أم', '', '1', '', '6', '3', '2', '', '', '0', 'null', '', NULL, NULL, NULL, '', '', '', '333333333333333', '23232323', NULL, '2', '30000', '1', NULL, '0000-00-00 00:00:00', '0000-00-00', '', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ya_yateeminfo_01_fb_fields`
--

CREATE TABLE `ya_yateeminfo_01_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_yateeminfo_01_fb_fields`
--

INSERT INTO `ya_yateeminfo_01_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 20, 'dateOfEntry', 'date', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0625\\u062f\\u062e\\u0627\\u0644\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0625\\u062f\\u062e\\u0627\\u0644\",\"required\":true}', '', '', '', ''),
(2, 30, 'yName', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645 \\u0631\\u0628\\u0627\\u0639\\u064a\\u0627\\u064b \\u0645\\u0639 \\u0627\\u0644\\u0644\\u0642\\u0628\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645 \\u0631\\u0628\\u0627\\u0639\\u064a\\u0627\\u064b \\u0645\\u0639 \\u0627\\u0644\\u0644\\u0642\\u0628\",\"required\":true}', '', '', '', ''),
(3, 40, 'ySex', 'radio', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062c\\u0646\\u0633 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062c\\u0646\\u0633 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\"}', '', 'ya_settings_sex', 'sNameAra', ''),
(4, 50, 'yDateOfBirth', 'date', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0645\\u064a\\u0644\\u0627\\u062f \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0645\\u064a\\u0644\\u0627\\u062f \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\"}', '', '', '', ''),
(5, 60, 'yBirthPlace', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0645\\u062d\\u0644 \\u0645\\u064a\\u0644\\u0627\\u062f \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0645\\u062d\\u0644 \\u0645\\u064a\\u0644\\u0627\\u062f \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"required\":true}', '', '', '', ''),
(6, 70, 'yNationality', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062c\\u0646\\u0633\\u064a\\u0629 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u062c\\u0646\\u0633\\u064a\\u0629 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"required\":true}', '', '', '', ''),
(7, 80, 'yFeatures', 'textarea', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0645\\u0648\\u0627\\u0647\\u0628 \\u0648\\u0645\\u0645\\u064a\\u0632\\u0627\\u062a \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"dir=&quot;rtl&quot;\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0645\\u0648\\u0627\\u0647\\u0628 \\u0648\\u0645\\u0645\\u064a\\u0632\\u0627\\u062a \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"required\":true}', '', '', '', ''),
(8, 90, 'yAddress', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0645\\u062d\\u0644 \\u0627\\u0642\\u0627\\u0645\\u0629 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645 [ \\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 - \\u0645\\u062f\\u064a\\u0631\\u064a\\u0629 - \\u0639\\u0632\\u0644\\u0629 \\/ \\u062d\\u064a ]\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0645\\u062d\\u0644 \\u0627\\u0642\\u0627\\u0645\\u0629 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645 [ \\u0645\\u062d\\u0627\\u0641\\u0638\\u0629 - \\u0645\\u062f\\u064a\\u0631\\u064a\\u0629 - \\u0639\\u0632\\u0644\\u0629 \\/ \\u062d\\u064a ]\",\"required\":true}', '', '', '', ''),
(9, 100, 'yRankInFamily', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062a\\u0631\\u062a\\u064a\\u0628 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645 \\u0628\\u064a\\u0646 \\u0627\\u062e\\u0648\\u0627\\u0646\\u0647 \\u0648\\u0627\\u062e\\u0648\\u0627\\u062a\\u0647 [ \\u0645\\u0646 \\u0627\\u0644\\u0623\\u0643\\u0628\\u0631 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0635\\u063a\\u0631 ]\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u062a\\u0631\\u062a\\u064a\\u0628 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645 \\u0628\\u064a\\u0646 \\u0627\\u062e\\u0648\\u0627\\u0646\\u0647 \\u0648\\u0627\\u062e\\u0648\\u0627\\u062a\\u0647 [ \\u0645\\u0646 \\u0627\\u0644\\u0623\\u0643\\u0628\\u0631 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0635\\u063a\\u0631 ]\",\"required\":true}', '', '', '', ''),
(10, 110, 'fDeathDate', 'date', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0648\\u0641\\u0627\\u0629 \\u0627\\u0644\\u0623\\u0628\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0648\\u0641\\u0627\\u0629 \\u0627\\u0644\\u0623\\u0628\",\"required\":true}', '', '', '', ''),
(11, 120, 'fDeathReason', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0633\\u0628\\u0628 \\u0648\\u0641\\u0627\\u0629 \\u0627\\u0644\\u0623\\u0628\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0633\\u0628\\u0628 \\u0648\\u0641\\u0627\\u0629 \\u0627\\u0644\\u0623\\u0628\",\"required\":true}', '', '', '', ''),
(12, 130, 'yEduLevel', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\"}', '', '', '', ''),
(13, 140, 'yEduClass', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0635\\u0641 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\"}', '', '', '', ''),
(14, 150, 'yEduSchoolName', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\"}', '', '', '', ''),
(15, 160, 'yEduSchoolPhone', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0631\\u0642\\u0645 \\u0647\\u0627\\u062a\\u0641 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\"}', '', '', '', ''),
(16, 170, 'yEduNoEduReason', 'textarea', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0633\\u0628\\u0628 \\u0627\\u0644\\u0627\\u0646\\u0642\\u0627\\u0637\\u0639 \\u0639\\u0646 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 [ \\u0641\\u064a \\u062d\\u0627\\u0644 \\u0627\\u0644\\u0627\\u0646\\u0642\\u0637\\u0627\\u0639 ]\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0633\\u0628\\u0628 \\u0627\\u0644\\u0627\\u0646\\u0642\\u0627\\u0637\\u0639 \\u0639\\u0646 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 [ \\u0641\\u064a \\u062d\\u0627\\u0644 \\u0627\\u0644\\u0627\\u0646\\u0642\\u0637\\u0627\\u0639 ]\"}', '', '', '', ''),
(17, 180, 'yHealthStatus', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0635\\u062d\\u064a\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0635\\u062d\\u064a\\u0629\"}', '', '', '', ''),
(18, 190, 'yHealthSickness', 'textarea', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0628\\u064a\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0631\\u0636 [ \\u0625\\u0646 \\u0648\\u062c\\u062f ]\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0628\\u064a\\u0627\\u0646 \\u0627\\u0644\\u0645\\u0631\\u0636 [ \\u0625\\u0646 \\u0648\\u062c\\u062f ]\"}', '', '', '', ''),
(19, 200, 'yQuranLevel', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0645\\u0642\\u062f\\u0627\\u0631 \\u0627\\u0644\\u062d\\u0641\\u0638 \\u0645\\u0646 \\u0627\\u0644\\u0642\\u0631\\u0622\\u0646\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0645\\u0642\\u062f\\u0627\\u0631 \\u0627\\u0644\\u062d\\u0641\\u0638 \\u0645\\u0646 \\u0627\\u0644\\u0642\\u0631\\u0622\\u0646\"}', '', '', '', ''),
(20, 210, 'yQuranSchool', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0645\\u062f\\u0631\\u0633\\u0629 \\u0627\\u0644\\u062a\\u062d\\u0641\\u064a\\u0638\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0645\\u062f\\u0631\\u0633\\u0629 \\u0627\\u0644\\u062a\\u062d\\u0641\\u064a\\u0638\"}', '', '', '', ''),
(21, 220, 'rSectionName', 'label', '{\"div_class1\":\"\",\"div_class2\":\"form-group bg-dark text-white\",\"label\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0648\\u0635\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0648\\u0635\\u064a\"}', '', '', '', ''),
(22, 230, 'rName', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0648\\u0635\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0648\\u0635\\u064a\",\"required\":true}', '', '', '', ''),
(23, 240, 'rSex', 'radio', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062c\\u0646\\u0633 \\u0627\\u0644\\u0648\\u0635\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062c\\u0646\\u0633 \\u0627\\u0644\\u0648\\u0635\\u064a\"}', '', 'ya_settings_sex', 'sNameAra', ''),
(24, 250, 'rDateOfBirth', 'date', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0645\\u064a\\u0644\\u0627\\u062f \\u0627\\u0644\\u0648\\u0635\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0645\\u064a\\u0644\\u0627\\u062f \\u0627\\u0644\\u0648\\u0635\\u064a\"}', '', '', '', ''),
(25, 260, 'rRelation', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0635\\u0644\\u0629 \\u0642\\u0631\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0648\\u0635\\u064a \\u0628\\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0635\\u0644\\u0629 \\u0642\\u0631\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0648\\u0635\\u064a \\u0628\\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\"}', '', '', '', ''),
(26, 270, 'rMobile', 'tel', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0631\\u0642\\u0645 \\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0648\\u0635\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0631\\u0642\\u0645 \\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0648\\u0635\\u064a\"}', '', '', '', ''),
(27, 280, 'rMobilePerson', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 (\\u0645\\u0633\\u062c\\u0644 \\u0628\\u0627\\u0633\\u0645 \\u0645\\u0646)\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0635\\u0627\\u062d\\u0628 \\u0627\\u0644\\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 (\\u0645\\u0633\\u062c\\u0644 \\u0628\\u0627\\u0633\\u0645 \\u0645\\u0646)\"}', '', '', '', ''),
(28, 290, 'rWorkName', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062c\\u0647\\u0629 \\u0639\\u0645\\u0644 \\u0627\\u0644\\u0648\\u0635\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062c\\u0647\\u0629 \\u0639\\u0645\\u0644 \\u0627\\u0644\\u0648\\u0635\\u064a\"}', '', '', '', ''),
(29, 300, 'rWorkType', 'radio', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0639\\u0645\\u0644\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0639\\u0645\\u0644\"}', '', 'ya_settings_jobtype', 'jName', ''),
(30, 310, 'mSectionName', 'label', '{\"div_class1\":\"\",\"div_class2\":\"form-group bg-dark text-white\",\"label\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0623\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0623\\u0645\"}', '', '', '', ''),
(31, 320, 'mName', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0623\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0623\\u0645\",\"required\":true}', '', '', '', ''),
(32, 330, 'mAlive', 'radio', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0647\\u0644 \\u0627\\u0644\\u0623\\u0645 \\u0639\\u0644\\u0649 \\u0642\\u064a\\u062f \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0647\\u0644 \\u0627\\u0644\\u0623\\u0645 \\u0639\\u0644\\u0649 \\u0642\\u064a\\u062f \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629\"}', '', 'ya_settings_yesno', 'aName', ''),
(33, 340, 'mStatus', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0623\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0623\\u0645\"}', '', 'ya_settings_mstate', 'msName', ''),
(34, 350, 'mWork', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0623\\u0645 [ \\u0625\\u0646 \\u0648\\u062c\\u062f ]\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0639\\u0645\\u0644 \\u0627\\u0644\\u0623\\u0645 [ \\u0625\\u0646 \\u0648\\u062c\\u062f ]\"}', '', '', '', ''),
(35, 360, 'fNumberOfBrothers', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062e\\u0648\\u0629 \\u0648\\u0627\\u0644\\u0623\\u062e\\u0648\\u0627\\u062a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u0639\\u062f\\u062f \\u0627\\u0644\\u0627\\u062e\\u0648\\u0629 \\u0648\\u0627\\u0644\\u0623\\u062e\\u0648\\u0627\\u062a\",\"required\":true}', '', '', '', ''),
(36, 370, 'fRankInFamily', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062a\\u0631\\u062a\\u064a\\u0628 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645 \\u0628\\u064a\\u0646 \\u0627\\u062e\\u0648\\u0627\\u0646\\u0647 \\u0648\\u0627\\u062e\\u0648\\u0627\\u062a\\u0647 [ \\u0645\\u0646 \\u0627\\u0644\\u0623\\u0643\\u0628\\u0631 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0635\\u063a\\u0631 ]\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"1\",\"input_step\":\"\"}', '{\"display\":\"\\u062a\\u0631\\u062a\\u064a\\u0628 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645 \\u0628\\u064a\\u0646 \\u0627\\u062e\\u0648\\u0627\\u0646\\u0647 \\u0648\\u0627\\u062e\\u0648\\u0627\\u062a\\u0647 [ \\u0645\\u0646 \\u0627\\u0644\\u0623\\u0643\\u0628\\u0631 \\u0627\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0635\\u063a\\u0631 ]\",\"required\":true}', '', '', '', ''),
(37, 380, 'fHomeType', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0633\\u0643\\u0646\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0633\\u0643\\u0646\"}', '', 'ya_settings_hometype', 'hType', ''),
(38, 390, 'fAddress', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0633\\u0643\\u0646 \\u0627\\u0644\\u0623\\u0633\\u0631\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0633\\u0643\\u0646 \\u0627\\u0644\\u0623\\u0633\\u0631\\u0629\"}', '', '', '', ''),
(39, 400, 'fFinanceStatus', 'radio', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u0648\\u0636\\u0639 \\u0627\\u0644\\u0645\\u0627\\u062f\\u064a \\u0644\\u0644\\u0623\\u0633\\u0631\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0648\\u0636\\u0639 \\u0627\\u0644\\u0645\\u0627\\u062f\\u064a \\u0644\\u0644\\u0623\\u0633\\u0631\\u0629\"}', '', 'ya_settings_fstate', 'fState', ''),
(40, 410, 'fFinanceSalary', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0634\\u0647\\u0631\\u064a \\u0644\\u0644\\u0623\\u0633\\u0631\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0634\\u0647\\u0631\\u064a \\u0644\\u0644\\u0623\\u0633\\u0631\\u0629\"}', '', '', '', ''),
(41, 420, 'fFinanceSource', 'checkbox', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0645\\u0635\\u062f\\u0631 \\u0627\\u0644\\u062f\\u062e\\u0644 \\u0644\\u0644\\u0623\\u0633\\u0631\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0645\\u0635\\u062f\\u0631 \\u0627\\u0644\\u062f\\u062e\\u0644 \\u0644\\u0644\\u0623\\u0633\\u0631\\u0629\"}', '[{\"id\":\"s\",\"value\":\"\\u0631\\u0627\\u062a\\u0628 \\u0634\\u0647\\u0631\\u064a\"},{\"id\":\"h\",\"value\":\"\\u0645\\u0633\\u0627\\u0639\\u062f\\u0627\\u062a \\u0634\\u0647\\u0631\\u064a\\u0629\"},{\"id\":\"o\",\"value\":\"\\u0645\\u0635\\u0627\\u062f\\u0631 \\u0623\\u062e\\u0631\\u0649\"}]', '', '', ''),
(42, 430, 'sOpinion', 'textarea', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0631\\u0623\\u064a \\u0627\\u0644\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0646\\u064a\\u0629 [ \\u0627\\u0644\\u0645\\u062e\\u062a\\u0635 ]\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0631\\u0623\\u064a \\u0627\\u0644\\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0639\\u0646\\u064a\\u0629 [ \\u0627\\u0644\\u0645\\u062e\\u062a\\u0635 ]\"}', '', '', '', ''),
(43, 10, 'BasicInfoSection', 'label', '{\"div_class1\":\"\",\"div_class2\":\"form-group bg-dark text-white\",\"label\":\"\\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0623\\u0633\\u0627\\u0633\\u064a\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0623\\u0633\\u0627\\u0633\\u064a\\u0629\"}', '', '', '', ''),
(44, 440, 'identifierSection', 'label', '{\"div_class1\":\"\",\"div_class2\":\"form-group bg-dark text-white\",\"label\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0639\\u0631\\u0641\",\"label_class\":\"form-group\",\"input_class\":\"\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0645\\u0639\\u0631\\u0641\"}', '', '', '', ''),
(45, 450, 'idName', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0639\\u0631\\u0641\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0645\\u0639\\u0631\\u0641\"}', '', '', '', ''),
(46, 460, 'idMobile', 'tel', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0631\\u0642\\u0645 \\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0639\\u0631\\u0641\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0631\\u0642\\u0645 \\u0645\\u0648\\u0628\\u0627\\u064a\\u0644 \\u0627\\u0644\\u0645\\u0639\\u0631\\u0641\"}', '', '', '', ''),
(47, 470, 'idAddress', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0633\\u0643\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0631\\u0641\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0639\\u0646\\u0648\\u0627\\u0646 \\u0633\\u0643\\u0646 \\u0627\\u0644\\u0645\\u0639\\u0631\\u0641\"}', '', '', '', ''),
(48, 321, 'mIDCard', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0647\\u0648\\u064a\\u0629\"}', '', '', '', ''),
(49, 231, 'rIDCard', 'text', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0631\\u0642\\u0645 \\u0647\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0648\\u0635\\u064a\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0631\\u0642\\u0645 \\u0647\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0648\\u0635\\u064a\"}', '', '', '', ''),
(50, 490, 'kafalahID', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', 'ya_kafalahinfo_01', 'kafalahLable', ''),
(51, 500, 'kafalahAmountY', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0644\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0644\\u0644\\u064a\\u062a\\u064a\\u0645\"}', '', '', '', ''),
(52, 510, 'kafalahCurrencyY', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0639\\u0645\\u0644\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0639\\u0645\\u0644\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', 'ya_settings_currency', 'cNameAra', ''),
(53, 480, 'kafalahSection', 'label', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', '', '', ''),
(54, 520, 'kafalahStartDate', 'datetime', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0628\\u062f\\u0621 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0644\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0628\\u062f\\u0621 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0644\\u0644\\u064a\\u062a\\u064a\\u0645\"}', '', '', '', ''),
(55, 530, 'kafalahEndDate', 'date', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0646\\u062a\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0644\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0646\\u062a\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0644\\u0644\\u064a\\u062a\\u064a\\u0645\"}', '', '', '', ''),
(56, 540, 'kafalahEndreason', 'textarea', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0633\\u0628\\u0628 \\u0627\\u0646\\u062a\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0633\\u0628\\u0628 \\u0627\\u0646\\u062a\\u0647\\u0627\\u0621 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', '', '', ''),
(57, 550, 'yState', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\"}', '', 'ya_settings_ystate', 'yState', ''),
(58, 85, 'cityName', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\/ \\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0644\\u0645\\u062f\\u064a\\u0646\\u0629 \\/ \\u0627\\u0644\\u0645\\u062d\\u0627\\u0641\\u0638\\u0629\"}', '', 'ya_settings_cities', 'cityName', '');

-- --------------------------------------------------------

--
-- Table structure for table `ya_yateeminfo_02`
--

CREATE TABLE `ya_yateeminfo_02` (
  `id` int(11) NOT NULL,
  `yKafalahState` varchar(255) DEFAULT NULL,
  `yIDintable1` varchar(255) DEFAULT NULL,
  `kafalahID` decimal(50,0) DEFAULT NULL,
  `kafalahAmountY` decimal(50,0) DEFAULT NULL,
  `kafalahCurrencyY` varchar(255) DEFAULT NULL,
  `yKafilName` varchar(255) DEFAULT NULL,
  `yState` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ya_yateeminfo_02_fb_fields`
--

CREATE TABLE `ya_yateeminfo_02_fb_fields` (
  `id` int(11) NOT NULL,
  `fb_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field_type` text NOT NULL,
  `field_html` text NOT NULL,
  `requirements` text NOT NULL,
  `databasevalue` varchar(255) DEFAULT NULL,
  `database_name` varchar(255) DEFAULT NULL,
  `database_value` varchar(255) DEFAULT NULL,
  `database_where` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ya_yateeminfo_02_fb_fields`
--

INSERT INTO `ya_yateeminfo_02_fb_fields` (`id`, `fb_order`, `name`, `field_type`, `field_html`, `requirements`, `databasevalue`, `database_name`, `database_value`, `database_where`) VALUES
(1, 0, 'yIDintable1', 'hidden', '{\"div_class1\":\"\",\"div_class2\":\"\",\"label\":\"\",\"label_class\":\"\",\"input_class\":\"\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\"}', '', '', '', ''),
(2, 0, 'kafalahID', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', '', '', ''),
(3, 0, 'kafalahAmountY', 'number', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0644\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629 \\u0644\\u0644\\u064a\\u062a\\u064a\\u0645\"}', '', '', '', ''),
(4, 0, 'kafalahCurrencyY', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0639\\u0645\\u0644\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0639\\u0645\\u0644\\u0629 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0644\\u0629\"}', '', 'ya_settings_currency', 'cNameAra', ''),
(5, 0, 'yKafilName', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u0627\\u0633\\u0645 \\u0627\\u0644\\u0643\\u0627\\u0641\\u0644\"}', '', 'ya_kafilinfo_01', 'kName', ''),
(6, 0, 'yState', 'dropdown', '{\"div_class1\":\"\",\"div_class2\":\"form-group\",\"label\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\",\"label_class\":\"form-group\",\"input_class\":\"form-control\",\"input_html\":\"\",\"required\":\"\",\"input_step\":\"\"}', '{\"display\":\"\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u064a\\u062a\\u064a\\u0645\"}', '', 'ya_settings_ystate', 'yState', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crons`
--
ALTER TABLE `crons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crons_logs`
--
ALTER TABLE `crons_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_formbuilder`
--
ALTER TABLE `fb_formbuilder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_javascript`
--
ALTER TABLE `fb_javascript`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_javascript_fb_fields`
--
ALTER TABLE `fb_javascript_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_settings`
--
ALTER TABLE `fb_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_settings_fb_fields`
--
ALTER TABLE `fb_settings_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups_menus`
--
ALTER TABLE `groups_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_exempt`
--
ALTER TABLE `logs_exempt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `logs_exempt_type` (`name`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_threads`
--
ALTER TABLE `message_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_page_matches`
--
ALTER TABLE `permission_page_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL` (`email`) USING BTREE;

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permission_matches`
--
ALTER TABLE `user_permission_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_announcements`
--
ALTER TABLE `us_announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_fingerprints`
--
ALTER TABLE `us_fingerprints`
  ADD PRIMARY KEY (`kFingerprintID`);

--
-- Indexes for table `us_fingerprint_assets`
--
ALTER TABLE `us_fingerprint_assets`
  ADD PRIMARY KEY (`kFingerprintAssetID`);

--
-- Indexes for table `us_forms`
--
ALTER TABLE `us_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_form_validation`
--
ALTER TABLE `us_form_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_form_views`
--
ALTER TABLE `us_form_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_ip_blacklist`
--
ALTER TABLE `us_ip_blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_ip_list`
--
ALTER TABLE `us_ip_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_ip_whitelist`
--
ALTER TABLE `us_ip_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_management`
--
ALTER TABLE `us_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_plugins`
--
ALTER TABLE `us_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_plugin_hooks`
--
ALTER TABLE `us_plugin_hooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_saas_levels`
--
ALTER TABLE `us_saas_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_saas_orgs`
--
ALTER TABLE `us_saas_orgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_user_sessions`
--
ALTER TABLE `us_user_sessions`
  ADD PRIMARY KEY (`kUserSessionID`);

--
-- Indexes for table `yayateeminfo1`
--
ALTER TABLE `yayateeminfo1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yayateeminfo1_form`
--
ALTER TABLE `yayateeminfo1_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yayateemprojects`
--
ALTER TABLE `yayateemprojects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yayateemprojects_form`
--
ALTER TABLE `yayateemprojects_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_kafalahinfo_01`
--
ALTER TABLE `ya_kafalahinfo_01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_kafalahinfo_01_fb_fields`
--
ALTER TABLE `ya_kafalahinfo_01_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_kafilinfo_01`
--
ALTER TABLE `ya_kafilinfo_01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_kafilinfo_01_fb_fields`
--
ALTER TABLE `ya_kafilinfo_01_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_cities`
--
ALTER TABLE `ya_settings_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_cities_fb_fields`
--
ALTER TABLE `ya_settings_cities_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_currency`
--
ALTER TABLE `ya_settings_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_currency_fb_fields`
--
ALTER TABLE `ya_settings_currency_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_fsource`
--
ALTER TABLE `ya_settings_fsource`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_fsource_fb_fields`
--
ALTER TABLE `ya_settings_fsource_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_fstate`
--
ALTER TABLE `ya_settings_fstate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_fstate_fb_fields`
--
ALTER TABLE `ya_settings_fstate_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_hometype`
--
ALTER TABLE `ya_settings_hometype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_hometype_fb_fields`
--
ALTER TABLE `ya_settings_hometype_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_jobtype`
--
ALTER TABLE `ya_settings_jobtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_jobtype_fb_fields`
--
ALTER TABLE `ya_settings_jobtype_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_kafalahloop`
--
ALTER TABLE `ya_settings_kafalahloop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_kafalahloop_fb_fields`
--
ALTER TABLE `ya_settings_kafalahloop_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_kafalahtype`
--
ALTER TABLE `ya_settings_kafalahtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_kafalahtype_fb_fields`
--
ALTER TABLE `ya_settings_kafalahtype_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_mstate`
--
ALTER TABLE `ya_settings_mstate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_mstate_fb_fields`
--
ALTER TABLE `ya_settings_mstate_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_sex`
--
ALTER TABLE `ya_settings_sex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_sex_fb_fields`
--
ALTER TABLE `ya_settings_sex_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_yesno`
--
ALTER TABLE `ya_settings_yesno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_yesno_fb_fields`
--
ALTER TABLE `ya_settings_yesno_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_ystate`
--
ALTER TABLE `ya_settings_ystate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_settings_ystate_fb_fields`
--
ALTER TABLE `ya_settings_ystate_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_yateeminfo_01`
--
ALTER TABLE `ya_yateeminfo_01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_yateeminfo_01_fb_fields`
--
ALTER TABLE `ya_yateeminfo_01_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_yateeminfo_02`
--
ALTER TABLE `ya_yateeminfo_02`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ya_yateeminfo_02_fb_fields`
--
ALTER TABLE `ya_yateeminfo_02_fb_fields`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit`
--
ALTER TABLE `audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crons`
--
ALTER TABLE `crons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crons_logs`
--
ALTER TABLE `crons_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fb_formbuilder`
--
ALTER TABLE `fb_formbuilder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `fb_javascript`
--
ALTER TABLE `fb_javascript`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fb_javascript_fb_fields`
--
ALTER TABLE `fb_javascript_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fb_settings`
--
ALTER TABLE `fb_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fb_settings_fb_fields`
--
ALTER TABLE `fb_settings_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `groups_menus`
--
ALTER TABLE `groups_menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `logs_exempt`
--
ALTER TABLE `logs_exempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message_threads`
--
ALTER TABLE `message_threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permission_page_matches`
--
ALTER TABLE `permission_page_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_permission_matches`
--
ALTER TABLE `user_permission_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `us_announcements`
--
ALTER TABLE `us_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `us_fingerprints`
--
ALTER TABLE `us_fingerprints`
  MODIFY `kFingerprintID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_fingerprint_assets`
--
ALTER TABLE `us_fingerprint_assets`
  MODIFY `kFingerprintAssetID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_forms`
--
ALTER TABLE `us_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `us_form_validation`
--
ALTER TABLE `us_form_validation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `us_form_views`
--
ALTER TABLE `us_form_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `us_ip_blacklist`
--
ALTER TABLE `us_ip_blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `us_ip_list`
--
ALTER TABLE `us_ip_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `us_ip_whitelist`
--
ALTER TABLE `us_ip_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `us_management`
--
ALTER TABLE `us_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `us_plugins`
--
ALTER TABLE `us_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `us_plugin_hooks`
--
ALTER TABLE `us_plugin_hooks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_saas_levels`
--
ALTER TABLE `us_saas_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_saas_orgs`
--
ALTER TABLE `us_saas_orgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_user_sessions`
--
ALTER TABLE `us_user_sessions`
  MODIFY `kUserSessionID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yayateeminfo1`
--
ALTER TABLE `yayateeminfo1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `yayateeminfo1_form`
--
ALTER TABLE `yayateeminfo1_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `yayateemprojects`
--
ALTER TABLE `yayateemprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `yayateemprojects_form`
--
ALTER TABLE `yayateemprojects_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ya_kafalahinfo_01`
--
ALTER TABLE `ya_kafalahinfo_01`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ya_kafalahinfo_01_fb_fields`
--
ALTER TABLE `ya_kafalahinfo_01_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ya_kafilinfo_01`
--
ALTER TABLE `ya_kafilinfo_01`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ya_kafilinfo_01_fb_fields`
--
ALTER TABLE `ya_kafilinfo_01_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ya_settings_cities`
--
ALTER TABLE `ya_settings_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ya_settings_cities_fb_fields`
--
ALTER TABLE `ya_settings_cities_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ya_settings_currency`
--
ALTER TABLE `ya_settings_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ya_settings_currency_fb_fields`
--
ALTER TABLE `ya_settings_currency_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ya_settings_fsource`
--
ALTER TABLE `ya_settings_fsource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ya_settings_fsource_fb_fields`
--
ALTER TABLE `ya_settings_fsource_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ya_settings_fstate`
--
ALTER TABLE `ya_settings_fstate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ya_settings_fstate_fb_fields`
--
ALTER TABLE `ya_settings_fstate_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ya_settings_hometype`
--
ALTER TABLE `ya_settings_hometype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ya_settings_hometype_fb_fields`
--
ALTER TABLE `ya_settings_hometype_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ya_settings_jobtype`
--
ALTER TABLE `ya_settings_jobtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ya_settings_jobtype_fb_fields`
--
ALTER TABLE `ya_settings_jobtype_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ya_settings_kafalahloop`
--
ALTER TABLE `ya_settings_kafalahloop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ya_settings_kafalahloop_fb_fields`
--
ALTER TABLE `ya_settings_kafalahloop_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ya_settings_kafalahtype`
--
ALTER TABLE `ya_settings_kafalahtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ya_settings_kafalahtype_fb_fields`
--
ALTER TABLE `ya_settings_kafalahtype_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ya_settings_mstate`
--
ALTER TABLE `ya_settings_mstate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ya_settings_mstate_fb_fields`
--
ALTER TABLE `ya_settings_mstate_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ya_settings_sex`
--
ALTER TABLE `ya_settings_sex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ya_settings_sex_fb_fields`
--
ALTER TABLE `ya_settings_sex_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ya_settings_yesno`
--
ALTER TABLE `ya_settings_yesno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ya_settings_yesno_fb_fields`
--
ALTER TABLE `ya_settings_yesno_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ya_settings_ystate`
--
ALTER TABLE `ya_settings_ystate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ya_settings_ystate_fb_fields`
--
ALTER TABLE `ya_settings_ystate_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ya_yateeminfo_01`
--
ALTER TABLE `ya_yateeminfo_01`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ya_yateeminfo_01_fb_fields`
--
ALTER TABLE `ya_yateeminfo_01_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `ya_yateeminfo_02`
--
ALTER TABLE `ya_yateeminfo_02`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ya_yateeminfo_02_fb_fields`
--
ALTER TABLE `ya_yateeminfo_02_fb_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
