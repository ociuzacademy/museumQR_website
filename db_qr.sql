-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 02, 2025 at 11:05 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_qr`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admin', 7, 'add_admin'),
(26, 'Can change admin', 7, 'change_admin'),
(27, 'Can delete admin', 7, 'delete_admin'),
(28, 'Can view admin', 7, 'view_admin'),
(29, 'Can add exhibit', 8, 'add_exhibit'),
(30, 'Can change exhibit', 8, 'change_exhibit'),
(31, 'Can delete exhibit', 8, 'delete_exhibit'),
(32, 'Can view exhibit', 8, 'view_exhibit'),
(33, 'Can add tbl_category', 9, 'add_tbl_category'),
(34, 'Can change tbl_category', 9, 'change_tbl_category'),
(35, 'Can delete tbl_category', 9, 'delete_tbl_category'),
(36, 'Can view tbl_category', 9, 'view_tbl_category'),
(37, 'Can add category', 10, 'add_category'),
(38, 'Can change category', 10, 'change_category'),
(39, 'Can delete category', 10, 'delete_category'),
(40, 'Can view category', 10, 'view_category'),
(41, 'Can add tbl_exhibit', 11, 'add_tbl_exhibit'),
(42, 'Can change tbl_exhibit', 11, 'change_tbl_exhibit'),
(43, 'Can delete tbl_exhibit', 11, 'delete_tbl_exhibit'),
(44, 'Can view tbl_exhibit', 11, 'view_tbl_exhibit'),
(45, 'Can add exhibit image', 12, 'add_exhibitimage'),
(46, 'Can change exhibit image', 12, 'change_exhibitimage'),
(47, 'Can delete exhibit image', 12, 'delete_exhibitimage'),
(48, 'Can view exhibit image', 12, 'view_exhibitimage'),
(49, 'Can add image', 12, 'add_image'),
(50, 'Can change image', 12, 'change_image'),
(51, 'Can delete image', 12, 'delete_image'),
(52, 'Can view image', 12, 'view_image'),
(53, 'Can add exhibit image', 13, 'add_exhibitimage'),
(54, 'Can change exhibit image', 13, 'change_exhibitimage'),
(55, 'Can delete exhibit image', 13, 'delete_exhibitimage'),
(56, 'Can view exhibit image', 13, 'view_exhibitimage'),
(57, 'Can add item', 14, 'add_item'),
(58, 'Can change item', 14, 'change_item'),
(59, 'Can delete item', 14, 'delete_item'),
(60, 'Can view item', 14, 'view_item'),
(61, 'Can add event', 15, 'add_event'),
(62, 'Can change event', 15, 'change_event'),
(63, 'Can delete event', 15, 'delete_event'),
(64, 'Can view event', 15, 'view_event'),
(65, 'Can add event application', 16, 'add_eventapplication'),
(66, 'Can change event application', 16, 'change_eventapplication'),
(67, 'Can delete event application', 16, 'delete_eventapplication'),
(68, 'Can view event application', 16, 'view_eventapplication'),
(69, 'Can add event member', 17, 'add_eventmember'),
(70, 'Can change event member', 17, 'change_eventmember'),
(71, 'Can delete event member', 17, 'delete_eventmember'),
(72, 'Can view event member', 17, 'view_eventmember');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$O3EUIYYfHbt8yy3PRjBja8$8dQALp4wYfVx8X0A854FHu1y2FgPnMzxiE/fw49PnlE=', '2025-03-02 05:25:26.524864', 1, 'admin', '', '', '', 1, 1, '2024-12-01 04:47:44.038518');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'QRapp', 'admin'),
(8, 'QRapp', 'exhibit'),
(9, 'QRapp', 'tbl_category'),
(10, 'QRapp', 'category'),
(11, 'QRapp', 'tbl_exhibit'),
(12, 'QRapp', 'image'),
(13, 'QRapp', 'exhibitimage'),
(14, 'QRapp', 'item'),
(15, 'QRapp', 'event'),
(16, 'QRapp', 'eventapplication'),
(17, 'QRapp', 'eventmember');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-11-18 06:27:24.897861'),
(2, 'auth', '0001_initial', '2024-11-18 06:27:25.717234'),
(3, 'admin', '0001_initial', '2024-11-18 06:27:25.931219'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-11-18 06:27:25.944954'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-11-18 06:27:25.955318'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-11-18 06:27:26.050032'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-11-18 06:27:26.097429'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-11-18 06:27:26.146530'),
(9, 'auth', '0004_alter_user_username_opts', '2024-11-18 06:27:26.154893'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-11-18 06:27:26.212859'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-11-18 06:27:26.215036'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-11-18 06:27:26.223324'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-11-18 06:27:26.275177'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-11-18 06:27:26.327291'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-11-18 06:27:26.377620'),
(16, 'auth', '0011_update_proxy_permissions', '2024-11-18 06:27:26.387757'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-11-18 06:27:26.435730'),
(18, 'sessions', '0001_initial', '2024-11-18 06:27:26.489024'),
(19, 'QRapp', '0001_initial', '2024-11-21 06:14:04.644302'),
(20, 'QRapp', '0002_exhibit', '2024-11-28 06:15:53.547300'),
(21, 'QRapp', '0003_tbl_category', '2024-11-29 06:41:46.866780'),
(22, 'QRapp', '0004_category', '2024-12-01 04:47:27.836985'),
(23, 'QRapp', '0002_alter_exhibit_image_alter_exhibit_name_and_more', '2024-12-02 06:19:48.198184'),
(24, 'QRapp', '0003_alter_exhibit_name', '2024-12-02 06:25:05.270142'),
(25, 'QRapp', '0002_tbl_exhibit', '2024-12-02 07:11:50.757077'),
(26, 'QRapp', '0003_delete_exhibit_delete_tbl_category_and_more', '2024-12-02 08:07:31.987452'),
(27, 'QRapp', '0004_alter_tbl_exhibit_image_exhibitimage', '2024-12-03 08:12:48.053090'),
(28, 'QRapp', '0005_remove_exhibitimage_exhibit_remove_tbl_exhibit_image_and_more', '2024-12-03 08:19:43.051505'),
(29, 'QRapp', '0006_alter_category_name_rename_exhibitimage_image_and_more', '2024-12-03 09:00:46.068632'),
(30, 'QRapp', '0007_alter_category_name_tbl_exhibit_delete_exhibit_and_more', '2024-12-03 09:17:05.874041'),
(31, 'QRapp', '0008_exhibitimage_remove_tbl_exhibit_image_and_more', '2024-12-05 05:11:58.741517'),
(32, 'QRapp', '0009_remove_exhibitimage_name_alter_exhibitimage_image_and_more', '2024-12-05 05:41:43.239562'),
(33, 'QRapp', '0002_item_image', '2024-12-05 06:05:07.060253'),
(34, 'QRapp', '0003_delete_tbl_exhibit', '2024-12-05 09:00:08.828866'),
(35, 'QRapp', '0004_rename_item_exhibit_rename_item_image_exhibit_and_more', '2024-12-06 05:26:23.737642'),
(36, 'QRapp', '0005_exhibit_qr_code_image', '2024-12-06 06:02:49.576580'),
(37, 'QRapp', '0006_alter_exhibit_qr_code_image', '2024-12-09 07:24:16.377118'),
(38, 'QRapp', '0007_alter_exhibit_image_ids', '2024-12-09 07:45:25.388908'),
(39, 'QRapp', '0008_alter_exhibit_image_ids_alter_exhibit_qr_code_image', '2024-12-09 07:48:21.787355'),
(40, 'QRapp', '0002_alter_exhibit_image_ids_alter_exhibit_qr_code_image', '2024-12-16 05:06:18.379877'),
(41, 'QRapp', '0002_event_eventapplication', '2024-12-19 07:53:11.218168'),
(42, 'QRapp', '0002_remove_eventapplication_event_and_more', '2024-12-19 09:35:01.032302'),
(43, 'QRapp', '0003_event_eventapplication', '2024-12-19 09:35:19.257655'),
(44, 'QRapp', '0004_remove_eventapplication_user_and_more', '2024-12-19 09:47:20.990629'),
(45, 'QRapp', '0002_event', '2024-12-30 05:53:34.235428'),
(46, 'QRapp', '0003_eventapplication', '2024-12-30 05:53:58.570320'),
(47, 'QRapp', '0004_alter_event_event_type', '2025-01-06 06:20:57.496191'),
(48, 'QRapp', '0005_exhibit_description_ml_exhibit_name_ml', '2025-01-10 08:05:12.949774'),
(49, 'QRapp', '0006_image_caption', '2025-01-19 13:04:46.398282'),
(50, 'QRapp', '0002_image_caption_ml', '2025-01-19 14:54:45.635601'),
(51, 'QRapp', '0003_alter_event_image', '2025-01-21 08:01:42.042760'),
(52, 'QRapp', '0004_alter_image_options_image_position', '2025-01-21 13:24:05.191236'),
(53, 'QRapp', '0005_eventmember', '2025-02-22 15:33:35.945356'),
(54, 'QRapp', '0006_remove_eventmember_event_and_more', '2025-02-22 15:41:42.961678'),
(55, 'QRapp', '0007_delete_eventmember', '2025-02-22 15:41:42.977072'),
(56, 'QRapp', '0008_eventmember', '2025-02-22 15:42:06.432664'),
(57, 'QRapp', '0009_eventapplication_user_type', '2025-02-22 16:20:31.504911'),
(58, 'QRapp', '0002_eventapplication_student_classes_and_more', '2025-02-24 04:54:29.369569');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5rii9m1utecokfv9sbm3wmgo8n017f51', 'eyJsYW5ndWFnZSI6Im1sIn0:1tYfed:cSLaPrb5uk3dCakRNncOPQER9xgYBmWB0Gn_uTz8WZI', '2025-01-31 06:16:27.314985'),
('7b11qpo2bm668tjnvdbd4ji491vlgekr', '.eJxVjM0OwiAQhN-FsyEsFQSP3vsMzbK7SNVA0p-T8d1tkx70Npnvm3mrAdelDOss0zCyuipQp98uIT2l7oAfWO9NU6vLNCa9K_qgs-4by-t2uH8HBeeyrYMTZ8_ZshEh8cF1QuQMe4vZMAWmhIlzF9lsyQJCdAyXFB0AZJ_U5wsSITkM:1tXw8F:ePG94YZHIAtjjILyjsVEKCXcz7SUKrDfgCl6FS-zzC0', '2025-01-29 05:39:59.598640'),
('f3tm1hj5o7gk9r83nk43arcwh11l1wxi', '.eJxVjM0OwiAQhN-FsyEsFQSP3vsMzbK7SNVA0p-T8d1tkx70Npnvm3mrAdelDOss0zCyuipQp98uIT2l7oAfWO9NU6vLNCa9K_qgs-4by-t2uH8HBeeyrYMTZ8_ZshEh8cF1QuQMe4vZMAWmhIlzF9lsyQJCdAyXFB0AZJ_U5wsSITkM:1tJTXk:qggLHzKTQ9pFkH21F56t_CBOyoHVUB1DhXYGc-QmqvY', '2024-12-20 08:18:32.869888'),
('31wwdao7ybspqy6tdg2tsn7096u6c3u5', '.eJxVjM0OwiAQhN-FsyEsFQSP3vsMzbK7SNVA0p-T8d1tkx70Npnvm3mrAdelDOss0zCyuipQp98uIT2l7oAfWO9NU6vLNCa9K_qgs-4by-t2uH8HBeeyrYMTZ8_ZshEh8cF1QuQMe4vZMAWmhIlzF9lsyQJCdAyXFB0AZJ_U5wsSITkM:1tJTlG:FfvP4Opp0jwDG9LeY6-mVBHMALYXBq8ZPG3j3JC0dcA', '2024-12-20 08:32:30.954713'),
('mh5cdo82zu9vjq6b7h9k6jlbydctxu3t', '.eJxVjU0OgjAQhe_StWk6xdbi0r1nINOZKUUREqAr490tCQvdvbyf771Vh2XLXVll6QZWVwXq9OtFpKdMe8APnPpZ0zxtyxD1XtFHuur7zDLeju4fIOOa6zo4cfacLBsREh9cI0TOsLeYDFNgihg5NS2bqiwgtI7hElsHAMnHCh3rf8FeKu01qs8XzB4-Fw:1thLpj:jJj8c71w89NtvcIhHZ1jWHNjzZffriQQ4rxtv1VTlI4', '2025-02-24 04:55:47.558945'),
('hc28tc0x0rsm5ey06wcph6vsqqas2s4j', 'eyJsYW5ndWFnZSI6ImVuIn0:1tYeRr:91OavdCnbRvR9o08AsVzBSs8aIjQdik1C42NsjeHofU', '2025-01-31 04:59:11.677409'),
('0sgf9xlx0o2670z1sl45tafm2ejy0785', 'eyJsYW5ndWFnZSI6ImVuIn0:1tYeRt:3RraWo831VXAYbkqEGb-nLvF92o6bZ6317pnWEAqn18', '2025-01-31 04:59:13.222348'),
('7k63yzryktt8yus1wkvnt4aqz3tkw0ce', 'eyJsYW5ndWFnZSI6ImVuIn0:1tYeRt:3RraWo831VXAYbkqEGb-nLvF92o6bZ6317pnWEAqn18', '2025-01-31 04:59:13.819887'),
('ihgyiw7zqyjuzsp7nzh93ssfwavh4dy2', 'eyJsYW5ndWFnZSI6ImVuIn0:1tYeRu:vLYZzmp5fpQzT-_RqSVTmcLaemgmMZdiWMqD51dFO-8', '2025-01-31 04:59:14.036721'),
('mpueg6g1ugb64q404spmqam8ikzf02ie', 'eyJsYW5ndWFnZSI6Im1sIn0:1tYeTR:aWQfA1Dn845q3bPOZlb8Qkrx16VyCP3OnCtafI2J2qo', '2025-01-31 05:00:49.169475'),
('mv44lq7ft2y62k5oldlkenwp0didnc8m', '.eJxVjM0OwiAQhN-FsyEsFQSP3vsMzbK7SNVA0p-T8d1tkx70Npnvm3mrAdelDOss0zCyuipQp98uIT2l7oAfWO9NU6vLNCa9K_qgs-4by-t2uH8HBeeyrYMTZ8_ZshEh8cF1QuQMe4vZMAWmhIlzF9lsyQJCdAyXFB0AZJ_U5wsSITkM:1tYgU4:_5m8t3zpnZOqxFASC9UR5xWrsOmRkJMwkx_3rwxVyOk', '2025-01-31 07:09:36.304858'),
('pewq59rseyna0t1ll7p87wiao1tq326q', 'eyJsYW5ndWFnZSI6ImVuIn0:1tZXhS:YQ6srjr0eKTqF19X6b0HLoXfY99fiHvPso288JwQRQc', '2025-02-02 15:58:58.871872'),
('8ch3nx5yvtra6cdunkevjupqnktoopds', 'eyJsYW5ndWFnZSI6ImVuIn0:1tZXsb:FigOTG_BqsyiRHNhNZwtbv7SSFpEiEGqfMRAF5NKke4', '2025-02-02 16:10:29.576953'),
('fidsmkr7jox2gp0idlxr676y3gjra1d6', 'eyJsYW5ndWFnZSI6ImVuIn0:1taUNR:y3xlJhHz1_XVhbfvzfptObTh4Jh_42z68FVmFtlZrmc', '2025-02-05 06:38:13.219230'),
('duyxzt6zghk2yumgme0wv8q8oy8z7owj', 'eyJsYW5ndWFnZSI6ImVuIn0:1tapsF:WV0KPHiq8vSZUuabcuFA55ae5S5unBgV6KBlsi8Vm9Y', '2025-02-06 05:35:27.278899'),
('nu0x24x5kefcifhc4ner4ii06gqlye3l', 'eyJsYW5ndWFnZSI6ImVuIn0:1taIG9:lslKyXkcjeU9LcLj0hTsPArhgA2-3xxzkhwmYcomkew', '2025-02-04 17:41:53.034821'),
('48wi5vrmmstut1q9e51n3xl51rtu8j0w', 'eyJsYW5ndWFnZSI6Im1sIn0:1taT4q:dUve8E3D1gPHV_J4Zo9CHByU1KcaWHPp2j9OpYPnwS4', '2025-02-05 05:14:56.006796'),
('zw2lgvrp2yadsdbl70l14clnsz6h6dha', 'eyJsYW5ndWFnZSI6ImVuIn0:1taTVb:Oce7qAeZIkialPteJWC8sez2MCCdDMzszRz7c20zlhQ', '2025-02-05 05:42:35.185593'),
('jsw1adsgjyyxjqwry34nrlvbx9sy98it', 'eyJsYW5ndWFnZSI6ImVuIn0:1taq84:Cx8VVQc6dMF2lz2v7wU_Wn8Nntay75-5Cig5RZOSIys', '2025-02-06 05:51:48.019670'),
('teboufy2vdn2gepg1etwqse62y4oispj', 'eyJsYW5ndWFnZSI6ImVuIn0:1taqQp:2BnDCAYWt8JR7phuj7UA_nRtMUxtldGxPsbl9AoA4Sw', '2025-02-06 06:11:11.412632'),
('x7uy0v2ui23qsqkcz74fgu55z3mybq1h', 'eyJsYW5ndWFnZSI6ImVuIn0:1tdOJ7:GweOvd1INKLwFcGPBB3sdW_BaITMMMZpNCSfJE3IMMQ', '2025-02-13 06:45:45.453333'),
('yud4o4t6hbcxiu4nmbggti7ahp2mx9u2', 'eyJsYW5ndWFnZSI6ImVuIn0:1tdObv:jZu290DSvusxbz191GW8Fb7DDrMvkDBSJxbv39viyNE', '2025-02-13 07:05:11.855050'),
('gcsmfn997n0ioyu8m6dei2l804asrk83', 'eyJsYW5ndWFnZSI6ImVuIn0:1tfuNW:mtPaOpSz9Q9EumpfLgqDLjRyameesUh0EbCbKIZ9yb4', '2025-02-20 05:24:42.112462'),
('iuxjn44p3fket0a0t27j5cszhdt6ccpu', 'eyJsYW5ndWFnZSI6ImVuIn0:1tfuXu:w4qud5k4vFZtUAhH54zGYRA-pIZgjlmsNdzDT_Z9Xvs', '2025-02-20 05:35:26.048532'),
('9n169fjcfn0pgoiwi3zep81xv825qndj', 'eyJsYW5ndWFnZSI6Im1sIn0:1tgJHp:F7d5LyjsEgBJY3OqvIKk2LUsq67626UEa4fK1TiSjh0', '2025-02-21 08:00:29.076426'),
('fdsepm9ge9oskpky43ew5elnl93mzky0', '.eJxVjM0OwiAQhN-FsyEsFQSP3vsMzbK7SNVA0p-T8d1tkx70Npnvm3mrAdelDOss0zCyuipQp98uIT2l7oAfWO9NU6vLNCa9K_qgs-4by-t2uH8HBeeyrYMTZ8_ZshEh8cF1QuQMe4vZMAWmhIlzF9lsyQJCdAyXFB0AZJ_U5wsSITkM:1tnVhd:npYnWt_6_diO1EUbGxWGWgp6MhlJJf16XjVz5DzcdHU', '2025-03-13 04:40:53.807304'),
('55g23l4gkbemk7xijhecvcsihwws8qho', '.eJxVjU0OgyAQhe_CuiEMFotddu8ZzDAziK3BRHTV9O7FxEW7e3k_33urAfctDXuRdZhY3RWoy68XkF6Sj4CfmMdF05K3dQr6qOgzLbpfWObH2f0DJCyprr0TZ6_RshEhab1rhMgZbi1Gw-SZAgaOTcemKgsInWO4hc4BQGxDhc71f8dRKk2y-nwBzAQ-EQ:1tlNoT:rmmyrug95DFNMsSK9hFUJgsO4KtAmdfzrys5xBR38_4', '2025-03-07 07:51:09.579280'),
('2a9su50d0168tokyd1m016p2uow7yxy9', 'eyJsYW5ndWFnZSI6Im1sIn0:1tmS6y:ZFz-xC40hapvUB6QVQDjMHDVw4C2ZbVThV2BUBnO3Tc', '2025-03-10 06:38:40.341592'),
('galfgs2f05vymma0q1qtzmswn76xm0ld', 'eyJsYW5ndWFnZSI6ImVuIn0:1tmRsp:nB3IcUlCuvc11M5EBhPY-wT2K3Ku537sgcXXsWeEp9o', '2025-03-10 06:24:03.667011'),
('ejn6dcl5pqzyld0ple8a0m17vhlm7p1x', 'eyJsYW5ndWFnZSI6ImVuIn0:1tmUo2:9YwqEuXLm0BrB7Jzn6zD8nT7OknsULpq1QTNalZbd0A', '2025-03-10 09:31:18.009990'),
('ljupy5ahgawzmndrszv5tmntkxdok8iu', 'eyJsYW5ndWFnZSI6Im1sIn0:1tmVHX:mH5tYtIPZV6SQoUEg51eIRNRqHJ5XZ2uZj6_N1Kazi0', '2025-03-10 10:01:47.013108');

-- --------------------------------------------------------

--
-- Table structure for table `qrapp_admin`
--

DROP TABLE IF EXISTS `qrapp_admin`;
CREATE TABLE IF NOT EXISTS `qrapp_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `qrapp_admin`
--

INSERT INTO `qrapp_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123'),
(2, 'niya', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `qrapp_category`
--

DROP TABLE IF EXISTS `qrapp_category`;
CREATE TABLE IF NOT EXISTS `qrapp_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `qrapp_category`
--

INSERT INTO `qrapp_category` (`id`, `name`) VALUES
(18, 'Indus Valley/Harappan Civilization'),
(45, 'Stuffed Animalss'),
(21, 'Civilizations & Cultural Art'),
(26, 'Musical Instruments'),
(41, 'Metal Subjects'),
(37, 'Sea & Marine Collections'),
(30, 'Wooden Sculpture & Ivory Collection'),
(32, 'Classical Art Forms of Kerala'),
(33, 'Musical Instruments'),
(36, 'Zoological Collection'),
(38, 'War & Royal Collections'),
(39, 'Kerala\'s Cultural Heritage'),
(42, 'Clocks'),
(43, 'Metal & Precious Collections'),
(44, 'Art & History Collections');

-- --------------------------------------------------------

--
-- Table structure for table `qrapp_event`
--

DROP TABLE IF EXISTS `qrapp_event`;
CREATE TABLE IF NOT EXISTS `qrapp_event` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `event_type` varchar(50) NOT NULL,
  `event_date` date NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `location` varchar(200) NOT NULL,
  `duration` bigint NOT NULL,
  `event_time` time(6) NOT NULL,
  `organizer` varchar(100) NOT NULL,
  `created_by_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `QRapp_event_created_by_id_1bb9c6a6` (`created_by_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `qrapp_event`
--

INSERT INTO `qrapp_event` (`id`, `name`, `event_type`, `event_date`, `description`, `image`, `location`, `duration`, `event_time`, `organizer`, `created_by_id`) VALUES
(1, 'Painting Competiton', 'Competition', '2025-02-28', 'Painting Competiton', 'event_images/e1.jpg', 'Main Hall', 18000000000, '10:30:00.000000', 'Sandra', 1),
(2, 'speech competion', 'competition', '2025-02-28', 'This event encourages young minds to express their ideas on important topics, develop critical thinking, and enhance their communication abilities.\r\nWho? School & college students.\r\nSpeech Time: 3-5 minutes.\r\nLanguage: English / Regional.\r\nJudging: Content, clarity, confidence.\r\nRounds: Preliminary & Finals.\r\nPrizes: Trophies, medals, certificates.\r\nAll participants get certificates!\r\n\r\nRegister Now & Showcase Your Voice! ✨', 'event_images/g6.jpg', 'Main Hall', 3600000000, '11:00:00.000000', 'Sandra', 1);

-- --------------------------------------------------------

--
-- Table structure for table `qrapp_eventapplication`
--

DROP TABLE IF EXISTS `qrapp_eventapplication`;
CREATE TABLE IF NOT EXISTS `qrapp_eventapplication` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` longtext NOT NULL,
  `members` int NOT NULL,
  `applied_on` datetime(6) NOT NULL,
  `event_id` bigint NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `student_classes` longtext,
  `student_names` longtext,
  `student_phones` longtext,
  PRIMARY KEY (`id`),
  KEY `QRapp_eventapplication_event_id_49e5fd23` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `qrapp_eventapplication`
--

INSERT INTO `qrapp_eventapplication` (`id`, `name`, `phone_no`, `email`, `address`, `members`, `applied_on`, `event_id`, `user_type`, `student_classes`, `student_names`, `student_phones`) VALUES
(1, 'child 1', '0487 661 2345', 'niya19@gmail.com', 'Karunakaran Nambiar Rd, Patturaikkal, Thrissur, Kerala 680020', 1, '2025-02-24 04:59:53.670005', 1, 'individual', NULL, NULL, NULL),
(2, 'sacred hearts school,thrissur - Students', '9852364712', 'sacredhearts15@gmail.com', 'Keerankulangara, Thrissur, Kerala 680020', 5, '2025-02-26 16:40:07.859501', 2, 'school', '5,5,5,5,6', 'abila,niya,ahana,sushuma,haya', '01235487521,8567412587,9658236587,8564758568,7758965892');

-- --------------------------------------------------------

--
-- Table structure for table `qrapp_exhibit`
--

DROP TABLE IF EXISTS `qrapp_exhibit`;
CREATE TABLE IF NOT EXISTS `qrapp_exhibit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `image_ids` varchar(255) NOT NULL,
  `category_id` bigint NOT NULL,
  `qr_code_image` varchar(100) NOT NULL,
  `description_ml` longtext,
  `name_ml` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `QRapp_item_category_id_91c0f0b1` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `qrapp_exhibit`
--

INSERT INTO `qrapp_exhibit` (`id`, `name`, `description`, `date`, `status`, `image_ids`, `category_id`, `qr_code_image`, `description_ml`, `name_ml`) VALUES
(50, 'The Indus Valley Civilization', 'The Indus Valley Culture, also known as the Harappan Civilization, was a Bronze Age civilization that spanned India and Pakistan from 3300 BC to 1300 BC. It experienced strong growth from 2600 BC to 1900 BC, with Harappa and Mohenjo-daro being its great cities. The civilization was discovered in the 1920s by anthropologist Daya Ram Sahni while excavating soil for a railway line from India to Pakistan.\r\n\r\nThe cities of the Indus Valley civilization were divided into citadels and lower towns, with buildings following a grid pattern and featuring round houses and sewage systems. The \"Great bath\" was the most important feature of the Harappan urban planning.\r\n\r\nThe Harappan people traded with India and other Asian countries, mainly through barter systems for stones, metals, and shells. They were rich in arts and crafts, producing clay sculptures and gold and silver ornaments. The main sculptures include a dancing girl and head.\r\n\r\nThe destruction of the Indus Valley civilization around 1800 BC is unclear, but researchers found floods, famines, epidemics, and the arrival of the Aryan as the main reasons.', '2025-02-12', 'active', '153,154,155,156', 18, 'qr_codes\\exhibit_50.png', 'ഹാരപ്പൻ നാഗരികത എന്നറിയപ്പെടുന്ന സിന്ധുനദീതട സംസ്കാരം, 3300 ബിസി മുതൽ 1300 ബിസി വരെ ഇന്ത്യയിലും പാക്കിസ്ഥാനിലും വ്യാപിച്ചുകിടന്ന ഒരു വെങ്കലയുഗ സംസ്കാരമായിരുന്നു. ബിസി 2600 മുതൽ ബിസി 1900 വരെ ഇത് ശക്തമായ വളർച്ച അനുഭവിച്ചു, ഹാരപ്പയും മോഹൻജൊ-ദാരോയും അതിൻ്റെ മഹത്തായ നഗരങ്ങളായിരുന്നു. 1920-കളിൽ നരവംശശാസ്ത്രജ്ഞനായ ദയാ റാം സാഹ്നി ഇന്ത്യയിൽ നിന്ന് പാകിസ്ഥാനിലേക്കുള്ള ഒരു റെയിൽവേ ലൈനിനുവേണ്ടി മണ്ണ് കുഴിക്കുന്നതിനിടെയാണ് ഈ നാഗരികത കണ്ടെത്തിയത്.\r\n\r\nസിന്ധുനദീതട നാഗരികതയിലെ നഗരങ്ങളെ കോട്ടകളായും താഴ്ന്ന പട്ടണങ്ങളായും തിരിച്ചിരിക്കുന്നു, കെട്ടിടങ്ങൾ ഗ്രിഡ് പാറ്റേൺ പിന്തുടരുകയും വൃത്താകൃതിയിലുള്ള വീടുകളും മലിനജല സംവിധാനങ്ങളും ഉൾക്കൊള്ളുകയും ചെയ്തു. ഹാരപ്പൻ നഗരാസൂത്രണത്തിൻ്റെ ഏറ്റവും പ്രധാനപ്പെട്ട സവിശേഷതയായിരുന്നു \"വലിയ കുളി\".\r\n\r\nഹാരപ്പൻ ജനത ഇന്ത്യയുമായും മറ്റ് ഏഷ്യൻ രാജ്യങ്ങളുമായും പ്രധാനമായും കല്ലുകൾ, ലോഹങ്ങൾ, ഷെല്ലുകൾ എന്നിവയുടെ ബാർട്ടർ സംവിധാനത്തിലൂടെ വ്യാപാരം നടത്തി. കളിമൺ ശിൽപങ്ങളും സ്വർണ്ണം വെള്ളി ആഭരണങ്ങളും നിർമ്മിക്കുന്ന അവർ കലയിലും കരകൗശലത്തിലും സമ്പന്നരായിരുന്നു. പ്രധാന ശിൽപങ്ങളിൽ നൃത്തം ചെയ്യുന്ന പെൺകുട്ടിയും തലയും ഉൾപ്പെടുന്നു.\r\n\r\nബിസി 1800-നടുത്ത് സിന്ധുനദീതട നാഗരികതയുടെ നാശം വ്യക്തമല്ല, പക്ഷേ വെള്ളപ്പൊക്കം, ക്ഷാമം, പകർച്ചവ്യാധികൾ, ആര്യന്മാരുടെ വരവ് എന്നിവ പ്രധാന കാരണങ്ങളായി ഗവേഷകർ കണ്ടെത്തി.', 'സിന്ധുനദീതട സംസ്കാരം'),
(51, 'Kathakali', 'Kathakali is a unique visual art form in Kerala, originating from the 17th and 18th centuries. It incorporates elements of classical fork art forms such as Sastrakali, Chakyarkoothu, Krishnanattam, Koodiyattam, Ashtapathiyattam, Dasiyattam, Therukoothu, Theyyam, Thirayattam, Padayani, etc. The art form began with the story of Attakatha, which was composed between 1555 and 1605. Vettathu Raja made significant contributions to kathakali, including modifying costumes, introducing \'chenda\', colorful crowns, multicolored face paints, hiring a specific person for the song, and using dark-colored shirts.\r\n\r\nThe art form begins with chadanghu (ceremony), vadhyangal (instruments), Kellikattu, Arangukeli (announcement of a performance), Thodayam (Ritualistic dance), vandhana slogam, purapaadu (Musical prelude to the performance), Melapadham (Musical prelude to the kathakali), and katharambam (The beginning of the story). Characters communicate with the audience through 24 basic mudras (ritual poses) which are the kathakali padham\'s (music that accompanies the dance) method of presentation.\r\n\r\nThere are six types of roles in Kathakali, each with a different color, costume, and grooming. Superhuman virtuous characters have white beards, while royal characters have red beards. Evil characters have black beards. Karivesham costumes are given to residential forest dwellers, with male characters having black beards and female characters having long breasts and pierced ears. Minukku is a makeup used for female characters and sages, with a bright yellow color applied to the face.\r\n\r\nInstruments used in kathakali include chenda, maddalam, chengilla, ilathaalam, idakka, and shankh. The art form has gained world fame due to the efforts of great poets like Vallathol.', '2024-12-28', 'active', '124,125,126,127,128,129,130,131,132,133,134,135', 39, 'qr_codes\\exhibit_51.png', 'പതിനേഴാം നൂറ്റാണ്ടിലും പതിനെട്ടാം നൂറ്റാണ്ടിലും ഉത്ഭവിച്ച കേരളത്തിലെ സവിശേഷമായ ഒരു ദൃശ്യകലാരൂപമാണ് കഥകളി.  ശാസ്ത്രാക്കളി, ചാക്യാർക്കൂത്ത്, കൃഷ്ണനാട്ടം, കൂടിയാട്ടം, അഷ്ടപാത്തിയാട്ടം, ദസിയാട്ടം, തെരുക്കൂത്ത്, തെയ്യം, തിരയാട്ടം, പടയണി തുടങ്ങിയ ക്ലാസിക്കൽ ഫോർക്ക് ആർട്ട് രൂപങ്ങളുടെ ഘടകങ്ങൾ ഇതിൽ ഉൾക്കൊള്ളുന്നു.  1555നും 1605നും ഇടയിൽ രചിച്ച അട്ടകഥയുടെ കഥയിൽ നിന്നാണ് കലാരൂപം ആരംഭിച്ചത്.  വസ്ത്രങ്ങൾ പരിഷ്ക്കരിക്കുക, \'ചെണ്ട\' അവതരിപ്പിക്കുക, വർണ്ണാഭമായ കിരീടങ്ങൾ, വർണ്ണാഭമായ മുഖചിത്രങ്ങൾ, ഗാനത്തിനായി ഒരു പ്രത്യേക വ്യക്തിയെ നിയമിക്കുക, ഇരുണ്ട നിറത്തിലുള്ള ഷർട്ടുകൾ ഉപയോഗിക്കുക എന്നിവ ഉൾപ്പെടെ വെട്ടത്തു രാജ കഥകളിക്ക് കാര്യമായ സംഭാവനകൾ നൽകി.\r\n\r\nചടങ്ങ് (ചടങ്ങ്) വാദ്യം (ഉപകരണങ്ങൾ) കെല്ലിക്കെട്ട്, അരങ്കുലി (പ്രകടനത്തിന്റെ പ്രഖ്യാപനം) തോടയം (ആചാരപരമായ നൃത്തം) വന്ദന സ്ലോഗം, പുരപ്പാട് (പ്രകടനത്തിന്റെ സംഗീത ആമുഖം) മേളാപദം (കഥകളിയുടെ സംഗീത ആമുഖം), കഥാരംബം (കഥയുടെ തുടക്കം) എന്നിവയോടെയാണ് കലാരൂപം ആരംഭിക്കുന്നത്.  കഥകളി പദത്തിന്റെ (നൃത്തത്തോടൊപ്പമുള്ള സംഗീതം) അവതരണ രീതിയായ 24 അടിസ്ഥാന മുദ്രകളിലൂടെ (ആചാരപരമായ പോസുകൾ) കഥാപാത്രങ്ങൾ പ്രേക്ഷകരുമായി ആശയവിനിമയം നടത്തുന്നു.\r\n\r\nവ്യത്യസ്ത നിറങ്ങൾ, വസ്ത്രങ്ങൾ, വസ്ത്രധാരണം എന്നിവയുള്ള ആറ് തരം വേഷങ്ങളാണ് കഥകളി.  അമാനുഷിക സദ്ഗുണമുള്ള കഥാപാത്രങ്ങൾക്ക് വെളുത്ത താടിയും രാജകീയ ഗുണങ്ങൾക്ക് ചുവന്ന താടിയും ദുഷ്ട കഥാപാത്രങ്ങൾക്ക് കറുത്ത താടിയും ഉണ്ട്.  കറുത്ത താടിയുള്ള പുരുഷ കഥാപാത്രങ്ങളും നീളമുള്ള സ്തനങ്ങളും തുളച്ച ചെവികളുമുള്ള സ്ത്രീ കഥാപാത്രങ്ങളുമുള്ള കരിവേശം വസ്ത്രങ്ങൾ റെസിഡൻഷ്യൽ വനവാസികൾക്ക് നൽകുന്നു.  സ്ത്രീ കഥാപാത്രങ്ങൾക്കും മുനിമാർക്കും ഉപയോഗിക്കുന്ന മുഖത്ത് തിളങ്ങുന്ന മഞ്ഞ നിറം പ്രയോഗിക്കുന്ന മേക്കപ്പാണ് മിനുക്കു.\r\n\r\nചെണ്ട, മദ്ദളം, ചെങ്ങില്ല, ഇളത്തളം, ഇഡക്ക, ശംഖ് എന്നിവയാണ് കഥകളി ഉപയോഗിക്കുന്ന ഉപകരണങ്ങൾ.  വള്ളത്തോളിനെപ്പോലുള്ള മഹാനായ കവികളുടെ പരിശ്രമം കൊണ്ടാണ് ഈ കലാരൂപത്തിന് ലോക പ്രശസ്തി ലഭിച്ചത്.', 'കഥകളി'),
(49, 'Oil Lamps', 'Kerala is renowned for its diverse range of oil lamps, primarily crafted from wood, stone, and bronze. These lamps are celebrated for their exceptional craftsmanship and aesthetic value, serving both functional and spiritual purposes in homes and temples. The term \"vilakku\" (lamp) is derived from the word \"vilanguka\" (to light), and these lamps have been created using the traditional \"lost wax method\" for centuries.\r\n\r\nIn Kerala, various types of lamps exist, including the nilavilakku (floor lamp), thookku vilakku (hanging lamp), iraduvilakku (double lamp), and chiraathu. The number of wicks in each lamp varies according to its design. Artists frequently incorporate representations of birds, animals, plants, and deities, resulting in uniquely artistic and meaningful lamps.\r\n\r\nAmong the well-known artistic lamp designs are taksmi, peacock lamps, changalavatta lamps, gajalakshmi lamps, aluvilakku, garuda lamps, kavara lamps, gopura lamps, madambi lamps, and deepasthambam lamps. Peacock lamps are designed to be lit in various configurations, while changalavatta lamps, made from clay, are typically used in temples for roofing. Aluvilakku lamps are intricately crafted and are often featured in ceremonial contexts.', '2024-12-26', 'active', '91,92,93,94', 39, 'qr_codes\\exhibit_49.png', 'മരം, കല്ല്, വെങ്കലം എന്നിവ ഉപയോഗിച്ച് നിർമ്മിച്ച വൈവിധ്യമാർന്ന എണ്ണ വിളക്കുകൾക്ക് കേരളം പ്രശസ്തമാണ്.  വീടുകളിലും ക്ഷേത്രങ്ങളിലും പ്രവർത്തനപരവും ആത്മീയവുമായ ആവശ്യങ്ങൾ നിറവേറ്റുന്ന അസാധാരണമായ കരകൌശലവിദ്യയ്ക്കും സൌന്ദര്യ മൂല്യത്തിനും ഈ വിളക്കുകൾ ആഘോഷിക്കപ്പെടുന്നു.  \"വിളക്ക്\" (വിളക്ക്) എന്ന പദം \"വിളങ്കുക\" (വെളിച്ചം) എന്ന വാക്കിൽ നിന്നാണ് ഉരുത്തിരിഞ്ഞത്, നൂറ്റാണ്ടുകളായി പരമ്പരാഗത \"നഷ്ടപ്പെട്ട മെഴുക് രീതി\" ഉപയോഗിച്ചാണ് ഈ വിളക്കുകൾ സൃഷ്ടിച്ചിരിക്കുന്നത്.\r\n\r\nകേരളത്തിൽ നിലവിളക്ക് (തറ വിളക്ക്), തൂക്കു വിളക്ക് (തൂങ്ങിക്കിടക്കുന്ന വിളക്ക്), ഇരടുവിളക്ക് (ഇരട്ട വിളക്ക്), ചിറാത്ത് എന്നിവയുൾപ്പെടെ വിവിധ തരം വിളക്കുകൾ നിലവിലുണ്ട്.  ഓരോ വിളക്കിലെയും വിക്കുകളുടെ എണ്ണം അതിന്റെ രൂപകൽപ്പന അനുസരിച്ച് വ്യത്യാസപ്പെടുന്നു.  കലാകാരന്മാർ പലപ്പോഴും പക്ഷികൾ, മൃഗങ്ങൾ, സസ്യങ്ങൾ, ദേവതകൾ എന്നിവയുടെ പ്രാതിനിധ്യം ഉൾക്കൊള്ളുന്നു, അതിന്റെ ഫലമായി സവിശേഷമായ കലാപരവും അർത്ഥവത്തായതുമായ വിളക്കുകൾ ഉണ്ടാകുന്നു.\r\n\r\nതക്ഷ്മി, മയിൽ വിളക്കുകൾ, ചംഗലവട്ട വിളക്കുകൾ, ഗജലക്ഷ്മി വിളക്കുകൾ, ആലുവിലക്ക്, ഗരുഡ വിളക്കുകൾ, കവര വിളക്കുകൾ, ഗോപുര വിളക്കുകൾ, മാടമ്പി വിളക്കുകൾ, ദീപസ്തംഭ വിളക്കുകൾ എന്നിവയാണ് അറിയപ്പെടുന്ന കലാപരമായ വിളക്ക് രൂപകൽപ്പനകളിൽ ചിലത്.  മയിൽ വിളക്കുകൾ വിവിധ കോൺഫിഗറേഷനുകളിൽ കത്തിക്കാൻ രൂപകൽപ്പന ചെയ്തിട്ടുള്ളതാണ്, അതേസമയം കളിമണ്ണിൽ നിന്ന് നിർമ്മിച്ച ചംഗലവട്ട വിളക്കുകൾ സാധാരണയായി ക്ഷേത്രങ്ങളിൽ മേൽക്കൂരയ്ക്കായി ഉപയോഗിക്കുന്നു.  ആലുവിലക്ക് വിളക്കുകൾ സങ്കീർണ്ണമായി രൂപകൽപ്പന ചെയ്തവയാണ്, അവ പലപ്പോഴും ആചാരപരമായ സന്ദർഭങ്ങളിൽ പ്രദർശിപ്പിക്കാറുണ്ട്.', 'എണ്ണ വിളക്ക്'),
(70, 'Stuffed Birds', 'Stuffed birds in museums are created using taxidermy, a method that preserves animals for display or study. The process starts by removing the bird\'s internal organs to stop decay. Then, the bird is stuffed with materials like cotton or sawdust to keep its shape. The skin is carefully placed over a frame, making the bird look lifelike.\r\n\r\nThese preserved birds allow visitors to see what the bird would look like in real life, even if it\'s no longer alive. They also help scientists study bird behavior, anatomy, and how birds interact with their environment. Special chemicals are used to prevent damage from insects and keep the birds in good condition.\r\n\r\nIn museums, taxidermied birds are not only interesting to look at but are also valuable for learning. They give researchers a closer look at how birds look, behave, and adapt to their surroundings, which helps us understand more about nature and conservation.', '2025-02-12', 'active', '225,226', 36, 'qr_codes\\exhibit_70.png', 'മൃഗങ്ങളെ പ്രദർശനത്തിനോ പഠനത്തിനോ വേണ്ടി സംരക്ഷിക്കുന്ന ഒരു രീതിയായ ടാക്സിഡെർമി ഉപയോഗിച്ചാണ് മ്യൂസിയങ്ങളിൽ നിറച്ച പക്ഷികൾ സൃഷ്ടിക്കപ്പെടുന്നത്.  ക്ഷയം തടയുന്നതിനായി പക്ഷിയുടെ ആന്തരിക അവയവങ്ങൾ നീക്കം ചെയ്താണ് ഈ പ്രക്രിയ ആരംഭിക്കുന്നത്.  തുടർന്ന്, പക്ഷിയുടെ ആകൃതി നിലനിർത്താൻ പരുത്തി അല്ലെങ്കിൽ മരത്തടി പോലുള്ള വസ്തുക്കൾ നിറയ്ക്കുന്നു.  ചർമ്മം ശ്രദ്ധാപൂർവ്വം ഒരു ഫ്രെയിമിന് മുകളിൽ സ്ഥാപിച്ചിരിക്കുന്നതിനാൽ പക്ഷി ജീവനുള്ളതായി കാണപ്പെടുന്നു.\r\n\r\nജീവിച്ചിരിപ്പില്ലെങ്കിലും യഥാർത്ഥ ജീവിതത്തിൽ പക്ഷി എങ്ങനെയായിരിക്കുമെന്ന് കാണാൻ ഈ സംരക്ഷിത പക്ഷികൾ സന്ദർശകരെ അനുവദിക്കുന്നു.  പക്ഷികളുടെ സ്വഭാവം, ശരീരഘടന, പക്ഷികൾ അവയുടെ പരിസ്ഥിതിയുമായി എങ്ങനെ ഇടപഴകുന്നു എന്നിവ പഠിക്കാനും അവ ശാസ്ത്രജ്ഞരെ സഹായിക്കുന്നു.  പ്രാണികളുടെ കേടുപാടുകൾ തടയുന്നതിനും പക്ഷികളെ നല്ല അവസ്ഥയിൽ നിലനിർത്തുന്നതിനും പ്രത്യേക രാസവസ്തുക്കൾ ഉപയോഗിക്കുന്നു.\r\n\r\nമ്യൂസിയങ്ങളിൽ, ടാക്സിഡെർമിഡ് പക്ഷികൾ കാണാൻ രസകരമാണെന്ന് മാത്രമല്ല, പഠനത്തിനും വിലപ്പെട്ടതാണ്.  പ്രകൃതിയെക്കുറിച്ചും സംരക്ഷണത്തെക്കുറിച്ചും കൂടുതൽ മനസ്സിലാക്കാൻ സഹായിക്കുന്ന പക്ഷികൾ എങ്ങനെ കാണപ്പെടുന്നു, പെരുമാറുന്നു, ചുറ്റുപാടുകളുമായി എങ്ങനെ പൊരുത്തപ്പെടുന്നു എന്നതിനെക്കുറിച്ച് അവ ഗവേഷകർക്ക് സൂക്ഷ്മമായ അവലോകനം നൽകുന്നു.', 'പൊതിഞ്ഞ പക്ഷികൾ'),
(73, 'China ware', 'This collection features two intricate China ware jars, both of which are printed designs that reflect the artistic and cultural exchange of their time.\r\n\r\nThe one jar is a picture of a woman holding an umbrella, in which a moment of grace and elegance is depicted with intricate details. This artistic form expresses the grandeur and cultural richness of the tradition. In another jar, two birds and human figures are depicted among the plants. This design beautifully symbolizes the relationship between nature and man; vivid details make the scene more lifelike.\r\n\r\nChina ware, or Chinese porcelain, is famous for its excellent quality, durability, and beautiful craftsmanship. These jars are made from highly flammable clay, and the smooth, glass-like finish adds more vibrancy to the intricate designs of these jars. Although many china ware pieces have their origins in China, local artists have adopted similar techniques, combining cultural influence with trade.\r\n\r\nThese jars, with their modern design and craftsmanship, are displayed as a representation of local and global cultural influences.', '2025-01-23', 'active', '241,242,243,244,245', 21, 'qr_codes\\exhibit_73.png', 'ഈ ശേഖരത്തിൽ രണ്ട് അടുപ്പമുള്ള ചൈന വെയർ ജാറുകൾ ഉണ്ട്, ഇവ രണ്ടും അവരുടെ കാലത്തെ കലാപരവും സാംസ്കാരികവുമായ കൈമാറ്റത്തെ പ്രതിഫലിപ്പിക്കുന്ന അച്ചടിച്ച ഡിസൈനുകളാണ്.\r\n\r\nകുട പിടിക്കുന്ന ഒരു സ്ത്രീയുടെ ചിത്രമാണ് ഒരു ജാർ, അതിൽ കൃപയുടെയും ചാരുതയുടെയും ഒരു നിമിഷം അടുപ്പമുള്ള വിശദാംശങ്ങളുമായി ചിത്രീകരിച്ചിരിക്കുന്നു.  ഈ കലാപരമായ രൂപം പാരമ്പര്യത്തിന്റെ മഹത്വവും സാംസ്കാരിക സമൃദ്ധിയും പ്രകടിപ്പിക്കുന്നു.  മറ്റൊരു പാത്രത്തിൽ രണ്ട് പക്ഷികളെയും മനുഷ്യരൂപങ്ങളെയും സസ്യങ്ങൾക്കിടയിൽ ചിത്രീകരിച്ചിരിക്കുന്നു.  ഈ രൂപകൽപ്പന പ്രകൃതിയും മനുഷ്യനും തമ്മിലുള്ള ബന്ധത്തെ മനോഹരമായി പ്രതീകപ്പെടുത്തുന്നു; വിശദാംശങ്ങൾ ഈ രംഗത്തെ കൂടുതൽ ജീവസ്സുറ്റതാക്കുന്നു.\r\n\r\nമികച്ച ഗുണനിലവാരം, ഈട്, മനോഹരമായ കരകൌശലവിദ്യ എന്നിവയ്ക്ക് പേരുകേട്ടതാണ് ചൈന വെയർ അഥവാ ചൈനീസ് പോർസലൈൻ.  ഈ ജാറുകൾ വളരെ കത്തുന്ന കളിമണ്ണിൽ നിന്നാണ് നിർമ്മിച്ചിരിക്കുന്നത്, മിനുസമാർന്നതും ഗ്ലാസ് പോലുള്ളതുമായ ഫിനിഷ് ഈ ജാറുകളുടെ അടുപ്പമുള്ള ഡിസൈനുകൾക്ക് കൂടുതൽ ഊർജ്ജസ്വലത നൽകുന്നു.  പല ചൈന വെയർ പീസുകളുടെയും ഉത്ഭവം ചൈനയിലാണെങ്കിലും, പ്രാദേശിക കലാകാരന്മാർ സാംസ്കാരിക സ്വാധീനവും വ്യാപാരവും സംയോജിപ്പിച്ച് സമാനമായ സാങ്കേതികവിദ്യകൾ സ്വീകരിച്ചിട്ടുണ്ട്.\r\nആധുനിക രൂപകൽപ്പനയും കരകൌശല വൈദഗ്ധ്യവുമുള്ള ഈ ജാറുകൾ പ്രാദേശികവും ആഗോളവുമായ സാംസ്കാരിക സ്വാധീനങ്ങളുടെ പ്രാതിനിധ്യമായി പ്രദർശിപ്പിച്ചിരിക്കുന്നു.', 'ചൈനയുടെ സാധനങ്ങൾ'),
(55, 'Stuffed Animals', 'Stuffed animals in museums are also created through taxidermy, a method that preserves animals for display or study. The process begins by carefully removing the animal\'s internal organs to prevent decay. The body is then filled with materials like cotton, sawdust, or special foam to maintain its shape. Afterward, the skin is carefully stitched and placed over a frame, making the animal look lifelike.\r\n\r\nThese preserved animals allow museum visitors to observe the physical features, size, and behavior of species that may be difficult to see in the wild. They also serve as important tools for scientific research, helping experts study animal anatomy, behavior, and environmental adaptations.\r\n\r\nTo keep stuffed animals in good condition, special preservation techniques are used to protect them from insects, fungi, and other damaging elements. The quality of the specimen is maintained so it can be studied or displayed for educational purposes.\r\n\r\nstuffed animals are valuable not just as exhibits but as resources for understanding the diversity of wildlife, the challenges animals face, and the importance of conservation.', '2025-01-02', 'active', '168,169,170,171,172,173,174,175', 36, 'qr_codes\\exhibit_55.png', 'മ്യൂസിയങ്ങളിലെ സ്റ്റഫ് ചെയ്ത മൃഗങ്ങളും ടാക്സിഡെർമിയിലൂടെ സൃഷ്ടിക്കപ്പെടുന്നു, ഇത് മൃഗങ്ങളെ പ്രദർശനത്തിനോ പഠനത്തിനോ സംരക്ഷിക്കുന്ന ഒരു രീതിയാണ്.  അഴുകുന്നത് തടയാൻ മൃഗങ്ങളുടെ ആന്തരിക അവയവങ്ങൾ ശ്രദ്ധാപൂർവ്വം നീക്കം ചെയ്താണ് ഈ പ്രക്രിയ ആരംഭിക്കുന്നത്.  ശരീരം അതിന്റെ ആകൃതി നിലനിർത്തുന്നതിനായി പരുത്തി, മരത്തടി അല്ലെങ്കിൽ പ്രത്യേക നുര പോലുള്ള വസ്തുക്കൾ കൊണ്ട് നിറയ്ക്കുന്നു.  അതിനുശേഷം, ചർമ്മം ശ്രദ്ധാപൂർവ്വം തുന്നിച്ചേർത്ത് ഒരു ഫ്രെയിമിന് മുകളിൽ വയ്ക്കുന്നു, ഇത് മൃഗത്തെ ജീവനുള്ളതായി കാണുന്നു.\r\n\r\nഈ സംരക്ഷിത മൃഗങ്ങൾ മ്യൂസിയം സന്ദർശകരെ കാട്ടിൽ കാണാൻ പ്രയാസമുള്ള ഇനങ്ങളുടെ ഭൌതിക സവിശേഷതകൾ, വലുപ്പം, പെരുമാറ്റം എന്നിവ നിരീക്ഷിക്കാൻ അനുവദിക്കുന്നു.  മൃഗങ്ങളുടെ ശരീരഘടന, പെരുമാറ്റം, പാരിസ്ഥിതിക പൊരുത്തപ്പെടുത്തലുകൾ എന്നിവ പഠിക്കാൻ വിദഗ്ധരെ സഹായിക്കുന്ന ശാസ്ത്രീയ ഗവേഷണത്തിനുള്ള പ്രധാന ഉപകരണങ്ങളായും അവ പ്രവർത്തിക്കുന്നു.\r\n\r\nസ്റ്റഫ് ചെയ്ത മൃഗങ്ങളെ നല്ല അവസ്ഥയിൽ നിലനിർത്താൻ, പ്രാണികൾ, ഫംഗസ്, മറ്റ് ദോഷകരമായ ഘടകങ്ങൾ എന്നിവയിൽ നിന്ന് അവയെ സംരക്ഷിക്കാൻ പ്രത്യേക സംരക്ഷണ സാങ്കേതികവിദ്യകൾ ഉപയോഗിക്കുന്നു.  വിദ്യാഭ്യാസ ആവശ്യങ്ങൾക്കായി പഠിക്കാനോ പ്രദർശിപ്പിക്കാനോ കഴിയുന്ന തരത്തിൽ മാതൃകയുടെ ഗുണനിലവാരം നിലനിർത്തുന്നു.\r\nസ്റ്റഫ് ചെയ്ത മൃഗങ്ങൾ പ്രദർശനങ്ങൾ എന്ന നിലയിൽ മാത്രമല്ല, വന്യജീവികളുടെ വൈവിധ്യം, മൃഗങ്ങൾ അഭിമുഖീകരിക്കുന്ന വെല്ലുവിളികൾ, സംരക്ഷണത്തിന്റെ പ്രാധാന്യം എന്നിവ മനസ്സിലാക്കുന്നതിനുള്ള വിഭവങ്ങൾ എന്ന നിലയിലും വിലപ്പെട്ടതാണ്.', 'നിറച്ച് സൂക്ഷിച്ച മൃഗങ്ങൾ'),
(56, 'Elephant’s Skeleton', 'CHENGALLOOR RANGANATHAN:\r\n\r\nThe elephant owned by the temple of Sriranga in Tamil Nadu was known as Ranganathan. His usual duty was to bring water for \"Abhisheka\" in the temple. When his height was over, making it difficult to enter the gate of the temple, the authorities decided to sell him. Thus in 1905 AD, he was brought for Rs. 5000 by Mr. Parameswaran Namboothiri of Chengalloor Mana by which his name became the elephant of Chengalloor. He was the tallest one ever to live at his age in the State owned a height of about 11\' 1%\". Chengalloor Ranganathan represented all important festivals all over Kerala and he had the leadership in all the \"Pooram Ezhunnellippu\". \r\n\r\nIn Thrissur Pooram, he represented the Thiruvambady group. He was never violent to anyone during his lifetime. Chengalloor Ranganathan died in 1917 AD while under treatment after an attack from another elephant named \"Akavoor Govindan\" during Arattupuzha \"Pooram ezhunnellippu.', '2025-01-22', 'active', '176,177', 36, 'qr_codes\\exhibit_56.png', 'ചെങ്ങല്ലൂർ രംഗനാഥൻഃ\r\nതമിഴ്നാട്ടിലെ ശ്രീരംഗക്ഷേത്രത്തിന്റെ ഉടമസ്ഥതയിലുള്ള ആന രംഗനാഥൻ എന്നാണ് അറിയപ്പെട്ടിരുന്നത്.  ക്ഷേത്രത്തിൽ \'അഭിഷേക\' ത്തിനായി വെള്ളം കൊണ്ടുവരിക എന്നതായിരുന്നു അദ്ദേഹത്തിന്റെ പതിവ് കടമ.  ക്ഷേത്രത്തിന്റെ കവാടത്തിൽ പ്രവേശിക്കാൻ ബുദ്ധിമുട്ടുണ്ടാക്കിയ അദ്ദേഹത്തിന്റെ ഉയരം കഴിഞ്ഞപ്പോൾ അധികൃതർ അദ്ദേഹത്തെ വിൽക്കാൻ തീരുമാനിച്ചു.  അങ്ങനെ 1905ൽ ഒരു ലക്ഷം രൂപയ്ക്ക് അദ്ദേഹത്തെ കൊണ്ടുവന്നു. 5000 രൂപ ചെങ്ങല്ലൂർ മനയിലെ ശ്രീ. പരമേശ്വരൻ നമ്പൂതിരി രചിച്ചതിലൂടെ അദ്ദേഹത്തിന്റെ പേര് ചെങ്ങല്ലൂരിലെ ആനയായി മാറി.  ഏകദേശം 11 \'1%\' ഉയരമുള്ള സംസ്ഥാനത്തെ തന്റെ പ്രായത്തിൽ ജീവിച്ചിരുന്ന ഏറ്റവും ഉയരം കൂടിയ വ്യക്തിയായിരുന്നു അദ്ദേഹം.  ചെങ്ങല്ലൂർ രംഗനാഥൻ കേരളത്തിലുടനീളമുള്ള എല്ലാ പ്രധാന ഉത്സവങ്ങളെയും പ്രതിനിധീകരിക്കുകയും \"പൂരം എഴുന്നള്ളിപ്പ്\" മുഴുവൻ അദ്ദേഹത്തിന് നേതൃത്വം നൽകുകയും ചെയ്തു. \r\nതൃശൂർ പൂരത്തിൽ അദ്ദേഹം തിരുവമ്പാടി ഗ്രൂപ്പിനെ പ്രതിനിധീകരിച്ചു.  തന്റെ ജീവിതകാലത്ത് അദ്ദേഹം ആരോടും അക്രമാസക്തനായിരുന്നില്ല.  ചെങ്ങല്ലൂർ രംഗനാഥൻ എ. ഡി 1917-ൽ ആരാട്ടുപുഴ \"പൂരം എഴുന്നള്ളിപ്പ്\" സമയത്ത് \"അകവൂർ ഗോവിന്ദൻ\" എന്ന മറ്റൊരു ആനയുടെ ആക്രമണത്തെ തുടർന്ന് ചികിത്സയിൽ കഴിയവേ മരിച്ചു.', 'ആനയുടെ അസ്തി'),
(60, 'Indian Musical Instruments', 'INDIAN MUSICAL INSTRUMENTS\r\n\r\nIndia is one of the few countries in the world presenting a rich variety of musical instruments. The varieties that have evolved In the course of her long history are thoroughly representative of the STRINGED, WIND, and PRECUSSION groups. There are at least five hundred of them, each with a distinct name, shape, construction, technique, and quality of tone . The instrument of keyboard type, however, did not find favor with the musical genius of the country and they fell into disuse long ago. The saptaghantika and the Nalltarang are the two modern survivals of the key-board type of instruments in India.\r\n\r\nThe materials of which the instruments are made are for the most part those that are easily procurable in the country. Large gourds, bamboo canes, reeds, jackwood, black wood, earthenware, and the skin of calf, sheep, buffalo, and monitor (Varanus) lizards are employed. Silver, bronze, brass, copper, and iron are also among the materials used in the manufacture of musical instruments.\r\n\r\nOne characteristic feature of Indian musical instruments is that in both the strung and the wind groups, the fingers stop the strings and the finger holes directly and there is no intervening mechanism like a key. The great advantage of the system is that the playing of the most subtle gamakas (the graces and embellishment) becomes easy. Complexities in the construction of the instruments are also avoided.\r\n\r\n', '2025-01-23', 'inactive', '182', 33, 'qr_codes\\exhibit_60.png', 'ഇന്ത്യൻ സംഗീതോപകരണങ്ങൾ\r\n\r\nവൈവിധ്യമാർന്ന സംഗീതോപകരണങ്ങൾ അവതരിപ്പിക്കുന്ന ലോകത്തിലെ ചുരുക്കം ചില രാജ്യങ്ങളിൽ ഒന്നാണ് ഇന്ത്യ.  അവരുടെ നീണ്ട ചരിത്രത്തിൽ പരിണമിച്ച ഇനങ്ങൾ സ്ട്രീംഡ്, വിൻഡ്, പ്രീക്യൂഷൻ ഗ്രൂപ്പുകളെ പൂർണ്ണമായും പ്രതിനിധീകരിക്കുന്നു.  അവയിൽ കുറഞ്ഞത് അഞ്ഞൂറെങ്കിലും ഉണ്ട്, ഓരോന്നിനും വ്യത്യസ്തമായ പേര്, ആകൃതി, നിർമ്മാണം, സാങ്കേതികത, സ്വരത്തിന്റെ ഗുണനിലവാരം എന്നിവയുണ്ട്.  എന്നിരുന്നാലും, കീബോർഡ് തരത്തിലുള്ള ഉപകരണം രാജ്യത്തെ സംഗീത പ്രതിഭയ്ക്ക് അനുകൂലമായിരുന്നില്ല, അവ വളരെക്കാലം മുമ്പ് ഉപയോഗശൂന്യമായി.  ഇന്ത്യയിലെ കീബോർഡ് തരത്തിലുള്ള ഉപകരണങ്ങളുടെ രണ്ട് ആധുനിക അതിജീവനങ്ങളാണ് സപ്തഗന്തികയും നൽതരംഗവും.\r\n\r\nഉപകരണങ്ങൾ നിർമ്മിക്കുന്ന വസ്തുക്കളിൽ ഭൂരിഭാഗവും രാജ്യത്ത് എളുപ്പത്തിൽ സംഭരിക്കാവുന്നവയാണ്.  വലിയ ചുരയ്ക്ക, മുള ചൂരൽ, കളകൾ, ചക്ക, കറുത്ത മരം, മൺപാത്രങ്ങൾ, കാളക്കുട്ടി, ചെമ്മരിയാട്, പോത്ത്, മോണിറ്റർ (വാരണസ്) പല്ലികളുടെ തൊലി എന്നിവ ഉപയോഗിക്കുന്നു.  വെള്ളി, വെങ്കലം, പിച്ചള, ചെമ്പ്, ഇരുമ്പ് എന്നിവയും സംഗീതോപകരണങ്ങളുടെ നിർമ്മാണത്തിൽ ഉപയോഗിക്കുന്നു.\r\n\r\nഇന്ത്യൻ സംഗീതോപകരണങ്ങളുടെ ഒരു സവിശേഷത, സ്ട്രംഗ്, കാറ്റ് ഗ്രൂപ്പുകളിൽ, വിരലുകൾ ചരടുകളും വിരൽക്കുഴലുകളും നേരിട്ട് നിർത്തുന്നു എന്നതാണ്, കൂടാതെ ഒരു താക്കോൽ പോലെ ഇടപെടൽ സംവിധാനമില്ല.  ഏറ്റവും സൂക്ഷ്മമായ ഗമകങ്ങൾ (അലങ്കാരവും അലങ്കാരവും) കളിക്കുന്നത് എളുപ്പമാകും എന്നതാണ് ഈ സംവിധാനത്തിന്റെ ഏറ്റവും വലിയ നേട്ടം.  ഉപകരണങ്ങളുടെ നിർമ്മാണത്തിലെ സങ്കീർണതകളും ഒഴിവാക്കുന്നു.', 'ഇന്ത്യൻ സംഗീതോപകരണങ്ങൾ'),
(74, 'Types of Boats: An Overview of Kerala\'s Boat Traditions', 'Boats in Kerala are an integral part of the state\'s rich cultural and natural heritage. The backwaters of Kerala, with their serene waters, lush landscapes, and quaint villages, are best explored by boat. These large wooden boats are equipped with modern amenities but retain their traditional craftsmanship.\r\n\r\nIn addition to houseboats, there are \"vallams\" (smaller wooden boats) used for everyday fishing, transport, and water-based activities. Kerala is also known for its \"Snake Boats\" (Chundan Vallams) used in the traditional boat races, especially the Vallam Kali, a spectacular event during the Onam festival. These long, narrowboats are manned by large teams and are an exciting display of teamwork and speed.\r\n\r\nThe backwaters of places like Alleppey, Kumarakom, and Kochi are famous for boat cruises that offer picturesque views of coconut groves, paddy fields, and rustic villages. Kerala\'s boat culture is an essential part of the lifestyle, offering both practical transportation and leisure experiences to visitors.\r\n\r\n', '2025-01-12', 'active', '246,247,248,249,250', 37, 'qr_codes\\exhibit_74.png', 'കേരളത്തിലെ ബോട്ടുകൾ സംസ്ഥാനത്തിൻ്റെ സമ്പന്നമായ സാംസ്കാരികവും പ്രകൃതിപരവുമായ പൈതൃകത്തിൻ്റെ അവിഭാജ്യ ഘടകമാണ്.  ശാന്തമായ ജലം, സമൃദ്ധമായ പ്രകൃതിദൃശ്യങ്ങൾ, വിചിത്രമായ ഗ്രാമങ്ങൾ എന്നിവയുള്ള കേരളത്തിലെ കായലുകൾ ബോട്ടിലാണ് ഏറ്റവും നന്നായി പര്യവേക്ഷണം ചെയ്യുന്നത്.  ഈ വലിയ തടി ബോട്ടുകൾ ആധുനിക സൌകര്യങ്ങളോടെ സജ്ജീകരിച്ചിട്ടുണ്ടെങ്കിലും അവയുടെ പരമ്പരാഗത കരകൌശലവിദ്യ നിലനിർത്തുന്നു.\r\n\r\nഹൌസ്ബോട്ടുകൾക്ക് പുറമേ, ദൈനംദിന മത്സ്യബന്ധനം, ഗതാഗതം, ജലത്തെ അടിസ്ഥാനമാക്കിയുള്ള പ്രവർത്തനങ്ങൾ എന്നിവയ്ക്കായി \"വള്ളങ്ങൾ\" (ചെറിയ തടി ബോട്ടുകൾ) ഉപയോഗിക്കുന്നു.  പരമ്പരാഗത ബോട്ട് മൽസരങ്ങളിൽ ഉപയോഗിക്കുന്ന \"സ്നേക്ക് ബോട്ടുകൾക്ക്\" (ചുണ്ടൻ വള്ളങ്ങൾ) പേരുകേട്ടതാണ് കേരളം, പ്രത്യേകിച്ച് ഓണം ഉത്സവ വേളയിലെ അതിശയകരമായ പരിപാടിയായ വള്ളംകളി.  നീളമുള്ളതും ഇടുങ്ങിയതുമായ ഈ ബോട്ടുകൾ വലിയ ടീമുകളാൽ നിയന്ത്രിക്കപ്പെടുന്നു, ഇത് ടീം വർക്കിന്റെയും വേഗതയുടെയും ആവേശകരമായ പ്രദർശനമാണ്.\r\n\r\nആലപ്പുഴ, കുമരകം, കൊച്ചി തുടങ്ങിയ സ്ഥലങ്ങളിലെ കായലുകൾ തെങ്ങ് തോട്ടങ്ങൾ, നെൽവയലുകൾ, ഗ്രാമീണ ഗ്രാമങ്ങൾ എന്നിവയുടെ മനോഹരമായ കാഴ്ചകൾ നൽകുന്ന ബോട്ട് യാത്രകൾക്ക് പേരുകേട്ടതാണ്.  സന്ദർശകർക്ക് പ്രായോഗിക ഗതാഗതവും ഒഴിവുസമയങ്ങളും വാഗ്ദാനം ചെയ്യുന്ന കേരളത്തിന്റെ ബോട്ട് സംസ്കാരം ജീവിതശൈലിയുടെ അവിഭാജ്യ ഘടകമാണ്.', 'ബോട്ടുകളുടെ പലതരങ്ങൾ: കേരളത്തിലെ ബോട്ട് പാരമ്പര്യങ്ങളുടെ ഒരു അവലോകനം'),
(75, 'War Weapons', 'The history of war weapons reveals how tools for combat evolved over time, starting with simple stone tools and advancing to more sophisticated firearms. Early weapons like clubs, spears, and bows and arrows were crucial for hunting and defense. The bow became especially important in ancient and medieval warfare, allowing archers to attack from a distance. Quivers, used to carry arrows, were essential for quick access during battle.\r\n\r\nAs warfare evolved, weapons like swords, axes, and daggers were designed for close combat, showing advancements in metalworking and strategy. Battle axes, especially favored by Vikings, were powerful and versatile, while Japanese swords (katana) became symbols of the samurai\'s honor and skill. Flexible swords, used in Chinese martial arts, could bend to make attacks unpredictable, while swords with Persian hilts were intricately designed and highly prized by warriors.\r\n\r\nThe Chinese sword (Dao) and Dutch naval sword were also key in combat, with the Dao designed for cutting and thrusting, and the naval sword built for close quarters fighting on ships. The variety of swords across different cultures, including short swords like the gladius and long swords for knights, played a significant role in battles.\r\n\r\nOther weapons like thrusting daggers (stiletto) and helmets with mail offered protection and precision in combat, with wooden shields serving as defensive tools against strikes. Weapons like the labrys and halberd demonstrated the versatility of axes, which could be used for chopping or throwing.\r\n\r\nThe development of these weapons not only reflects changes in combat tactics but also highlights their cultural significance across history. As firearms emerged, they began to replace traditional weapons, yet items like axes, swords, and shields continue to be significant in understanding the evolution of military technology.', '2025-01-12', 'active', '256,257,258,259,260,261,262', 38, 'qr_codes\\exhibit_75.png', 'ലളിതമായ കല്ല് ഉപകരണങ്ങളിൽ നിന്ന് ആരംഭിച്ച് കൂടുതൽ സങ്കീർണ്ണമായ തോക്കുകളിലേക്ക് മുന്നേറിക്കൊണ്ട് കാലക്രമേണ യുദ്ധത്തിനുള്ള ഉപകരണങ്ങൾ എങ്ങനെ വികസിച്ചുവെന്ന് യുദ്ധായുധങ്ങളുടെ ചരിത്രം വെളിപ്പെടുത്തുന്നു.  ക്ലബ്ബുകൾ, കുന്തങ്ങൾ, വില്ലുകളും അമ്പുകളും പോലുള്ള ആദ്യകാല ആയുധങ്ങൾ വേട്ടയ്ക്കും പ്രതിരോധത്തിനും നിർണായകമായിരുന്നു.  പുരാതന, മധ്യകാല യുദ്ധങ്ങളിൽ വില്ലിന് പ്രത്യേകിച്ചും പ്രാധാന്യമുണ്ടായിരുന്നു, ഇത് അമ്പെയ്ത്തുകാരെ അകലെ നിന്ന് ആക്രമിക്കാൻ അനുവദിച്ചു.  അമ്പുകൾ വഹിക്കാൻ ഉപയോഗിക്കുന്ന ക്വിവറുകൾ യുദ്ധസമയത്ത് പെട്ടെന്നുള്ള പ്രവേശനത്തിന് അത്യാവശ്യമായിരുന്നു.\r\n\r\nയുദ്ധം വികസിച്ചതോടെ, വാളുകൾ, കോടാലികൾ, കഠാരകൾ തുടങ്ങിയ ആയുധങ്ങൾ അടുത്ത പോരാട്ടത്തിനായി രൂപകൽപ്പന ചെയ്യുകയും ലോഹപ്പണികളിലും തന്ത്രത്തിലും പുരോഗതി കാണിക്കുകയും ചെയ്തു.  പ്രത്യേകിച്ചും വൈക്കിങ്ങുകൾക്ക് അനുകൂലമായ യുദ്ധ കോടാലികൾ ശക്തവും വൈവിധ്യപൂർണ്ണവുമായിരുന്നു, അതേസമയം ജാപ്പനീസ് വാളുകൾ (കട്ടാന) സമുറായിയുടെ ബഹുമാനത്തിന്റെയും നൈപുണ്യത്തിന്റെയും പ്രതീകങ്ങളായി മാറി.  ചൈനീസ് ആയോധനകലയിൽ ഉപയോഗിക്കുന്ന ഫ്ലെക്സിബിൾ വാളുകൾക്ക് ആക്രമണങ്ങളെ പ്രവചനാതീതമാക്കുന്നതിന് വളയാൻ കഴിയും, അതേസമയം പേർഷ്യൻ ഹിൽറ്റുകളുള്ള വാളുകൾ സങ്കീർണ്ണമായി രൂപകൽപ്പന ചെയ്യുകയും യോദ്ധാക്കൾക്ക് വളരെ വിലമതിക്കുകയും ചെയ്തു.\r\n\r\nചൈനീസ് വാൾ (ഡാവോ), ഡച്ച് നാവിക വാൾ എന്നിവയും പോരാട്ടത്തിൽ പ്രധാനമായിരുന്നു, ഡാവോ മുറിക്കുന്നതിനും തള്ളുന്നതിനും രൂപകൽപ്പന ചെയ്തിട്ടുള്ളതാണ്, കൂടാതെ കപ്പലുകളിൽ അടുത്തുനിന്ന് പോരാടുന്നതിന് നാവിക വാൾ നിർമ്മിച്ചിട്ടുണ്ട്.  ഗ്ലാഡിയസ് പോലുള്ള ചെറിയ വാളുകളും നൈറ്റുകൾക്കുള്ള നീണ്ട വാളുകളും ഉൾപ്പെടെ വിവിധ സംസ്കാരങ്ങളിലുടനീളമുള്ള വൈവിധ്യമാർന്ന വാളുകൾ യുദ്ധങ്ങളിൽ പ്രധാന പങ്ക് വഹിച്ചു.\r\nത്രസ്റ്റിംഗ് ഡാഗറുകൾ (സ്റ്റൈലിറ്റോ), മെയിൽ ഉള്ള ഹെൽമെറ്റുകൾ തുടങ്ങിയ മറ്റ് ആയുധങ്ങൾ പോരാട്ടത്തിൽ സംരക്ഷണവും കൃത്യതയും വാഗ്ദാനം ചെയ്തു, തടി ഷീൽഡുകൾ ആക്രമണങ്ങൾക്കെതിരായ പ്രതിരോധ ഉപകരണങ്ങളായി പ്രവർത്തിക്കുന്നു.  ലാബ്രികളും ഹാൽബെർഡും പോലുള്ള ആയുധങ്ങൾ മുറിക്കുന്നതിനോ എറിയുന്നതിനോ ഉപയോഗിക്കാവുന്ന കോടാലികളുടെ വൈദഗ്ദ്ധ്യം പ്രകടമാക്കി.\r\n\r\nഈ ആയുധങ്ങളുടെ വികസനം പോരാട്ട തന്ത്രങ്ങളിലെ മാറ്റങ്ങളെ പ്രതിഫലിപ്പിക്കുക മാത്രമല്ല ചരിത്രത്തിലുടനീളം അവയുടെ സാംസ്കാരിക പ്രാധാന്യത്തെ എടുത്തുകാണിക്കുകയും ചെയ്യുന്നു.  തോക്കുകൾ ഉയർന്നുവന്നപ്പോൾ, അവ പരമ്പരാഗത ആയുധങ്ങൾക്ക് പകരമാകാൻ തുടങ്ങി, എന്നിട്ടും കോടാലികൾ, വാളുകൾ, ഷീൽഡുകൾ തുടങ്ങിയ ഇനങ്ങൾ സൈനിക സാങ്കേതികവിദ്യയുടെ പരിണാമം മനസിലാക്കുന്നതിൽ പ്രാധാന്യമർഹിക്കുന്നു.', 'യുദ്ധ ആയുധങ്ങൾ'),
(76, 'Sculpture carved on the roots of a wood.', 'This sculpture is carved out of the roots of a Kunnivaka tree grown within the premises of the Central jail, Viyyur: This is modeled and shaped by a carpenter-prisoner named Velayudhan, from Palakkad District (formerly known as Palaghat District), who was sentenced to life imprisonment in the jail. It has taken about 8 months to finish its work and a sum of Rs.10000/-must have been spent on this work.\r\n\r\nThis was presented by the Superintendent of the central jail Sri. R.Bhaskaran Nair on 24-11-1987.\r\n\r\n\r\n\r\n', '2025-01-13', 'active', '265', 30, 'qr_codes\\exhibit_76.png', 'വിയ്യൂർ ജയിൽ വളപ്പിൽ നിന്നിരുന്ന കുന്നിവാക എന്ന ഒരു മരത്തിൻ്റെ വേരുകളിന്മേൽ കൊത്തിയുണ്ടാക്കി-യതാണു് ഈ ശില്പം. ഇതുരൂപകല്പന ചെയ്തു നിർമ്മിച്ചതു് വിയ്യൂർ സെൻട്രൽ ജയിലിൽ ജീവപര്യന്തം തടവുകാരനായി കഴിഞ്ഞുവന്ന പാലക്കാട് ജില്ലയിൽ (മുമ്പ് പാലഘട്ട് ജില്ല എന്നറിയപ്പെട്ടിരുന്നു) നിന്നുള്ള വേലായുധൻ ആശാരിയാണ്. ഇതു പണി തീർക്കുവാൻ എട്ടു മാസം സമയവും പതിനായിരത്തിൽപരം രൂപ ചെലവും ഇന്നിട്ടുണ്ട്.\r\n\r\nകേരള ജയിൽ വകുപ്പിൽ നിന്നും 24-11-1987-ൽ ഇതു് വിയ്യൂർ ജയിൽ സൂപ്രണ്ട് ശ്രീ.ആർ. ഭാസ്കരൻ നായർ മ്യൂസിയത്തിലേക്കു് സംഭാവനയായി നൽകി.', 'വേരുകളിൽ കൊത്തിയ ശില്പം'),
(77, 'Thrissur Pooram', 'Thrissur Pooram is one of the most exciting and vibrant festivals in Kerala, celebrated annually in Thrissur. Held at the Vadakkumnathan Temple, the festival usually takes place in April or May and is known for its grand and colorful celebrations.\r\n\r\nThe highlight of the festival is the procession of beautifully decorated elephants, which carry large parasols. These elephants are accompanied by energetic chenda drum performances, adding a whole new level of energy to the event. The rhythmic beats of the drums and the sounds of brass bands fill the air, creating a lively and electrifying atmosphere that gets the crowd hyped up.\r\n\r\nTwo main temple groups, Paramekkavu and Thiruvambady, participate in the procession, competing to present the best display of elephants, drums, and parasols. One of the most captivating traditions of Thrissur Pooram is the \"Kudamattom,\" where groups exchange umbrellas, each with intricate and vibrant designs.\r\n\r\nPeople come from all over the world to witness this incredible festival, making it a truly global celebration. Thrissur Pooram is not just a significant event for the locals, but it also draws tourists and spectators from many countries, who come to experience the vibrant culture and grand festivities. Its reputation as one of the most famous festivals in Kerala ensures its place on the bucket list for many international travelers.\r\n\r\nThe festival concludes with a breathtaking fireworks display, lighting up the night sky and adding to the grandeur of the event. ', '2025-01-13', 'active', '269,270,271', 39, 'qr_codes\\exhibit_77.png', 'എല്ലാ വർഷവും തൃശ്ശൂരിൽ ആഘോഷിക്കുന്ന കേരളത്തിലെ ഏറ്റവും ആവേശകരവും ഊർജ്ജസ്വലവുമായ ഉത്സവങ്ങളിലൊന്നാണ് തൃശൂർ പൂരം.  വടക്കുംനാഥൻ ക്ഷേത്രത്തിൽ നടക്കുന്ന ഈ ഉത്സവം സാധാരണയായി ഏപ്രിലിലോ മെയ് മാസത്തിലോ നടക്കുന്നു, ഇത് ഗംഭീരവും വർണ്ണാഭമായതുമായ ആഘോഷങ്ങൾക്ക് പേരുകേട്ടതാണ്.\r\nവലിയ പാരസോളുകൾ വഹിക്കുന്ന മനോഹരമായി അലങ്കരിച്ച ആനകളുടെ ഘോഷയാത്രയാണ് ഉത്സവത്തിന്റെ പ്രധാന ആകർഷണം.  ഈ ആനകൾക്കൊപ്പം ഊർജ്ജസ്വലമായ ചെണ്ട ഡ്രം പ്രകടനങ്ങളും പരിപാടിക്ക് ഒരു പുതിയ തലത്തിലുള്ള ഊർജ്ജം നൽകുന്നു.  ഡ്രമ്മുകളുടെ താളാത്മകമായ താളങ്ങളും പിച്ചള ബാൻഡുകളുടെ ശബ്ദങ്ങളും വായുവിൽ നിറയുകയും ജനക്കൂട്ടത്തെ ആവേശഭരിതരാക്കുന്ന സജീവവും വൈദ്യുതവുമായ അന്തരീക്ഷം സൃഷ്ടിക്കുകയും ചെയ്യുന്നു.\r\n\r\nപരമേക്കാവ്, തിരുവമ്പാടി എന്നീ രണ്ട് പ്രധാന ക്ഷേത്രസംഘങ്ങൾ ഘോഷയാത്രയിൽ പങ്കെടുക്കുന്നു, ആനകൾ, ഡ്രംസ്, പാരസോളുകൾ എന്നിവയുടെ മികച്ച പ്രദർശനം അവതരിപ്പിക്കാൻ മത്സരിക്കുന്നു.  തൃശ്ശൂർ പൂരത്തിലെ ഏറ്റവും ആകർഷകമായ പാരമ്പര്യങ്ങളിലൊന്നാണ് \"കുടമറ്റം\", അവിടെ ഗ്രൂപ്പുകൾ കുടകൾ കൈമാറുന്നു, ഓരോന്നും സങ്കീർണ്ണവും ഊർജ്ജസ്വലവുമായ രൂപകൽപ്പനകളോടെ.\r\n\r\nഈ അവിശ്വസനീയമായ ഉത്സവത്തിന് സാക്ഷ്യം വഹിക്കാൻ ലോകമെമ്പാടും നിന്ന് ആളുകൾ വരുന്നു, ഇത് യഥാർത്ഥത്തിൽ ഒരു ആഗോള ആഘോഷമാക്കി മാറ്റുന്നു.  തൃശ്ശൂർ പൂരം പ്രദേശവാസികൾക്ക് ഒരു സുപ്രധാന പരിപാടി മാത്രമല്ല, ഊർജ്ജസ്വലമായ സംസ്കാരവും മഹത്തായ ആഘോഷങ്ങളും അനുഭവിക്കാൻ വരുന്ന നിരവധി രാജ്യങ്ങളിൽ നിന്നുള്ള വിനോദസഞ്ചാരികളെയും കാണികളെയും ഇത് ആകർഷിക്കുന്നു.  കേരളത്തിലെ ഏറ്റവും പ്രശസ്തമായ ഉത്സവങ്ങളിലൊന്നായ ഇതിൻ്റെ പ്രശസ്തി നിരവധി അന്താരാഷ്ട്ര സഞ്ചാരികളുടെ ബക്കറ്റ് ലിസ്റ്റിൽ അതിൻ്റെ സ്ഥാനം ഉറപ്പാക്കുന്നു.\r\n\r\nരാത്രി ആകാശത്തെ പ്രകാശിപ്പിക്കുകയും പരിപാടിയുടെ മഹത്വം വർദ്ധിപ്പിക്കുകയും ചെയ്യുന്ന അതിശയകരമായ വെടിക്കെട്ട് പ്രദർശനത്തോടെയാണ് ഉത്സവം അവസാനിക്കുന്നത്. ', 'തൃശൂർ പൂരം'),
(78, 'Doolie', 'The word \"doolie\" has been in use since the early 1600s, originating from the Hindi word ḍōlī, which is derived from the Sanskrit word *dolikā*, meaning \"swinging.\" The term has multiple meanings depending on the context. It can refer to a simple litter used for transporting sick or wounded individuals, or it can be a sarcastic term used for new cadets at the US Air Force Academy. \r\n\r\nDoolies were commonly used before the widespread availability of modern transportation and were essential in rural areas where road access was limited. In Kerala, the practice of using doolies still exists in some rural areas, though it is now largely symbolic or ceremonial, primarily used during cultural or religious events, such as temple festivals, rather than for everyday transportation.', '2025-01-13', 'active', '272,273,274', 38, 'qr_codes\\exhibit_78.png', '\"ഊന്നൽ\" എന്നർത്ഥം വരുന്ന സംസ്കൃത പദമായ ഡോളികയിൽ നിന്ന് ഉരുത്തിരിഞ്ഞ ഹിന്ദി പദമായ ഡോളിയിൽ നിന്ന് ഉത്ഭവിച്ച \"ഡൂളി\" എന്ന വാക്ക് 1600 കളുടെ തുടക്കം മുതൽ ഉപയോഗത്തിലുണ്ട്.  സന്ദർഭത്തെ ആശ്രയിച്ച് ഈ പദത്തിന് ഒന്നിലധികം അർത്ഥങ്ങളുണ്ട്.  രോഗബാധിതരോ പരിക്കേറ്റവരോ ആയ വ്യക്തികളെ കൊണ്ടുപോകാൻ ഉപയോഗിക്കുന്ന ലളിതമായ ചവറ്റുകുട്ടയെ ഇത് സൂചിപ്പിക്കാം, അല്ലെങ്കിൽ യുഎസ് എയർഫോഴ്സ് അക്കാദമിയിലെ പുതിയ കേഡറ്റുകൾക്കായി ഉപയോഗിക്കുന്ന പരിഹാസ്യമായ പദമായിരിക്കാം ഇത്.  \r\n\r\n ആധുനിക ഗതാഗതത്തിന്റെ വ്യാപകമായ ലഭ്യതയ്ക്ക് മുമ്പ് സാധാരണയായി ഉപയോഗിച്ചിരുന്ന ഉപകരണങ്ങൾ റോഡ് പ്രവേശനം പരിമിതമായിരുന്ന ഗ്രാമപ്രദേശങ്ങളിൽ അത്യാവശ്യമായിരുന്നു.  കേരളത്തിൽ, ഡൂളികൾ ഉപയോഗിക്കുന്ന രീതി ഇപ്പോഴും ചില ഗ്രാമപ്രദേശങ്ങളിൽ നിലവിലുണ്ട്, എന്നിരുന്നാലും ഇത് ഇപ്പോൾ പ്രധാനമായും പ്രതീകാത്മകമോ ആചാരപരമോ ആണ്, പ്രാഥമികമായി ദൈനംദിന ഗതാഗതത്തിനുപകരം ക്ഷേത്ര ഉത്സവങ്ങൾ പോലുള്ള സാംസ്കാരികമോ മതപരമോ ആയ പരിപാടികളിലാണ് ഇത് ഉപയോഗിക്കുന്നത്.', 'മേനാവ് '),
(79, 'The Darbar dress was worn by the Maharajas of Cochin.', 'The Darbar dress worn by the Maharajas of Cochin symbolized royalty, dignity, and cultural heritage. Typically crafted with luxurious fabrics and intricate embellishments, this regal attire reflected the grandeur of the Cochin royal court during ceremonial occasions and important gatherings.\r\n\r\n The elaborate design often featured rich embroidery, gold accents, and elegant patterns highlighting the region’s craftsmanship. This dress not only represented the authority and status of the Maharajas but also served as a testament to the artistry and tradition of Kerala\'s royal history.', '2025-01-20', 'active', '275', 38, 'qr_codes\\exhibit_79.png', 'കൊച്ചിയിലെ മഹാരാജാക്കന്മാർ ധരിച്ചിരുന്ന ദർബാർ വസ്ത്രം രാജകീയതയുടെയും അന്തസ്സിൻറെയും സാംസ്കാരിക പൈതൃകത്തിൻറെയും പ്രതീകമായിരുന്നു.  ആഡംബര തുണിത്തരങ്ങളും സങ്കീർണ്ണമായ അലങ്കാരങ്ങളും ഉപയോഗിച്ച് സാധാരണയായി നിർമ്മിച്ച ഈ രാജകീയ വസ്ത്രം ആചാരപരമായ അവസരങ്ങളിലും പ്രധാന ഒത്തുചേരലുകളിലും കൊച്ചി രാജസഭയുടെ മഹത്വത്തെ പ്രതിഫലിപ്പിക്കുന്നു. \r\n\r\n വിപുലമായ രൂപകൽപ്പനയിൽ പലപ്പോഴും സമ്പന്നമായ എംബ്രോയിഡറി, സ്വർണ്ണ ആക്സന്റുകൾ, പ്രദേശത്തിന്റെ കരകൌശലവിദ്യ ഉയർത്തിക്കാട്ടുന്ന ഗംഭീരമായ പാറ്റേണുകൾ എന്നിവ ഉൾപ്പെടുത്തിയിരുന്നു.  ഈ വസ്ത്രം മഹാരാജാക്കന്മാരുടെ അധികാരത്തെയും പദവിയേയും പ്രതിനിധീകരിക്കുക മാത്രമല്ല, കേരളത്തിന്റെ രാജകീയ ചരിത്രത്തിലെ കലാസൃഷ്ടിയുടെയും പാരമ്പര്യത്തിന്റെയും സാക്ഷ്യമായി വർത്തിക്കുകയും ചെയ്തു.', 'കൊച്ചിയിലേയ് മഹാരാജാക്കന്മാർ ഉപയോഗിച്ചിരുന്ന ഡർബാർ ഉടുപ്പുകൾ '),
(80, 'Kerala Traditional Dress Figurine Set ', 'This collection of 18 pairs of figures offers a fascinating glimpse into the diverse cultural landscape of the state about 200 years ago. It captures the traditional attire and general appearance of various social classes and communities, showcasing their distinctive identities. The figures include representations of dancers adorned in vibrant costumes, the Nayadi and Kadar tribes reflecting their indigenous heritage, and the Namboodiris with their distinct Brahmin attire. Tamil non-Brahmins and Brahmins are depicted in their traditional garments, while the Nair community, known for its status, and the Ezhavas with their unique dress styles, are also featured.\r\n\r\nThe collection extends to portray Tirupathi pilgrims dressed for their sacred journeys, Banias known for their trading activities, and Syrian Christians with their distinct clothing influenced by centuries of tradition. The representation of Black Jews and White Jews highlights the presence of Jewish communities with their unique cultural markers. ', '2025-01-23', 'active', '276,277,278,279', 39, 'qr_codes\\exhibit_80.png', '18 ജോഡി പ്രതിമകളുടെ ഈ ശേഖരം ഏകദേശം 200 വർഷങ്ങൾക്ക് മുമ്പ് സംസ്ഥാനത്തെ വൈവിധ്യമാർന്ന സാംസ്കാരിക ഭൂപ്രകൃതിയെക്കുറിച്ചുള്ള ആകർഷകമായ ഒരു കാഴ്ച നൽകുന്നു. ഇത് വിവിധ സാമൂഹിക വിഭാഗങ്ങളുടെയും സമൂഹങ്ങളുടെയും പരമ്പരാഗത വസ്ത്രധാരണവും പൊതുവായ രൂപവും പിടിച്ചെടുക്കുകയും അവരുടെ വ്യതിരിക്തമായ സ്വത്വങ്ങൾ പ്രദർശിപ്പിക്കുകയും ചെയ്യുന്നു. ഊർജ്ജസ്വലമായ വേഷവിധാനങ്ങളിൽ അലങ്കരിച്ച നർത്തകർ, നായാടി , കാദാർ ഗോത്രങ്ങൾ അവരുടെ തദ്ദേശീയ പൈതൃകത്തെ പ്രതിഫലിപ്പിക്കുന്നവർ, നമ്പൂതിരികൾ അവരുടെ വ്യത്യസ്തമായ ബ്രാഹ്മണ വേഷവിധാനങ്ങൾ എന്നിവ ഈ പ്രതിമകളിൽ ഉൾപ്പെടുന്നു. \r\n\r\n\r\n\r\n\r\nതമിഴ് ബ്രാഹ്മണരല്ലാത്തവരെയും ബ്രാഹ്മണരെയും അവരുടെ പരമ്പരാഗത വസ്ത്രങ്ങളിൽ ചിത്രീകരിച്ചിരിക്കുന്നു, അതേസമയം പദവിക്ക് പേരുകേട്ട നായർ സമുദായവും അവരുടെ അതുല്യമായ വസ്ത്രശൈലികളുള്ള ഈഴവകളും അവതരിപ്പിക്കപ്പെടുന്നു.വിശുദ്ധ യാത്രകൾക്കായി വസ്ത്രം ധരിച്ച തിരുപ്പതി തീർത്ഥാടകർ, വ്യാപാര പ്രവർത്തനങ്ങൾക്ക് പേരുകേട്ട ബനിയകൾ, നൂറ്റാണ്ടുകളുടെ പാരമ്പര്യത്താൽ സ്വാധീനിക്കപ്പെട്ട വ്യത്യസ്തമായ വസ്ത്രങ്ങളുള്ള സിറിയൻ ക്രിസ്ത്യാനികൾ എന്നിവരെ ചിത്രീകരിക്കുന്നതാണ് ഈ ശേഖരം. കറുത്ത ജൂതന്മാരുടെയും വെളുത്ത ജൂതന്മാരുടെയും പ്രാതിനിധ്യം അവരുടെ അതുല്യമായ സാംസ്കാരിക അടയാളങ്ങളുള്ള ജൂത സമൂഹങ്ങളുടെ സാന്നിധ്യം എടുത്തുകാണിക്കുന്നു.', 'കേരളത്തിലെ പരമ്പരാഗത വസ്ത്രധാരണം'),
(93, 'Stuffed Otter', 'The otters (neernaaya) are playful, carnivorous mammals of the subfamily Lutrinae, belonging to the family Mustelidae. These animals typically experience minimal interference from humans. They are skilled swimmers, able to move easily in water, although they are also capable of traveling on land. Otters (neernaaya) tend to prefer fast-flowing water and possess a highly developed sense of smell.\r\n\r\nThere are 13 living species, ranging in size from 0.6 to 1.8 meters in length and weighing between 1 and 45 kg. Otters (neernaaya) have long bodies, webbed feet, dense fur, and strong tails, all of which help them thrive in aquatic environments. They live in dens called holts and can have a lifespan of up to 16 years. Although they have been hunted for their fur, interactions with humans are generally rare and peaceful.\r\n\r\nOtters (neernaaya) inhabit areas near water, such as riverbanks and mangrove swamps, and can also be found in rivers, lakes, ponds, and coastal regions. As their name suggests, some species even live in seawater. Their primary diet consists of fish, frogs, invertebrates, and crabs.', '2025-02-03', 'active', '306,307', 36, 'qr_codes\\exhibit_93.png', 'മസ്റ്റെലിഡേ കുടുംബത്തിലെ ലൂട്രിനീ എന്ന ഉപകുടുംബത്തിലെ മാംസഭോജികളും കളികളുമായ സസ്തനികളാണ് നീർനായ. നീർനായകൾ  സാധാരണയായി മനുഷ്യരുമായി വളരെ കുറച്ച് മാത്രമേ ആശയവിനിമയം നടത്താറുള്ളൂ. കരയിൽ നീങ്ങാൻ കഴിവുള്ളവരാണെങ്കിലും വെള്ളത്തിൽ എളുപ്പത്തിൽ നീങ്ങാൻ കഴിയുന്ന വിദഗ്ധരായ നീന്തൽക്കാരാണ് അവർ. നീർനായകൾ വേഗത്തിൽ ഒഴുകുന്ന വെള്ളമാണ് ഇഷ്ടപ്പെടുന്നത്, അവയ്ക്ക് വളരെ വികസിതമായ ഗന്ധമുണ്ട്.\r\n\r\n0.6 മുതൽ 1.8 മീറ്റർ വരെ നീളവും 1 മുതൽ 45 കിലോഗ്രാം വരെ ഭാരവുമുള്ള 13 ഇനങ്ങളുണ്ട്. നീർനായകൾക്ക്  നീളമുള്ള ശരീരങ്ങൾ, വെബ്ഡ് കാലുകൾ, ഇടതൂർന്ന രോമങ്ങൾ, ശക്തമായ വാലുകൾ എന്നിവയുണ്ട്, ഇവയെല്ലാം ജല പരിതസ്ഥിതിയിൽ അഭിവൃദ്ധി പ്രാപിക്കാൻ സഹായിക്കുന്നു. ജലാശയത്തിനടുത്തുള്ള പൊന്തകളോ കണ്ടൽക്കാടുകളോ ആണ്‌ നീർനായകളുടെ പാർപ്പിടം.ഇവയുടെ ആയുസ്സ് 16 വർഷം വരെയാണ്. രോമങ്ങൾക്കായി വേട്ടയാടപ്പെടുന്നുണ്ടെങ്കിലും മനുഷ്യരുമായുള്ള ഇടപെടൽ പൊതുവെ അപൂർവവും സമാധാനപരവുമാണ്.\r\n\r\nനീർനായകൾ  നദീതീരങ്ങൾ, കണ്ടൽക്കാടുകൾ തുടങ്ങിയ വെള്ളത്തിനടുത്തുള്ള പ്രദേശങ്ങളിൽ വസിക്കുന്നു. കൂടാതെ നദികൾ, തടാകങ്ങൾ, കുളങ്ങൾ, തീരപ്രദേശങ്ങൾ എന്നിവിടങ്ങളിലും കാണപ്പെടുന്നു. അവരുടെ പേര് സൂചിപ്പിക്കുന്നത് പോലെ, ചില സ്പീഷീസുകൾ കടൽജലത്തിൽ പോലും ജീവിക്കുന്നു. അവരുടെ പ്രാഥമിക ഭക്ഷണത്തിൽ മത്സ്യം, തവളകൾ, അകശേരുക്കൾ, ഞണ്ടുകൾ എന്നിവ ഉൾപ്പെടുന്നു. ', 'നീർനായ'),
(82, 'Mizhavu', 'The mizhavu is a large, pot-shaped percussion instrument central to Kerala\'s traditional performing arts, particularly in the classical dance theater of Kutiyattam and Koothu performances. It produces deep, resonant rhythmic notes, with the tone becoming richer as the skin covering the instrument dries. The drum is played only with hands. Traditionally made of clay, the mizhavu is now often crafted from copper, with a tightly fitted wet calf hide covering its mouth, contributing to its distinctive sound. Primarily used in Kerala\'s temple arts, it is also suitable for solo performances.\r\n\r\n The instrument is predominantly played by the Ambalavasi Nambiar community, who have passed down the skill of playing the mizhavu in cultural and ritualistic contexts. The mizhavu is treated as sacred and considered a \"Brahmachaarya.\" After 1965, when the mizhavu repertory was introduced at Kalamandalam, it broke caste barriers, allowing anyone to play the instrument in performances like Koodiyattam, Nangiar Koothu, Chakyar Koothu, and Mizhavu Thayambaka. However, the mizhavu is still played exclusively by the Ambalavasi Nambiar community inside temples or Koothambalams for holy, ritualistic temple performances.', '2025-01-26', 'active', '281,282', 33, 'qr_codes\\exhibit_82.png', 'കേരളത്തിലെ പരമ്പരാഗത കലാപരിപാടികളിൽ, പ്രത്യേകിച്ച് കുട്ടിയാട്ടം, കൂത്ത് എന്നിവയുടെ ക്ലാസിക്കൽ ഡാൻസ് തിയേറ്ററുകളിൽ കേന്ദ്രമായ ഒരു വലിയ, കലം ആകൃതിയിലുള്ള താളവാദ്യമാണ് മിഴവ്.  ഇത് ആഴത്തിലുള്ളതും പ്രതിധ്വനിക്കുന്നതുമായ താളാത്മക സ്വരങ്ങൾ സൃഷ്ടിക്കുന്നു, ഉപകരണത്തെ മൂടുന്ന ചർമ്മം ഉണങ്ങുമ്പോൾ സ്വരം കൂടുതൽ സമ്പന്നമാകുന്നു.  കൈകൊണ്ട് മാത്രമാണ് ഡ്രം വായിക്കുന്നത്.  പരമ്പരാഗതമായി കളിമണ്ണ് ഉപയോഗിച്ചാണ് മിസാവു നിർമ്മിച്ചിരിക്കുന്നത്, ഇപ്പോൾ പലപ്പോഴും ചെമ്പിൽ നിന്നാണ് നിർമ്മിച്ചിരിക്കുന്നത്, വായ മൂടുന്ന ദൃഡമായി ഘടിപ്പിച്ചിരിക്കുന്ന നനഞ്ഞ കാളക്കുട്ടിയുടെ തൊപ്പി അതിന്റെ വ്യതിരിക്തമായ ശബ്ദത്തിന് കാരണമാകുന്നു.  കേരളത്തിലെ ക്ഷേത്ര കലകളിൽ പ്രധാനമായും ഉപയോഗിക്കുന്ന ഇത് ഏകാംഗ പ്രകടനങ്ങൾക്കും അനുയോജ്യമാണ്.\r\n\r\nസാംസ്കാരികവും ആചാരപരവുമായ സന്ദർഭങ്ങളിൽ മിഴാവു വായിക്കാനുള്ള കഴിവ് കൈവരിച്ച അമ്പലവാസി നമ്പ്യാർ സമുദായമാണ് ഈ ഉപകരണം പ്രധാനമായും വായിക്കുന്നത്.  മിഴാവു വിശുദ്ധമായി കണക്കാക്കപ്പെടുകയും \"ബ്രഹ്മചാര്യ\" ആയി കണക്കാക്കപ്പെടുകയും ചെയ്യുന്നു.  1965 ന് ശേഷം കലാമണ്ഡലത്തിൽ മിസാവു റെപ്പർട്ടറി അവതരിപ്പിച്ചപ്പോൾ അത് ജാതി തടസ്സങ്ങൾ മറികടന്ന് കൂടിയാട്ടം, നംഗിയാർ കൂത്ത്, ചാക്യാർ കൂത്ത്, മിസാവു തായമ്പക തുടങ്ങിയ പ്രകടനങ്ങളിൽ ആർക്കും ഈ ഉപകരണം വായിക്കാൻ അനുവദിച്ചു.  എന്നിരുന്നാലും, വിശുദ്ധവും ആചാരപരവുമായ ക്ഷേത്ര പ്രകടനങ്ങൾക്കായി അമ്പലവാസി നമ്പ്യാർ സമൂഹം ഇപ്പോഴും ക്ഷേത്രങ്ങൾക്കുള്ളിലോ കൂത്തമ്പാലങ്ങളിലോ മാത്രമായി മിഴാവു വായിക്കുന്നു.', 'മിഴാവ്'),
(83, 'Synthetic Diamond', 'Synthetic diamonds, also called lab-grown diamonds, are made through artificial processes instead of naturally forming in the Earth. They have the same properties as natural diamonds but are created in a controlled environment using advanced technology.The process of making synthetic diamonds involves several stages:\r\n\r\n1. Uncut (Initial Stage): In this phase, raw material, usually carbon in the form of graphite, is prepared. The carbon is then placed under high pressure and temperature or exposed to a chemical vapor deposition (CVD) process.\r\n\r\n2. First Stage (Growth Stage): In this stage, carbon atoms bond together to form diamond crystals. The High Pressure High Temperature (HPHT) method, mimics the natural conditions deep in the Earth\'s mantle. In the CVD method, carbon vapor is deposited onto a surface, forming diamond layers.\r\n\r\n3. Second Stage (Refinement and Shaping): The diamond grows further as more layers of carbon are added. The diamond’s size and shape are carefully controlled to ensure it remains stable.\r\n\r\n4. Final Stage (Cutting and Polishing): In the last stage, the diamond is cut and polished to enhance its brilliance. The synthetic diamond looks like a natural diamond and can be used for jewelry or industrial purposes. The cutting and polishing methods are similar to those used for natural diamonds.\r\n\r\nSynthetic diamonds are a more sustainable, ethical, and cost-effective alternative to natural diamonds.', '2025-01-25', 'active', '283', 43, 'qr_codes\\exhibit_83.png', 'ലാബിൽ വളരുന്ന വജ്രങ്ങൾ എന്നും വിളിക്കുന്ന സിന്തറ്റിക് വജ്രങ്ങൾ ഭൂമിയിൽ സ്വാഭാവികമായി രൂപപ്പെടുന്നതിനുപകരം കൃത്രിമ പ്രക്രിയകളിലൂടെയാണ് നിർമ്മിക്കുന്നത്. അവയ്ക്ക് പ്രകൃതിദത്ത വജ്രങ്ങളുടെ അതേ ഗുണങ്ങളുണ്ടെങ്കിലും നൂതന സാങ്കേതികവിദ്യ ഉപയോഗിച്ച് നിയന്ത്രിത അന്തരീക്ഷത്തിലാണ് അവ സൃഷ്ടിക്കപ്പെടുന്നത്.സിന്തറ്റിക് വജ്രങ്ങൾ നിർമ്മിക്കുന്ന പ്രക്രിയയിൽ നിരവധി ഘട്ടങ്ങൾ ഉൾപ്പെടുന്നുഃ\r\n\r\n1. അൺകട്ട് (പ്രാരംഭ ഘട്ടം) ഈ ഘട്ടത്തിൽ, അസംസ്കൃത വസ്തുക്കൾ, സാധാരണയായി കാർബൺ ഗ്രാഫൈറ്റിന്റെ രൂപത്തിൽ തയ്യാറാക്കുന്നു. കാർബൺ പിന്നീട് ഉയർന്ന മർദ്ദത്തിലും താപനിലയിലും സ്ഥാപിക്കുകയോ അല്ലെങ്കിൽ ഒരു രാസ നീരാവി നിക്ഷേപം (സിവിഡി) പ്രക്രിയയ്ക്ക് വിധേയമാക്കുകയോ ചെയ്യുന്നു.\r\n\r\n2. ആദ്യ ഘട്ടം (വളർച്ചാ ഘട്ടം) ഈ ഘട്ടത്തിൽ, കാർബൺ ആറ്റങ്ങൾ പരസ്പരം ബന്ധിച്ച് ഡയമണ്ട് ക്രിസ്റ്റലുകൾ ഉണ്ടാക്കുന്നു. ഹൈ പ്രഷർ ഹൈ ടെമ്പറേച്ചർ (HPHT) രീതി, ഭൂമിയുടെ അടിത്തറയിൽ ഉള്ള പ്രകൃതി വ്യാവസ്ഥകളെ അനുകരിച്ച് ഡയമണ്ട് സൃഷ്ടിക്കുന്നു. സി. വി. ഡി രീതിയിൽ, കാർബൺ നീരാവി ഒരു ഉപരിതലത്തിൽ നിക്ഷേപിക്കുകയും വജ്ര പാളികൾ രൂപപ്പെടുകയും ചെയ്യുന്നു.\r\n\r\n3. രണ്ടാം ഘട്ടം (ശുദ്ധീകരണവും രൂപീകരണവും) കൂടുതല്‍ കർബൺ തൊട്ടുകൾ ചേർക്കുമ്പോൾ, ഡയമണ്ട് കൂടുതൽ വളരുന്നു. അതിന്റെ വലിപ്പവും ആകൃതിയും സൂക്ഷ്മമായി നിയന്ത്രിച്ച് സ്ഥിതിവിവരശാസ്ത്രം ഉറപ്പാക്കുന്നു.\r\n\r\n4. അവസാന ഘട്ടം (കട്ട് ചെയ്യുകയും പൊളിഷ് ചെയ്യുകയും): അവസാന ഘട്ടത്തിൽ, ഡയമണ്ട് വെട്ടി പൊളിഷ് ചെയ്യുകയും അതിന്റെ തെളിച്ചം വർദ്ധിപ്പിക്കുകയും ചെയ്യുന്നു. സിന്തറ്റിക് ഡയമണ്ട് സ്വാഭാവിക ഡയമണ്ടുകളെപ്പോലെ തന്നെ കാണപ്പെടുകയും ആഭരണങ്ങളിലോ വ്യാവസായിക ആവശ്യങ്ങൾക്കോ ഉപയോഗിക്കപ്പെടുന്നു. കട്ട് ചെയ്യൽ, പൊളിഷ് ചെയ്യൽ തുടങ്ങിയ പ്രക്രിയകൾ സ്വാഭാവിക ഡയമണ്ടുകൾക്ക് ഉപയോഗിക്കുന്നതുപോലെയാണ്.\r\n\r\nസിന്തറ്റിക് ഡയമണ്ടുകൾ പ്രകൃതിദത്ത ഡയമണ്ടുകളുടെേക്കാൾ കൂടുതൽ സുസ്ഥിരമായ, നയപരമായ, മിതമായ ചെലവുള്ള ഒരു പരിഗണനയാണ്.', 'സിന്തറ്റിക് ഡയമണ്ട്'),
(84, 'Crocodile', 'This crocodile has undergone the process of taxidermy, where the animal\'s skin is preserved, and its internal organs are removed. The crocodile’s body is then carefully filled with materials such as sawdust, cotton, or foam to maintain its shape and prevent decomposition. The skin is treated to preserve its natural texture and color, and the crocodile is often posed to showcase its distinctive features, such as its powerful jaws and muscular body.\r\n\r\nThey offer a chance to observe the animal\'s details up close, providing insight into its physical characteristics and serving as a reminder of the wildlife found in various regions.', '2025-01-28', 'active', '284,285,286,287', 36, 'qr_codes\\exhibit_84.png', 'ഈ മുതല ടാക്സിഡെർമി പ്രക്രിയയ്ക്ക് വിധേയമായി, അവിടെ മൃഗത്തിന്റെ ചർമ്മം സംരക്ഷിക്കപ്പെടുകയും അതിന്റെ ആന്തരിക അവയവങ്ങൾ നീക്കം ചെയ്യുകയും ചെയ്യുന്നു.  മുതലയുടെ ശരീരം അതിന്റെ ആകൃതി നിലനിർത്തുന്നതിനും അഴുകുന്നത് തടയുന്നതിനുമായി മരത്തടി, പരുത്തി അല്ലെങ്കിൽ നുര തുടങ്ങിയ വസ്തുക്കൾ ഉപയോഗിച്ച് ശ്രദ്ധാപൂർവ്വം നിറയ്ക്കുന്നു.  ചർമ്മത്തെ അതിന്റെ സ്വാഭാവിക ഘടനയും നിറവും നിലനിർത്താനാണ് ചികിത്സിക്കുന്നത്, കൂടാതെ മുതലയെ അതിന്റെ ശക്തമായ താടിയെല്ലുകളും മസ്കുലർ ബോഡിയും പോലുള്ള സവിശേഷതകൾ പ്രദർശിപ്പിക്കാൻ പലപ്പോഴും പോസ് ചെയ്യുന്നു.\r\n\r\nമൃഗങ്ങളുടെ വിശദാംശങ്ങൾ സൂക്ഷ്മമായി നിരീക്ഷിക്കാനും അതിന്റെ ഭൌതിക സവിശേഷതകളെക്കുറിച്ച് ഉൾക്കാഴ്ച നൽകാനും വിവിധ പ്രദേശങ്ങളിൽ കാണപ്പെടുന്ന വന്യജീവികളെ ഓർമ്മപ്പെടുത്താനും അവ അവസരം നൽകുന്നു.', ''),
(85, 'An Ornamental Wooden Plant Box', '  ', '2025-01-28', 'active', '288,289', 30, 'qr_codes\\exhibit_85.png', '  ', 'മരം കൊണ്ടുള്ള അലങ്കാരച്ചെടിയും പെട്ടിയും ');
INSERT INTO `qrapp_exhibit` (`id`, `name`, `description`, `date`, `status`, `image_ids`, `category_id`, `qr_code_image`, `description_ml`, `name_ml`) VALUES
(86, 'Ananthan\'s Head - Thripunithura Temple', 'This exquisite piece of antique Indian silverwork is believed to have been created in the 13th century A.D. It accompanies a life-sized bronze image of Vishnu, cast to replace the granite idol that was desecrated by an army of *Vadukas* in 1251 A.D.\r\n\r\nSpecimens of antique silverwork in India are rare. Records maintained in the temples, along with evidence of repeated repairs and patchwork on the piece itself, indicate that it has been renovated multiple times. Due to age and wear, the silver plates forming the hood eventually became too thin and brittle to support the heavy cast snake head. Consequently, a new head was installed in the temple in 1120 M.E./1245 A.D. after a series of proprietary ceremonies.\r\n\r\nPresented by: Sir George K.C.I.E., C.S.I. (Diwan of Cochin 1943-1947)  \r\nRenovated by: Mr. Balakrishnan Nair, M.A., Assistant Professor of Zoology, Maharaja\'s College, Ernakulam.', '2025-01-28', 'active', '290,291', 39, 'qr_codes\\exhibit_86.png', 'ഈ അതിമനോഹരമായ പുരാതന ഇന്ത്യൻ വെള്ളിപ്പണി പതിമൂന്നാം നൂറ്റാണ്ടിൽ A.D. യിൽ സൃഷ്ടിക്കപ്പെട്ടതാണെന്ന് വിശ്വസിക്കപ്പെടുന്നു. 1251 A.D യിൽ വടുകന്മാരുടെ സൈന്യം അശുദ്ധമാക്കിയ ഗ്രാനൈറ്റ് വിഗ്രഹത്തിന് പകരമായി നിർമ്മിച്ച വിഷ്ണുവിന്റെ ജീവനുള്ള വെങ്കല പ്രതിമയ്ക്കൊപ്പം ഇത് വരുന്നു.\r\n\r\nഇന്ത്യയിൽ പുരാതന വെള്ളിപ്പണികളുടെ മാതൃകകൾ അപൂർവമാണ്. ക്ഷേത്രങ്ങളിൽ സൂക്ഷിച്ചിരിക്കുന്ന രേഖകളും ആവർത്തിച്ചുള്ള അറ്റകുറ്റപ്പണികളുടെയും പാച്ച് വർക്കിന്റെയും തെളിവുകളും ഇത് ഒന്നിലധികം തവണ നവീകരിച്ചിട്ടുണ്ടെന്ന് സൂചിപ്പിക്കുന്നു. പ്രായവും ക്ഷീണവും കാരണം, ഹുഡ് രൂപീകരിക്കുന്ന വെള്ളി ഫലകങ്ങൾ ഒടുവിൽ വളരെ നേർത്തതും കനത്ത കാസ്റ്റ് പാമ്പിന്റെ തലയെ പിന്തുണയ്ക്കാൻ കഴിയാത്തവിധം പൊട്ടുന്നതുമായി മാറി. തത്ഫലമായി, ഉടമസ്ഥാവകാശ ചടങ്ങുകളുടെ ഒരു പരമ്പരയ്ക്ക് ശേഷം 1120 M.E./1245 A.D. യിൽ ക്ഷേത്രത്തിൽ ഒരു പുതിയ തല സ്ഥാപിച്ചു.\r\n\r\nഅവതരിപ്പിച്ചത്ഃ സർ ജോർജ്ജ് K.C.I.E., C.S.I. (കൊച്ചി ദിവാൻ, 1943-1947) നവീകരിച്ചത്ഃ ശ്രീ ബാലകൃഷ്ണൻ നായർ, M.A., അസിസ്റ്റന്റ് പ്രൊഫസർ ഓഫ് സുവോളജി, മഹാരാജാസ് കോളേജ്, എറണാകുളം.', 'തൃപ്പൂണിത്തുറ ക്ഷേത്രത്തിലെ  പഴയ അനന്ത വിഗ്രഹം '),
(87, 'The Port Light used in Njarakkal Port', 'A portlight is a lighting fixture used in ports and harbors to provide visibility for safe navigation, security, and port operations. They are usually installed along docks, piers, or the port’s edges and are built to handle harsh marine conditions like salt water, wind, and humidity.\r\n\r\nAt Njarakkal Port, portlights help light up the port area at night, ensuring safe movement for ships, fishing boats, and port workers. They guide vessels in and out of the harbor and improve security. These durable, weather-resistant lights are essential for safe navigation, especially during foggy or low-visibility situations.', '2025-01-29', 'active', '292,293', 39, 'qr_codes\\exhibit_87.png', 'സുരക്ഷിതമായ നാവിഗേഷൻ, സുരക്ഷ, തുറമുഖ പ്രവർത്തനങ്ങൾ എന്നിവയ്ക്ക് ദൃശ്യപരത നൽകുന്നതിന് തുറമുഖങ്ങളിലും തുറമുഖങ്ങളിലും ഉപയോഗിക്കുന്ന ഒരു ലൈറ്റിംഗ് ഫിക്ചറാണ് പോർട്ട്ലൈറ്റ്. അവ സാധാരണയായി തുറമുഖങ്ങൾ, തുറമുഖങ്ങൾ അല്ലെങ്കിൽ തുറമുഖത്തിന്റെ അരികുകളിൽ സ്ഥാപിക്കുകയും ഉപ്പുവെള്ളം, കാറ്റ്, ഈർപ്പം തുടങ്ങിയ കഠിനമായ സമുദ്ര സാഹചര്യങ്ങൾ കൈകാര്യം ചെയ്യുന്നതിനായി നിർമ്മിക്കുകയും ചെയ്യുന്നു.\r\n\r\nകപ്പലുകൾക്കും മത്സ്യബന്ധന ബോട്ടുകൾക്കും തുറമുഖ തൊഴിലാളികൾക്കും സുരക്ഷിതമായ സഞ്ചാരം ഉറപ്പാക്കിക്കൊണ്ട് രാത്രിയിൽ തുറമുഖ പ്രദേശം പ്രകാശിപ്പിക്കാൻ ഞാറക്കൽ തുറമുഖത്ത് പോർട്ട്ലൈറ്റുകൾ സഹായിക്കുന്നു. അവർ കപ്പലുകളെ തുറമുഖത്തേക്കും പുറത്തേക്കും നയിക്കുകയും സുരക്ഷ മെച്ചപ്പെടുത്തുകയും ചെയ്യുന്നു. ഈ മോടിയുള്ളതും കാലാവസ്ഥയെ പ്രതിരോധിക്കുന്നതുമായ ലൈറ്റുകൾ സുരക്ഷിതമായ നാവിഗേഷന് അത്യാവശ്യമാണ്, പ്രത്യേകിച്ച് മൂടൽമഞ്ഞുള്ളതോ ദൃശ്യപരത കുറഞ്ഞതോ ആയ സാഹചര്യങ്ങളിൽ.', 'ഞാറക്കൽ തുറമുഖത് ഉപയോഗിച്ചിരുന്ന വിളക്ക് '),
(88, 'Whale', 'Whales are large, fully aquatic mammals found in oceans around the world. Whales typically have between 200 to 300 bones, depending on the species. Unlike land mammals, they lack hind limbs, and their pelvic bones are either fused or vestigial. The large, elongated skull of a whale is specially adapted for life in water, enhancing both hydrodynamics and sound reception. In toothed whales, specialized jawbones assist in detecting underwater sounds. Flexible joints connect the lower jaw to the skull, allowing wide mouth openings for feeding. The skull houses the brain and supports the blow hole, which is essential for breathing while swimming.\r\n\r\nThe vertebrae form a massive, flexible backbone that supports efficient swimming. Depending on the species, whales have between 40 to 90 vertebrae divided into five regions:\r\n1. Cervical: Neck vertebrae (usually fused)\r\n2. Thoracic: Connected to the rib cage\r\n3 .Lumbar: Located in the lower back\r\n4. Sacral: Often reduced or absent\r\n5 .Caudal: Tail vertebrae responsible for propulsion during swimming\r\nThe caudal vertebrae play a crucial role in enabling powerful tail movements.\r\n\r\nSkeleton Features:\r\n1. Skull: Protects the brain and supports the blowhole, aiding in streamlined swimming\r\n2. Jawbones: Massive lower jaws, especially in baleen whales, facilitate filter feeding\r\n3. Ribs: Flexible ribs accommodate lung compression during deep dives\r\n4. Flippers: Contain bones similar to the human arm, such as the humerus, radius, and ulna\r\n5. Tail (Fluke) Bones: Strong vertebrae essential for swimming propulsion.', '2025-02-03', 'active', '294,295,296', 36, 'qr_codes\\exhibit_88.png', 'ലോകമെമ്പാടുമുള്ള സമുദ്രങ്ങളിൽ കാണപ്പെടുന്ന വലിയ, പൂർണ്ണമായും ജല സസ്തനികളാണ് തിമിംഗലങ്ങൾ.  ഇനങ്ങളെ ആശ്രയിച്ച് തിമിംഗലങ്ങൾക്ക് സാധാരണയായി 200 മുതൽ 300 വരെ അസ്ഥികളുണ്ട്.  കര സസ്തനികളിൽ നിന്ന് വ്യത്യസ്തമായി, അവയ്ക്ക് പിൻകാലുകൾ ഇല്ല, അവയുടെ പെൽവിക് അസ്ഥികൾ ഒന്നുകിൽ സംയോജിപ്പിച്ചതോ അവശിഷ്ടമോ ആണ്.  ഒരു തിമിംഗലത്തിന്റെ വലുതും നീളമേറിയതുമായ തലയോട്ടി ജലത്തിലെ ജീവന് പ്രത്യേകമായി അനുയോജ്യമാണ്, ഇത് ഹൈഡ്രോഡൈനാമിക്സും ശബ്ദ സ്വീകരണവും വർദ്ധിപ്പിക്കുന്നു.  പല്ലുള്ള തിമിംഗലങ്ങളിൽ, വെള്ളത്തിനടിയിലെ ശബ്ദങ്ങൾ കണ്ടെത്താൻ പ്രത്യേക താടിയെല്ലുകൾ സഹായിക്കുന്നു.  വഴക്കമുള്ള സന്ധികൾ താഴത്തെ താടിയെല്ലിനെ തലയോട്ടിയുമായി ബന്ധിപ്പിക്കുന്നു, ഇത് ഭക്ഷണം കഴിക്കാൻ വിശാലമായ വായ തുറക്കാൻ അനുവദിക്കുന്നു.  തലയോട്ടി തലച്ചോറിനെ ഉൾക്കൊള്ളുകയും നീന്തുമ്പോൾ ശ്വസിക്കാൻ അത്യാവശ്യമായ ബ്ലോ ഹോളിനെ പിന്തുണയ്ക്കുകയും ചെയ്യുന്നു.\r\n\r\nകശേരുക്കൾ കാര്യക്ഷമമായ നീന്തലിനെ പിന്തുണയ്ക്കുന്ന ഒരു വലിയ, വഴക്കമുള്ള നട്ടെല്ലായി മാറുന്നു.  ഇനങ്ങളെ ആശ്രയിച്ച്, തിമിംഗലങ്ങൾക്ക് 40 മുതൽ 90 വരെ കശേരുക്കൾ അഞ്ച് മേഖലകളായി തിരിച്ചിരിക്കുന്നുഃ\r\n1. സെർവിക്കൽഃ കഴുത്തിലെ കശേരുക്കൾ (സാധാരണയായി സംയോജിപ്പിച്ചിരിക്കുന്നു)\r\n2. തോറാസിക്ഃ വാരിയെല്ലുമായി ബന്ധിപ്പിച്ചിരിക്കുന്നു\r\n3. അരക്കെട്ട്ഃ താഴത്തെ പുറകിൽ സ്ഥിതിചെയ്യുന്നു\r\n4. സാക്രൽഃ പലപ്പോഴും കുറയുകയോ ഇല്ലാതിരിക്കുകയോ ചെയ്യുന്നു\r\n5. കാഡൽഃ നീന്തുന്ന സമയത്ത് പ്രൊപ്പൽഷന് കാരണമാകുന്ന വാൽ കശേരുക്കൾ\r\nശക്തമായ വാൽ ചലനങ്ങൾ പ്രാപ്തമാക്കുന്നതിൽ കാഡൽ കശേരുക്കൾ നിർണായക പങ്ക് വഹിക്കുന്നു.\r\n\r\nഅസ്ഥികൂടത്തിന്റെ സവിശേഷതകൾഃ\r\n1. തലയോട്ടിഃ തലച്ചോറിനെ സംരക്ഷിക്കുകയും ബ്ലോഹോളിനെ പിന്തുണയ്ക്കുകയും ചെയ്യുന്നു, ഇത് കാര്യക്ഷമമായ നീന്തലിന് സഹായിക്കുന്നു\r\n2. താടിയെല്ലുകൾഃ വലിയ താഴത്തെ താടിയെല്ലുകൾ, പ്രത്യേകിച്ച് ബാലിൻ തിമിംഗലങ്ങളിൽ, ഫിൽട്ടർ ഫീഡിംഗ് സുഗമമാക്കുന്നു\r\n3. വാരിയെല്ലുകൾഃ ആഴത്തിലുള്ള മുങ്ങൽ സമയത്ത് ശ്വാസകോശ സമ്മർദ്ദം ഉൾക്കൊള്ളാൻ വഴക്കമുള്ള വാരിയെല്ലുകൾ സഹായിക്കുന്നു\r\n4. ഫ്ലിപ്പറുകൾഃ മനുഷ്യന്റെ കൈക്ക് സമാനമായ അസ്ഥികൾ അടങ്ങിയിരിക്കുന്നു, അതായത് ഹ്യൂമറസ്, റേഡിയസ്, ഉൽന\r\n5. വാൽ (ഫ്ലൂക്ക്) അസ്ഥികൾഃ നീന്തൽ പ്രൊപ്പൽഷന് ശക്തമായ കശേരുക്കൾ അത്യാവശ്യമാണ്.', 'തിമിംഗിലം'),
(89, 'Skeleton of a Horse', 'A horse skeleton is a complex and fascinating structure that provides support, protection, and movement for the animal\'s body. It consists of around 205 bones, which vary slightly depending on the breed. The skeleton can be divided into major parts: the skull, spine, ribs, forelimbs, and hind limbs.\r\n\r\nKey Features of a Horse Skeleton:\r\n1. Skull: The skull houses and protects the brain, eyes, nasal passages, and teeth. Horses have large nasal cavities, which help in their strong sense of smell and efficient respiration.\r\n2. Spine: The spine, made up of vertebrae, extends from the neck (cervical vertebrae) through the back (thoracic vertebrae) and the lower back (lumbar vertebrae) to the tail (coccygeal vertebrae).\r\n3. Rib Cage: Horses have 18 pairs of ribs, which protect vital organs like the heart and lungs.\r\n4. Forelimbs and Hind Limbs:\r\nForelimbs: Comprise the shoulder blade (scapula), upper arm (humerus), and lower leg bones (radius and ulna).\r\n\r\nHind Limbs: Include the femur (thigh bone), tibia, fibula, and various smaller bones forming the hock and pastern joints.\r\n5. Hooves: Unlike human feet, the hooves function like a single large toenail that provides support and traction.\r\n6. Joints and Ligaments: The joints, such as the knee, fetlock, and hock, allow the horse to move with agility and strength. Ligaments connect bones and provide stability.\r\n\r\nThe horse\'s skeleton is built for speed and endurance, helping them run fast. Their lightweight bones and flexible spine make galloping easier.', '2025-02-03', 'active', '297', 36, 'qr_codes\\exhibit_89.png', 'മൃഗങ്ങളുടെ ശരീരത്തിന് പിന്തുണയും സംരക്ഷണവും ചലനവും നൽകുന്ന സങ്കീർണ്ണവും ആകർഷകവുമായ ഘടനയാണ് കുതിരയുടെ അസ്ഥികൂടം.  ഇതിൽ ഏകദേശം 205 അസ്ഥികൾ അടങ്ങിയിരിക്കുന്നു, അവ ഇനത്തെ ആശ്രയിച്ച് അല്പം വ്യത്യാസപ്പെടുന്നു.  അസ്ഥികൂടത്തെ പ്രധാന ഭാഗങ്ങളായി തിരിക്കാംഃ തലയോട്ടി, നട്ടെല്ല്, വാരിയെല്ലുകൾ, മുൻകാലുകൾ, പിൻകാലുകൾ.\r\n\r\nകുതിരയുടെ അസ്ഥികൂടത്തിന്റെ പ്രധാന സവിശേഷതകൾഃ\r\n1. തലയോട്ടിഃ തലയോട്ടി തലച്ചോറ്, കണ്ണുകൾ, നാസാരന്ധ്രങ്ങൾ, പല്ലുകൾ എന്നിവയെ സംരക്ഷിക്കുകയും സംരക്ഷിക്കുകയും ചെയ്യുന്നു.  കുതിരകൾക്ക് വലിയ നാസാരന്ധ്രങ്ങളുണ്ട്, ഇത് അവയുടെ ശക്തമായ ഗന്ധത്തിനും കാര്യക്ഷമമായ ശ്വസനത്തിനും സഹായിക്കുന്നു.\r\n2. നട്ടെല്ല്ഃ കശേരുക്കളാൽ നിർമ്മിതമായ നട്ടെല്ല് കഴുത്ത് (സെർവിക്കൽ കശേരുക്കൾ) മുതൽ പുറം (തോറാസിക് കശേരുക്കൾ) വരെയും താഴത്തെ പുറം (ലംബർ കശേരുക്കൾ) മുതൽ വാൽ (കോക്സിജിയൽ കശേരുക്കൾ) വരെയും വ്യാപിക്കുന്നു.\r\n3. വാരിയെല്ലുകൾഃ കുതിരകൾക്ക് 18 ജോഡി വാരിയെല്ലുകളുണ്ട്, ഇത് ഹൃദയം, ശ്വാസകോശം തുടങ്ങിയ സുപ്രധാന അവയവങ്ങളെ സംരക്ഷിക്കുന്നു.\r\n4. ഫോർലിമ്പുകളും ഹിന്ദ് ലിംബുകളുംഃ\r\nഫോർലിമ്പുകൾഃ ഷോൾഡർ ബ്ലേഡ് (സ്കാപുല) അപ്പർ ആം (ഹ്യൂമറസ്), ലോവർ ലെഗ് അസ്ഥികൾ (റേഡിയസും ഉൽനയും) എന്നിവ ഉൾക്കൊള്ളുക.\r\nഹിന്ദ് അവയവങ്ങൾഃ തുടയുടെ (തുടയുടെ അസ്ഥി) ടിബിയ, ഫൈബുല, ഹോക്ക്, പാസ്റ്റർ സന്ധികൾ രൂപപ്പെടുത്തുന്ന വിവിധ ചെറിയ അസ്ഥികൾ എന്നിവ ഉൾപ്പെടുത്തുക.\r\n5. കുളമ്പുകൾഃ മനുഷ്യ കാലുകളിൽ നിന്ന് വ്യത്യസ്തമായി, കുളമ്പുകൾ പിന്തുണയും ട്രാക്ഷനും നൽകുന്ന ഒരൊറ്റ വലിയ കാൽവിരൽ പോലെ പ്രവർത്തിക്കുന്നു.\r\n6. സന്ധികളും അസ്ഥിബന്ധങ്ങളുംഃ കാൽമുട്ട്, ഫെറ്റ്ലോക്ക്, ഹോക്ക് തുടങ്ങിയ സന്ധികൾ കുതിരയെ ചടുലതയോടും ശക്തിയോടും കൂടി നീങ്ങാൻ അനുവദിക്കുന്നു.  അസ്ഥിബന്ധങ്ങൾ അസ്ഥികളെ ബന്ധിപ്പിക്കുകയും സ്ഥിരത നൽകുകയും ചെയ്യുന്നു.\r\n\r\nകുതിരയുടെ അസ്ഥികൂടം വേഗതയ്ക്കും സഹിഷ്ണുതയ്ക്കും വേണ്ടിയാണ് നിർമ്മിച്ചിരിക്കുന്നത്, ഇത് അവരെ വേഗത്തിൽ ഓടാൻ സഹായിക്കുന്നു.  ഇവയുടെ ഭാരം കുറഞ്ഞ അസ്ഥികളും വഴക്കമുള്ള നട്ടെല്ലും വേഗത്തിൽ ചാടാൻ സഹായിക്കുന്നു.', 'കുതിരയുടെ അസ്ഥികൂടം'),
(90, 'A Human skeleton', 'The human skeleton is the framework of the body, providing support, protection, and movement. It consists of 206 bones in adults, connected by joints, cartilage, and ligaments.\r\n\r\nKey Features of the Human Skeleton:\r\n\r\n1. Skull: Protects the brain and supports the face. It includes the canium and facial bones.\r\n2. Spine (Vertebral Column): Made up of 33 vertebrae divided into cervical, thoracic, lumbar, sacral, and coccygeal regions. It supports the body and protects the spinal cord.\r\n3. Rib Cage: Composed of 12 pairs of ribs and the sternum, it shields the heart and lungs.\r\n4. Upper Limbs: Include the shoulder blade (scapula), collarbone (clavicle), humerus, radius, and ulna, along with bones of the hand.\r\n5. Lower Limbs: Include the thigh bone (femur), shin bones (tibia and fibula), and bones of the foot.\r\n6. Pelvis: Supports the weight of the upper body and connects the spine to the lower limbs.\r\n7 . Joints and Ligaments: Joints enable movement, while ligaments connect bones and provide stability.\r\n\r\nFunctions of the Skeleton:\r\n1. Support: Provides structure and shape to the body.\r\n2. Protection: Shields vital organs like the brain, heart, and lungs.\r\n3. Movement: Works with muscles to allow body movements.\r\n4. Blood Production: Bone marrow produces red and white blood cells.\r\n5 . Mineral Storage: Stores calcium and phosphorus essential for body functions.\r\n\r\nThe human skeleton plays a vital role in maintaining posture, enabling motion, and ensuring overall health and survival.\r\n\r\n', '2025-02-03', 'active', '298', 36, 'qr_codes\\exhibit_90.png', 'പിന്തുണ, സംരക്ഷണം, ചലനം എന്നിവ നൽകുന്ന ശരീരത്തിന്റെ ചട്ടക്കൂടാണ് മനുഷ്യ അസ്ഥികൂടം.  സന്ധികൾ, തരുണാസ്ഥി, അസ്ഥിബന്ധങ്ങൾ എന്നിവയാൽ ബന്ധിപ്പിച്ചിരിക്കുന്ന മുതിർന്നവരിലെ 206 അസ്ഥികൾ ഇതിൽ അടങ്ങിയിരിക്കുന്നു.\r\n\r\nമനുഷ്യ അസ്ഥികൂടത്തിന്റെ പ്രധാന സവിശേഷതകൾഃ\r\n1. തലയോട്ടിഃ തലച്ചോറിനെ സംരക്ഷിക്കുകയും മുഖത്തെ പിന്തുണയ്ക്കുകയും ചെയ്യുന്നു.  ഇതിൽ ക്രേനിയവും മുഖത്തിന്റെ അസ്ഥികളും ഉൾപ്പെടുന്നു.\r\n2. നട്ടെല്ല് (വെർട്ടെബ്രൽ കോളം) 33 കശേരുക്കളാൽ നിർമ്മിതമാണ്, അവ സെർവിക്കൽ, തോറാസിക്, ലംബർ, സാക്രൽ, കോക്സിജിയൽ മേഖലകളായി തിരിച്ചിരിക്കുന്നു.  ഇത് ശരീരത്തെ പിന്തുണയ്ക്കുകയും സുഷുമ്നാ നാഡിയെ സംരക്ഷിക്കുകയും ചെയ്യുന്നു.\r\n3. റിബ് കേജ്ഃ 12 ജോഡി വാരിയെല്ലുകളും സ്റ്റെർണവും ചേർന്ന ഇത് ഹൃദയത്തെയും ശ്വാസകോശത്തെയും സംരക്ഷിക്കുന്നു.\r\n4. മുകളിലെ കൈകാലുകൾഃ തോളിൽ ബ്ലേഡ് (സ്കാപുല) കോളർബോൺ (ക്ലാവിക്കിൾ) ഹ്യൂമറസ്, റേഡിയസ്, ഉൽന എന്നിവ കൈയുടെ അസ്ഥികൾക്കൊപ്പം ഉൾപ്പെടുത്തുക.\r\n5. താഴത്തെ കൈകാലുകൾഃ തുടയുടെ അസ്ഥി (ഫെമർ) ഷിൻ അസ്ഥികളും (ടിബിയ, ഫൈബുല) കാലിന്റെ അസ്ഥികളും ഉൾപ്പെടുത്തുക.\r\n6. പെൽവിസ്ഃ മുകളിലെ ശരീരത്തിന്റെ ഭാരം പിന്തുണയ്ക്കുകയും നട്ടെല്ലിനെ താഴത്തെ കൈകാലുകളുമായി ബന്ധിപ്പിക്കുകയും ചെയ്യുന്നു.\r\n7. സന്ധികളും അസ്ഥിബന്ധങ്ങളുംഃ സന്ധികൾ ചലനത്തെ പ്രാപ്തമാക്കുന്നു, അതേസമയം അസ്ഥിബന്ധങ്ങൾ അസ്ഥികളെ ബന്ധിപ്പിക്കുകയും സ്ഥിരത നൽകുകയും ചെയ്യുന്നു.\r\n\r\nഅസ്ഥികൂടത്തിൻറെ പ്രവർത്തനങ്ങൾഃ\r\n1. പിന്തുണഃ ശരീരത്തിന് ഘടനയും ആകൃതിയും നൽകുന്നു.\r\n2. സംരക്ഷണംഃ മസ്തിഷ്കം, ഹൃദയം, ശ്വാസകോശം തുടങ്ങിയ സുപ്രധാന അവയവങ്ങളെ സംരക്ഷിക്കുന്നു.\r\n3. ചലനംഃ ശരീരത്തിന്റെ ചലനങ്ങൾ അനുവദിക്കുന്നതിന് പേശികളുമായി പ്രവർത്തിക്കുന്നു.\r\n4. രക്ത ഉൽപാദനംഃ ചുവന്ന രക്താണുക്കളും വെളുത്ത രക്താണുക്കളും അസ്ഥിമജ്ജ ഉൽപാദിപ്പിക്കുന്നു.\r\n5. ധാതുക്കളുടെ സംഭരണംഃ ശരീരത്തിന്റെ പ്രവർത്തനങ്ങൾക്ക് ആവശ്യമായ കാൽസ്യം, ഫോസ്ഫറസ് എന്നിവ സംഭരിക്കുന്നു.\r\n\r\nഭാവം നിലനിർത്തുന്നതിലും ചലനം പ്രാപ്തമാക്കുന്നതിലും മൊത്തത്തിലുള്ള ആരോഗ്യവും അതിജീവനവും ഉറപ്പാക്കുന്നതിലും മനുഷ്യ അസ്ഥികൂടം ഒരു പ്രധാന പങ്ക് വഹിക്കുന്നു.', 'ഒരു മനുഷ്യ അസ്ഥികൂടം'),
(91, 'Lion and Pig Skeleton', 'Lion Skeleton:\r\n\r\nThe skeleton of a lion is designed for strength, agility, and power, helping it become a skilled predator. It consists of about 250 bones that provide support and protection.\r\n1. Skull: The lion\'s strong, broad skull holds powerful jaws with sharp teeth for tearing flesh.\r\n2. Spine: The flexible spine aids in swift movements and leaping during hunting.\r\n3. Rib Cage: Protects vital organs like the heart and lungs.\r\n4. Limbs: Lions have long, muscular legs with strong bones that support running and pouncing on prey.\r\n5. Paws and Claws: Large paws with retractable claws help lions grip and capture prey.\r\n\r\nThe lion\'s skeletal structure is built for power, allowing it to sprint short distances and deliver strong attacks.\r\n\r\nPig Skeleton:\r\nA pig’s skeleton is designed for stability and support, suited for digging, rooting, and general movement. It consists of about 223 bones.\r\n1. Skull: The pig\'s skull is elongated and strong, designed for rooting and digging in the ground.\r\n2. Spine: Made up of several vertebrae sections, including cervical, thoracic, and lumbar vertebrae, supporting the pig\'s large body.\r\n3. Rib Cage: Protects vital organs such as the heart and lungs.\r\n4. Limbs: Short, sturdy legs support the pig\'s heavy body and allow for movement and foraging.\r\n5. Hooves: The pig\'s feet have two main toes, forming hooves that help in walking on different surfaces.\r\n\r\nThe pig\'s skeleton supports its natural behaviors like rooting, walking, and maintaining balance despite its bulk.\r\n\r\n', '2025-02-03', 'active', '299,300', 36, 'qr_codes\\exhibit_91.png', 'സിംഹത്തിന്റെ അസ്ഥികൂടംഃ\r\nഒരു സിംഹത്തിന്റെ അസ്ഥികൂടം ശക്തി, ചടുലത, ശക്തി എന്നിവയ്ക്കായി രൂപകൽപ്പന ചെയ്തിട്ടുള്ളതാണ്, ഇത് ഒരു വിദഗ്ദ്ധനായ വേട്ടക്കാരനാകാൻ സഹായിക്കുന്നു.  പിന്തുണയും സംരക്ഷണവും നൽകുന്ന 250 ഓളം അസ്ഥികൾ ഇതിൽ അടങ്ങിയിരിക്കുന്നു.\r\n\r\n1. തലയോട്ടിഃ സിംഹത്തിന്റെ ശക്തവും വിശാലവുമായ തലയോട്ടി മാംസം കീറുന്നതിനായി മൂർച്ചയുള്ള പല്ലുകളുള്ള ശക്തമായ താടിയെല്ലുകൾ വഹിക്കുന്നു.\r\n2. നട്ടെല്ല്ഃ വേട്ടയാടുമ്പോൾ വേഗത്തിൽ നീങ്ങാനും ചാടാനും വഴക്കമുള്ള നട്ടെല്ല് സഹായിക്കുന്നു.\r\n3. റിബ് കേജ്ഃ ഹൃദയം, ശ്വാസകോശം തുടങ്ങിയ സുപ്രധാന അവയവങ്ങളെ സംരക്ഷിക്കുന്നു.\r\n4. കൈകാലുകൾഃ സിംഹങ്ങൾക്ക് നീളമുള്ളതും പേശികളുള്ളതുമായ കാലുകളുണ്ട്, അവയ്ക്ക് ശക്തമായ അസ്ഥികളുണ്ട്, അവ ഇരയെ ഓടിക്കുന്നതിനും കുതിക്കുന്നതിനും സഹായിക്കുന്നു.\r\n5. നഖങ്ങളും നഖങ്ങളുംഃ പിൻവലിക്കാവുന്ന നഖങ്ങളുള്ള വലിയ നഖങ്ങൾ സിംഹങ്ങളെ ഇരയെ പിടിക്കാൻ സഹായിക്കുന്നു.\r\nസിംഹത്തിൻറെ അസ്ഥികൂട ഘടന ശക്തിക്കായി നിർമ്മിച്ചതാണ്, ഇത് ഹ്രസ്വദൂരം കുതിക്കാനും ശക്തമായ ആക്രമണങ്ങൾ നടത്താനും അനുവദിക്കുന്നു.\r\n\r\nപന്നിയുടെ അസ്ഥികൂടംഃ\r\nഒരു പന്നിയുടെ അസ്ഥികൂടം കുഴിക്കുന്നതിനും വേരൂന്നുന്നതിനും പൊതുവായ ചലനത്തിനും അനുയോജ്യമായ സ്ഥിരതയ്ക്കും പിന്തുണയ്ക്കുമായി രൂപകൽപ്പന ചെയ്തിട്ടുള്ളതാണ്.  ഇതിൽ ഏകദേശം 223 അസ്ഥികളുണ്ട്.\r\n\r\n1. തലയോട്ടിഃ പന്നിയുടെ തലയോട്ടി നീളമേറിയതും ശക്തവുമാണ്, ഇത് നിലത്ത് വേരൂന്നുന്നതിനും കുഴിക്കുന്നതിനും രൂപകൽപ്പന ചെയ്തിട്ടുള്ളതാണ്.\r\n2. നട്ടെല്ല്ഃ പന്നിയുടെ വലിയ ശരീരത്തെ പിന്തുണയ്ക്കുന്ന സെർവിക്കൽ, തോറാസിക്, ലംബർ കശേരുക്കൾ എന്നിവയുൾപ്പെടെ നിരവധി കശേരുക്കൾ ചേർന്നതാണ് നട്ടെല്ല്.\r\n3. റിബ് കേജ്ഃ ഹൃദയം, ശ്വാസകോശം തുടങ്ങിയ സുപ്രധാന അവയവങ്ങളെ സംരക്ഷിക്കുന്നു.\r\n4. കൈകാലുകൾഃ ചെറുതും കരുത്തുറ്റതുമായ കാലുകൾ പന്നിയുടെ ഭാരമേറിയ ശരീരത്തെ പിന്തുണയ്ക്കുകയും ചലനത്തിനും തീറ്റയ്ക്കും അനുവദിക്കുകയും ചെയ്യുന്നു.\r\n5. കുളമ്പുകൾഃ പന്നിയുടെ കാലുകൾക്ക് രണ്ട് പ്രധാന കാൽവിരലുകളുണ്ട്, ഇത് വിവിധ പ്രതലങ്ങളിൽ നടക്കാൻ സഹായിക്കുന്ന കുളമ്പുകൾ ഉണ്ടാക്കുന്നു.\r\n\r\nപന്നിയുടെ അസ്ഥികൂടം അതിന്റെ സ്വാഭാവിക പെരുമാറ്റങ്ങളായ വേരൂന്നൽ, നടത്തം, ബാലൻസ് നിലനിർത്തൽ എന്നിവയെ പിന്തുണയ്ക്കുന്നു.', ''),
(92, 'King Cobra', 'The King Cobra is the longest venomous snake, reaching up to 18 feet, and is found in Southeast Asia. Known for its distinctive hood, it primarily feeds on other snakes. Its skeleton is long and flexible, with over 200 vertebrae, allowing it to move smoothly. The narrow skull is highly flexible, enabling it to open its mouth wide to swallow large prey. Its ribs help in slithering, and the smooth skin is covered in overlapping scales that reduce friction and offer protection. The King Cobra’s olive or brown skin with lighter markings helps it blend into its surroundings, and like all snakes, it sheds its skin to grow.\r\n\r\nSnake Skin (Python, Cobra, Viper):\r\nSnakeskin is smooth with overlapping scales made of keratin, which protects the body and helps the snake move easily. The texture of the skin varies by species. Pythons have larger, smoother scales that help them glide, while cobras have smaller, uniform scales for quick movement. Vipers have rougher, keeled scales that provide better grip when moving or striking. Snakes, including pythons, cobras, and vipers, shed their skin regularly to grow and get rid of damaged skin. Their skin color also helps them blend into their surroundings for protection or hunting.', '2025-02-05', 'active', '301,302,303,304', 36, 'qr_codes\\exhibit_92.png', 'തെക്കുകിഴക്കൻ ഏഷ്യയിൽ കാണപ്പെടുന്ന 18 അടി വരെ ഉയരമുള്ള ഏറ്റവും നീളം കൂടിയ വിഷമുള്ള പാമ്പാണ് രാജവെമ്പാല.  സവിശേഷമായ ഹുഡിന് പേരുകേട്ട ഇത് പ്രാഥമികമായി മറ്റ് പാമ്പുകളെ ഭക്ഷിക്കുന്നു.  200 ലധികം കശേരുക്കളുള്ള ഇതിന്റെ അസ്ഥികൂടം നീളമുള്ളതും വഴക്കമുള്ളതുമാണ്, ഇത് സുഗമമായി നീങ്ങാൻ അനുവദിക്കുന്നു.  ഇടുങ്ങിയ തലയോട്ടി വളരെ വഴക്കമുള്ളതാണ്, ഇത് വലിയ ഇരയെ വിഴുങ്ങാൻ വായ വിശാലമായി തുറക്കാൻ പ്രാപ്തമാക്കുന്നു.  അതിന്റെ വാരിയെല്ലുകൾ ചരിഞ്ഞുപോകാൻ സഹായിക്കുന്നു, കൂടാതെ മിനുസമാർന്ന ചർമ്മം ഘർഷണം കുറയ്ക്കുകയും സംരക്ഷണം നൽകുകയും ചെയ്യുന്ന ഓവർലാപ്പിംഗ് സ്കെയിലുകളാൽ മൂടപ്പെട്ടിരിക്കുന്നു.  ഇളം അടയാളങ്ങളുള്ള കിംഗ് കോബ്രയുടെ ഒലിവ് അല്ലെങ്കിൽ തവിട്ട് ചർമ്മം അതിന്റെ ചുറ്റുപാടുകളുമായി കൂടിച്ചേരാനും എല്ലാ പാമ്പുകളെയും പോലെ വളരാൻ ചർമ്മത്തെ ചൊരിയാനും സഹായിക്കുന്നു.\r\n\r\nപാമ്പിന്റെ തൊലി (പൈത്തൺ, കോബ്ര, വൈപ്പർ):\r\nശരീരത്തെ സംരക്ഷിക്കുകയും പാമ്പിനെ എളുപ്പത്തിൽ നീങ്ങാൻ സഹായിക്കുകയും ചെയ്യുന്ന കെരാറ്റിൻ കൊണ്ട് നിർമ്മിച്ച ഓവർലാപ്പിംഗ് സ്കെയിലുകൾ ഉപയോഗിച്ച് സ്നേക്ക്സ്കിൻ മിനുസമാർന്നതാണ്.  ചർമ്മത്തിന്റെ ഘടന ഇനങ്ങൾക്കനുസരിച്ച് വ്യത്യാസപ്പെടുന്നു.  പൈത്തണുകൾക്ക് വലുതും സുഗമവുമായ സ്കെയിലുകളുണ്ട്, അത് അവയെ ചലിപ്പിക്കാൻ സഹായിക്കുന്നു, അതേസമയം കോബ്രകൾക്ക് വേഗത്തിലുള്ള ചലനത്തിന് ചെറുതും ഏകീകൃതവുമായ സ്കെയിലുകളുണ്ട്.  ചലിക്കുമ്പോഴോ അടിക്കുമ്പോഴോ മികച്ച പിടി നൽകുന്ന പരുക്കൻ, കീൽഡ് സ്കെയിലുകൾ വൈപ്പറുകൾക്കുണ്ട്.  പെരുമ്പാമ്പുകൾ, നാഗങ്ങൾ, വൈപ്പറുകൾ എന്നിവയുൾപ്പെടെയുള്ള പാമ്പുകൾ വളരുന്നതിനും കേടുപാടുകൾ സംഭവിച്ച ചർമ്മത്തിൽ നിന്ന് മുക്തി നേടുന്നതിനുമായി പതിവായി ചർമ്മം ചൊരിയുന്നു.  സംരക്ഷണത്തിനോ വേട്ടയാടലിനോ വേണ്ടി അവരുടെ ചുറ്റുപാടുകളുമായി കൂടിച്ചേരാനും അവരുടെ ചർമ്മത്തിന്റെ നിറം അവരെ സഹായിക്കുന്നു.', 'രാജവെമ്പാല'),
(94, 'Model of a Ropeway Incline of the Cochin Forest Tramway:', 'The tramway is one of the principal means employed for transporting timber. It is essentially a light meter gauge system propelled by steam traction, extending from Chalakudy Railway Station for a distance of 50 miles due east to tap into the timber resources of the tropical high forests on either side of the line, up to the Anamalai Madras frontier. The line is divided into three sections by steep ridges, which are negotiated by a series of ropeway inclines on the steeper sides of the hills where the engines cannot operate, and a series of zigzags on the steeper slopes.\r\n\r\nAcross the incline, a wire rope passing around a horizontal wheel allows the descending load, attached to one end of the rope, to drag up empty trucks attached to the other end as a counterpoise. By the force of gravity, the incline, a model of which is exhibited, is 1380 feet long and is the steepest of all, with a gradient of 1 in 3.', '2025-02-03', 'active', '315,316', 39, 'qr_codes\\exhibit_94.png', 'തടി കൊണ്ടുപോകുന്നതിനുള്ള പ്രധാന മാർഗ്ഗങ്ങളിലൊന്നാണ് ട്രാംവേ. ഇത് പ്രധാനമായും നീരാവി ട്രാക്ഷൻ വഴി പ്രവർത്തിക്കുന്ന ഒരു ലൈറ്റ് മീറ്റർ ഗേജ് സംവിധാനമാണ്, ചാലക്കുടി റെയിൽവേ സ്റ്റേഷനിൽ നിന്ന് കിഴക്കോട്ട് 50 മൈൽ ദൂരം വ്യാപിച്ചുകിടക്കുന്നു, ലൈനിന്റെ ഇരുവശത്തുമുള്ള ഉഷ്ണമേഖലാ ഉയർന്ന വനങ്ങളിലെ തടി വിഭവങ്ങളിൽ നിന്ന് ആനമലൈ മദ്രാസ് അതിർത്തി വരെ. കുത്തനെയുള്ള മലഞ്ചെരിവുകളാൽ ഈ പാതയെ മൂന്ന് വിഭാഗങ്ങളായി തിരിച്ചിരിക്കുന്നു, എഞ്ചിനുകൾക്ക് പ്രവർത്തിക്കാൻ കഴിയാത്ത കുന്നുകളുടെ കുത്തനെയുള്ള വശങ്ങളിൽ റോപ്വേ ചരിവുകളുടെ ഒരു പരമ്പരയും കുത്തനെയുള്ള ചരിവുകളിൽ സിഗ്സാഗുകളുടെ ഒരു പരമ്പരയും അവയെ കൈകാര്യം ചെയ്യുന്നു.\r\n\r\nചരിവിന് കുറുകെ, ഒരു തിരശ്ചീന ചക്രത്തിന് ചുറ്റും കടന്നുപോകുന്ന ഒരു വയർ റോപ്പ്, കയറിന്റെ ഒരു അറ്റത്ത് ഘടിപ്പിച്ചിരിക്കുന്ന അവരോഹണ ലോഡ്, മറുവശത്ത് ഘടിപ്പിച്ചിരിക്കുന്ന ശൂന്യമായ ട്രക്കുകളെ കൌണ്ടർപോയിസായി വലിച്ചെടുക്കാൻ അനുവദിക്കുന്നു. ഗുരുത്വാകർഷണബലത്താൽ, പ്രദർശിപ്പിച്ചിരിക്കുന്ന ഒരു മാതൃകയായ ചരിവിന് 1380 അടി നീളവും 3 ൽ 1 എന്ന ഗ്രേഡിയന്റുള്ള ഏറ്റവും കുത്തനെയുള്ളതുമാണ്.', 'ട്രാംവേ-മോഡൽ'),
(95, 'Agriculture and Farming Tools', 'Agriculture is essential to Kerala’s economy, culture, and daily life. It provides jobs, supports industries like food processing, rubber, and spice exports, and helps grow crops such as rice, coconut, and spices. \r\n\r\nAgricultural Instruments are tools used in farming to help with tasks like planting, cultivating, watering, and harvesting. These tools make farming easier, faster, and more productive. Common instruments include plows for tilling soil, water lifts for irrigation, rakes for leveling soil, yokes for working with animals, and penas for lifting water.\r\n\r\n1.Plough: A tool used to turn over soil for planting, making it easier for crops to grow.\r\n2.Water Lift: A device used to raise water from wells or rivers to water crops.\r\n3.Rake: A tool with tines used to gather or level soil, hay, or leaves.\r\n4.Yoke: A wooden beam used to harness animals to pull farming equipment.\r\n5.Pena: A traditional tool used to carry water from a source to fields for irrigation.\r\n\r\nThese instruments have been essential for farming for centuries and continue to help increase crop production today', '2025-02-03', 'active', '317,318', 39, 'qr_codes\\exhibit_95.png', 'കേരളത്തിന്റെ സമ്പദ്വ്യവസ്ഥയ്ക്കും സംസ്കാരത്തിനും ദൈനംദിന ജീവിതത്തിനും കൃഷി അത്യന്താപേക്ഷിതമാണ്.  ഇത് തൊഴിലവസരങ്ങൾ നൽകുന്നു, ഭക്ഷ്യ സംസ്കരണം, റബ്ബർ, സുഗന്ധവ്യഞ്ജന കയറ്റുമതി തുടങ്ങിയ വ്യവസായങ്ങളെ പിന്തുണയ്ക്കുന്നു, അരി, തേങ്ങ, സുഗന്ധവ്യഞ്ജനങ്ങൾ തുടങ്ങിയ വിളകൾ വളർത്താൻ സഹായിക്കുന്നു. \r\n\r\nനടീൽ, കൃഷി, ജലസേചനം, വിളവെടുപ്പ് തുടങ്ങിയ ജോലികൾക്കായി കൃഷിയിൽ ഉപയോഗിക്കുന്ന ഉപകരണങ്ങളാണ് കാർഷിക ഉപകരണങ്ങൾ.  ഈ ഉപകരണങ്ങൾ കൃഷിയെ എളുപ്പവും വേഗമേറിയതും കൂടുതൽ ഉൽപ്പാദനക്ഷമവുമാക്കുന്നു.  മണ്ണ് ഉഴുതുമറിക്കുന്നതിനുള്ള കലപ്പ, ജലസേചനത്തിനായുള്ള വാട്ടർ ലിഫ്റ്റുകൾ, മണ്ണ് സമനിലയിലാക്കുന്നതിനുള്ള റേക്കുകൾ, മൃഗങ്ങളുമായി ജോലി ചെയ്യുന്നതിനുള്ള നുകങ്ങൾ, വെള്ളം ഉയർത്തുന്നതിനുള്ള പേന എന്നിവ സാധാരണ ഉപകരണങ്ങളിൽ ഉൾപ്പെടുന്നു.\r\n\r\n1.കലപ്പഃ വിളകൾക്ക് വളരാൻ എളുപ്പമാക്കുന്ന മണ്ണിനെ നടുന്നതിന് ഉപയോഗിക്കുന്ന ഒരു ഉപകരണം.\r\n2.കിണറുകളിൽ നിന്നോ നദികളിൽ നിന്നോ ജല വിളകളിലേക്ക് വെള്ളം ഉയർത്താൻ ഉപയോഗിക്കുന്ന ഒരു ഉപകരണമാണ് വാട്ടർ ലിഫ്റ്റ്.\r\n3.റെയ്ക്ക്ഃ മണ്ണ്, പുല്ല് അല്ലെങ്കിൽ ഇലകൾ ശേഖരിക്കാനോ സമനിലയിലാക്കാനോ ഉപയോഗിക്കുന്ന ടൈൻ ഉള്ള ഒരു ഉപകരണം.\r\n4.നുകംഃ കാർഷിക ഉപകരണങ്ങൾ വലിക്കാൻ മൃഗങ്ങളെ ഉപയോഗിക്കാൻ ഉപയോഗിക്കുന്ന ഒരു തടി ബീം.\r\n5.പെനഃ ജലസേചനത്തിനായി ഒരു ഉറവിടത്തിൽ നിന്ന് വയലുകളിലേക്ക് വെള്ളം കൊണ്ടുപോകാൻ ഉപയോഗിക്കുന്ന ഒരു പരമ്പരാഗത ഉപകരണം.\r\n\r\nനൂറ്റാണ്ടുകളായി കൃഷിയ്ക്ക് അത്യന്താപേക്ഷിതമായ ഈ ഉപകരണങ്ങൾ ഇന്നും വിള ഉൽപ്പാദനം വർദ്ധിപ്പിക്കാൻ സഹായിക്കുന്നു.\r\n', 'കൃഷിയും കാർഷിക ഉപകരണങ്ങളും'),
(96, 'K. C. S. Paniker', 'Kolozhi Cheerambathur Sankara Paniker (1911–1977) was an Indian metaphysical and abstract painter from Malabar, Kerala. He is known for blending India\'s ancient spiritual ideas with modern abstract art during the 1960s, a time when Indian art was heavily influenced by Western trends.\r\n\r\nIn 1976, he received the prestigious Fellow of the \"Lalit Kala Akademi award\" for his lifetime contributions to art.\r\n\r\nEarly Life and Education:\r\nBorn on 31 May 1911 in Veliyankode, Malabar (now Malappuram, Kerala), Paniker\'s vibrant early landscape paintings were inspired by the lush environment of his childhood. He began painting at 12 and exhibited his work at 17. After his father\'s death, he left college in 1928 to work at the Indian Telegraph Department to support his family.\r\n\r\nLater, he studied at the Government School of Arts and Crafts, Chennai (1936–1940), and Madras Christian College.\r\n\r\nCareer:\r\nIn 1941, Paniker held his first solo exhibitions in Chennai and Delhi. He founded the Progressive Painters\' Association (P.P.A) in 1944.\r\nHis international debut came in 1954 with exhibitions in London and Paris. In 1957, he became the principal of the Government College of Fine Arts, Chennai. In 1966, Paniker established the Cholamandal Artists\' Village near Chennai, a significant hub for artists.\r\n\r\nInfluenced by abstract masters like Salvador Dalí, Paniker’s work evolved into a blend of vibrant colors, calligraphy, and symbols, representing metaphysical themes.\r\n\r\nLegacy:\r\nA key figure in the Madras Art Movement, Paniker’s contributions continue to inspire Indian artists. He passed away on 16 January 1977 in Madras at the age of 65, leaving behind a rich artistic legacy.', '2025-02-03', 'active', '319,320,321,322,323', 44, 'qr_codes\\exhibit_96.png', 'കേരളത്തിലെ മലബാറിൽ നിന്നുള്ള ഒരു ഇന്ത്യൻ അതീന്ദ്രിയ, അമൂർത്ത ചിത്രകാരനായിരുന്നു കോവലെഴി ചീരമ്പത്തൂർ ശങ്കരൻ പണിക്കർ(1911-1977). പാശ്ചാത്യ പ്രവണതകൾ ഇന്ത്യൻ കലയെ വളരെയധികം സ്വാധീനിച്ച 1960 കളിൽ ഇന്ത്യയുടെ പുരാതന ആത്മീയ ആശയങ്ങളെ ആധുനിക അമൂർത്ത കലയുമായി സംയോജിപ്പിച്ചതിൽ അദ്ദേഹം പ്രശസ്തനാണ്.\r\n\r\nകലയ്ക്ക് നൽകിയ ആജീവനാന്ത സംഭാവനകൾക്ക് 1976ൽ അദ്ദേഹത്തിന് \"ലളിതകലാ അക്കാദമി അവാർഡിന്റെ\" അഭിമാനകരമായ ഫെലോ ലഭിച്ചു.\r\n\r\nആദ്യകാല ജീവിതവും വിദ്യാഭ്യാസവുംഃ\r\n1911 മെയ് 31 ന് മലബാറിലെ (ഇപ്പോൾ കേരളത്തിലെ മലപ്പുറം) വെളിയങ്കോട്ടിൽ  ജനിച്ച പണിക്കറുടെ ഊർജ്ജസ്വലമായ ആദ്യകാല പ്രകൃതിദൃശ്യങ്ങൾ അദ്ദേഹത്തിന്റെ കുട്ടിക്കാലത്തെ സമൃദ്ധമായ അന്തരീക്ഷത്തിൽ നിന്ന് പ്രചോദനം ഉൾക്കൊണ്ടതാണ്. 12-ാം വയസ്സിൽ പെയിന്റിംഗ് ആരംഭിച്ച അദ്ദേഹം 17-ാം വയസ്സിൽ തന്റെ സൃഷ്ടികൾ പ്രദർശിപ്പിച്ചു. പിതാവിന്റെ മരണശേഷം, 1928-ൽ അദ്ദേഹം കോളേജ് വിട്ട് ഇന്ത്യൻ ടെലിഗ്രാഫ് ഡിപ്പാർട്ട്മെന്റിൽ ജോലി ചെയ്ത് കുടുംബത്തെ പരിപാലിച്ചു.\r\nപിന്നീട് ചെന്നൈയിലെ ഗവൺമെന്റ് സ്കൂൾ ഓഫ് ആർട്സ് ആൻഡ് ക്രാഫ്റ്റ്സ് (1936-1940), മദ്രാസ് ക്രിസ്ത്യൻ കോളേജ് എന്നിവിടങ്ങളിൽ പഠിച്ചു.\r\n\r\nകരിയർഃ\r\n1941ൽ പണിക്കർ ചെന്നൈയിലും ഡൽഹിയിലും തന്റെ ആദ്യ സോളോ എക്സിബിഷനുകൾ നടത്തി. 1944 ൽ പ്രോഗ്രസീവ് പെയിന്റേഴ്സ് അസോസിയേഷൻ (P.P.A) സ്ഥാപിച്ചു.\r\n1954ൽ ലണ്ടനിലും പാരീസിലും നടന്ന പ്രദർശനങ്ങളിലൂടെയാണ് അദ്ദേഹത്തിന്റെ അന്താരാഷ്ട്ര അരങ്ങേറ്റം. 1957ൽ അദ്ദേഹം ചെന്നൈയിലെ ഗവൺമെന്റ് കോളേജ് ഓഫ് ഫൈൻ ആർട്സിന്റെ പ്രിൻസിപ്പലായി. 1966ൽ പണിക്കർ ചെന്നൈയ്ക്ക് സമീപം കലാകാരന്മാരുടെ പ്രധാന കേന്ദ്രമായ ചോളമണ്ഡൽ ആർട്ടിസ്റ്റ് വില്ലേജ് സ്ഥാപിച്ചു.\r\n\r\nസാൽവഡോർ ഡാലിയെപ്പോലുള്ള അമൂർത്ത ഗുരുക്കന്മാരുടെ സ്വാധീനത്താൽ, മെറ്റാഫിസിക്കൽ പ്രമേയങ്ങളെ പ്രതിനിധീകരിക്കുന്ന ഊർജ്ജസ്വലമായ നിറങ്ങൾ, കാലിഗ്രാഫി, ചിഹ്നങ്ങൾ എന്നിവയുടെ സംയോജനമായി പണിക്കറുടെ കൃതികൾ പരിണമിച്ചു.\r\n\r\nപാരമ്പര്യംഃ\r\nമദ്രാസ് കലാ പ്രസ്ഥാനത്തിലെ ഒരു പ്രധാന വ്യക്തിയായ പണിക്കറുടെ സംഭാവനകൾ ഇന്ത്യൻ കലാകാരന്മാർക്ക് പ്രചോദനമായി തുടരുന്നു. 1977 ജനുവരി 16ന് മദ്രാസിൽ 65-ാം വയസ്സിൽ അന്തരിച്ച അദ്ദേഹം സമ്പന്നമായ കലാപരമായ ഒരു പാരമ്പര്യം അവശേഷിപ്പിച്ചു.', 'കെ. സി. എസ്. പണിക്കർ'),
(97, 'Sakthan Thampuran: A Legacy of Power and Vision', 'Rama Varma Kunji Pillai Thampuran (1751–1805), better known as Sakthan Thampuran, was a powerful and influential ruler of the Kingdom of Cochin. His reign transformed Cochin’s political, cultural, and administrative landscape. He resided in Vadakkechira Palace in Thrissur, which later became the Cultural Capital of Kerala due to his reforms.\r\n\r\nEarly Life and Marriage:\r\nBorn on 26 August 1751, Sakthan Thampuran lost his mother at a young age and was raised by his maternal aunt. His leadership qualities earned him the title \"Sakthan.\" He married twice: first to a woman from the Vadakke Kuruppath family and later to Chummukutty Nethyar Amma, a talented musician and dancer.\r\n\r\nAdministration:\r\nSakthan Thampuran consolidated royal power by reducing the influence of feudal chieftains and reformed temple administration, bringing key temples under royal control. His strict governance earned him respect, and he maintained strong ties with the British and the Travancore state.\r\n\r\nLegacy:\r\n1.Modern Thrissur: Sakthan Thampuran moved the capital from Thrippunithura to Thrissur. He cleared a 60-acre teak forest around the Vadakkunnathan Temple and developed the Thekkinkadu Maidan, which became the heart of the city. He also constructed the famous Swaraj Round, an iconic landmark.\r\n2.Thrissur Pooram: He created the Thrissur Pooram festival after temples were excluded from Arattupuzha Pooram, inviting them to Thrissur for a grand event that remains one of Kerala\'s most celebrated temple festivals.\r\n3.Shakthan Thampuran Palace: Originally known as Vadakkechira Kovilakam, the palace is now a heritage museum that showcases the rich history of the Cochin Kingdom.\r\n\r\nSakthan Thampuran passed away on 26 September 1805 after his health declined. He was cremated at Vadakkechira Palace, now called Shakthan Thampuran Palace, where a monument in his memory stands.', '2025-02-03', 'active', '330,331,332', 39, 'qr_codes\\exhibit_97.png', 'ശക്തൻ തമ്പുരാൻ എന്നറിയപ്പെടുന്ന രാമവർമ്മ കുഞ്ഞി പിള്ള തമ്പുരാൻ (1751-1805) കൊച്ചി രാജ്യത്തിന്റെ ശക്തനും സ്വാധീനമുള്ള ഭരണാധികാരിയുമായിരുന്നു.  അദ്ദേഹത്തിന്റെ ഭരണകാലം കൊച്ചിയുടെ രാഷ്ട്രീയ, സാംസ്കാരിക, ഭരണപരമായ ഭൂപ്രകൃതിയെ മാറ്റിമറിച്ചു.  അദ്ദേഹത്തിന്റെ പരിഷ്കാരങ്ങൾ മൂലം പിന്നീട് കേരളത്തിന്റെ സാംസ്കാരിക തലസ്ഥാനമായി മാറിയ തൃശ്ശൂരിലെ വടക്കേച്ചിറ കൊട്ടാരത്തിലാണ് അദ്ദേഹം താമസിച്ചിരുന്നത്.\r\n\r\nആദ്യകാല ജീവിതവും വിവാഹവുംഃ\r\n1751 ഓഗസ്റ്റ് 26ന് ജനിച്ച ശക്തൻ തമ്പുരന് ചെറുപ്പത്തിൽ തന്നെ അമ്മയെ നഷ്ടപ്പെടുകയും അമ്മാവൻ വളർത്തുകയും ചെയ്തു.  അദ്ദേഹത്തിൻ്റെ നേതൃത്വഗുണങ്ങൾ അദ്ദേഹത്തിന് \"ശക്തൻ\" എന്ന പദവി നേടിക്കൊടുത്തു.  അദ്ദേഹം രണ്ടുതവണ വിവാഹം കഴിച്ചുഃ ആദ്യം വടക്കെ കുരുപ്പത്ത് കുടുംബത്തിൽ നിന്നുള്ള ഒരു സ്ത്രീയെയും പിന്നീട് കഴിവുള്ള സംഗീതജ്ഞയും നർത്തകിയുമായ ചുംകുട്ടി നേത്രാർ അമ്മയെയും.\r\n\r\nഭരണനിർവഹണംഃ\r\nസാമന്ത തലവന്മാരുടെ സ്വാധീനം കുറയ്ക്കുകയും ക്ഷേത്രഭരണം പരിഷ്കരിക്കുകയും പ്രധാന ക്ഷേത്രങ്ങൾ രാജകീയ നിയന്ത്രണത്തിലാക്കുകയും ചെയ്തുകൊണ്ട് ശക്തൻ തമ്പുരാൻ രാജകീയ അധികാരം ഏകീകരിച്ചു.  അദ്ദേഹത്തിന്റെ കർശനമായ ഭരണം അദ്ദേഹത്തിന് ബഹുമാനം നേടിക്കൊടുത്തു, ബ്രിട്ടീഷുകാരുമായും തിരുവിതാംകൂർ സംസ്ഥാനവുമായും അദ്ദേഹം ശക്തമായ ബന്ധം നിലനിർത്തി.\r\n\r\nപാരമ്പര്യംഃ\r\n1.ആധുനിക തൃശൂർഃ ശക്തൻ തമ്പുരാൻ തലസ്ഥാനം തൃപ്പൂണിത്തുറയിൽ നിന്ന് തൃശ്ശൂരിലേക്ക് മാറ്റി.  വടക്കുനാഥൻ ക്ഷേത്രത്തിന് ചുറ്റുമുള്ള 60 ഏക്കർ തേക്ക് വനം അദ്ദേഹം വൃത്തിയാക്കുകയും നഗരത്തിന്റെ ഹൃദയമായ തെക്കിങ്കാട് മൈതാനം വികസിപ്പിക്കുകയും ചെയ്തു.  പ്രശസ്തമായ ഒരു നാഴികക്കല്ലായ സ്വരാജ് റൌണ്ടും അദ്ദേഹം നിർമ്മിച്ചു.\r\n2.തൃശൂർ പൂരംഃ ആറാട്ടുപുഴ പൂരത്തിൽ നിന്ന് ക്ഷേത്രങ്ങളെ ഒഴിവാക്കിയതിന് ശേഷം അദ്ദേഹം തൃശൂർ പൂരം ഉത്സവം സൃഷ്ടിച്ചു, കേരളത്തിലെ ഏറ്റവും പ്രശസ്തമായ ക്ഷേത്ര ഉത്സവങ്ങളിലൊന്നായി തുടരുന്ന ഒരു മഹത്തായ പരിപാടിയിൽ പങ്കെടുക്കാൻ അവരെ തൃശ്ശൂരിലേക്ക് ക്ഷണിച്ചു.\r\n3.ശക്തൻ തമ്പുരാൻ കൊട്ടാരംഃ യഥാർത്ഥത്തിൽ വടക്കേച്ചിറ കോവിലകം എന്നറിയപ്പെട്ടിരുന്ന ഈ കൊട്ടാരം ഇപ്പോൾ കൊച്ചി രാജ്യത്തിന്റെ സമ്പന്നമായ ചരിത്രം പ്രദർശിപ്പിക്കുന്ന ഒരു പൈതൃക മ്യൂസിയമാണ്.\r\n\r\n1805 സെപ്റ്റംബർ 26ന് ആരോഗ്യം ക്ഷയിച്ചതിനെ തുടർന്ന് ശക്തൻ തമ്പുരാൻ അന്തരിച്ചു.  ഇപ്പോൾ ശക്തൻ തമ്പുരാൻ കൊട്ടാരം എന്ന് വിളിക്കപ്പെടുന്ന വടക്കേചിര കൊട്ടാരത്തിൽ അദ്ദേഹത്തിന്റെ സ്മരണയ്ക്കായി ഒരു സ്മാരകം നിലകൊള്ളുന്നു.', 'ശക്തൻ തമ്പുരാൻഃ അധികാരത്തിൻ്റെയും ദർശനത്തിൻ്റെയും പാരമ്പര്യം'),
(98, 'Traditional Bell Metal Urli (Uruli)', 'The Urli (Uruli) is a traditional South Indian vessel made from bell metal, an alloy of copper and tin, known for its strength, heat retention, and cultural significance. It features a wide, shallow, circular design with thick rims and sturdy side handles. Traditionally, Urlis were used for cooking dishes like payasam, avial, and sambar during festivals and temple rituals. In temples, they also served for preparing prasad, while in modern homes, they are often used as decorative pieces filled with water, flowers, or floating candles. Symbolizing prosperity and heritage, Urlis continue to be cherished for their blend of functionality and timeless aesthetic appeal.', '2025-02-04', 'active', '337,338', 39, 'qr_codes\\exhibit_98.png', 'ഉർലി (ഉരുളി) ഒരു സമ്പ്രദായിക ദക്ഷിണേന്ത്യൻ പാത്രമാണ്, ഇത് ചെമ്പും ഇരുമ്പും ചേർന്ന അലോയ് ആയ വെള്ളി ധാതുവിൽ നിന്നാണ് നിർമ്മിക്കുന്നത്. ഇത് ശക്തിയും ചൂട് നിലനിർത്താനുള്ള ശേഷിയും സാംസ്കാരിക പ്രസക്തിയും കൊണ്ടാണ് പ്രസിദ്ധമായത്. ഇതിന് വിസ്തൃതമായതും താഴ്ന്നതുമായ വൃത്താകൃതിയുള്ള രൂപകൽപ്പനയും കട്ടിയുള്ള അറ്റങ്ങളും ശക്തമായ പക്കത്തായ ഹാൻഡിലുകളും ഉണ്ട്. പരമ്പരാഗതമായി ഉർലികൾ ഉത്സവങ്ങളും ക്ഷേത്രച്ചടങ്ങുകളുടെ  സമയങ്ങളിൽ പായസം, അവിയൽ, സാംബാർ മുതലായ ഭക്ഷണങ്ങൾ പാകം ചെയ്യാൻ ഉപയോഗിച്ചിരുന്നവയാണ്. ക്ഷേത്രങ്ങളിൽ പ്രസാദം തയ്യാറാക്കാനായി ഇവ ഉപയോഗിച്ചിരുന്നു, അതേസമയം ആധുനിക വീടുകളിൽ വെള്ളം, പൂക്കൾ, അല്ലെങ്കിൽ ഫ്ലോട്ടിംഗ് മെഴുകുതിരികൾ നിറച്ച അലങ്കാര വസ്തുക്കളായി ഉർലികൾ ഉപയോഗിക്കപ്പെടുന്നു. സമൃദ്ധിക്കും സംസ്‌കാരവുമായ പ്രതീകമായ ഉർലികൾ പ്രവർത്തനക്ഷമതയും ശാശ്വതമായ സൗന്ദര്യവും ഉൾക്കൊള്ളുന്നവയായി ഇന്നും പ്രിയപ്പെട്ടവയാണ്.', 'പരമ്പരാഗത ബെൽ മെറ്റൽ ഉറ്ലി (ഉറുലി)'),
(99, 'Ship Inside a Botttle', 'An \"impossible bottle\" is a bottle that holds an object that seems too big to fit through its opening.\r\n\r\nThe most well-known example is a ship model inside a bottle. Other objects found in impossible bottles include fruits, matchboxes, decks of cards, tennis balls, and Rubik’s Cubes. These items are placed inside the bottle using techniques like assembling the object piece by piece inside the bottle, using objects that expand once inside, or shaping the glass around the object.\r\n\r\nThere are two main ways to place a ship model inside a bottle. The simpler method involves folding down the ship\'s masts and raising them once the ship is inside. The masts, spars, and sails are built separately and attached to the ship with strings and hinges, allowing them to lie flat on the deck. After placing the ship inside, the masts are pulled upright using the strings. The ship\'s hull must still fit through the bottle\'s neck. Bottles with slight distortions or soft colors are often chosen to hide small details like hinges. Alternatively, skilled craftsmen use special long-handled tools to build the entire ship inside the bottle from scratch.\r\n\r\nShips in bottles became more popular as folk art in the late 19th century, following the rise of affordable, clear glass bottles.', '2025-02-03', 'active', '339', 37, 'qr_codes\\exhibit_99.png', '\"അസാദ്ധ്യമായ കുപ്പി\" എന്നത് കുപ്പിയുടെ വായിലൂടെ ഒതുങ്ങാൻ കഴിയാത്തത്ര വലുതായി തോന്നുന്ന ഒരു വസ്തു അടങ്ങിയ കുപ്പിയാണ്.\r\n\r\nഒരു കുപ്പിക്കുള്ളിലെ കപ്പൽ മാതൃകയാണ് ഏറ്റവും അറിയപ്പെടുന്ന ഉദാഹരണം. പഴങ്ങൾ, തീപ്പെട്ടികൾ, കാർഡുകളുടെ ഡെക്കുകൾ, ടെന്നീസ് ബോളുകൾ, റുബിക്സ് ക്യൂബുകൾ,  എന്നിവയാണ്. അസാധ്യമായ കുപ്പികളിൽ കാണപ്പെടുന്ന മറ്റ് വസ്തുക്കൾ.\r\nവസ്തുവിന്റെ കഷണം കുപ്പിക്കുള്ളിൽ കൂട്ടിച്ചേർക്കുക, ഒരിക്കൽ വികസിക്കുന്ന വസ്തുക്കൾ ഉപയോഗിക്കുക, അല്ലെങ്കിൽ വസ്തുവിന് ചുറ്റും ഗ്ലാസ് രൂപപ്പെടുത്തുക തുടങ്ങിയ സാങ്കേതിക വിദ്യകൾ ഉപയോഗിച്ചാണ് ഈ ഇനങ്ങൾ കുപ്പിക്കുള്ളിൽ സ്ഥാപിച്ചിരിക്കുന്നത്.\r\n\r\nഒരു കുപ്പിക്കുള്ളിൽ ഒരു കപ്പൽ മോഡൽ സ്ഥാപിക്കാൻ രണ്ട് പ്രധാന വഴികളുണ്ട്. കപ്പലിന്റെ തൂണുകൾ മടക്കുകയും കപ്പൽ അകത്ത് എത്തിക്കഴിഞ്ഞാൽ അവ ഉയർത്തുകയും ചെയ്യുക എന്നതാണ് ലളിതമായ രീതി. മാസ്റ്റുകൾ, സ്പാറുകൾ, പായ്ക്കപ്പലുകൾ എന്നിവ വെവ്വേറെ നിർമ്മിക്കുകയും ചരടുകളും കീലും ഉപയോഗിച്ച് കപ്പലിൽ ഘടിപ്പിക്കുകയും ചെയ്യുന്നു, ഇത് അവയെ ഡെക്കിൽ പരന്നുകിടക്കാൻ അനുവദിക്കുന്നു. കപ്പൽ അകത്ത് വെച്ചതിനുശേഷം, ചരടുകൾ ഉപയോഗിച്ച് തൂണുകൾ നിവർത്തി വലിക്കുന്നു. കപ്പലിന്റെ പുറംഭാഗം ഇപ്പോഴും കുപ്പിയുടെ കഴുത്തിൽ ഘടിപ്പിക്കണം. ചെറിയ വളച്ചൊടിക്കലുകളോ മൃദുവായ നിറങ്ങളോ ഉള്ള കുപ്പികൾ പലപ്പോഴും കീലുകൾ പോലുള്ള ചെറിയ വിശദാംശങ്ങൾ മറയ്ക്കാൻ തിരഞ്ഞെടുക്കുന്നു. പകരമായി, വിദഗ്ധ കരകൌശല വിദഗ്ധർ കുപ്പിക്കുള്ളിൽ മുഴുവൻ കപ്പലും ആദ്യം മുതൽ നിർമ്മിക്കാൻ പ്രത്യേക നീളമുള്ള ഉപകരണങ്ങൾ ഉപയോഗിക്കുന്നു.\r\n\r\n19-ആം നൂറ്റാണ്ടിൻ്റെ അവസാനത്തിൽ, താങ്ങാനാവുന്നതും തെളിഞ്ഞതുമായ ഗ്ലാസ് ബോട്ടിലുകളുടെ ഉയർച്ചയെത്തുടർന്ന് കുപ്പികളിലെ കപ്പലുകൾ നാടോടി കലയായി കൂടുതൽ പ്രചാരത്തിലായി.', 'കുപ്പിക്കുള്ളിൽ കപ്പൽ'),
(100, 'Tortoise, Tortoise Shell, and Monitor Lizard', 'Tortoise: A tortoise is a slow-moving reptile with a hard shell that protects it from predators. Unlike turtles, tortoises live on land, usually in dry areas, although some can live in wetter places. They are herbivores, mainly eating plants, grasses, and fruits. Tortoises have strong legs for walking, and they are known for their slow pace and long life, with some species living over 100 years.\r\n\r\nShell of a Tortoise: The tortoise\'s shell is a hard, bony structure made of two parts: the carapace (upper part) and the plastron (lower part). These parts are connected to the tortoise\'s ribs and spine for protection. The shell is made of keratin and varies in shape, size, and color by species. It helps the tortoise regulate its body temperature, camouflage and provides defense by allowing it to hide inside when threatened.\r\n\r\nMonitor Lizard: A monitor lizard is a large, carnivorous reptile from the Varanidae family. Known for their long bodies and sharp claws, they are skilled hunters. Found in Africa, Asia, and Oceania, monitor lizards live in different environments, like forests, grasslands, and deserts. They are intelligent and can recognize owners and learn. They mostly eat insects, small mammals, and birds, though some are omnivores. The Komodo dragon, the largest monitor lizard, is known for its size and hunting skills.', '2025-02-02', 'active', '340,341,342', 36, 'qr_codes\\exhibit_100.png', 'ആമ:സാവധാനത്തിൽ ചലിക്കുന്ന ഉരഗമാണ് ആമ, അതിൻ്റെ ശരീരത്തെ വേട്ടക്കാരിൽ നിന്ന് സംരക്ഷിക്കുന്ന കഠിനവും സംരക്ഷിതവുമായ തോടിന് പേരുകേട്ടതാണ്. ആമകളിൽ നിന്ന് വ്യത്യസ്തമായി, ആമകൾ കരയിലാണ്, സാധാരണയായി വരണ്ട പ്രദേശങ്ങളിൽ വസിക്കുന്നു, എന്നിരുന്നാലും ചിലത് നനഞ്ഞ സ്ഥലങ്ങളിൽ ജീവിക്കും. അവർ സസ്യഭുക്കുകളാണ്, പ്രധാനമായും സസ്യങ്ങൾ, പുല്ലുകൾ, പഴങ്ങൾ എന്നിവ ഭക്ഷിക്കുന്നു. ആമകൾക്ക് നടക്കാൻ ശക്തമായ കാലുകളുണ്ട്, അവയുടെ വേഗത കുറഞ്ഞതും ദീർഘായുസ്സിനും പേരുകേട്ടവയാണ്, ചില ജീവിവർഗങ്ങൾ 100 വർഷത്തിലധികം ജീവിക്കുന്നു.\r\n\r\nആമയുടെ പുറംതൊലി: ഈ മൃഗത്തിൻ്റെ ഏറ്റവും ശ്രദ്ധേയമായ സവിശേഷതകളിലൊന്നാണ് ആമയുടെ പുറംതോട്. ഇത് രണ്ട് ഭാഗങ്ങൾ കൊണ്ട് നിർമ്മിച്ച ഒരു കട്ടിയുള്ള, അസ്ഥി ഘടനയാണ്: കാരപ്പേസ് (മുകൾ ഭാഗം), പ്ലാസ്ട്രോൺ (താഴത്തെ ഭാഗം). സംരക്ഷണത്തിനായി ഈ ഭാഗങ്ങൾ ആമയുടെ വാരിയെല്ലുമായും നട്ടെല്ലുമായും ബന്ധിപ്പിച്ചിരിക്കുന്നു. ഷെൽ കെരാറ്റിൻ കൊണ്ടാണ് നിർമ്മിച്ചിരിക്കുന്നത്, ഇനം അനുസരിച്ച് ആകൃതിയിലും വലിപ്പത്തിലും നിറത്തിലും വ്യത്യാസമുണ്ട്. ഇത് ആമയെ അതിൻ്റെ ശരീര താപനില നിയന്ത്രിക്കാനും മറയ്ക്കാനും ഭീഷണിപ്പെടുത്തുമ്പോൾ ഉള്ളിൽ ഒളിക്കാൻ അനുവദിച്ചുകൊണ്ട് പ്രതിരോധം നൽകാനും സഹായിക്കുന്നു.\r\n\r\nഉടുമ്പ്:വരാണസ് എന്ന ജനുസിൽ നിന്നുള്ള വലിയ, മാംസഭോജിയായ ഉരഗമാണ് ഉടുമ്പ്. നീളമുള്ള ശരീരത്തിനും കൂർത്ത നഖങ്ങൾക്കും പേരുകേട്ട ഇവർ വേട്ടയാടാൻ കഴിവുള്ളവരാണ്. ആഫ്രിക്ക, ഏഷ്യ, ഓഷ്യാനിയ എന്നിവിടങ്ങളിൽ കാണപ്പെടുന്ന മോണിറ്റർ പല്ലികൾ കാടുകൾ, പുൽമേടുകൾ, മരുഭൂമികൾ എന്നിങ്ങനെ വിവിധ പരിതസ്ഥിതികളിൽ വസിക്കുന്നു. അവർ ബുദ്ധിമാനും ഉടമകളെ തിരിച്ചറിയാനും പഠിക്കാനും കഴിയും. പ്രാണികൾ, ചെറിയ സസ്തനികൾ, പക്ഷികൾ എന്നിവയെയാണ് ഇവ കൂടുതലും ഭക്ഷിക്കുന്നത്, ചിലത് ഓമ്നിവോറുകളാണെങ്കിലും. ഏറ്റവും വലിയ ഉടുമ്പ ആയ \"കൊമോഡോ ഡ്രാഗൺ\" അതിൻ്റെ വലിപ്പത്തിനും വേട്ടയാടൽ കഴിവുകൾക്കും പേരുകേട്ടതാണ്.\r\n', 'ആമ,ആമയുടെ തോട് ,ഉടുമ്പ്'),
(101, 'Nilambur Teak', 'Nilambur teak is a famous variety of teak wood, grown primarily in the Nilambur region of Kerala, India. Known for its superior quality, Nilambur teak is highly regarded for its durability, strength, and resistance to pests and weathering. The region\'s unique climate, along with the rich, fertile soil, contributes to the exceptional growth of this teak variety. \r\n\r\nNilambur teak has been a key part of Kerala\'s timber industry for centuries, and the Nilambur Teak Plantation, established in 1842, is one of the oldest teak plantations in the world. The wood is often used in furniture, construction, and shipbuilding due to its longevity and fine grain, making it a prized material both in India and internationally.', '0025-02-02', 'active', '343', 39, 'qr_codes\\exhibit_101.png', 'ഇന്ത്യയിലെ കേരളത്തിലെ നിലമ്പൂർ മേഖലയിൽ പ്രധാനമായും വളരുന്ന പ്രശസ്തമായ തേക്ക് മരമാണ് നിലമ്പൂർ തേക്ക്.  മികച്ച ഗുണനിലവാരത്തിന് പേരുകേട്ട നിലമ്പൂർ തേക്ക് അതിന്റെ ദീർഘവീക്ഷണത്തിനും ശക്തിക്കും കീടങ്ങളോടും കാലാവസ്ഥയോടുമുള്ള പ്രതിരോധത്തിനും പേരുകേട്ടതാണ്.  ഈ പ്രദേശത്തെ സവിശേഷമായ കാലാവസ്ഥയും സമ്പന്നവും ഫലഭൂയിഷ്ഠവുമായ മണ്ണും ഈ തേക്ക് ഇനത്തിന്റെ അസാധാരണമായ വളർച്ചയ്ക്ക് കാരണമാകുന്നു. \r\n\r\n നൂറ്റാണ്ടുകളായി കേരളത്തിലെ തടി വ്യവസായത്തിന്റെ പ്രധാന ഭാഗമാണ് നിലമ്പൂർ തേക്ക്, 1842ൽ സ്ഥാപിതമായ നിലമ്പൂർ തേക്ക് തോട്ടങ്ങൾ ലോകത്തിലെ ഏറ്റവും പഴക്കം ചെന്ന തേക്ക് തോട്ടങ്ങളിലൊന്നാണ്.  ആയുർദൈർഘ്യവും മികച്ച ധാന്യവും കാരണം മരം പലപ്പോഴും ഫർണിച്ചർ, നിർമ്മാണം, കപ്പൽ നിർമ്മാണം എന്നിവയിൽ ഉപയോഗിക്കുന്നു, ഇത് ഇന്ത്യയിലും അന്തർദ്ദേശീയമായും ഒരു വിലയേറിയ വസ്തുവായി മാറുന്നു.', 'നിലമ്പൂർ തേക്ക്'),
(102, 'Wood Carving', 'The making of sculptures and wood carvings has been widely practiced, but surviving works are much fewer compared to those made from other materials like stone and bronze, as wood is vulnerable to insect damage and fire. Wood carving is one of the oldest arts of humankind, with figure work on wood being universal. \r\n\r\nThe wood carvings of figures such as Devi (the goddess representing divine feminine power), Lakshmana (Lord Rama\'s loyal brother in Hindu mythology), Mahishasura Mardini (the goddess Durga slaying the buffalo demon Mahishasura), Sriraman (Lord Rama, the hero of the Ramayana), Naradan (the sage and messenger in Hindu mythology), and others can be found here. ', '0025-02-02', 'active', '344,345,346,347,348,349', 30, 'qr_codes\\exhibit_102.png', 'ശിൽപങ്ങളുടെയും തടി കൊത്തുപണികളുടെയും നിർമ്മാണം വ്യാപകമായി നടക്കുന്നുണ്ടെങ്കിലും കല്ല്, വെങ്കലം തുടങ്ങിയ മറ്റ് വസ്തുക്കളിൽ നിന്ന് നിർമ്മിച്ചവയുമായി താരതമ്യപ്പെടുത്തുമ്പോൾ അവശേഷിക്കുന്ന സൃഷ്ടികൾ വളരെ കുറവാണ്, കാരണം മരം പ്രാണികളുടെ നാശത്തിനും തീപിടുത്തത്തിനും ഇരയാകുന്നു.  തടികൊണ്ടുള്ള കൊത്തുപണികൾ സാർവത്രികമായതിനാൽ തടി കൊത്തുപണികൾ മനുഷ്യരാശിയുടെ ഏറ്റവും പഴയ കലകളിലൊന്നാണ്. \r\nദേവി (ദിവ്യ സ്ത്രീശക്തിയെ പ്രതിനിധീകരിക്കുന്ന ദേവത) ലക്ഷ്മണൻ (ഹിന്ദു പുരാണത്തിലെ ശ്രീരാമന്റെ വിശ്വസ്ത സഹോദരൻ) മഹിഷാസുര മർദിനി (മഹിഷാസുരനെ കൊല്ലുന്ന ദുർഗ്ഗാദേവി) ശ്രീരാമൻ (രാമായണത്തിലെ നായകനായ ശ്രീരാമൻ) നാരദൻ (ഹിന്ദു പുരാണത്തിലെ ഋഷിയും ദൂതനും) തുടങ്ങിയവരുടെ മരം കൊത്തുപണികൾ ഇവിടെ കാണാം. ', 'മരം കൊത്തുപണി'),
(103, 'Atta Vilakku', 'Atta Vilakku is a traditional Kerala lamp used in temples, homes, and during religious rituals. Made from brass or copper, it is typically a tall, multi-tiered lamp with several wicks, lit during prayers, festivals, or cultural events.\r\n\r\nThe lamp has a circular or conical shape, with each tier holding a wick. The flames symbolize the removal of darkness and the lighting of knowledge and divine presence. It is an important part of Hindu rituals, especially in temple ceremonies.\r\n\r\nThe Atta Vilakku is often placed in the center of prayer spaces, creating a beautiful display of light. It is seen as a symbol of devotion and spirituality, with its design reflecting Kerala’s cultural heritage.', '0025-02-02', 'active', '350,351', 39, 'qr_codes\\exhibit_103.png', 'ക്ഷേത്രങ്ങളിലും വീടുകളിലും മതപരമായ ചടങ്ങുകളിലും ഉപയോഗിക്കുന്ന പരമ്പരാഗത കേരള വിളക്കാണ് അറ്റാ വിളക്ക്.  പിച്ചള അല്ലെങ്കിൽ ചെമ്പിൽ നിന്ന് നിർമ്മിച്ച ഇത് സാധാരണയായി പ്രാർത്ഥനകൾ, ഉത്സവങ്ങൾ അല്ലെങ്കിൽ സാംസ്കാരിക പരിപാടികൾ എന്നിവയിൽ കത്തിക്കുന്ന നിരവധി വിക്കുകൾ ഉള്ള ഉയരമുള്ള, മൾട്ടി-ടയർ വിളക്കാണ്.\r\nവിളക്കിന് വൃത്താകൃതിയിലോ കോണാകൃതിയിലോ ആകൃതിയുണ്ട്, ഓരോ നിരയിലും ഒരു വിക്ക് പിടിക്കുന്നു.  അഗ്നിജ്വാലകൾ ഇരുട്ടിനെ നീക്കം ചെയ്യുന്നതിനെയും അറിവിന്റെയും ദിവ്യ സാന്നിധ്യത്തിന്റെയും പ്രകാശത്തെയും പ്രതീകപ്പെടുത്തുന്നു.  ഹിന്ദു ആചാരങ്ങളുടെ ഒരു പ്രധാന ഭാഗമാണിത്, പ്രത്യേകിച്ച് ക്ഷേത്ര ചടങ്ങുകളിൽ.\r\nആട്ടാ വിലക്കു പലപ്പോഴും പ്രാർത്ഥനാസ്ഥലങ്ങളുടെ മധ്യത്തിലാണ് സ്ഥാപിക്കുന്നത്, ഇത് പ്രകാശത്തിന്റെ മനോഹരമായ പ്രദർശനം സൃഷ്ടിക്കുന്നു.  കേരളത്തിന്റെ സാംസ്കാരിക പൈതൃകത്തെ പ്രതിഫലിപ്പിക്കുന്ന രൂപകൽപ്പനയോടെ ഭക്തിയുടെയും ആത്മീയതയുടെയും പ്രതീകമായി ഇതിനെ കാണുന്നു.', 'ആട്ട വിളക്ക്'),
(104, 'Wooden', 'Wooden carving is the art of shaping wood into decorative or useful items using tools like knives and chisels. It has been practiced for centuries to create sculptures, furniture, utensils, and other objects. Wood is a popular material for carving because it’s easy to work with and looks beautiful.\r\n\r\nCarvers use different types of wood, such as teak or rosewood, for their texture and durability. Wooden carvings are often seen in temples, homes, and public spaces, holding cultural or religious significance. Though wood carvings can be damaged by insects, moisture, or fire, they are still valued for their craftsmanship and history.', '0025-02-04', 'active', '352,353,354', 30, 'qr_codes\\exhibit_104.png', 'കത്തികളും ഉളികളും പോലുള്ള ഉപകരണങ്ങൾ ഉപയോഗിച്ച് തടി അലങ്കാരമോ ഉപയോഗപ്രദമോ ആയ വസ്തുക്കളായി രൂപപ്പെടുത്തുന്ന കലയാണ് മരം കൊത്തുപണി. ശിൽപങ്ങൾ, ഫർണിച്ചറുകൾ, പാത്രങ്ങൾ, മറ്റ് വസ്തുക്കൾ എന്നിവ സൃഷ്ടിക്കാൻ നൂറ്റാണ്ടുകളായി ഇത് പരിശീലിക്കുന്നു. മരം കൊത്തുപണികൾക്കുള്ള ഒരു ജനപ്രിയ വസ്തുവാണ്, കാരണം അത് പ്രവർത്തിക്കാൻ എളുപ്പവും മനോഹരവുമാണ്.\r\n\r\nകൊത്തുപണിക്കാർ അവയുടെ ഘടനയ്ക്കും ഈടുനിൽക്കുന്നതിനുമായി തേക്ക് അല്ലെങ്കിൽ റോസ് വുഡ് പോലുള്ള വ്യത്യസ്ത തരം തടികൾ ഉപയോഗിക്കുന്നു. ക്ഷേത്രങ്ങളിലും വീടുകളിലും പൊതു ഇടങ്ങളിലും സാംസ്കാരികമോ മതപരമോ ആയ പ്രാധാന്യമുള്ള തടി കൊത്തുപണികൾ പലപ്പോഴും കാണാം. തടി കൊത്തുപണികൾ പ്രാണികൾ, ഈർപ്പം അല്ലെങ്കിൽ തീ എന്നിവയാൽ കേടുവരുത്തുമെങ്കിലും, അവയുടെ കരകൗശലത്തിനും ചരിത്രത്തിനും അവ ഇപ്പോഴും വിലമതിക്കുന്നു.', '');
INSERT INTO `qrapp_exhibit` (`id`, `name`, `description`, `date`, `status`, `image_ids`, `category_id`, `qr_code_image`, `description_ml`, `name_ml`) VALUES
(105, 'Miniature Specimens', 'Miniature specimens of ritualistic utensils used in Kerala temples, donated by the Cochin Devaswom Board,, include a variety of traditional items. These miniature pieces reflect the essential tools used in religious ceremonies and rituals. Some of these items include:\r\n\r\n1.Chorika Kuttakam: A small container used for storing offerings.\r\n2.Camphor Thatched: A traditional tool used for burning camphor during rituals.\r\n3.Kalashakudam: A sacred pot used to hold holy water or offerings.\r\n4.Sword (Churika): A ceremonial sword used during temple rituals.\r\n5.Hand Lamp: A small lamp carried during processions or prayers.\r\n6.Aramani: A traditional water vessel used in rituals.\r\n7.Chilamb: A musical instrument used in temple rituals.\r\n8.Vattachembu: A small brass or copper vessel used for offerings.\r\n9.Gomukhi: A vessel shaped like a cow’s mouth, used in certain rituals.\r\n10.Praneetha Kinnam: A container used for storing offerings or food.\r\n11.Chembu Korika: A ritual bowl used for offerings.\r\n12.Aama Lamp: A traditional lamp used in ceremonies.\r\n13.Lamp: A basic oil lamp used in temple rituals.\r\n14.Thrithat: A small ritual utensil.\r\n15.Valkanadi: A small vessel used for offerings.\r\n16.Chengala: A type of ceremonial bell used in rituals.\r\n\r\nThese miniature specimens showcase the rich cultural and religious heritage of Kerala, often used in temple worship and traditional practices.', '2025-02-03', 'active', '355,356,357,358,359,360,361,362,363', 39, 'qr_codes\\exhibit_105.png', 'കൊച്ചിൻ ദേവസ്വം ബോർഡ് സംഭാവന ചെയ്ത കേരളത്തിലെ ക്ഷേത്രങ്ങളിൽ ഉപയോഗിക്കുന്ന ആചാരപരമായ പാത്രങ്ങളുടെ മിനിയേച്ചർ മാതൃകകളിൽ വൈവിധ്യമാർന്ന പരമ്പരാഗത വസ്തുക്കൾ ഉൾപ്പെടുന്നു. ഈ മിനിയേച്ചർ കഷണങ്ങൾ മതപരമായ ചടങ്ങുകളിലും ആചാരങ്ങളിലും ഉപയോഗിക്കുന്ന അവശ്യ ഉപകരണങ്ങളെ പ്രതിഫലിപ്പിക്കുന്നു. ഈ ഇനങ്ങളിൽ ചിലത് ഉൾപ്പെടുന്നു:\r\n\r\n1.ചോരിക്ക കുട്ടകം: വഴിപാടുകൾ സൂക്ഷിക്കാൻ ഉപയോഗിക്കുന്ന ചെറിയ പാത്രം.\r\n2.കർപ്പൂര തട്ട്: ആചാരങ്ങളിൽ കർപ്പൂരം കത്തിക്കാൻ ഉപയോഗിക്കുന്ന ഒരു പരമ്പരാഗത ഉപകരണം.\r\n3.കലശകുടം: പുണ്യജലം അല്ലെങ്കിൽ വഴിപാടുകൾ സൂക്ഷിക്കാൻ ഉപയോഗിക്കുന്ന ഒരു വിശുദ്ധ പാത്രം.\r\n4.വാൾ (ചുരിക): ക്ഷേത്രാചാരങ്ങളിൽ ഉപയോഗിക്കുന്ന ഒരു ആചാരപരമായ വാൾ.\r\n5.കൈ വിളക്ക്: ഘോഷയാത്രയിലോ പ്രാർത്ഥനയിലോ കൊണ്ടുപോകുന്ന ചെറിയ വിളക്ക്.\r\n6.അരമണി: ആചാരാനുഷ്ഠാനങ്ങളിൽ ഉപയോഗിക്കുന്ന പരമ്പരാഗത ജലപാത്രം.\r\n7.ചിലമ്പ്: ക്ഷേത്രാചാരങ്ങളിൽ ഉപയോഗിക്കുന്ന വാദ്യോപകരണം.\r\n8.വട്ടചെമ്പ്: നിവേദ്യത്തിന് ഉപയോഗിക്കുന്ന ഒരു ചെറിയ പിച്ചള അല്ലെങ്കിൽ ചെമ്പ് പാത്രം.\r\n9.ഗോമുഖി: ചില ആചാരങ്ങളിൽ ഉപയോഗിക്കുന്ന പശുവിൻ്റെ വായയുടെ ആകൃതിയിലുള്ള ഒരു പാത്രം.\r\n10. കിന്നം: വഴിപാടുകൾ അല്ലെങ്കിൽ ഭക്ഷണം സൂക്ഷിക്കാൻ ഉപയോഗിക്കുന്ന ഒരു പാത്രം.\r\n11.ചെമ്പു കോരിക: വഴിപാടുകൾക്കായി ഉപയോഗിക്കുന്ന ഒരു ആചാരപാത്രം.\r\n12.ആമ വിളക്ക്: ചടങ്ങുകളിൽ ഉപയോഗിക്കുന്ന പരമ്പരാഗത വിളക്ക്.\r\n13.വിളക്ക്: ക്ഷേത്രാചാരങ്ങളിൽ ഉപയോഗിക്കുന്ന അടിസ്ഥാന എണ്ണ വിളക്ക്.\r\n14.തൃത്താറ്റ്: ഒരു ചെറിയ ആചാരപരമായ പാത്രം.\r\n15.വാൽക്കനാടി: നിവേദ്യത്തിന് ഉപയോഗിക്കുന്ന ചെറിയ പാത്രം.\r\n16.ചെങ്കള: ആചാരാനുഷ്ഠാനങ്ങളിൽ ഉപയോഗിക്കുന്ന ഒരു തരം ആചാരമണി.\r\n\r\nഈ മിനിയേച്ചർ മാതൃകകൾ കേരളത്തിൻ്റെ സമ്പന്നമായ സാംസ്കാരികവും മതപരവുമായ പൈതൃകം കാണിക്കുന്നു, പലപ്പോഴും ക്ഷേത്രാരാധനയിലും പരമ്പരാഗത ആചാരങ്ങളിലും ഉപയോഗിക്കുന്നു.', 'മിനിയേച്ചർ മാതൃകകൾ'),
(106, 'sea shells', 'Sea shells are the hard, protective outer coverings of marine mollusks such as snails, clams, and oysters. These shells primarily comprise calcium carbonate and serve as a shield for the soft-bodied creatures inside. They come in various shapes, sizes, and colors, often featuring intricate patterns and textures.\r\n\r\nSea shells are commonly found along beaches and coastal areas, washed ashore by ocean currents. They have been used throughout history for decoration, jewelry, tools, and even currency in some cultures. Many collectors and beachcombers appreciate their natural beauty and uniqueness.', '2025-02-05', 'active', '364,365,366', 37, 'qr_codes\\exhibit_106.png', 'ഒച്ചുകൾ, കക്കകൾ, മുത്തുച്ചിപ്പികൾ തുടങ്ങിയ കടൽ മോളസ്കുകളുടെ കഠിനവും സംരക്ഷിതവുമായ പുറം കവചങ്ങളാണ് കടൽ ഷെല്ലുകൾ. ഈ ഷെല്ലുകൾ പ്രാഥമികമായി കാൽസ്യം കാർബണേറ്റ് അടങ്ങിയതാണ്, മാത്രമല്ല ഉള്ളിലെ മൃദുവായ ശരീരത്തിന് ഒരു കവചമായി വർത്തിക്കുന്നു. അവ പലതരം ആകൃതികളിലും വലുപ്പങ്ങളിലും നിറങ്ങളിലും വരുന്നു, പലപ്പോഴും സങ്കീർണ്ണമായ പാറ്റേണുകളും ടെക്സ്ചറുകളും അവതരിപ്പിക്കുന്നു.\r\n\r\nകടൽ ഷെല്ലുകൾ സാധാരണയായി കടൽത്തീരങ്ങളിലും തീരപ്രദേശങ്ങളിലും കാണപ്പെടുന്നു, സമുദ്ര പ്രവാഹങ്ങളാൽ കരയിലേക്ക് ഒഴുകുന്നു. ചില സംസ്കാരങ്ങളിൽ അലങ്കാരത്തിനും ആഭരണങ്ങൾക്കും ഉപകരണങ്ങൾക്കും കറൻസിക്കുപോലും ചരിത്രത്തിലുടനീളം അവ ഉപയോഗിച്ചിട്ടുണ്ട്. പല കളക്ടർമാരും ബീച്ച് കോമ്പറുകളും അവരുടെ പ്രകൃതി സൗന്ദര്യത്തെയും അതുല്യതയെയും അഭിനന്ദിക്കുന്നു.', 'കടൽ ഷെല്ലുകൾ'),
(107, 'Corals', 'The massive coral formations commonly known as Madrepores, which form coral islands and reefs, begin as a single coral animal. However, the buds produced by the coral polyp remain attached to the parent. The hardness of corals is due to the secretion of calcium carbonate by the lower part of the polyp\'s skin. As the body grows against this rigid surface, it must fold, and these folds further secrete plates of calcium carbonate, forming both the outer wall and internal septa. Over time, continuous budding and layering result in large, solid masses contributing to coral reef formation.\r\n\r\nIn addition to these \"stony corals,\" there are species that produce skeletons composed of loosely aggregated calcareous spicules. This category includes the so-called flexible corals or sea fans, and the precious coral used in jewelry. In the latter, the solid, brilliantly colored skeleton—highly valued for ornamental purposes—is deposited externally as a supplementary structure, unlike the star-patterned skeletons of stony corals.', '2025-02-05', 'active', '367,368', 37, 'qr_codes\\exhibit_107.png', 'പവിഴ ദ്വീപുകളും പവിഴപ്പുറ്റുകളും രൂപപ്പെടുന്ന മാഡ്രെപോറസ് എന്നറിയപ്പെടുന്ന കൂറ്റൻ പവിഴ രൂപീകരിക്കുന്നത് ഒരൊറ്റ പവിഴ ജീവിയിലൂടെ ആണ്. എന്നിരുന്നാലും, പവിഴ പോളിപ്പ് ഉത്പാദിപ്പിക്കുന്ന മുകുളങ്ങൾ മാതൃജീവിയുമായി ചേർന്നുതന്നെ നിൽക്കുന്നു. പവിഴപ്പുറ്റുകളുടെ കാഠിന്യം പോളിപ്പിൻ്റെ ചർമ്മത്തിൻ്റെ താഴത്തെ ഭാഗം കാൽസ്യം കാർബണേറ്റ് സ്രവിക്കുന്നതാണ്. ഈ കർക്കശമായ പ്രതലത്തിന് എതിരായി ശരീരം വളരുമ്പോൾ, അത് മടക്കിക്കളയണം, ഈ മടക്കുകൾ കാൽസ്യം കാർബണേറ്റിൻ്റെ പ്ലേറ്റുകളെ കൂടുതൽ സ്രവിക്കുകയും പുറം മതിലും ആന്തരിക സെപ്റ്റയും ഉണ്ടാക്കുകയും ചെയ്യുന്നു. കാലക്രമേണ, തുടർച്ചയായ മുളയ്ക്കൽ, പാളികൾ കെട്ടിപ്പടുക്കൽ എന്നിവയിലൂടെ വലിയ, ഉറപ്പുള്ള പവിഴപ്പുറ്റുകൾ  രൂപപ്പെടുന്നു.\r\n\r\nഈ \"കല്ലുകളുള്ള പവിഴപ്പുറ്റുകൾ\" കൂടാതെ, അയഞ്ഞ കൂട്ടുകൂടിയ സുഷിരങ്ങളുള്ള സ്പൈക്കുളുകൾ  രൂപപ്പെട്ട അവയവങ്ങൾ ഉള്ള ചില ജാതികളും ഉണ്ട്. ഇതിൽ, ലചിച്ച പവിഴങ്ങൾ അല്ലെങ്കിൽ കടൽവന്ദികൾ ഉൾപ്പെടുന്നു. കൂടാതെ, ആഭരണനിർമ്മാണത്തിന് ഉപയോഗിക്കുന്ന പ്രിയപ്പെട്ട പവിഴം കൂടി ഈ വിഭാഗത്തിലുൾപ്പെടുന്നു. രണ്ടാമത്തേതിൽ, കട്ടിയുള്ളതും തിളക്കമുള്ളതുമായ നിറമുള്ള അസ്ഥികൂടം-അലങ്കാര ആവശ്യങ്ങൾക്ക് വളരെ വിലമതിക്കുന്നു.കല്ലുകളുള്ള പവിഴപ്പുറ്റുകളുടെ നക്ഷത്ര-പാറ്റേൺ അസ്ഥികൂടങ്ങളിൽ നിന്ന് വ്യത്യസ്തമായി ഒരു അനുബന്ധ ഘടനയായി ബാഹ്യമായി നിക്ഷേപിക്കുന്നു.', 'പവിഴങ്ങൾ'),
(108, 'Marine Wonders', 'The ocean is home to many fascinating creatures, each with a unique role. Sea cucumbers, found in colors like black, red, and yellow, can grow up to two meters long and help clean the ocean floor. Sea anemones are predatory marine animals found in coastal and deep-sea areas, ranging from three centimeters to one and a half meters in size.  \r\n\r\nSeahorses, found in tropical seas, range from 16 mm to 35 cm. Unlike most fish, male seahorses give birth. Octopuses, called kinavalli, have no bones, allowing them to squeeze into small spaces. They have eight arms, and if one is lost, it grows back. Their main food is crabs and clams. A female octopus lays over 100,000 eggs and protects them. Octopuses have three hearts.  \r\n\r\nThe delicate sea fan adds beauty to coral reefs. The sea lily’s closest relatives are starfish, sea urchins, brittle stars, and sea cucumbers. These are marine invertebrates. Sea lilies have a digestive and reflex system, and their tentacles close beautifully. When they grow densely, they provide protection and shelter for other sea creatures. Their horned descendants are called feather stars. Finally, tiny, jelly-like cuttlefish eggs hold the promise of new life in the ocean depths.', '0025-02-05', 'active', '369,370,371,372,373,374,375,376', 37, 'qr_codes\\exhibit_108.png', 'സമുദ്രം നിരവധി ആകർഷകമായ ജീവികളുടെ ആവാസ കേന്ദ്രമാണ്, ഓരോന്നിനും അതിന്റേതായ പങ്കുണ്ട്. കറുപ്പ്, ചുവപ്പ്, മഞ്ഞ തുടങ്ങിയ നിറങ്ങളിൽ കാണപ്പെടുന്ന കടൽ വെള്ളരിക്ക് രണ്ട് മീറ്റർ വരെ നീളത്തിൽ വളരാനും സമുദ്രത്തിന്റെ അടിത്തട്ട് വൃത്തിയാക്കാനും കഴിയും. കടൽ അനിമോണുകൾ തീരദേശ, ആഴക്കടൽ പ്രദേശങ്ങളിൽ കാണപ്പെടുന്ന ഇരപിടിയൻ സമുദ്രജീവികളാണ്, മൂന്ന് സെന്റീമീറ്റർ മുതൽ ഒന്നര മീറ്റർ വരെ വലിപ്പമുണ്ട്.\r\n\r\nഉഷ്ണമേഖലാ കടലുകളിൽ കാണപ്പെടുന്ന കടൽക്കുതിരകൾക്ക് 16 മില്ലിമീറ്റർ മുതൽ 35 സെന്റീമീറ്റർ വരെ നീളമുണ്ട്. മിക്ക മത്സ്യങ്ങളിൽ നിന്നും വ്യത്യസ്തമായി, ആൺ കടൽക്കുതിരകൾ പ്രസവിക്കുന്നു. കിനവല്ലി എന്നറിയപ്പെടുന്ന നീരാളികൾക്ക് അസ്ഥികളില്ല, അവ ചെറിയ ഇടങ്ങളിലേക്ക് ഞെരുങ്ങാൻ അനുവദിക്കുന്നു. അവയ്ക്ക് എട്ട് കൈകളുണ്ട്, ഒന്ന് നഷ്ടപ്പെട്ടാൽ അത് വീണ്ടും വളരുന്നു. അവയുടെ പ്രധാന ഭക്ഷണം ഞണ്ടുകളും കക്കകളുമാണ്. ഒരു പെൺ നീരാളി 100,000-ത്തിലധികം മുട്ടകൾ ഇടുകയും അവയെ സംരക്ഷിക്കുകയും ചെയ്യുന്നു. നീരാളികൾക്ക് മൂന്ന് ഹൃദയങ്ങളുണ്ട്.\r\n\r\nഅതിലോലമായ കടൽ ഫാൻ പവിഴപ്പുറ്റുകളുടെ ഭംഗി കൂട്ടുന്നു. കടൽ താമരയുടെ ഏറ്റവും അടുത്ത ബന്ധുക്കൾ നക്ഷത്ര മത്സ്യങ്ങൾ, കടൽ ഉർച്ചിനുകൾ, പൊട്ടുന്ന നക്ഷത്രങ്ങൾ, കടൽ വെള്ളരി എന്നിവയാണ്. ഇവ സമുദ്ര അകശേരുക്കളാണ്. കടൽ ലില്ലികൾ ദഹന, റിഫ്ലെക്സ് സംവിധാനങ്ങൾ ഉള്ളവയാണ്, അവയുടെ ടെന്റക്കിളുകൾ മനോഹരമായി അടയ്ക്കുന്നു. അവ ഇടതൂർന്ന് വളരുമ്പോൾ, അവ മറ്റ് കടൽജീവികൾക്ക് സംരക്ഷണവും അഭയവും നൽകുന്നു. അവയുടെ കൊമ്പുള്ള പിൻഗാമികളെ തൂവൽ നക്ഷത്രങ്ങൾ എന്ന് വിളിക്കുന്നു. ഒടുവിൽ, ചെറിയ, ജെല്ലി പോലുള്ള കട്ടിൽഫിഷ് മുട്ടകൾ സമുദ്രത്തിന്റെ ആഴങ്ങളിൽ പുതിയ ജീവിതത്തിന്റെ വാഗ്ദാനം നൽകുന്നു.', 'മറൈൻ അത്ഭുതങ്ങൾ'),
(109, 'Antique Clocks', 'These clocks, often found in old Kerala mansions, royal palaces, and heritage homes, were influenced by European designs but adapted to local aesthetics.  \r\n\r\nMany of these clocks were **pendulum wall clocks**, **grandfather clocks**, and **mantel clocks**, brought by British, Dutch, and Portuguese traders. Some were handcrafted by local artisans, featuring intricate wood carvings, brass embellishments, and traditional motifs. Clocks with Roman numerals and wooden cases were especially common in Kerala’s aristocratic homes.  \r\n\r\nA unique type of clock found in Kerala is the **pillar clock**, often placed in temples or old households. These clocks, some over a century old, were made from teakwood and had long, melodious chimes.  \r\n\r\nToday, Kerala antique clocks are treasured collectibles, preserved in museums and heritage homes.', '2025-02-06', 'active', '379', 39, 'qr_codes\\exhibit_109.png', 'പഴയ കേരള മാളികകളിലും രാജകൊട്ടാരങ്ങളിലും പൈതൃക ഭവനങ്ങളിലും പലപ്പോഴും കാണപ്പെടുന്ന ഈ ക്ലോക്കുകൾ യൂറോപ്യൻ ഡിസൈനുകളുടെ സ്വാധീനത്തിൽ പെട്ടവയായിരുന്നു, പക്ഷേ പ്രാദേശിക സൗന്ദര്യശാസ്ത്രവുമായി പൊരുത്തപ്പെട്ടു.\r\n\r\nഈ ക്ലോക്കുകളിൽ പലതും ബ്രിട്ടീഷ്, ഡച്ച്, പോർച്ചുഗീസ് വ്യാപാരികൾ കൊണ്ടുവന്ന **പെൻഡുലം വാൾ ക്ലോക്കുകൾ**, **മുത്തച്ഛൻ ക്ലോക്കുകൾ**, **മാന്റൽ ക്ലോക്കുകൾ** എന്നിവയായിരുന്നു. ചിലത് പ്രാദേശിക കരകൗശല വിദഗ്ധർ കൈകൊണ്ട് നിർമ്മിച്ചവയാണ്, അവയിൽ സങ്കീർണ്ണമായ മരക്കൊത്തുപണികൾ, പിച്ചള അലങ്കാരങ്ങൾ, പരമ്പരാഗത രൂപങ്ങൾ എന്നിവ ഉൾപ്പെടുന്നു. റോമൻ അക്കങ്ങളും മരപ്പെട്ടികളും ഉള്ള ക്ലോക്കുകൾ കേരളത്തിലെ പ്രഭുക്കന്മാരുടെ വീടുകളിൽ പ്രത്യേകിച്ചും സാധാരണമായിരുന്നു.\r\n\r\nകേരളത്തിൽ കാണപ്പെടുന്ന ഒരു സവിശേഷ തരം ക്ലോക്ക് **സ്തംഭ ക്ലോക്ക്** ആണ്, പലപ്പോഴും ക്ഷേത്രങ്ങളിലോ പഴയ വീടുകളിലോ സ്ഥാപിക്കുന്നു. ഒരു നൂറ്റാണ്ടിലധികം പഴക്കമുള്ള ഈ ക്ലോക്കുകൾ തേക്ക് മരത്തിൽ നിന്നാണ് നിർമ്മിച്ചത്, നീളമുള്ളതും മധുരമുള്ളതുമായ മണിനാദങ്ങൾ ഉണ്ടായിരുന്നു.\r\n\r\nഇന്ന്, കേരളത്തിലെ പുരാതന ക്ലോക്കുകൾ അമൂല്യമായ ശേഖരണ വസ്തുക്കളാണ്, മ്യൂസിയങ്ങളിലും പൈതൃക ഭവനങ്ങളിലും അവ സംരക്ഷിക്കപ്പെടുന്നു.', 'പുരാതന ക്ലോക്കുകൾ'),
(110, 'Common Prawns, Shrimps, and Crabs', '1.Indian Prawn (Fenneropenaeus indicus)\r\nThe Indian prawn is a popular seafood species found in India’s coastal waters. It grows quickly and is widely farmed because of its high demand. This prawn has a light-colored, slightly see-through body and is known for its sweet taste and firm texture.\r\n\r\n2.Kadal Shrimp (Metapenaeus dobsoni)\r\nKadal shrimp is a small shrimp species found along the Indian coast and the Indo-West Pacific region. It has a pale yellow to brownish body with a slightly curved rostrum. Males have a distinct barbed spine on their third leg, while females have a special reproductive structure. This shrimp is commonly used in seafood dishes.\r\n\r\n3.Banana prawns\r\nThe banana prawn is also known as the banana shrimp, white prawn, or white banana prawn. It is a medium-sized prawn with a white to yellow body, reddish-brown spots, and legs that range in color from cream to yellow or pink to red. Banana prawns have a mild, sweet flavor and are a good source of protein, Omega-3, phosphorus, and selenium.\r\n\r\n4.Three-Spot Swimming Crab (Portunus sanguinolentus)\r\nThis crab is named for the three red spots on its shell. It lives in shallow waters and is a strong swimmer. It is caught for its delicious meat and is often used in curries and soups.\r\n\r\n5.Black Tiger Prawn (Penaeus monodon)\r\nOne of the largest shrimp species, the black tiger prawn has dark stripes on its body. It is farmed in many countries, including India, because of its high market value. It has firm, tasty meat and is great for grilling, frying, or seafood dishes.\r\n\r\n6.Giant River Prawn (Macrobrachium rosenbergii)\r\nThis freshwater prawn is found in rivers and lakes. Males have long blue claws that make them easy to recognize. It is widely farmed and used in grilled dishes, curries, and seafood platters.\r\n\r\n7.Kiddi Shrimp (Parapenaeopsis stylifera)\r\nA small shrimp species found along India’s coast, kiddi shrimp is mainly used for making dried shrimp. It is affordable and commonly used in soups and curries.\r\n\r\n8.Sand Lobster (Thenus orientalis)\r\nAlso called the flathead lobster, this species has a wide, flat body and no large claws. It lives on sandy seabeds and is highly valued for its sweet, tender meat. It is often grilled or used in rich seafood dishes.\r\n\r\n9.Sunset Shrimp (Macrobrachium idella)\r\nThe sunset shrimp, also known as Macrobrachium idella, is a species of freshwater prawn. It is often called the \"slender river prawn\" due to its long, slender claws. This shrimp has a transparent body with brown speckles and is relatively smaller compared to other Macrobrachium species.\r\n\r\n10.Speckled Shrimp\r\nNamed for its spotted body, the speckled shrimp blends into its surroundings in shallow coastal waters. It is commonly used in fresh or dried seafood dishes in local markets.', '2025-02-10', 'active', '380,381,382,383,384,385,386,387,388', 37, 'qr_codes\\exhibit_110.png', '1. ഇന്ത്യൻ ചെമ്മീൻ (ഫെന്നറോപീനിയസ് ഇൻഡിക്കസ്)\r\nഇന്ത്യയുടെ തീരദേശ ജലാശയങ്ങളിൽ കാണപ്പെടുന്ന ഒരു ജനപ്രിയ സമുദ്രവിഭവ ഇനമാണ് ഇന്ത്യൻ ചെമ്മീൻ. ഇത് വേഗത്തിൽ വളരുന്നു, ഉയർന്ന ഡിമാൻഡ് കാരണം ഇത് വ്യാപകമായി വളർത്തപ്പെടുന്നു. ഈ ചെമ്മീന് ഇളം നിറമുള്ളതും ചെറുതായി വ്യക്തവുമായ ശരീരമുണ്ട്, കൂടാതെ മധുരമുള്ള രുചിക്കും ഉറച്ച ഘടനയ്ക്കും പേരുകേട്ടതാണ്.\r\n\r\n2. കടൽ ചെമ്മീൻ (മെറ്റാപീനിയസ് ഡോബ്‌സോണി)\r\nഇന്ത്യൻ തീരത്തും ഇന്തോ-വെസ്റ്റ് പസഫിക് മേഖലയിലും കാണപ്പെടുന്ന ഒരു ചെറിയ ചെമ്മീൻ ഇനമാണ് കടൽ ചെമ്മീൻ. ഇതിന് ഇളം മഞ്ഞ മുതൽ തവിട്ട് വരെ നിറമുള്ള ശരീരവും ചെറുതായി വളഞ്ഞ റോസ്ട്രവും ഉണ്ട്. ആൺ ചെമ്മീനുകൾക്ക് മൂന്നാം കാലിൽ ഒരു പ്രത്യേക മുള്ളുള്ള നട്ടെല്ലുണ്ട്, അതേസമയം പെൺചെമ്മീന് പ്രത്യേക പ്രത്യുത്പാദന ഘടനയുണ്ട്. ഈ ചെമ്മീൻ സാധാരണയായി കടൽ വിഭവങ്ങളിൽ ഉപയോഗിക്കുന്നു.\r\n\r\n3. വാഴ ചെമ്മീൻ\r\nവാഴ ചെമ്മീൻ, വെള്ള ചെമ്മീൻ, വെളുത്ത വാഴ ചെമ്മീൻ എന്നും അറിയപ്പെടുന്നു. വെള്ള മുതൽ മഞ്ഞ വരെയുള്ള ശരീരം, ചുവപ്പ് കലർന്ന തവിട്ട് നിറത്തിലുള്ള പാടുകൾ, ക്രീം മുതൽ മഞ്ഞ അല്ലെങ്കിൽ പിങ്ക് മുതൽ ചുവപ്പ് വരെ നിറങ്ങളിലുള്ള കാലുകൾ എന്നിവയുള്ള ഇടത്തരം വലിപ്പമുള്ള ഒരു ചെമ്മീനാണിത്. നേരിയതും മധുരമുള്ളതുമായ രുചിയുള്ള വാഴ ചെമ്മീനിന് പ്രോട്ടീൻ, ഒമേഗ-3, ഫോസ്ഫറസ്, സെലിനിയം എന്നിവയുടെ നല്ല ഉറവിടമാണിത്.\r\n\r\n4. ത്രീ-സ്പോട്ട് സ്വിമ്മിംഗ് ക്രാബ് (പോർട്ടുനസ് സാങ്വിനോലെന്റസ്)\r\nതൊലിയിലെ മൂന്ന് ചുവന്ന പാടുകൾ കൊണ്ടാണ് ഈ ഞണ്ടിന് ഈ പേര് ലഭിച്ചത്. ഇത് ആഴം കുറഞ്ഞ വെള്ളത്തിൽ വസിക്കുകയും ശക്തനായ നീന്തൽക്കാരനുമാണ്. രുചികരമായ മാംസം കൊണ്ടാണ് ഇതിനെ പിടിക്കുന്നത്, കൂടാതെ പലപ്പോഴും കറികളിലും സൂപ്പുകളിലും ഇത് ഉപയോഗിക്കുന്നു.\r\n\r\n5. ബ്ലാക്ക് ടൈഗർ ചെമ്മീൻ (പെനിയസ് മോണോഡോൺ)\r\nഏറ്റവും വലിയ ചെമ്മീൻ ഇനങ്ങളിൽ ഒന്നായ ബ്ലാക്ക് ടൈഗർ ചെമ്മീനിന് ശരീരത്തിൽ ഇരുണ്ട വരകളുണ്ട്. ഉയർന്ന വിപണി മൂല്യം കാരണം ഇന്ത്യ ഉൾപ്പെടെ പല രാജ്യങ്ങളിലും ഇത് വളർത്തുന്നു. ഇതിന് ഉറച്ചതും രുചികരവുമായ മാംസമുണ്ട്, കൂടാതെ ഗ്രിൽ ചെയ്യുന്നതിനും വറുക്കുന്നതിനും അല്ലെങ്കിൽ കടൽ വിഭവങ്ങൾക്കും ഇത് മികച്ചതാണ്.\r\n\r\n6. ഭീമൻ നദി ചെമ്മീൻ (മാക്രോബ്രാച്ചിയം റോസെൻബെർഗി)\r\nഈ ശുദ്ധജല ചെമ്മീൻ നദികളിലും തടാകങ്ങളിലും കാണപ്പെടുന്നു. ആൺചെമ്മീന് നീളമുള്ള നീല നഖങ്ങളുണ്ട്, അത് അവയെ തിരിച്ചറിയാൻ എളുപ്പമാക്കുന്നു. ഇത് വ്യാപകമായി വളർത്തുകയും ഗ്രിൽ ചെയ്ത വിഭവങ്ങൾ, കറികളിൽ, സീഫുഡ് പ്ലേറ്ററുകളിൽ ഉപയോഗിക്കുകയും ചെയ്യുന്നു.\r\n\r\n7. കിഡ്ഡി ചെമ്മീൻ (പാരപെനിയോപ്സിസ് സ്റ്റൈലിഫെറ)\r\nഇന്ത്യയുടെ തീരത്ത് കാണപ്പെടുന്ന ഒരു ചെറിയ ചെമ്മീൻ ഇനമായ കിഡ്ഡി ചെമ്മീൻ പ്രധാനമായും ഉണക്ക ചെമ്മീൻ ഉണ്ടാക്കാൻ ഉപയോഗിക്കുന്നു. ഇത് താങ്ങാനാവുന്ന വിലയിൽ ലഭ്യമാണ്, കൂടാതെ സൂപ്പുകളിലും കറികളിലും സാധാരണയായി ഉപയോഗിക്കുന്നു.\r\n\r\n8. മണൽ ലോബ്സ്റ്റർ (തെനസ് ഓറിയന്റലിസ്)\r\nഫ്ലാറ്റ്ഹെഡ് ലോബ്സ്റ്റർ എന്നും അറിയപ്പെടുന്ന ഈ ഇനത്തിന് വീതിയേറിയതും പരന്നതുമായ ശരീരവും വലിയ നഖങ്ങളൊന്നുമില്ല. ഇത് മണൽ നിറഞ്ഞ കടൽത്തീരങ്ങളിൽ വസിക്കുന്നു, കൂടാതെ മധുരവും മൃദുവായതുമായ മാംസത്തിന് ഇത് വളരെ വിലമതിക്കപ്പെടുന്നു. ഇത് പലപ്പോഴും ഗ്രിൽ ചെയ്യുകയോ സമ്പന്നമായ സമുദ്രവിഭവ വിഭവങ്ങളിൽ ഉപയോഗിക്കുകയോ ചെയ്യുന്നു.\r\n\r\n9. സൂര്യാസ്തമയ ചെമ്മീൻ (മാക്രോബ്രാച്ചിയം ഐഡെല്ല)\r\nമാക്രോബ്രാച്ചിയം ഐഡെല്ല എന്നും അറിയപ്പെടുന്ന സൂര്യാസ്തമയ ചെമ്മീൻ ശുദ്ധജല ചെമ്മീന്റെ ഒരു ഇനമാണ്. നീളമുള്ളതും നേർത്തതുമായ നഖങ്ങൾ കാരണം ഇതിനെ പലപ്പോഴും \"മെലിഞ്ഞ നദി ചെമ്മീൻ\" എന്ന് വിളിക്കുന്നു. ഈ ചെമ്മീനിന് തവിട്ട് പുള്ളികളുള്ള സുതാര്യമായ ശരീരമുണ്ട്, മറ്റ് മാക്രോബ്രാച്ചിയം ഇനങ്ങളെ അപേക്ഷിച്ച് താരതമ്യേന ചെറുതാണ്.\r\n\r\n10. പുള്ളികളുള്ള ചെമ്മീൻ\r\nപുള്ളികളുള്ള ശരീരത്തിന്റെ പേരിൽ അറിയപ്പെടുന്ന ഈ ചെമ്മീൻ, ആഴം കുറഞ്ഞ തീരദേശ ജലത്തിൽ ചുറ്റുപാടുകളുമായി ലയിക്കുന്നു. പ്രാദേശിക വിപണികളിലെ പുതിയതോ ഉണങ്ങിയതോ ആയ സമുദ്രവിഭവ വിഭവങ്ങളിൽ ഇത് സാധാരണയായി ഉപയോഗിക്കുന്നു.', 'സാധാരണ കൊഞ്ച്, ചെമ്മീൻ, ഞണ്ട് എന്നിവ'),
(111, 'Ivory collections', 'ivory artifacts were made by skilled artisans using hand tools. First, ivory was sourced from elephant tusks and cleaned. It was then cut and shaped using saws and chisels. Detailed carving was done carefully to create statues, boxes, or panels with fine patterns. After carving, the surface was polished with sandpaper and natural oils to give it a smooth finish. Some items had engraved designs filled with dyes or gold for decoration. Fans and cases were made by fitting carved ivory with wood or metal. These artifacts were stored carefully to prevent damage and were often kept in temples or royal collections. Today, ivory trade is banned, and alternative materials like bone or resin are used instead. \r\nThese pieces hold cultural, religious, and historical significance. Here are some notable items from the collection:\r\n\r\n1. Parvathy – An ivory statue of Goddess Parvathy, symbolizing grace and divinity.  \r\n\r\n2. Sree Buddha – An ivory carving of Buddha, representing peace and wisdom.  \r\n\r\n3. Narada – A statue of Sage Narada, the messenger of the gods.  \r\n\r\n4. Brahma – An ivory figure of Lord Brahma, the creator in Hindu tradition.  \r\n\r\n5. Ivory Fan – A beautifully crafted ivory fan, showing royal elegance.  \r\n\r\n6. Ivory Statue of Late Rama Varma Maharaja – A detailed statue honoring the former ruler.  \r\n\r\n7. Panel of Sinhalese Figures – A carved panel of traditional Sinhalese characters.  \r\n\r\n8. Horn-Carved Case with Ivory Fittings – A decorative horn case with ivory details for storing valuables.  \r\n\r\n9. Box Carving – A small ivory box, used for jewelry or religious items.', '2025-02-10', 'active', '389,390,391,392,393', 30, 'qr_codes\\exhibit_111.png', 'കൈ ഉപകരണങ്ങൾ ഉപയോഗിച്ച് വൈദഗ്ധ്യമുള്ള കരകൗശല വിദഗ്ധരാണ് ആനക്കൊമ്പുകൾ കൊണ്ട് നിർമ്മിച്ചത്. ആദ്യം, ആനക്കൊമ്പുകളിൽ നിന്ന് ആനക്കൊമ്പ് വേർതിരിച്ചെടുത്ത് വൃത്തിയാക്കി. പിന്നീട് അത് വെട്ടി രൂപപ്പെടുത്തി. സൂക്ഷ്മമായ പാറ്റേണുകളുള്ള പ്രതിമകൾ, പെട്ടികൾ അല്ലെങ്കിൽ പാനലുകൾ എന്നിവ നിർമ്മിക്കാൻ വിശദമായ കൊത്തുപണികൾ ശ്രദ്ധാപൂർവ്വം ചെയ്തു. കൊത്തുപണികൾക്ക് ശേഷം, ഉപരിതലം മിനുസമാർന്ന ഫിനിഷ് നൽകുന്നതിനായി സാൻഡ്പേപ്പറും പ്രകൃതിദത്ത എണ്ണകളും ഉപയോഗിച്ച് മിനുക്കി. ചില ഇനങ്ങളിൽ അലങ്കാരത്തിനായി ചായങ്ങളോ സ്വർണ്ണമോ നിറച്ച കൊത്തുപണികൾ ഉണ്ടായിരുന്നു. കൊത്തിയെടുത്ത ആനക്കൊമ്പ് മരത്തിലോ ലോഹത്തിലോ ഘടിപ്പിച്ചാണ് ഫാനുകളും കെയ്‌സുകളും നിർമ്മിച്ചത്. കേടുപാടുകൾ സംഭവിക്കാതിരിക്കാൻ ഈ പുരാവസ്തുക്കൾ ശ്രദ്ധാപൂർവ്വം സൂക്ഷിച്ചിരുന്നു, അവ പലപ്പോഴും ക്ഷേത്രങ്ങളിലോ രാജകീയ ശേഖരങ്ങളിലോ സൂക്ഷിച്ചിരുന്നു. ഇന്ന്, ആനക്കൊമ്പ് വ്യാപാരം നിരോധിച്ചിരിക്കുന്നു, പകരം അസ്ഥി അല്ലെങ്കിൽ റെസിൻ പോലുള്ള ഇതര വസ്തുക്കൾ ഉപയോഗിക്കുന്നു.\r\n\r\nഈ കഷണങ്ങൾ സാംസ്കാരികവും മതപരവും ചരിത്രപരവുമായ പ്രാധാന്യമുള്ളവയാണ്. ശേഖരത്തിൽ നിന്നുള്ള ചില ശ്രദ്ധേയമായ ഇനങ്ങൾ ഇതാ:\r\n\r\n1. പാർവതി – കൃപയെയും ദിവ്യത്വത്തെയും പ്രതീകപ്പെടുത്തുന്ന പാർവതി ദേവിയുടെ ആനക്കൊമ്പ് പ്രതിമ.\r\n\r\n2. ശ്രീ ബുദ്ധൻ – സമാധാനത്തെയും ജ്ഞാനത്തെയും പ്രതിനിധീകരിക്കുന്ന ബുദ്ധന്റെ ആനക്കൊമ്പ് കൊത്തുപണി.\r\n\r\n3. നാരദൻ – ദേവന്മാരുടെ ദൂതനായ നാരദ മുനിയുടെ പ്രതിമ.\r\n\r\n4. ബ്രഹ്മാവ് – ഹിന്ദു പാരമ്പര്യത്തിലെ സ്രഷ്ടാവായ ബ്രഹ്മാവിന്റെ ഒരു ആനക്കൊമ്പ് രൂപം.\r\n\r\n5. ആനക്കൊമ്പ് ഫാൻ – രാജകീയ ചാരുത പ്രകടമാക്കുന്ന മനോഹരമായി നിർമ്മിച്ച ആനക്കൊമ്പ് ഫാൻ.\r\n\r\n6. പരേതനായ രാമവർമ്മ മഹാരാജാവിന്റെ ആനക്കൊമ്പ് പ്രതിമ – മുൻ ഭരണാധികാരിയെ ആദരിക്കുന്ന വിശദമായ ഒരു പ്രതിമ.\r\n\r\n7. സിംഹള രൂപങ്ങളുടെ പാനൽ – പരമ്പരാഗത സിംഹള കഥാപാത്രങ്ങളുടെ കൊത്തുപണികളുള്ള ഒരു പാനൽ.\r\n\r\n8. ആനക്കൊമ്പ് ഫിറ്റിംഗുകളുള്ള കൊമ്പ് കൊത്തിയ പെട്ടി – വിലപിടിപ്പുള്ള വസ്തുക്കൾ സൂക്ഷിക്കുന്നതിനുള്ള ആനക്കൊമ്പ് വിശദാംശങ്ങളുള്ള ഒരു അലങ്കാര കൊമ്പ് പെട്ടി.\r\n\r\n9. പെട്ടി കൊത്തുപണി – ആഭരണങ്ങൾക്കോ ​​മതപരമായ വസ്തുക്കൾക്കോ ​​ഉപയോഗിക്കുന്ന ഒരു ചെറിയ ആനക്കൊമ്പ് പെട്ടി.', 'ഐവറി ശേഖരങ്ങൾ'),
(112, 'Suthra Pattika Wood Carvings', 'Suthra Pattika is a traditional wood carving style from Kerala, India. It features intricate geometric and floral patterns carved onto wooden panels used indoors, pillars, and other architectural elements of homes and temples.  \r\n\r\nThese carvings often have symbolic meanings, representing auspicious signs, deities, or nature. Skilled artisans pass down this craft through generations, using traditional tools and techniques. While the style remains similar, designs may vary slightly across different regions of Kerala.', '2025-02-10', 'active', '394,395,396,397', 30, 'qr_codes\\exhibit_112.png', 'ഇന്ത്യയിലെ കേരളത്തിൽ നിന്നുള്ള ഒരു പരമ്പരാഗത മരക്കൊമ്പുകൊത്തുപണി രീതിയാണ് സൂത്ര പട്ടിക. വീടുകൾക്കുള്ളിലും തൂണുകളിലും വീടുകളുടെയും ക്ഷേത്രങ്ങളുടെയും മറ്റ് വാസ്തുവിദ്യാ ഘടകങ്ങളിലും ഉപയോഗിക്കുന്ന തടി പാനലുകളിൽ കൊത്തിയെടുത്ത സങ്കീർണ്ണമായ ജ്യാമിതീയവും പുഷ്പമാതൃകകളും ഇതിൽ ഉൾപ്പെടുന്നു.\r\n\r\nഈ കൊത്തുപണികൾക്ക് പലപ്പോഴും പ്രതീകാത്മക അർത്ഥങ്ങളുണ്ട്, അവ ശുഭസൂചനകളെയോ ദേവതകളെയോ പ്രകൃതിയെയോ പ്രതിനിധീകരിക്കുന്നു. പരമ്പരാഗത ഉപകരണങ്ങളും സാങ്കേതിക വിദ്യകളും ഉപയോഗിച്ച് വൈദഗ്ധ്യമുള്ള കരകൗശല വിദഗ്ധർ തലമുറകളിലൂടെ ഈ കരകൗശലവസ്തുക്കൾ കൈമാറുന്നു. ശൈലി സമാനമായി തുടരുന്നുണ്ടെങ്കിലും, കേരളത്തിലെ വിവിധ പ്രദേശങ്ങളിൽ ഡിസൈനുകൾ അല്പം വ്യത്യാസപ്പെട്ടിരിക്കാം.', 'സൂത്ര പട്ടിക മരക്കൊമ്പുകൊത്തുപണികൾ'),
(113, 'Traditional Metal Sculptures of Kerala', 'Kerala’s metal sculptures beautifully depict deities and mythological figures, crafted with skill and detail. Made from bronze or panchaloha (a five-metal alloy), they play an important role in temple art and traditions.\r\n\r\nSculptures and Their Significance:\r\nVishnumaya – A divine figure known for his mystical powers, often worshipped for protection and blessings.\r\n\r\nAnanda Vigraham – A depiction of bliss and serenity, symbolizing inner peace and spiritual joy.\r\n\r\nDwarapalakan – The guardian figure placed at temple entrances, representing strength and protection.\r\n\r\nSreedevi – A form of Goddess Lakshmi, worshipped as the goddess of wealth, prosperity, and well-being.', '2025-02-10', 'active', '398,399,400,401', 41, 'qr_codes\\exhibit_113.png', 'കേരളത്തിലെ ലോഹ ശില്പങ്ങൾ ദേവതകളെയും പുരാണ രൂപങ്ങളെയും മനോഹരമായി ചിത്രീകരിക്കുന്നു, വൈദഗ്ധ്യത്തോടെയും വിശദാംശങ്ങളോടെയും അവ നിർമ്മിച്ചിരിക്കുന്നു. വെങ്കലം അല്ലെങ്കിൽ പഞ്ചലോഹ (അഞ്ച് ലോഹങ്ങളുടെ ഒരു ലോഹസങ്കരം) കൊണ്ട് നിർമ്മിച്ച ഇവ ക്ഷേത്ര കലയിലും പാരമ്പര്യങ്ങളിലും ഒരു പ്രധാന പങ്ക് വഹിക്കുന്നു.\r\n\r\nശില്പങ്ങളും അവയുടെ പ്രാധാന്യവും:\r\n\r\nവിഷ്ണുമായ - നിഗൂഢ ശക്തികൾക്ക് പേരുകേട്ട ഒരു ദിവ്യ രൂപം, സംരക്ഷണത്തിനും അനുഗ്രഹത്തിനും വേണ്ടി പലപ്പോഴും ആരാധിക്കപ്പെടുന്നു.\r\n\r\nആനന്ദ വിഗ്രഹം - ആന്തരിക സമാധാനത്തെയും ആത്മീയ സന്തോഷത്തെയും പ്രതീകപ്പെടുത്തുന്ന ആനന്ദത്തിന്റെയും ശാന്തതയുടെയും ചിത്രീകരണം.\r\n\r\nദ്വാരപാലകൻ - ശക്തിയെയും സംരക്ഷണത്തെയും പ്രതിനിധീകരിക്കുന്ന ക്ഷേത്ര പ്രവേശന കവാടങ്ങളിൽ സ്ഥാപിച്ചിരിക്കുന്ന കാവൽ രൂപം.\r\n\r\nശ്രീദേവി - ലക്ഷ്മി ദേവിയുടെ ഒരു രൂപം, സമ്പത്തിന്റെയും സമൃദ്ധിയുടെയും ക്ഷേമത്തിന്റെയും ദേവതയായി ആരാധിക്കപ്പെടുന്നു.', 'കേരളത്തിലെ പരമ്പരാഗത ലോഹ ശില്പങ്ങൾ'),
(114, 'Collection of Bird Eggs', '1.Ostrich Egg – The largest bird egg, known for its thick shell and creamy-white color.\r\n\r\n2.Pelican Egg – Relatively large, white, and oval-shaped, belonging to waterbirds with distinctive throat pouches.\r\n\r\n3.Adjutant Stork Egg – A sizable egg with a smooth surface, laid by this large wading bird.\r\n\r\n4.Crow Egg – Small to medium-sized, speckled with brown or gray, commonly found in nests in urban and rural areas.\r\n\r\n5.Common Myna Egg – Light blue or greenish, small, and smooth, often laid in tree hollows or man-made structures.\r\n\r\n6.Quail Egg – Tiny and speckled with dark brown spots, commonly seen in ground nests.\r\n\r\n7.Tailorbird Egg – Very small and delicate, often pale with speckles, laid in intricately stitched leaves.\r\n\r\n8.Golden Pheasant Egg – Medium-sized, pale cream or buff-colored, laid by this vibrant, ornamental bird.\r\n\r\n9.Pea Hen Egg – Larger, off-white or cream-colored, laid by the female peafowl.\r\n\r\n10.Silver Pheasant Egg – Light-colored and medium-sized, laid by this strikingly feathered bird.\r\n\r\n11.Pigeon Egg – Small, smooth, and white, typically laid in simple nests.\r\n\r\n12.Owl Egg – White and round, laid in tree cavities or nest boxes.\r\n\r\n13.Chukar Partridge Egg – Small, oval, and pale with brown speckles, laid by this ground-dwelling bird.\r\n\r\n14.Grey-headed Swamphen Egg – Light-colored, often found in wetlands, laid by this large water bird', '2025-02-10', 'active', '402,403,404,405,406,407,408,409,410,411,412,413,414,415', 36, 'qr_codes\\exhibit_114.png', '1. ഒട്ടകപ്പക്ഷി മുട്ട – കട്ടിയുള്ള പുറംതോടും ക്രീം നിറവും കൊണ്ട് അറിയപ്പെടുന്ന ഏറ്റവും വലിയ പക്ഷി മുട്ട.\r\n\r\n2. പെലിക്കൻ മുട്ട – താരതമ്യേന വലുതും വെളുത്തതും ഓവൽ ആകൃതിയിലുള്ളതും, തൊണ്ടയിലെ സഞ്ചികളുള്ളതുമായ ജലപക്ഷികളിൽ പെടുന്നു.\r\n\r\n3. അഡ്ജ്യൂട്ടന്റ് സ്റ്റോർക്ക് മുട്ട – മിനുസമാർന്ന പ്രതലമുള്ള ഒരു വലിയ മുട്ട, ഈ വലിയ നീർക്കുതിര ഇടുന്നു.\r\n\r\n4. കാക്ക മുട്ട – ചെറുതോ ഇടത്തരമോ വലിപ്പമുള്ള, തവിട്ട് അല്ലെങ്കിൽ ചാരനിറത്തിലുള്ള പുള്ളികളുള്ള, നഗരപ്രദേശങ്ങളിലും ഗ്രാമപ്രദേശങ്ങളിലും സാധാരണയായി കൂടുകളിൽ കാണപ്പെടുന്നു.\r\n\r\n5. സാധാരണ മൈന മുട്ട – ഇളം നീല അല്ലെങ്കിൽ പച്ചകലർന്ന, ചെറുതും മിനുസമാർന്നതും, പലപ്പോഴും മരങ്ങളുടെ പൊള്ളകളിലോ മനുഷ്യനിർമ്മിത ഘടനകളിലോ ഇടുന്നു.\r\n\r\n6. കാടമുട്ട – ചെറുതും പുള്ളികളുള്ളതും, കടും തവിട്ട് പാടുകളുള്ളതും, സാധാരണയായി നിലത്തെ കൂടുകളിൽ കാണപ്പെടുന്നു.\r\n\r\n7. ടെയ്‌ലർബേർഡ് മുട്ട – വളരെ ചെറുതും അതിലോലവുമായ, പലപ്പോഴും ഇളം പുള്ളികളുള്ളതും, സങ്കീർണ്ണമായി തുന്നിച്ചേർത്ത ഇലകളിൽ ഇടുന്നതുമാണ്.\r\n\r\n8. സ്വർണ്ണ ഫെസന്റ് മുട്ട - ഇടത്തരം വലിപ്പമുള്ള, ഇളം ക്രീം അല്ലെങ്കിൽ മങ്ങിയ നിറമുള്ള, ഈ ചടുലമായ അലങ്കാര പക്ഷി ഇടുന്നു.\r\n\r\n9. പയർ കോഴി മുട്ട - വലുത്, വെളുത്ത നിറമില്ലാത്തത് അല്ലെങ്കിൽ ക്രീം നിറമുള്ളത്, പെൺ മയിൽ ഇടുന്നു.\r\n\r\n10. വെള്ളി ഫെസന്റ് മുട്ട - ഇളം നിറമുള്ളതും ഇടത്തരം വലിപ്പമുള്ളതും, ഈ ശ്രദ്ധേയമായ തൂവലുള്ള പക്ഷി ഇടുന്നു.\r\n\r\n11. പ്രാവ് മുട്ട - ചെറുതും, മിനുസമാർന്നതും, വെളുത്തതും, സാധാരണയായി ലളിതമായ കൂടുകളിൽ ഇടുന്നു.\r\n\r\n12.മൂങ്ങ മുട്ട - വെളുത്തതും വൃത്താകൃതിയിലുള്ളതും, മരങ്ങളുടെ അറകളിലോ കൂടു പെട്ടികളിലോ ഇടുന്നു.\r\n\r\n13. ചുക്കർ പാർട്രിഡ്ജ് മുട്ട - ചെറുതും, ഓവൽ നിറമുള്ളതും, തവിട്ട് പുള്ളികളുള്ളതുമായ, ഈ നിലത്ത് വസിക്കുന്ന പക്ഷി ഇടുന്നു.\r\n\r\n14.ചാരനിറത്തിലുള്ള തലയുള്ള സ്വാംഫെൻ മുട്ട - ഇളം നിറമുള്ള, പലപ്പോഴും തണ്ണീർത്തടങ്ങളിൽ കാണപ്പെടുന്നു, ഈ വലിയ ജലപക്ഷി ഇടുന്നു.', 'പക്ഷിമുട്ടകളുടെ ശേഖരണം');

-- --------------------------------------------------------

--
-- Table structure for table `qrapp_image`
--

DROP TABLE IF EXISTS `qrapp_image`;
CREATE TABLE IF NOT EXISTS `qrapp_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `exhibit_id` bigint NOT NULL,
  `caption` longtext,
  `caption_ml` longtext,
  `position` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `QRapp_image_item_id_81eec8fb` (`exhibit_id`)
) ;

--
-- Dumping data for table `qrapp_image`
--

INSERT INTO `qrapp_image` (`id`, `image`, `exhibit_id`, `caption`, `caption_ml`, `position`) VALUES
(55, 'exhibits/IMG_1447_n1efI1i.JPG', 35, NULL, NULL, 0),
(56, 'exhibits/IMG_1446_LyLP71k.JPG', 36, NULL, NULL, 0),
(57, 'exhibits/IMG_1447_BHCzXbc.JPG', 37, NULL, NULL, 0),
(47, 'exhibits/IMG_1452.JPG', 27, NULL, NULL, 0),
(48, 'exhibits/IMG_1440_pn4hkEg.JPG', 28, NULL, NULL, 0),
(45, 'exhibits/IMG_1440_W7Lj6gS.JPG', 25, NULL, NULL, 0),
(46, 'exhibits/IMG_1440_p8F779J.JPG', 26, NULL, NULL, 0),
(43, 'exhibits/IMG_1487_XzwfexN.JPG', 23, NULL, NULL, 0),
(53, 'exhibits/download_1.png', 33, NULL, NULL, 0),
(54, 'exhibits/IMG_1446.JPG', 34, NULL, NULL, 0),
(52, 'exhibits/IMG_1447_xpwe89n.JPG', 32, NULL, NULL, 0),
(51, 'exhibits/IMG_1440_fKx9Scv.JPG', 31, NULL, NULL, 0),
(49, 'exhibits/IMG_1441_W43wE4Z.JPG', 29, NULL, NULL, 0),
(50, 'exhibits/IMG_1441_g53izA0.JPG', 30, NULL, NULL, 0),
(41, 'exhibits/IMG_1487_2zSC8xX.JPG', 22, NULL, NULL, 0),
(42, 'exhibits/IMG_1488_gdpPwFt.JPG', 22, NULL, NULL, 0),
(58, 'exhibits/IMG_1446_SJ3pKRJ.JPG', 38, NULL, NULL, 0),
(59, 'exhibits/IMG_1451.JPG', 39, NULL, NULL, 0),
(60, 'exhibits/IMG_1440_japtTMI.JPG', 40, NULL, NULL, 0),
(61, 'exhibits/1.jpg', 41, NULL, NULL, 0),
(62, 'exhibits/IMG_1446_s8gJU1R.JPG', 42, NULL, NULL, 0),
(63, 'exhibits/IMG_1465.JPG', 42, NULL, NULL, 0),
(153, 'exhibits/IMG_1520.JPG', 50, NULL, NULL, 0),
(93, 'exhibits/IMG_1497_oSRYttm.JPG', 49, 'Bell Metal Fancy Light With Chain, Hanging Lamp with thirteen grooves for wick, Big Hanging Lamp', 'ചെയിൻ ഉള്ള ബെൽ മെറ്റൽ ഫാൻസി ലൈറ്റ്, പതിമൂന്നുതിരി വിളക്ക് , വലിയ തൂക്കു വിളക്ക്', 0),
(94, 'exhibits/IMG_1498_GxCrqBH.JPG', 49, 'Peackock lamp, Bell Metal Lamp with Fifteen Grooves for wicks, Seven Grooves and Bird at top', 'മയിൽ വിളക്ക്, പതിനഞ്ചുതിരി വിളക്ക് , ഏഴുതിരി വിളക്ക്', 0),
(91, 'exhibits/IMG_1490_ezheh6I.JPG', 49, 'Hanging Lamp with the figure of Elephant, Bell Metal Fancy Light With Chain', 'ആനയുടെ രൂപമുള്ള തൂക്കുവിളക്ക്, ചെയിൻ ഉള്ള ബെൽ മെറ്റൽ ഫാൻസി ലൈറ്റ്', 0),
(92, 'exhibits/IMG_1492_i6CNLUn.JPG', 49, 'oil lamps', 'എണ്ണ വിളക്കുകൾ..', 0),
(132, 'exhibits/SaveClip_dGuAif8.App_469935959_18035293394362718_2126035797277682473_n_-_Copy.jpg', 51, 'kathakali (Female)', 'കഥകളി (സ്ത്രീ)', 8),
(131, 'exhibits/SaveClip.App_469868073_18035293388362718_2509970379903204213_n.jpg', 51, 'Kathakali-Minukku(panchali)', 'കഥകളി-മിനുക്ക്(പാഞ്ചാലി)', 7),
(130, 'exhibits/SaveClip.App_469814403_18035293586362718_7566097303661407150_n.jpg', 51, 'Kathakali (Kiratha)', 'കഥകളി (കിരാതൻ)', 6),
(129, 'exhibits/SaveClip.App_469811978_18035293556362718_737422856969975177_n.jpg', 51, '-Kathakali (Hanuman)', 'കഥകളി (ഹനുമാൻ)', 5),
(128, 'exhibits/SaveClip.App_469797889_18035293559362718_4328307214318696612_n.jpg', 51, 'Kathakali (Ravana)', 'കഥകളി (രാവണൻ)', 4),
(126, 'exhibits/SaveClip_nytVaSH.App_469661994_18035293379362718_7827231918929276885_n_-_Copy.jpg', 51, 'Kathakali', 'കഥകളി', 2),
(127, 'exhibits/SaveClip.App_469752828_18035293613362718_2470649496648844779_n.jpg', 51, 'kathakali (Bhimasena)', 'കഥകളി (ഭീമസേനൻ)', 3),
(125, 'exhibits/SaveClip_u6kPsAP.App_469661982_18035293592362718_3287149232843419721_n_-_Copy.jpg', 51, 'Kathakali (Bagasura)', 'കഥകളി (ബാഗാസുരൻ)', 1),
(124, 'exhibits/SaveClip_lB4rfxJ.App_469659302_18035293487362718_6766262794007006199_n.jpg', 51, 'Kathakali (Brahmanan)', 'കഥകളി (ബ്രാഹ്മണൻ)', 0),
(133, 'exhibits/SaveClip_hAxh9ww.App_469993734_18035293622362718_3368227624760102256_n.jpg', 51, 'Kathakali (Narada)', 'കഥകളി (സുഭദ്ര)', 9),
(134, 'exhibits/SaveClip.App_470000454_18035293610362718_8197754438038710391_n.jpg', 51, 'kathakali (Bahuka)', 'കഥകളി (ബാഹുകൻ)', 10),
(135, 'exhibits/SaveClip_ApKq9nN.App_470036490_18035293490362718_5308267100735041955_n.jpg', 51, 'Koodiyattam(surpanaka)', 'കൂടിയാട്ടം(ശൂർപ്പണക)', 11),
(183, 'exhibits/SaveClip_dGQ5x63.App_470037170_18035292773362718_4754362287724699473_n.jpg', 60, 'kidupidi', 'കിടുപിടി', 1),
(237, 'exhibits/e4.jpg', 56, NULL, NULL, 1),
(235, 'exhibits/b9.jpg', 70, NULL, NULL, 8),
(176, 'exhibits/WhatsApp_Image_2025-01-19_at_18.06.31_6fd2b8b8.jpg', 56, '', '', 0),
(175, 'exhibits/SaveClip_z1e92Cc.App_469899785_18035292554362718_4303403367053737876_n.jpg', 55, 'Lion', '', 7),
(173, 'exhibits/SaveClip_bG7Mm68.App_469751708_18035292665362718_2276758795827721857_n.jpg', 55, 'Zebra', '', 5),
(174, 'exhibits/SaveClip_x7jeSQf.App_469753511_18035292755362718_5526415979721641731_n.jpg', 55, 'Cheeta', '', 6),
(156, 'exhibits/IMG_1525_0kVl4Tg.JPG', 50, NULL, NULL, 3),
(238, 'exhibits/elephant_skelton.jpg', 56, NULL, NULL, 2),
(171, 'exhibits/SaveClip.App_469734126_18035292716362718_2493090109411208040_n.jpg', 55, 'Deer', '', 3),
(172, 'exhibits/SaveClip_UhnkhxP.App_469735578_18035292455362718_8726521654642974487_n.jpg', 55, 'Tiger', '', 4),
(232, 'exhibits/b6_61PP3is.jpg', 70, 'parrot', 'തത്ത', 5),
(233, 'exhibits/b7.jpg', 70, 'Asian Fairy-Blue bird', 'ലളിത', 6),
(230, 'exhibits/b4.jpg', 70, 'scarlet macaw', 'സ്കാർലെറ്റ് മക്കൌ', 3),
(231, 'exhibits/b5_sdINobM.jpg', 70, 'owl', 'കൂമൻ', 4),
(227, 'exhibits/b1.jpg', 70, 'white & black ibis', 'വെള്ളയും കറുപ്പും ഐബിസ്', 0),
(228, 'exhibits/b2.jpg', 70, NULL, NULL, 1),
(234, 'exhibits/b8.jpg', 70, 'Indian Cuckoo', 'ചാരപ്പൂണ്ടൻ', 7),
(168, 'exhibits/IMG_1470_PNE0kiG.JPG', 55, 'Deer', '', 0),
(169, 'exhibits/IMG_1482_aHcJENQ.JPG', 55, 'Emu', '', 1),
(170, 'exhibits/SaveClip.App_469648895_18035292572362718_2516325859405647943_n.jpg', 55, 'Dog', '', 2),
(217, 'exhibits/m1.jpg', 60, 'Snake Pipe, Kurumkuzhal,Musical horn', 'നാഗസ്വരം,ശ്രുതി,കുറുംകുഴൽ,കൊമ്പ്', 1),
(218, 'exhibits/m2.jpg', 60, 'A kind of guitar', NULL, 2),
(219, 'exhibits/m3.jpg', 60, 'Swarabat', 'സ്വരാബത്ത്', 3),
(229, 'exhibits/b3.jpg', 70, 'white peacock', 'വെള്ള ആൺ മയിൽ', 2),
(221, 'exhibits/m5.jpg', 60, 'Kettle Drum', 'മദ്ദളം', 5),
(222, 'exhibits/m7.jpg', 60, 'Chengila,kuzhithalam,Elathalam', 'ചേങ്ങില,കുഴിത്താളം,ഇലത്താളം', 6),
(236, 'exhibits/b10.jpg', 70, 'Great Indian Hornbill', 'മലമുഴക്കി വേഴാമ്പൽ', 9),
(241, 'exhibits/IMG_4116.JPG', 73, 'China Jar', 'ചീന ഭരണി', 0),
(242, 'exhibits/IMG_4117.JPG', 73, 'Old China Ware', 'ചീന ഭരണി', 1),
(243, 'exhibits/IMG_4118.JPG', 73, 'China Jar', 'ചീന ഭരണി', 2),
(244, 'exhibits/IMG_4119.JPG', 73, 'Old China Ware (Loc:Chenamangalam)', 'ചീന ഭരണി (സ്ഥലം: ചേന്ദമംഗലം)', 3),
(245, 'exhibits/IMG_4120.JPG', 73, 'Old China Ware (Loc:Chenamangalam)', 'ചീന ഭരണി (സ്ഥലം: ചേന്ദമംഗലം)', 4),
(256, 'exhibits/arrows.jpg', 75, '', '', 0),
(255, 'exhibits/IMG_4013_O2pjIId.JPG', 74, NULL, NULL, 3),
(253, 'exhibits/IMG_4012.JPG', 74, NULL, NULL, 2),
(252, 'exhibits/IMG_4011.JPG', 74, NULL, NULL, 1),
(251, 'exhibits/boats.jpg', 74, NULL, NULL, 0),
(257, 'exhibits/IMG_1462.JPG', 75, '', '', 1),
(258, 'exhibits/IMG_4019.JPG', 75, '', '', 2),
(259, 'exhibits/IMG_4021.JPG', 75, '', '', 3),
(260, 'exhibits/IMG_4023.JPG', 75, '', '', 4),
(261, 'exhibits/IMG_4024.JPG', 75, '', '', 5),
(262, 'exhibits/IMG-20241230-WA0009.jpg', 75, '', '', 6),
(263, 'exhibits/we7.jpg', 75, NULL, NULL, 7),
(264, 'exhibits/we9.jpg', 75, NULL, NULL, 8),
(268, 'exhibits/IMG_1467.JPG', 76, NULL, NULL, 2),
(266, 'exhibits/IMG_1469.JPG', 76, NULL, NULL, 1),
(267, 'exhibits/IMG_4054.JPG', 76, NULL, NULL, 2),
(269, 'exhibits/IMG_4025.JPG', 77, '', '', 0),
(270, 'exhibits/t1.jpg', 77, '', '', 1),
(271, 'exhibits/t2.jpg', 77, '', '', 2),
(272, 'exhibits/doodle.jpg', 78, '', '', 0),
(273, 'exhibits/IMG_4038.JPG', 78, '', '', 1),
(274, 'exhibits/IMG_4040.JPG', 78, '', '', 2),
(275, 'exhibits/king_dress.jpg', 79, '', '', 0),
(276, 'exhibits/d1.jpg', 80, '', '', 0),
(277, 'exhibits/d2.jpg', 80, 'Black Jew', 'കറുത്ത ജൂതൻ ', 1),
(278, 'exhibits/d3.jpg', 80, '', '', 2),
(279, 'exhibits/d4.jpg', 80, 'Tamil Brahmin', 'തമിഴ് ബ്രാഹ്മണൻ', 3),
(281, 'exhibits/IMG_4037.JPG', 82, '', '', 0),
(282, 'exhibits/mizhav.jpg', 82, '', '', 1),
(283, 'exhibits/IMG_4051.JPG', 83, '', '', 0),
(284, 'exhibits/IMG_4080.JPG', 84, '', '', 0),
(285, 'exhibits/IMG_4081.JPG', 84, '', '', 1),
(286, 'exhibits/IMG_4082.JPG', 84, '', '', 2),
(288, 'exhibits/IMG_1526.JPG', 85, '', '', 0),
(289, 'exhibits/IMG_1528.JPG', 85, '', '', 1),
(290, 'exhibits/IMG_1484.JPG', 86, '', '', 0),
(291, 'exhibits/IMG_4111.JPG', 86, '', '', 1),
(292, 'exhibits/IMG_1507.JPG', 87, '', '', 0),
(293, 'exhibits/IMG_1509.JPG', 87, '', '', 1),
(294, 'exhibits/IMG_1481.JPG', 88, 'Skull of a Whale', 'തിമിംഗലത്തിന്റെ തലയോട്ടി', 0),
(295, 'exhibits/IMG_4075.JPG', 88, 'Lower Jaw of a Whale', 'തിമിംഗലത്തിൻറെ താഴത്തെ താടിയെല്ല്', 1),
(296, 'exhibits/IMG_4076.JPG', 88, 'Lower Jaw of a Whale', 'തിമിംഗലത്തിൻറെ താഴത്തെ താടിയെല്ല്', 2),
(297, 'exhibits/horse_skelton.jpg', 89, '', '', 0),
(298, 'exhibits/Human-Skeleton.jpg', 90, '', '', 0),
(299, 'exhibits/lion_skeleton.jpeg', 91, 'Lion Skeleton', 'സിംഹത്തിന്റെ അസ്ഥികൂടം', 0),
(300, 'exhibits/pig_head_skeleton.jpg', 91, 'Pig Skull', 'പന്നിയുടെ തലയോട്ടി', 1),
(301, 'exhibits/IMG_4090.JPG', 92, 'King Cobra', 'രാജവെമ്പാല', 0),
(302, 'exhibits/IMG_4092.JPG', 92, 'Snake Skin (Python, Cobra, Viper)', 'പാമ്പിന്റെ തൊലി(പെരുമ്പാമ്പുകൾ, നാഗങ്ങൾ, വൈപ്പറുകൾ )', 1),
(303, 'exhibits/IMG_4093.JPG', 92, 'Snake Skin (Python, Cobra, Viper)', 'പാമ്പിന്റെ തൊലി(പെരുമ്പാമ്പുകൾ, നാഗങ്ങൾ, വൈപ്പറുകൾ )', 2),
(304, 'exhibits/IMG_4094.JPG', 92, 'Snake Skin (Python, Cobra, Viper)', 'പാമ്പിന്റെ തൊലി(പെരുമ്പാമ്പുകൾ, നാഗങ്ങൾ, വൈപ്പറുകൾ )', 3),
(305, 'exhibits/king_cobrs_skeleton.jpg', 92, 'Skeleton of king cobra', 'രാജവെമ്പാലയുടെ അസ്ഥികൂടം', 4),
(314, 'exhibits/otter.jpg', 93, NULL, NULL, 2),
(313, 'exhibits/sea_otter.jpg', 93, NULL, NULL, 2),
(311, 'exhibits/IMG_4074.JPG', 93, NULL, NULL, 0),
(315, 'exhibits/r1.jpg', 94, '', '', 0),
(316, 'exhibits/r2.jpg', 94, '', '', 1),
(317, 'exhibits/IMG_4016.JPG', 95, 'Water Lift,Rake,Pena,Plough,yoke', 'തുലാത്തേക്ക് ,ഞൗരി, കൈത്തേക്ക് , കലപ്പ', 0),
(318, 'exhibits/IMG_4017.JPG', 95, 'Water Lift,Rake,Pena,Plough,yoke', 'തുലാത്തേക്ക്, പല്ലൻമുട്ടി , മുട്ടി , കൈത്തേക്ക് , കലപ്പ, നുകം', 1),
(324, 'exhibits/kcs.jpg', 96, 'K. C. S. Paniker', 'കെ. സി. എസ്. പണിക്കർ', 4),
(328, 'exhibits/kcs_p2.jpg', 96, 'The Haunted House', 'പ്രേതഭവനം', 3),
(329, 'exhibits/kcs_p3.jpg', 96, 'Genesis', 'ഉല്പത്തി', 4),
(326, 'exhibits/kcs_2.jpg', 96, 'K. C. S. Paniker', 'കെ. സി. എസ്. പണിക്കർ', 1),
(327, 'exhibits/kcs_p1.jpg', 96, 'Words and Symbols', 'വാക്കുകളും ചിഹ്നങ്ങളും', 2),
(344, 'exhibits/IMG_4195.JPG', 102, 'Devi', 'ദേവി', 0),
(345, 'exhibits/IMG_4196.JPG', 102, 'Lakshamana', 'ലക്ഷ്മണൻ', 1),
(337, 'exhibits/IMG_4189.JPG', 98, '', '', 0),
(334, 'exhibits/Sakthan_Thampuran_Palace_Thrissur.jpg', 97, 'Shakthan Thampuran Palace', 'ശക്തൻ തമ്പുരാൻ കൊട്ടാരം', 0),
(335, 'exhibits/shakthan_Thampuran.jpg', 97, 'Rama Varma Kunji Pillai Thampuran', 'രാമവർമ്മ കുഞ്ഞി പിള്ള തമ്പുരാൻ', 1),
(336, 'exhibits/Tomb_of_Ramavarma_Sakthan_Thamburan.jpg', 97, 'Tomb of Ramavarma Sakthan Thampuran', 'രാമവർമ്മ ശക്തൻ തമ്പുരാന്റെ ശവകുടീരം', 2),
(346, 'exhibits/IMG_4197.JPG', 102, 'Mahishasuramardini', 'മഹിഷാസുര മർദിനി', 2),
(347, 'exhibits/IMG_4198.JPG', 102, 'Sri Rama', 'ശ്രീരാമൻ', 3),
(349, 'exhibits/IMG_4200.JPG', 102, 'Narada', 'നാരദൻ', 5),
(338, 'exhibits/IMG_4190.JPG', 98, '', '', 1),
(339, 'exhibits/IMG_4187.JPG', 99, '', '', 0),
(340, 'exhibits/lizard.jpg', 100, 'Monitor lizards', 'ഉടുമ്പ്', 0),
(341, 'exhibits/tortoise.jpg', 100, 'Tortoise', 'ആമ', 1),
(342, 'exhibits/TurtleShell.jpg', 100, 'Shell of a Tortoise', 'ആമയുടെ തോട് ', 2),
(343, 'exhibits/IMG_4061.JPG', 101, '', '', 0),
(350, 'exhibits/IMG_4126.JPG', 103, '', '', 0),
(351, 'exhibits/IMG_4127.JPG', 103, '', '', 1),
(352, 'exhibits/IMG_4121.JPG', 104, '', '', 0),
(353, 'exhibits/IMG_4122.JPG', 104, '', '', 1),
(354, 'exhibits/IMG_4123.JPG', 104, '', '', 2),
(355, 'exhibits/IMG_4157.JPG', 105, '', '', 0),
(356, 'exhibits/IMG_4158.JPG', 105, '', '', 1),
(357, 'exhibits/IMG_4159.JPG', 105, '', '', 2),
(358, 'exhibits/IMG_4161.JPG', 105, '', '', 3),
(359, 'exhibits/IMG_4162.JPG', 105, '', '', 4),
(360, 'exhibits/IMG_4163.JPG', 105, '', '', 5),
(361, 'exhibits/IMG_4164.JPG', 105, '', '', 6),
(362, 'exhibits/IMG_4165.JPG', 105, '', '', 7),
(363, 'exhibits/IMG_4166.JPG', 105, '', '', 8),
(364, 'exhibits/s3.jpg', 106, '', '', 0),
(365, 'exhibits/sea_shell2.jpg', 106, '', '', 1),
(366, 'exhibits/sea_shell.jpg', 106, '', '', 2),
(367, 'exhibits/c2.jpg', 107, '', '', 0),
(368, 'exhibits/c1.jpg', 107, '', '', 1),
(369, 'exhibits/octopus_cuttlefish.jpg', 108, 'Octopus Cuttlefish', 'കണവ', 0),
(370, 'exhibits/octopus.jpg', 108, 'octopus', 'നീരാളി', 1),
(371, 'exhibits/sea_anemone.jpeg', 108, 'sea anemone', 'കടൽ അനിമണി', 2),
(378, 'exhibits/sea_cucumber1.jpeg', 108, 'Sea Cucumber', 'കടൽ വെള്ളരി', 8),
(373, 'exhibits/sea_fan.jpg', 108, 'Sea Fan', '', 4),
(374, 'exhibits/sea_horse_2.jpg', 108, 'Sea Horse', '', 5),
(375, 'exhibits/sea_horse1.jpg', 108, 'Sea Horse', 'കടൽക്കുതിര', 6),
(376, 'exhibits/sea_lily.jpg', 108, 'Sea Lilly', 'കടൽ ലില്ലി', 7),
(377, 'exhibits/eggs_of_cuttlefish.jpg', 108, 'Eggs Of Cuttlefish', 'കണവ മീനിന്റെ മുട്ടകൾ', 8),
(379, 'exhibits/IMG_1506.JPG', 109, '', '', 0),
(380, 'exhibits/black_tiger_prawn.jpg', 110, 'Giant tiger prawn', '', 0),
(381, 'exhibits/gaint_river_prawn.jpg', 110, 'Gaint river prawn', 'ആറ്റുകൊഞ്ച്', 1),
(382, 'exhibits/indian_prawn.jpeg', 110, 'Banana prawn', '', 2),
(383, 'exhibits/indian_white_prawn.jpg', 110, 'Indian white prawn', 'നാരൻ ചെമ്മീൻ', 3),
(384, 'exhibits/kadal_shrimp.jpg', 110, 'Kadal shrimp', ' പൂവാലൻ ചെമ്മീൻ', 4),
(385, 'exhibits/kiddi_shrimp.jpeg', 110, 'Kiddi shrimp', '', 5),
(386, 'exhibits/spekled_shrimp.jpeg', 110, 'Spekled shrimp', 'ചൂടാൻ ചെമ്മീൻ', 6),
(387, 'exhibits/sunkist_orange_shrimp.jpg', 110, 'sunset shrimp', '', 7),
(388, 'exhibits/swimming_crab.jpeg', 110, 'Three spot swimming crab', 'കടൽ ഞണ്ട്  ', 8),
(389, 'exhibits/IMG_4180.JPG', 111, '', '', 0),
(390, 'exhibits/IMG_4181.JPG', 111, '', '', 1),
(391, 'exhibits/IMG_4182.JPG', 111, '', '', 2),
(392, 'exhibits/IMG_4183.JPG', 111, '', '', 3),
(393, 'exhibits/IMG_4184.JPG', 111, '', '', 4),
(394, 'exhibits/IMG_4121_WL81tpG.JPG', 112, '', '', 0),
(395, 'exhibits/IMG_4122_cSb95cr.JPG', 112, '', '', 1),
(396, 'exhibits/IMG_4123_XHUdVuq.JPG', 112, '', '', 2),
(397, 'exhibits/soothrapattika.jpg', 112, '', '', 3),
(398, 'exhibits/IMG_4112.JPG', 113, 'Dwarapalakan', 'ദ്വാരപാലകൻ', 0),
(399, 'exhibits/IMG_4113.JPG', 113, 'Ananda Vigraham', 'ആനന്ദ വിഗ്രഹം', 1),
(400, 'exhibits/IMG_4114.JPG', 113, 'Sreedevi', 'ശ്രീദേവി', 2),
(401, 'exhibits/IMG_4115.JPG', 113, 'Vishnumaya', 'വിഷ്ണുമായ', 3),
(402, 'exhibits/tailorbird_egg.jpg', 114, 'Egg of tailorbird', 'സാധാരണ തയ്യൽ പക്ഷിയുടെ  മുട്ടകൾ', 0),
(403, 'exhibits/quail_eggs.jpg', 114, 'Egg of quail', 'കാടമുട്ടകൾ', 1),
(404, 'exhibits/pegion_egg.jpg', 114, 'Egg of pegion', 'പ്രാവിന്റെ മുട്ട', 2),
(405, 'exhibits/swaphen_egg.jpg', 114, 'Egg of swaphen', '', 3),
(406, 'exhibits/chukar_partridge_egg.jpg', 114, 'chukar partridge', '', 4),
(407, 'exhibits/owl_egg.JPG', 114, 'Egg of owl', 'മൂങ്ങയുടെ മുട്ട', 5),
(408, 'exhibits/silver_peasent_egg.jpg', 114, 'Egg of silver peasent', 'വെള്ളി കോഴിയുടെ മുട്ട', 6),
(409, 'exhibits/egg_of_peahen.jpeg', 114, 'egg of peahen', 'മയിലിന്റെ മുട്ട', 7),
(410, 'exhibits/golden_pheasent_egg.jpeg', 114, 'Egg of golden pheasent', 'സ്വർണ കോഴിയുടെ മുട്ട', 8),
(412, 'exhibits/myna_egg.jpg', 114, 'Egg of myna', 'മൈനയുടെ മുട്ട', 10),
(413, 'exhibits/crow_egg.png', 114, 'Egg of crow', 'കാക്കയുടെ മുട്ട', 11),
(414, 'exhibits/pelican_egg.jpeg', 114, 'Egg of pelican', 'പെലിക്കന്റെ മുട്ട', 12),
(416, 'exhibits/IMG_4086.JPG', 114, NULL, NULL, 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
