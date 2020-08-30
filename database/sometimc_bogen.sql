-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 30, 2020 at 04:15 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sometimc_bogen`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr. WordPress', '', 'https://wordpress.org/', '', '2014-12-17 17:25:13', '2014-12-17 17:25:13', 'Olá, isto é um comentário.\nPara eliminar um comentário, basta iniciar sessão e ver os comentários ao artigo. Poderá então editar ou eliminar os comentários.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://bogen.sometim.com', 'yes'),
(2, 'home', 'http://bogen.sometim.com', 'yes'),
(3, 'blogname', 'sometim', 'yes'),
(4, 'blogdescription', 'Mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'gnoribeiro@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j F, Y G:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:21:\"polylang/polylang.php\";i:1;s:37:\"acf-options-page/acf-options-page.php\";i:2;s:29:\"acf-repeater/acf-repeater.php\";i:3;s:30:\"advanced-custom-fields/acf.php\";i:4;s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'sometim', 'yes'),
(42, 'stylesheet', 'sometim', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30135', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(90, 'WPLANG', 'pt_PT', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(97, 'cron', 'a:4:{i:1598793994;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1598808317;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1598808658;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(1657, '_site_transient_timeout_browser_29a5550ff032b122d0db2bedcaa3df2c', '1474653457', 'yes'),
(1658, '_site_transient_browser_29a5550ff032b122d0db2bedcaa3df2c', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"48.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(99, '_transient_random_seed', 'db06ceac00b45b2c8b205df0d994c2d8', 'yes'),
(1835, '_site_transient_timeout_theme_roots', '1598777564', 'yes'),
(1836, '_site_transient_theme_roots', 'a:5:{s:7:\"sometim\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}', 'yes'),
(1613, '_site_transient_timeout_browser_f090f6a7d8b34b667ea95e57e0b3046a', '1452169810', 'yes'),
(1614, '_site_transient_browser_f090f6a7d8b34b667ea95e57e0b3046a', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"43.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1302, 'rewrite_rules', 'a:229:{s:29:\"language/(pt|en)/slideshow/?$\";s:46:\"index.php?lang=$matches[1]&post_type=slideshow\";s:59:\"language/(pt|en)/slideshow/feed/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?lang=$matches[1]&post_type=slideshow&feed=$matches[2]\";s:54:\"language/(pt|en)/slideshow/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?lang=$matches[1]&post_type=slideshow&feed=$matches[2]\";s:46:\"language/(pt|en)/slideshow/page/([0-9]{1,})/?$\";s:64:\"index.php?lang=$matches[1]&post_type=slideshow&paged=$matches[2]\";s:27:\"language/(pt|en)/empresa/?$\";s:44:\"index.php?lang=$matches[1]&post_type=empresa\";s:57:\"language/(pt|en)/empresa/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?lang=$matches[1]&post_type=empresa&feed=$matches[2]\";s:52:\"language/(pt|en)/empresa/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?lang=$matches[1]&post_type=empresa&feed=$matches[2]\";s:44:\"language/(pt|en)/empresa/page/([0-9]{1,})/?$\";s:62:\"index.php?lang=$matches[1]&post_type=empresa&paged=$matches[2]\";s:33:\"language/(pt|en)/manutentencao/?$\";s:50:\"index.php?lang=$matches[1]&post_type=manutentencao\";s:63:\"language/(pt|en)/manutentencao/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_type=manutentencao&feed=$matches[2]\";s:58:\"language/(pt|en)/manutentencao/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_type=manutentencao&feed=$matches[2]\";s:50:\"language/(pt|en)/manutentencao/page/([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_type=manutentencao&paged=$matches[2]\";s:28:\"language/(pt|en)/producao/?$\";s:45:\"index.php?lang=$matches[1]&post_type=producao\";s:58:\"language/(pt|en)/producao/feed/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?lang=$matches[1]&post_type=producao&feed=$matches[2]\";s:53:\"language/(pt|en)/producao/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?lang=$matches[1]&post_type=producao&feed=$matches[2]\";s:45:\"language/(pt|en)/producao/page/([0-9]{1,})/?$\";s:63:\"index.php?lang=$matches[1]&post_type=producao&paged=$matches[2]\";s:28:\"language/(pt|en)/clientes/?$\";s:45:\"index.php?lang=$matches[1]&post_type=clientes\";s:58:\"language/(pt|en)/clientes/feed/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?lang=$matches[1]&post_type=clientes&feed=$matches[2]\";s:53:\"language/(pt|en)/clientes/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?lang=$matches[1]&post_type=clientes&feed=$matches[2]\";s:45:\"language/(pt|en)/clientes/page/([0-9]{1,})/?$\";s:63:\"index.php?lang=$matches[1]&post_type=clientes&paged=$matches[2]\";s:27:\"language/(pt|en)/eventos/?$\";s:44:\"index.php?lang=$matches[1]&post_type=eventos\";s:57:\"language/(pt|en)/eventos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?lang=$matches[1]&post_type=eventos&feed=$matches[2]\";s:52:\"language/(pt|en)/eventos/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?lang=$matches[1]&post_type=eventos&feed=$matches[2]\";s:44:\"language/(pt|en)/eventos/page/([0-9]{1,})/?$\";s:62:\"index.php?lang=$matches[1]&post_type=eventos&paged=$matches[2]\";s:23:\"language/(pt|en)/qsa/?$\";s:40:\"index.php?lang=$matches[1]&post_type=qsa\";s:53:\"language/(pt|en)/qsa/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&post_type=qsa&feed=$matches[2]\";s:48:\"language/(pt|en)/qsa/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&post_type=qsa&feed=$matches[2]\";s:40:\"language/(pt|en)/qsa/page/([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&post_type=qsa&paged=$matches[2]\";s:29:\"language/(pt|en)/contactos/?$\";s:46:\"index.php?lang=$matches[1]&post_type=contactos\";s:59:\"language/(pt|en)/contactos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?lang=$matches[1]&post_type=contactos&feed=$matches[2]\";s:54:\"language/(pt|en)/contactos/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?lang=$matches[1]&post_type=contactos&feed=$matches[2]\";s:46:\"language/(pt|en)/contactos/page/([0-9]{1,})/?$\";s:64:\"index.php?lang=$matches[1]&post_type=contactos&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:62:\"language/(pt|en)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:57:\"language/(pt|en)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:50:\"language/(pt|en)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:32:\"language/(pt|en)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:37:\"slideshow/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"slideshow/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"slideshow/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"slideshow/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"slideshow/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"slideshow/([^/]+)/trackback/?$\";s:36:\"index.php?slideshow=$matches[1]&tb=1\";s:50:\"slideshow/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?slideshow=$matches[1]&feed=$matches[2]\";s:45:\"slideshow/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?slideshow=$matches[1]&feed=$matches[2]\";s:38:\"slideshow/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?slideshow=$matches[1]&paged=$matches[2]\";s:45:\"slideshow/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?slideshow=$matches[1]&cpage=$matches[2]\";s:30:\"slideshow/([^/]+)(/[0-9]+)?/?$\";s:48:\"index.php?slideshow=$matches[1]&page=$matches[2]\";s:26:\"slideshow/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"slideshow/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"slideshow/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"slideshow/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"slideshow/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"empresa/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"empresa/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"empresa/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"empresa/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"empresa/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"empresa/([^/]+)/trackback/?$\";s:34:\"index.php?empresa=$matches[1]&tb=1\";s:48:\"empresa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?empresa=$matches[1]&feed=$matches[2]\";s:43:\"empresa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?empresa=$matches[1]&feed=$matches[2]\";s:36:\"empresa/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?empresa=$matches[1]&paged=$matches[2]\";s:43:\"empresa/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?empresa=$matches[1]&cpage=$matches[2]\";s:28:\"empresa/([^/]+)(/[0-9]+)?/?$\";s:46:\"index.php?empresa=$matches[1]&page=$matches[2]\";s:24:\"empresa/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"empresa/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"empresa/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"empresa/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"empresa/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"manutentencao/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"manutentencao/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"manutentencao/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"manutentencao/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"manutentencao/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"manutentencao/([^/]+)/trackback/?$\";s:40:\"index.php?manutentencao=$matches[1]&tb=1\";s:54:\"manutentencao/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?manutentencao=$matches[1]&feed=$matches[2]\";s:49:\"manutentencao/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?manutentencao=$matches[1]&feed=$matches[2]\";s:42:\"manutentencao/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?manutentencao=$matches[1]&paged=$matches[2]\";s:49:\"manutentencao/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?manutentencao=$matches[1]&cpage=$matches[2]\";s:34:\"manutentencao/([^/]+)(/[0-9]+)?/?$\";s:52:\"index.php?manutentencao=$matches[1]&page=$matches[2]\";s:30:\"manutentencao/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"manutentencao/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"manutentencao/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"manutentencao/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"manutentencao/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"producao/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"producao/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"producao/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producao/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"producao/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"producao/([^/]+)/trackback/?$\";s:35:\"index.php?producao=$matches[1]&tb=1\";s:49:\"producao/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?producao=$matches[1]&feed=$matches[2]\";s:44:\"producao/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?producao=$matches[1]&feed=$matches[2]\";s:37:\"producao/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?producao=$matches[1]&paged=$matches[2]\";s:44:\"producao/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?producao=$matches[1]&cpage=$matches[2]\";s:29:\"producao/([^/]+)(/[0-9]+)?/?$\";s:47:\"index.php?producao=$matches[1]&page=$matches[2]\";s:25:\"producao/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"producao/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"producao/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producao/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"producao/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"clientes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"clientes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"clientes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"clientes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"clientes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"clientes/([^/]+)/trackback/?$\";s:35:\"index.php?clientes=$matches[1]&tb=1\";s:49:\"clientes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?clientes=$matches[1]&feed=$matches[2]\";s:44:\"clientes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?clientes=$matches[1]&feed=$matches[2]\";s:37:\"clientes/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?clientes=$matches[1]&paged=$matches[2]\";s:44:\"clientes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?clientes=$matches[1]&cpage=$matches[2]\";s:29:\"clientes/([^/]+)(/[0-9]+)?/?$\";s:47:\"index.php?clientes=$matches[1]&page=$matches[2]\";s:25:\"clientes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"clientes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"clientes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"clientes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"clientes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"eventos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"eventos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"eventos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"eventos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"eventos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"eventos/([^/]+)/trackback/?$\";s:34:\"index.php?eventos=$matches[1]&tb=1\";s:48:\"eventos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?eventos=$matches[1]&feed=$matches[2]\";s:43:\"eventos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?eventos=$matches[1]&feed=$matches[2]\";s:36:\"eventos/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?eventos=$matches[1]&paged=$matches[2]\";s:43:\"eventos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?eventos=$matches[1]&cpage=$matches[2]\";s:28:\"eventos/([^/]+)(/[0-9]+)?/?$\";s:46:\"index.php?eventos=$matches[1]&page=$matches[2]\";s:24:\"eventos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"eventos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"eventos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"eventos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"eventos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"qsa/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"qsa/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"qsa/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"qsa/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"qsa/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:24:\"qsa/([^/]+)/trackback/?$\";s:30:\"index.php?qsa=$matches[1]&tb=1\";s:44:\"qsa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?qsa=$matches[1]&feed=$matches[2]\";s:39:\"qsa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?qsa=$matches[1]&feed=$matches[2]\";s:32:\"qsa/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?qsa=$matches[1]&paged=$matches[2]\";s:39:\"qsa/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?qsa=$matches[1]&cpage=$matches[2]\";s:24:\"qsa/([^/]+)(/[0-9]+)?/?$\";s:42:\"index.php?qsa=$matches[1]&page=$matches[2]\";s:20:\"qsa/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"qsa/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"qsa/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"qsa/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"qsa/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"contactos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"contactos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"contactos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"contactos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"contactos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"contactos/([^/]+)/trackback/?$\";s:36:\"index.php?contactos=$matches[1]&tb=1\";s:50:\"contactos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?contactos=$matches[1]&feed=$matches[2]\";s:45:\"contactos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?contactos=$matches[1]&feed=$matches[2]\";s:38:\"contactos/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?contactos=$matches[1]&paged=$matches[2]\";s:45:\"contactos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?contactos=$matches[1]&cpage=$matches[2]\";s:30:\"contactos/([^/]+)(/[0-9]+)?/?$\";s:48:\"index.php?contactos=$matches[1]&page=$matches[2]\";s:26:\"contactos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"contactos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"contactos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"contactos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"contactos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:49:\"language/(pt|en)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:44:\"language/(pt|en)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:37:\"language/(pt|en)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:19:\"language/(pt|en)/?$\";s:26:\"index.php?lang=$matches[1]\";s:58:\"language/(pt|en)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:53:\"language/(pt|en)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:61:\"language/(pt|en)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:56:\"language/(pt|en)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:49:\"language/(pt|en)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:31:\"language/(pt|en)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:64:\"language/(pt|en)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:59:\"language/(pt|en)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:52:\"language/(pt|en)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:34:\"language/(pt|en)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:86:\"language/(pt|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:81:\"language/(pt|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:74:\"language/(pt|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:56:\"language/(pt|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:73:\"language/(pt|en)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:68:\"language/(pt|en)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:61:\"language/(pt|en)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:43:\"language/(pt|en)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:60:\"language/(pt|en)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:55:\"language/(pt|en)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:48:\"language/(pt|en)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:30:\"language/(pt|en)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:20:\"([^/]+)(/[0-9]+)?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";}', 'yes'),
(1306, 'can_compress_scripts', '1', 'yes'),
(1327, '_site_transient_timeout_browser_f7420caf9db7717dc2223f24282c5772', '1442326305', 'yes'),
(1328, '_site_transient_browser_f7420caf9db7717dc2223f24282c5772', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"45.0.2454.85\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(137, 'recently_activated', 'a:0:{}', 'yes'),
(182, 'db_upgraded', '', 'yes'),
(979, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"gnoribeiro@gmail.com\";s:7:\"version\";s:6:\"4.1.31\";s:9:\"timestamp\";i:1598710891;}', 'yes'),
(143, 'polylang', 'a:12:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:0;s:12:\"hide_default\";i:0;s:10:\"force_lang\";i:0;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:8:{i:0;s:9:\"slideshow\";i:1;s:7:\"empresa\";i:2;s:13:\"manutentencao\";i:3;s:8:\"producao\";i:4;s:8:\"clientes\";i:5;s:7:\"eventos\";i:6;s:3:\"qsa\";i:7;s:9:\"contactos\";}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"1.6.2\";s:12:\"default_lang\";s:2:\"pt\";}', 'yes'),
(154, 'theme_mods_twentyfourteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1418904511;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(155, 'current_theme', 'Sometim Bogen', 'yes'),
(156, 'theme_mods_sometim', 'a:1:{i:0;b:0;}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(190, 'hicpo_options', 'a:1:{s:7:\"objects\";a:10:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:9:\"slideshow\";i:3;s:7:\"empresa\";i:4;s:13:\"manutentencao\";i:5;s:8:\"producao\";i:6;s:8:\"clientes\";i:7;s:7:\"eventos\";i:8;s:3:\"qsa\";i:9;s:9:\"contactos\";}}', 'yes'),
(192, 'acf_version', '4.3.9', 'yes'),
(197, 'category_children', 'a:0:{}', 'yes'),
(1303, '_site_transient_timeout_browser_0aca3c4a3ed606245343e17249585ac0', '1433924629', 'yes'),
(1304, '_site_transient_browser_0aca3c4a3ed606245343e17249585ac0', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"43.0.2357.81\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1579, '_site_transient_browser_f60b05b1e03594ba3f071e723f906b9c', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"47.0.2526.106\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1484, '_site_transient_timeout_browser_f6a8ca8cd0cdd833acd96a7745095f81', '1450795125', 'yes'),
(1485, '_site_transient_browser_f6a8ca8cd0cdd833acd96a7745095f81', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"42.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1496, '_site_transient_timeout_browser_d58ec82058db8bc11b9d78a761771311', '1450893143', 'yes'),
(1497, '_site_transient_browser_d58ec82058db8bc11b9d78a761771311', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"47.0.2526.80\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1578, '_site_transient_timeout_browser_f60b05b1e03594ba3f071e723f906b9c', '1452000621', 'yes'),
(1388, '_site_transient_timeout_browser_7f5d8c2a47ac965652b116c62c9ca9ca', '1445120804', 'yes'),
(1389, '_site_transient_browser_7f5d8c2a47ac965652b116c62c9ca9ca', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"45.0.2454.101\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1469, '_site_transient_timeout_browser_e0ac10a57490aad2a8e6720df766fddc', '1446479432', 'yes'),
(1470, '_site_transient_browser_e0ac10a57490aad2a8e6720df766fddc', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"41.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1401, '_site_transient_timeout_browser_8b79e488386adda2843cbfa44183ab62', '1446032710', 'yes'),
(1402, '_site_transient_browser_8b79e488386adda2843cbfa44183ab62', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"46.0.2490.71\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1675, '_site_transient_timeout_browser_30ad404590116cb0ed047f3e8c213448', '1475432505', 'yes'),
(1676, '_site_transient_browser_30ad404590116cb0ed047f3e8c213448', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"53.0.2785.116\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1840, '_site_transient_browser_2783eb4622db5206d67c0c6011c57e40', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"84.0.4147.135\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'yes'),
(1842, '_site_transient_timeout_available_translations', '1598789336', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1843, '_site_transient_available_translations', 'a:62:{s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-08-28 01:55:45\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:6:\"4.1.24\";s:7:\"updated\";s:19:\"2018-02-27 08:47:23\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.24/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-11-09 13:57:29\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-06-12 06:35:32\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-13 06:35:35\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-07-02 05:01:11\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-19 09:39:12\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-08-24 14:31:22\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-20 12:41:57\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-20 12:43:48\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/core/4.1.31/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:6:\"4.1.24\";s:7:\"updated\";s:19:\"2015-03-26 14:38:25\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.24/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-11-13 08:18:30\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-05-03 20:14:13\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-13 03:26:17\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-13 07:18:28\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:6:\"4.1.24\";s:7:\"updated\";s:19:\"2018-11-13 15:31:45\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.24/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-04-22 17:02:01\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-11-12 18:01:01\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-07-13 05:48:15\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-07-23 23:59:08\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-04-01 14:20:49\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-12-08 23:06:38\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-04-07 02:18:39\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-19 08:31:24\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-08-04 11:58:58\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:3:\"4.0\";s:7:\"updated\";s:19:\"2014-09-05 17:37:43\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.0/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-13 08:21:37\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.1.14\";s:7:\"updated\";s:19:\"2015-03-26 15:20:27\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.1.14/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-04-28 16:41:32\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-05-11 07:27:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-14 19:17:40\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:6:\"4.1.24\";s:7:\"updated\";s:19:\"2015-09-15 15:59:46\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.24/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:29:34\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-04-22 13:36:50\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-03-05 20:50:07\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-13 04:58:56\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-11-04 08:14:55\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-04-13 15:04:52\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-08-27 09:33:52\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.1.24\";s:7:\"updated\";s:19:\"2017-11-19 07:24:23\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.24/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-12-19 02:28:48\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-08-20 10:04:12\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-04-16 06:38:46\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-13 06:40:27\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-13 17:59:58\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-07-25 10:45:32\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-11-30 11:34:00\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-13 06:55:24\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-22 15:25:22\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:6:\"4.1.24\";s:7:\"updated\";s:19:\"2017-11-16 19:05:25\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.24/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-13 14:42:59\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-08-27 19:59:38\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-06-21 08:42:17\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-03-27 04:29:43\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-12-19 13:39:01\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.1.24\";s:7:\"updated\";s:19:\"2018-02-19 18:50:05\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.24/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-08-17 06:46:42\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2020-06-10 10:42:46\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.31/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:6:\"4.1.31\";s:7:\"updated\";s:19:\"2019-07-28 01:31:42\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.31/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2017-05-19 17:15:30\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'yes'),
(1717, '_site_transient_timeout_browser_6a6af6ca7cf9fc7984bf5ac20b788639', '1495448609', 'yes'),
(1718, '_site_transient_browser_6a6af6ca7cf9fc7984bf5ac20b788639', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"53.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1780, '_site_transient_browser_f05336c2dd01cd07d9b4733204548e95', 'a:9:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"60.0.3112.113\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'yes'),
(1803, '_site_transient_browser_337363615634d866e85314fdcf27494a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.87\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'yes'),
(1779, '_site_transient_timeout_browser_f05336c2dd01cd07d9b4733204548e95', '1506944194', 'yes'),
(1802, '_site_transient_timeout_browser_337363615634d866e85314fdcf27494a', '1530288601', 'yes'),
(1830, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:16:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_PT/wordpress-5.5.zip\";s:6:\"locale\";s:5:\"pt_PT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_PT/wordpress-5.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.5\";s:7:\"version\";s:3:\"5.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.5-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.5\";s:7:\"version\";s:3:\"5.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.5-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.5\";s:7:\"version\";s:3:\"5.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.4\";s:7:\"version\";s:5:\"5.3.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.7\";s:7:\"version\";s:5:\"5.2.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.6\";s:7:\"version\";s:5:\"5.1.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:7;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.0.10.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.0.10.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.10-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.0.10-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.0.10\";s:7:\"version\";s:6:\"5.0.10\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:8;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.15.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.15.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.15-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.9.15-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.9.15\";s:7:\"version\";s:6:\"4.9.15\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:9;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.8.14.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.8.14.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.8.14-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.8.14-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.8.14\";s:7:\"version\";s:6:\"4.8.14\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:10;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.7.18.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.7.18.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.7.18-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.7.18-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.7.18\";s:7:\"version\";s:6:\"4.7.18\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:11;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.6.19.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.6.19.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.6.19-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.6.19-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.6.19\";s:7:\"version\";s:6:\"4.6.19\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:12;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.5.22.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.5.22.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.5.22-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.5.22-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.5.22\";s:7:\"version\";s:6:\"4.5.22\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:13;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.4.23.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.4.23.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.4.23-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.4.23-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.4.23\";s:7:\"version\";s:6:\"4.4.23\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:14;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.3.24.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.3.24.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.3.24-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.3.24-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.3.24\";s:7:\"version\";s:6:\"4.3.24\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:15;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.2.28.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.2.28.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.2.28-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.2.28-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"4.2.28\";s:7:\"version\";s:6:\"4.2.28\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1598775764;s:15:\"version_checked\";s:6:\"4.1.31\";s:12:\"translations\";a:0:{}}', 'yes'),
(1844, '_transient_pll_languages_list', 'a:2:{i:0;O:12:\"PLL_Language\":20:{s:7:\"term_id\";i:2;s:4:\"name\";s:10:\"Português\";s:4:\"slug\";s:2:\"pt\";s:10:\"term_group\";s:1:\"0\";s:16:\"term_taxonomy_id\";i:2;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"pt_PT\";s:6:\"parent\";s:1:\"0\";s:5:\"count\";i:75;s:10:\"tl_term_id\";i:3;s:19:\"tl_term_taxonomy_id\";i:3;s:8:\"tl_count\";i:1;s:6:\"locale\";R:9;s:6:\"is_rtl\";s:1:\"0\";s:8:\"flag_url\";N;s:4:\"flag\";N;s:8:\"home_url\";s:37:\"http://bogen.sometim.com/language/pt/\";s:10:\"search_url\";s:37:\"http://bogen.sometim.com/language/pt/\";s:4:\"host\";N;s:5:\"mo_id\";N;}i:1;O:12:\"PLL_Language\":20:{s:7:\"term_id\";i:4;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";s:1:\"0\";s:16:\"term_taxonomy_id\";i:4;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"en_GB\";s:6:\"parent\";s:1:\"0\";s:5:\"count\";i:49;s:10:\"tl_term_id\";i:5;s:19:\"tl_term_taxonomy_id\";i:5;s:8:\"tl_count\";i:1;s:6:\"locale\";R:29;s:6:\"is_rtl\";s:1:\"0\";s:8:\"flag_url\";N;s:4:\"flag\";N;s:8:\"home_url\";s:37:\"http://bogen.sometim.com/language/en/\";s:10:\"search_url\";s:37:\"http://bogen.sometim.com/language/en/\";s:4:\"host\";N;s:5:\"mo_id\";N;}}', 'yes'),
(1837, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1598775765;s:7:\"checked\";a:5:{s:7:\"sometim\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"1.0\";s:14:\"twentyfourteen\";s:3:\"1.2\";s:14:\"twentythirteen\";s:3:\"1.3\";s:12:\"twentytwelve\";s:3:\"1.5\";}s:8:\"response\";a:4:{s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.7.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentyfourteen\";a:6:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"2.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.2.9.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentythirteen\";a:6:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"3.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentythirteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentythirteen.3.1.zip\";s:8:\"requires\";s:3:\"3.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwelve\";a:6:{s:5:\"theme\";s:12:\"twentytwelve\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwelve/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwelve.3.2.zip\";s:8:\"requires\";s:3:\"3.5\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'yes'),
(1839, '_site_transient_timeout_browser_2783eb4622db5206d67c0c6011c57e40', '1599383314', 'yes'),
(1838, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1598775765;s:8:\"response\";a:1:{s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:41:\"w.org/plugins/intuitive-custom-post-order\";s:4:\"slug\";s:27:\"intuitive-custom-post-order\";s:6:\"plugin\";s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:11:\"new_version\";s:5:\"3.1.2\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/intuitive-custom-post-order/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/intuitive-custom-post-order.3.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/intuitive-custom-post-order/assets/icon-256x256.png?rev=1078797\";s:2:\"1x\";s:80:\"https://ps.w.org/intuitive-custom-post-order/assets/icon-128x128.png?rev=1078797\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/intuitive-custom-post-order/assets/banner-1544x500.png?rev=1209666\";s:2:\"1x\";s:82:\"https://ps.w.org/intuitive-custom-post-order/assets/banner-772x250.png?rev=1078755\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";a:0:{}}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"2.8.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.2.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";a:0:{}}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 6, '_edit_lock', '1444515900:1'),
(3, 6, '_edit_last', '1'),
(4, 7, '_edit_lock', '1426445387:1'),
(5, 7, '_edit_last', '1'),
(6, 9, '_edit_lock', '1426445321:1'),
(7, 9, '_edit_last', '1'),
(8, 11, '_edit_lock', '1451396015:1'),
(9, 11, '_edit_last', '1'),
(10, 14, '_wp_attached_file', '2014/12/slide.jpg'),
(11, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:554;s:4:\"file\";s:17:\"2014/12/slide.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"slide-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"slide-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"slide-1024x436.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(587, 369, '_wp_attached_file', '2014/12/slide-18.png'),
(13, 15, '_edit_lock', '1427382723:2'),
(14, 15, '_edit_last', '1'),
(15, 17, '_wp_attached_file', '2014/12/slide-3.jpg'),
(16, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:554;s:4:\"file\";s:19:\"2014/12/slide-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-3-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide-3-1024x436.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(17, 15, '_thumbnail_id', '17'),
(18, 18, '_edit_lock', '1450459849:2'),
(19, 18, '_edit_last', '2'),
(20, 19, '_wp_attached_file', '2014/12/slide-21.jpg'),
(21, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:554;s:4:\"file\";s:20:\"2014/12/slide-21.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide-21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slide-21-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide-21-1024x436.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(22, 18, '_thumbnail_id', '19'),
(23, 21, '_edit_lock', '1426326268:2'),
(24, 21, '_edit_last', '1'),
(25, 23, '_edit_lock', '1420812588:1'),
(26, 23, '_edit_last', '1'),
(27, 23, 'field_54988a1439c1e', 'a:10:{s:3:\"key\";s:19:\"field_54988a1439c1e\";s:5:\"label\";s:9:\"tipo Into\";s:4:\"name\";s:9:\"tipo_into\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:7:\"message\";s:0:\"\";s:13:\"default_value\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(40, 23, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"contactos\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:4;}'),
(39, 23, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"eventos\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:3;}'),
(38, 23, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"clientes\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:2;}'),
(37, 23, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"producao\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(36, 23, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"manutentencao\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(33, 23, 'position', 'normal'),
(34, 23, 'layout', 'default'),
(35, 23, 'hide_on_screen', ''),
(81, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:740;s:4:\"file\";s:25:\"2015/01/man-industria.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"man-industria-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"man-industria-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"man-industria-1024x583.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(78, 43, 'slide_content', '1'),
(79, 43, '_slide_content', 'field_54a6759251b7b'),
(59, 21, 'tipo_into', '1'),
(60, 21, '_tipo_into', 'field_54988a1439c1e'),
(61, 42, '_edit_lock', '1420195854:1'),
(62, 42, '_edit_last', '1'),
(72, 42, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"manutentencao\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(71, 42, 'field_54a6759251b7b', 'a:13:{s:3:\"key\";s:19:\"field_54a6759251b7b\";s:5:\"label\";s:5:\"Slide\";s:4:\"name\";s:13:\"slide_content\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:1:{i:0;a:12:{s:3:\"key\";s:19:\"field_54a675b851b7c\";s:5:\"label\";s:11:\"Slide Image\";s:4:\"name\";s:11:\"slide_image\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(67, 42, 'hide_on_screen', ''),
(80, 45, '_wp_attached_file', '2015/01/man-industria.jpg'),
(65, 42, 'position', 'normal'),
(66, 42, 'layout', 'default'),
(73, 42, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"producao\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:1;}'),
(74, 43, '_edit_lock', '1426446616:1'),
(75, 43, '_edit_last', '1'),
(76, 43, 'tipo_into', '0'),
(77, 43, '_tipo_into', 'field_54988a1439c1e'),
(83, 43, 'slide_content_0_slide_image', '45'),
(84, 43, '_slide_content_0_slide_image', 'field_54a675b851b7c'),
(85, 46, '_edit_lock', '1451396224:1'),
(86, 46, '_edit_last', '1'),
(87, 46, 'tipo_into', '0'),
(88, 46, '_tipo_into', 'field_54988a1439c1e'),
(89, 46, 'slide_content', '1'),
(90, 46, '_slide_content', 'field_54a6759251b7b'),
(91, 48, '_wp_attached_file', '2015/01/tercerio_2.jpg'),
(92, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:740;s:4:\"file\";s:22:\"2015/01/tercerio_2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"tercerio_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"tercerio_2-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"tercerio_2-1024x583.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(93, 46, 'slide_content_0_slide_image', '376'),
(94, 46, '_slide_content_0_slide_image', 'field_54a675b851b7c'),
(95, 49, '_edit_lock', '1426445851:1'),
(96, 49, '_edit_last', '2'),
(97, 49, 'tipo_into', '1'),
(98, 49, '_tipo_into', 'field_54988a1439c1e'),
(99, 49, 'slide_content', '0'),
(100, 49, '_slide_content', 'field_54a6759251b7b'),
(101, 52, '_edit_lock', '1450441498:2'),
(102, 52, '_edit_last', '1'),
(103, 52, 'tipo_into', '0'),
(104, 52, '_tipo_into', 'field_54988a1439c1e'),
(105, 52, 'slide_content', '5'),
(106, 52, '_slide_content', 'field_54a6759251b7b'),
(107, 54, '_wp_attached_file', '2015/01/quadro_4.jpg'),
(108, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:740;s:4:\"file\";s:20:\"2015/01/quadro_4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"quadro_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"quadro_4-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"quadro_4-1024x583.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(109, 55, '_wp_attached_file', '2015/01/quadro1.jpg'),
(110, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:740;s:4:\"file\";s:19:\"2015/01/quadro1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"quadro1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"quadro1-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"quadro1-1024x583.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(111, 56, '_wp_attached_file', '2015/01/quadro2.jpg'),
(112, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:740;s:4:\"file\";s:19:\"2015/01/quadro2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"quadro2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"quadro2-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"quadro2-1024x583.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(113, 57, '_wp_attached_file', '2015/01/quadro3.jpg'),
(114, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:740;s:4:\"file\";s:19:\"2015/01/quadro3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"quadro3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"quadro3-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"quadro3-1024x583.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(115, 58, '_wp_attached_file', '2015/01/slidefb.jpg'),
(116, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:740;s:4:\"file\";s:19:\"2015/01/slidefb.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slidefb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slidefb-300x171.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slidefb-1024x583.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(117, 52, 'slide_content_0_slide_image', '55'),
(118, 52, '_slide_content_0_slide_image', 'field_54a675b851b7c'),
(119, 52, 'slide_content_1_slide_image', '56'),
(120, 52, '_slide_content_1_slide_image', 'field_54a675b851b7c'),
(121, 52, 'slide_content_2_slide_image', '57'),
(122, 52, '_slide_content_2_slide_image', 'field_54a675b851b7c'),
(123, 52, 'slide_content_3_slide_image', '54'),
(124, 52, '_slide_content_3_slide_image', 'field_54a675b851b7c'),
(125, 52, 'slide_content_4_slide_image', '58'),
(126, 52, '_slide_content_4_slide_image', 'field_54a675b851b7c'),
(127, 59, '_edit_lock', '1450442083:2'),
(128, 59, '_edit_last', '2'),
(129, 59, 'tipo_into', '0'),
(130, 59, '_tipo_into', 'field_54988a1439c1e'),
(131, 59, 'slide_content', '1'),
(132, 59, '_slide_content', 'field_54a6759251b7b'),
(133, 61, '_wp_attached_file', '2015/01/terceario.jpg'),
(134, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:730;s:4:\"file\";s:21:\"2015/01/terceario.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"terceario-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"terceario-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"terceario-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(135, 59, 'slide_content_0_slide_image', '347'),
(136, 59, '_slide_content_0_slide_image', 'field_54a675b851b7c'),
(137, 63, '_edit_lock', '1426447885:1'),
(138, 63, '_edit_last', '1'),
(139, 63, 'tipo_into', '1'),
(140, 63, '_tipo_into', 'field_54988a1439c1e'),
(141, 65, '_edit_lock', '1420204351:1'),
(142, 65, '_edit_last', '1'),
(143, 66, '_wp_attached_file', '2015/01/ine_hover.jpg'),
(144, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:21:\"2015/01/ine_hover.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"ine_hover-150x146.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(145, 65, '_thumbnail_id', '66'),
(146, 65, 'tipo_into', '0'),
(147, 65, '_tipo_into', 'field_54988a1439c1e'),
(148, 68, '_edit_lock', '1451570317:2'),
(149, 68, '_edit_last', '2'),
(150, 69, '_wp_attached_file', '2015/01/movicel_hover.jpg'),
(151, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:25:\"2015/01/movicel_hover.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"movicel_hover-150x146.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(601, 383, '_wp_attached_file', '2015/01/Movicel.jpg'),
(153, 68, 'tipo_into', '0'),
(154, 68, '_tipo_into', 'field_54988a1439c1e'),
(155, 71, '_edit_lock', '1420204459:1'),
(156, 71, '_edit_last', '1'),
(157, 72, '_wp_attached_file', '2015/01/somague_hover.jpg'),
(158, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:25:\"2015/01/somague_hover.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"somague_hover-150x146.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(159, 71, '_thumbnail_id', '72'),
(160, 71, 'tipo_into', '0'),
(161, 71, '_tipo_into', 'field_54988a1439c1e'),
(162, 74, '_edit_lock', '1420204533:1'),
(163, 74, '_edit_last', '1'),
(164, 75, '_wp_attached_file', '2015/01/sonangol_hover5.jpg'),
(165, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:146;s:4:\"file\";s:27:\"2015/01/sonangol_hover5.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"sonangol_hover5-150x146.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(166, 74, '_thumbnail_id', '75'),
(167, 74, 'tipo_into', '0'),
(168, 74, '_tipo_into', 'field_54988a1439c1e'),
(169, 77, '_edit_lock', '1424185331:1'),
(170, 77, '_edit_last', '1'),
(171, 78, '_wp_attached_file', '2015/01/soaresdacosta_hover.jpg'),
(172, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:31:\"2015/01/soaresdacosta_hover.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"soaresdacosta_hover-150x146.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(173, 77, '_thumbnail_id', '78'),
(174, 77, 'tipo_into', '0'),
(175, 77, '_tipo_into', 'field_54988a1439c1e'),
(546, 343, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:52:\"2015/01/ThinkstockPhotos-82635089-e1450441317865.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"ThinkstockPhotos-82635089-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"ThinkstockPhotos-82635089-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"ThinkstockPhotos-82635089-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:25:\"Getty Images/moodboard RF\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:59:\"Welder working from cherry picker on warehouse construction\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:8:\"82635089\";s:11:\"orientation\";i:0;}}'),
(178, 81, '_wp_attached_file', '2015/01/bes_angola_hover.jpg'),
(179, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:28:\"2015/01/bes_angola_hover.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"bes_angola_hover-150x146.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(545, 343, '_wp_attached_file', '2015/01/ThinkstockPhotos-82635089-e1450441317865.jpg'),
(183, 84, '_edit_lock', '1424185282:1'),
(184, 84, '_edit_last', '1'),
(185, 85, '_wp_attached_file', '2015/01/cnt_hover.jpg'),
(186, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:21:\"2015/01/cnt_hover.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cnt_hover-150x146.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(187, 84, '_thumbnail_id', '85'),
(188, 84, 'tipo_into', '0'),
(189, 84, '_tipo_into', 'field_54988a1439c1e'),
(190, 87, '_edit_lock', '1444517496:1'),
(191, 87, '_edit_last', '1'),
(192, 88, '_wp_attached_file', '2015/01/efacec_hover.jpg'),
(193, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:24:\"2015/01/efacec_hover.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"efacec_hover-150x146.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(194, 87, '_thumbnail_id', '88'),
(195, 87, 'tipo_into', '0'),
(196, 87, '_tipo_into', 'field_54988a1439c1e'),
(197, 91, '_edit_lock', '1424197589:1'),
(198, 91, '_edit_last', '1'),
(199, 91, 'tipo_into', '1'),
(200, 91, '_tipo_into', 'field_54988a1439c1e'),
(201, 93, '_edit_lock', '1474048830:2'),
(202, 93, '_edit_last', '2'),
(203, 93, 'tipo_into', '0'),
(204, 93, '_tipo_into', 'field_54988a1439c1e'),
(205, 95, '_wp_attached_file', '2015/01/event-1.jpg'),
(206, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:523;s:6:\"height\";i:387;s:4:\"file\";s:19:\"2015/01/event-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"event-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"event-1-300x222.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(207, 93, '_thumbnail_id', '95'),
(208, 97, '_edit_lock', '1424197879:1'),
(209, 97, '_edit_last', '1'),
(210, 99, '_edit_lock', '1424197828:1'),
(211, 99, '_edit_last', '1'),
(212, 101, '_edit_lock', '1426327521:2'),
(213, 101, '_edit_last', '1'),
(214, 103, '_edit_lock', '1420851647:1'),
(215, 103, '_edit_last', '1'),
(233, 103, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"qsa\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(217, 103, 'position', 'normal'),
(218, 103, 'layout', 'default'),
(219, 103, 'hide_on_screen', ''),
(225, 104, '_edit_lock', '1474834261:1'),
(226, 104, '_edit_last', '1'),
(228, 104, 'content_download', '1'),
(229, 104, '_content_download', 'field_54a6a61e8e866'),
(230, 104, 'Files_download', '3'),
(231, 104, '_Files_download', 'field_54a6a6498e867'),
(222, 103, 'field_54a6a61e8e866', 'a:10:{s:3:\"key\";s:19:\"field_54a6a61e8e866\";s:5:\"label\";s:17:\"Conteudo Download\";s:4:\"name\";s:16:\"content_download\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:7:\"message\";s:0:\"\";s:13:\"default_value\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(223, 103, 'field_54a6a6498e867', 'a:13:{s:3:\"key\";s:19:\"field_54a6a6498e867\";s:5:\"label\";s:9:\"Ficheiros\";s:4:\"name\";s:14:\"Files_download\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:10:\"sub_fields\";a:2:{i:0;a:11:{s:3:\"key\";s:19:\"field_54a6a67c8e868\";s:5:\"label\";s:8:\"Ficheiro\";s:4:\"name\";s:13:\"file_download\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:11:\"save_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_54a6a61e8e866\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}i:1;a:15:{s:3:\"key\";s:19:\"field_54a6abdbb2cc8\";s:5:\"label\";s:6:\"titulo\";s:4:\"name\";s:14:\"title_download\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:12:\"column_width\";s:0:\"\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_54a6a61e8e866\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}}s:7:\"row_min\";s:0:\"\";s:9:\"row_limit\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:7:\"Add Row\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_54a6a61e8e866\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(234, 108, '_wp_attached_file', '2015/01/Politica_da_Segurança.pdf'),
(235, 109, '_wp_attached_file', '2015/01/Politica_da_Qualidade.pdf'),
(236, 104, 'Files_download_0_file_download', '393'),
(237, 104, '_Files_download_0_file_download', 'field_54a6a67c8e868'),
(238, 104, 'Files_download_0_title_download', 'Política da Segurança'),
(239, 104, '_Files_download_0_title_download', 'field_54a6abdbb2cc8'),
(240, 104, 'Files_download_1_file_download', '394'),
(241, 104, '_Files_download_1_file_download', 'field_54a6a67c8e868'),
(242, 104, 'Files_download_1_title_download', 'Política da Qualidade'),
(243, 104, '_Files_download_1_title_download', 'field_54a6abdbb2cc8'),
(244, 110, '_wp_attached_file', '2015/01/Politica_Ambiental.pdf'),
(245, 104, 'Files_download_2_file_download', '396'),
(246, 104, '_Files_download_2_file_download', 'field_54a6a67c8e868'),
(247, 104, 'Files_download_2_title_download', 'Política Ambiental'),
(248, 104, '_Files_download_2_title_download', 'field_54a6abdbb2cc8'),
(249, 112, '_edit_lock', '1529683878:2'),
(250, 112, '_edit_last', '2'),
(251, 112, 'tipo_into', '1'),
(252, 112, '_tipo_into', 'field_54988a1439c1e'),
(454, 288, '_wp_attached_file', '2015/02/POLÍTICA-DA-QUALIDADE-SOMETIM.pdf'),
(443, 236, '_wp_attached_file', '2015/01/slide-21.jpg'),
(257, 118, '_edit_lock', '1426519002:2'),
(258, 118, '_edit_last', '2'),
(452, 284, '_wp_attached_file', '2015/01/POLITICA-AMBIENTAL-SOMETIM.pdf'),
(450, 282, '_wp_attached_file', '2015/01/POLITICA-DA-SEGURANÇA-SOMETIM.pdf'),
(264, 122, '_thumbnail_id', '17'),
(265, 122, '_edit_lock', '1426520455:2'),
(266, 122, '_edit_last', '2'),
(453, 287, '_wp_attached_file', '2015/02/POLITICA-DA-SEGURANÇA-SOMETIM.pdf'),
(594, 374, '_wp_attached_file', '2015/01/slide-18.png'),
(271, 126, '_edit_lock', '1451396075:1'),
(272, 126, '_edit_last', '1'),
(273, 101, 'content_download', '0'),
(274, 101, '_content_download', 'field_54a6a61e8e866'),
(275, 101, 'Files_download', '0'),
(276, 101, '_Files_download', 'field_54a6a6498e867'),
(277, 99, 'content_download', '0'),
(278, 99, '_content_download', 'field_54a6a61e8e866'),
(279, 99, 'Files_download', '0'),
(280, 99, '_Files_download', 'field_54a6a6498e867'),
(281, 97, 'content_download', '0'),
(282, 97, '_content_download', 'field_54a6a61e8e866'),
(283, 97, 'Files_download', '0'),
(284, 97, '_Files_download', 'field_54a6a6498e867'),
(451, 283, '_wp_attached_file', '2015/01/POLÍTICA-DA-QUALIDADE-SOMETIM.pdf'),
(289, 149, '_edit_lock', '1426445505:1'),
(290, 149, '_edit_last', '1'),
(291, 152, '_edit_lock', '1426445451:1'),
(292, 152, '_edit_last', '1'),
(293, 155, '_edit_lock', '1426445053:1'),
(294, 155, '_edit_last', '1'),
(295, 158, 'tipo_into', '1'),
(296, 158, '_edit_lock', '1426520652:2'),
(297, 158, '_edit_last', '1'),
(298, 158, '_tipo_into', 'field_54988a1439c1e'),
(299, 158, 'slide_content', '0'),
(300, 158, '_slide_content', 'field_54a6759251b7b'),
(301, 161, 'tipo_into', '0'),
(302, 161, 'slide_content', '1'),
(303, 161, 'slide_content_0_slide_image', '45'),
(304, 161, '_edit_lock', '1426520688:2'),
(305, 161, '_edit_last', '1'),
(306, 161, '_tipo_into', 'field_54988a1439c1e'),
(307, 161, '_slide_content_0_slide_image', 'field_54a675b851b7c'),
(308, 161, '_slide_content', 'field_54a6759251b7b'),
(309, 164, 'tipo_into', '0'),
(310, 164, 'slide_content', '1'),
(311, 164, 'slide_content_0_slide_image', '379'),
(312, 164, '_edit_lock', '1451396356:1'),
(313, 164, '_edit_last', '1'),
(314, 164, '_tipo_into', 'field_54988a1439c1e'),
(315, 164, '_slide_content_0_slide_image', 'field_54a675b851b7c'),
(316, 164, '_slide_content', 'field_54a6759251b7b'),
(317, 167, 'tipo_into', '1'),
(318, 167, 'slide_content', '0'),
(319, 167, '_edit_lock', '1426445913:1'),
(320, 167, '_edit_last', '1'),
(321, 167, '_tipo_into', 'field_54988a1439c1e'),
(322, 167, '_slide_content', 'field_54a6759251b7b'),
(323, 169, 'tipo_into', '0'),
(324, 169, 'slide_content', '5'),
(325, 169, 'slide_content_0_slide_image', '55'),
(326, 169, 'slide_content_1_slide_image', '56'),
(327, 169, 'slide_content_2_slide_image', '57'),
(328, 169, 'slide_content_3_slide_image', '54'),
(329, 169, 'slide_content_4_slide_image', '58'),
(330, 169, '_edit_lock', '1441730915:1'),
(331, 169, '_edit_last', '1'),
(332, 169, '_tipo_into', 'field_54988a1439c1e'),
(333, 169, '_slide_content_0_slide_image', 'field_54a675b851b7c'),
(334, 169, '_slide_content_1_slide_image', 'field_54a675b851b7c'),
(335, 169, '_slide_content_2_slide_image', 'field_54a675b851b7c'),
(336, 169, '_slide_content_3_slide_image', 'field_54a675b851b7c'),
(337, 169, '_slide_content_4_slide_image', 'field_54a675b851b7c'),
(338, 169, '_slide_content', 'field_54a6759251b7b'),
(339, 171, 'tipo_into', '0'),
(340, 171, 'slide_content', '1'),
(341, 171, 'slide_content_0_slide_image', '349'),
(342, 171, '_edit_lock', '1450442371:2'),
(343, 171, '_edit_last', '2'),
(344, 171, '_tipo_into', 'field_54988a1439c1e'),
(345, 171, '_slide_content_0_slide_image', 'field_54a675b851b7c'),
(346, 171, '_slide_content', 'field_54a6759251b7b'),
(347, 176, 'tipo_into', '1'),
(348, 176, '_edit_lock', '1451570444:2'),
(349, 176, '_edit_last', '1'),
(350, 176, '_tipo_into', 'field_54988a1439c1e'),
(351, 178, 'tipo_into', '0'),
(352, 178, '_thumbnail_id', '88'),
(353, 178, '_edit_lock', '1426447892:1'),
(354, 178, '_edit_last', '1'),
(355, 178, '_tipo_into', 'field_54988a1439c1e'),
(356, 181, 'tipo_into', '0'),
(357, 181, '_thumbnail_id', '85'),
(358, 181, '_edit_lock', '1424185290:1'),
(359, 181, '_edit_last', '1'),
(360, 181, '_tipo_into', 'field_54988a1439c1e'),
(366, 186, 'tipo_into', '0'),
(367, 186, '_thumbnail_id', '78'),
(368, 186, '_edit_lock', '1424185340:1'),
(369, 186, '_edit_last', '1'),
(370, 186, '_tipo_into', 'field_54988a1439c1e'),
(371, 188, 'tipo_into', '0'),
(372, 188, '_thumbnail_id', '75'),
(373, 188, '_edit_lock', '1424185361:1'),
(374, 188, '_edit_last', '1'),
(375, 188, '_tipo_into', 'field_54988a1439c1e'),
(376, 190, 'tipo_into', '0'),
(377, 190, '_thumbnail_id', '72'),
(378, 190, '_edit_lock', '1424185382:1'),
(379, 190, '_edit_last', '1'),
(380, 190, '_tipo_into', 'field_54988a1439c1e'),
(381, 192, 'tipo_into', '0'),
(604, 387, '_wp_attached_file', '2015/02/Movicel.jpg'),
(383, 192, '_edit_lock', '1451570408:2'),
(384, 192, '_edit_last', '2'),
(385, 192, '_tipo_into', 'field_54988a1439c1e'),
(386, 194, 'tipo_into', '0'),
(387, 194, '_thumbnail_id', '66'),
(388, 194, '_edit_lock', '1424185516:1'),
(389, 194, '_edit_last', '1'),
(390, 194, '_tipo_into', 'field_54988a1439c1e'),
(391, 196, 'tipo_into', '0'),
(392, 196, '_thumbnail_id', '95'),
(393, 196, '_edit_lock', '1474048894:2'),
(394, 196, '_edit_last', '2'),
(395, 196, '_tipo_into', 'field_54988a1439c1e'),
(396, 199, 'tipo_into', '1'),
(397, 199, '_edit_lock', '1426447939:1'),
(398, 199, '_edit_last', '1'),
(399, 199, '_tipo_into', 'field_54988a1439c1e'),
(400, 202, 'content_download', '0'),
(401, 202, 'Files_download', '0'),
(402, 202, '_edit_lock', '1426448579:1'),
(403, 202, '_edit_last', '1'),
(404, 202, '_content_download', 'field_54a6a61e8e866'),
(405, 202, '_Files_download', 'field_54a6a6498e867'),
(406, 205, 'content_download', '0'),
(407, 205, 'Files_download', '0'),
(408, 205, '_edit_lock', '1426448308:1'),
(409, 205, '_edit_last', '1'),
(410, 205, '_content_download', 'field_54a6a61e8e866'),
(411, 205, '_Files_download', 'field_54a6a6498e867'),
(412, 208, 'content_download', '0'),
(413, 208, 'Files_download', '0'),
(414, 208, '_edit_lock', '1426448250:1'),
(415, 208, '_edit_last', '1'),
(416, 208, '_content_download', 'field_54a6a61e8e866'),
(417, 208, '_Files_download', 'field_54a6a6498e867'),
(418, 211, 'content_download', '1'),
(419, 211, 'Files_download', '3'),
(420, 211, 'Files_download_0_file_download', '401'),
(421, 211, 'Files_download_0_title_download', 'Security Policy'),
(422, 211, 'Files_download_1_file_download', '402'),
(423, 211, 'Files_download_1_title_download', 'Quality Policy'),
(424, 211, 'Files_download_2_file_download', '403'),
(425, 211, 'Files_download_2_title_download', 'Environmental Policy'),
(426, 211, '_edit_lock', '1474834538:1'),
(427, 211, '_edit_last', '1'),
(428, 211, '_content_download', 'field_54a6a61e8e866'),
(429, 211, '_Files_download_0_file_download', 'field_54a6a67c8e868'),
(430, 211, '_Files_download_0_title_download', 'field_54a6abdbb2cc8'),
(431, 211, '_Files_download_1_file_download', 'field_54a6a67c8e868'),
(432, 211, '_Files_download_1_title_download', 'field_54a6abdbb2cc8'),
(433, 211, '_Files_download_2_file_download', 'field_54a6a67c8e868'),
(434, 211, '_Files_download_2_title_download', 'field_54a6abdbb2cc8'),
(435, 211, '_Files_download', 'field_54a6a6498e867'),
(436, 213, '_wp_attached_file', '2015/02/Politica_da_Seguranca-eng.pdf'),
(437, 214, '_wp_attached_file', '2015/02/Politica_da_Qualidade-eng.pdf'),
(438, 215, '_wp_attached_file', '2015/02/Politica_Ambiental-eng.pdf'),
(439, 218, 'tipo_into', '1'),
(440, 218, '_edit_lock', '1426450747:1'),
(441, 218, '_edit_last', '1'),
(442, 218, '_tipo_into', 'field_54988a1439c1e'),
(444, 236, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:554;s:4:\"file\";s:20:\"2015/01/slide-21.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide-21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slide-21-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide-21-1024x436.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(445, 118, '_thumbnail_id', '236'),
(456, 291, '_wp_attached_file', '2015/02/POLITICA-AMBIENTAL-SOMETIM.pdf'),
(461, 303, '_edit_lock', '1445427927:1'),
(462, 303, '_edit_last', '1'),
(463, 304, '_wp_attached_file', '2015/10/edifer.png'),
(464, 304, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:18:\"2015/10/edifer.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"edifer-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(465, 303, '_thumbnail_id', '304'),
(466, 303, 'tipo_into', '0'),
(467, 303, '_tipo_into', 'field_54988a1439c1e'),
(468, 307, '_edit_lock', '1445428095:1'),
(469, 307, '_edit_last', '1'),
(470, 308, '_wp_attached_file', '2015/10/imuvip.png'),
(471, 308, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:146;s:4:\"file\";s:18:\"2015/10/imuvip.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"imuvip-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(472, 307, '_thumbnail_id', '308'),
(473, 307, 'tipo_into', '0'),
(474, 307, '_tipo_into', 'field_54988a1439c1e'),
(475, 309, '_edit_lock', '1445429265:1'),
(476, 309, '_edit_last', '1'),
(477, 310, '_wp_attached_file', '2015/10/Nextiraone.png'),
(478, 310, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:22:\"2015/10/Nextiraone.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Nextiraone-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(479, 309, '_thumbnail_id', '310'),
(480, 309, 'tipo_into', '0'),
(481, 309, '_tipo_into', 'field_54988a1439c1e'),
(482, 312, '_edit_lock', '1445428013:1'),
(483, 312, '_edit_last', '1'),
(484, 313, '_wp_attached_file', '2015/10/odebrecht.png'),
(485, 313, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:21:\"2015/10/odebrecht.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"odebrecht-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(486, 312, '_thumbnail_id', '313'),
(487, 312, 'tipo_into', '0'),
(488, 312, '_tipo_into', 'field_54988a1439c1e'),
(489, 315, '_edit_lock', '1445428033:1'),
(490, 315, '_edit_last', '1'),
(491, 316, '_wp_attached_file', '2015/10/oel.png'),
(492, 316, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:146;s:4:\"file\";s:15:\"2015/10/oel.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"oel-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(493, 315, '_thumbnail_id', '316'),
(494, 315, 'tipo_into', '0'),
(495, 315, '_tipo_into', 'field_54988a1439c1e'),
(496, 318, '_edit_lock', '1445428107:1'),
(497, 318, '_edit_last', '1'),
(498, 318, 'tipo_into', '0'),
(499, 318, '_tipo_into', 'field_54988a1439c1e'),
(500, 320, '_wp_attached_file', '2015/10/prebuild.png'),
(501, 320, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:146;s:4:\"file\";s:20:\"2015/10/prebuild.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"prebuild-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(502, 318, '_thumbnail_id', '320'),
(503, 321, '_edit_lock', '1445429769:1'),
(504, 321, '_edit_last', '1'),
(505, 322, '_wp_attached_file', '2015/10/refriango.png'),
(506, 322, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:261;s:6:\"height\";i:146;s:4:\"file\";s:21:\"2015/10/refriango.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"refriango-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(507, 321, '_thumbnail_id', '322'),
(508, 321, 'tipo_into', '0'),
(509, 321, '_tipo_into', 'field_54988a1439c1e'),
(510, 324, 'tipo_into', '0'),
(511, 324, '_thumbnail_id', '304'),
(512, 324, '_edit_lock', '1445429273:1'),
(513, 324, '_edit_last', '1'),
(514, 324, '_tipo_into', 'field_54988a1439c1e'),
(515, 326, 'tipo_into', '0'),
(516, 326, '_thumbnail_id', '322'),
(517, 326, '_edit_lock', '1445429196:1'),
(518, 326, '_edit_last', '1'),
(519, 326, '_tipo_into', 'field_54988a1439c1e'),
(520, 328, 'tipo_into', '0'),
(521, 328, '_thumbnail_id', '316'),
(522, 328, '_edit_lock', '1445429214:1'),
(523, 328, '_edit_last', '1'),
(524, 328, '_tipo_into', 'field_54988a1439c1e'),
(525, 330, 'tipo_into', '0'),
(526, 330, '_thumbnail_id', '320'),
(527, 330, '_edit_lock', '1445429233:1'),
(528, 330, '_edit_last', '1'),
(529, 330, '_tipo_into', 'field_54988a1439c1e'),
(530, 332, 'tipo_into', '0'),
(531, 332, '_thumbnail_id', '313'),
(532, 332, '_edit_lock', '1445429253:1'),
(533, 332, '_edit_last', '1'),
(534, 332, '_tipo_into', 'field_54988a1439c1e'),
(535, 335, 'tipo_into', '0'),
(536, 335, '_thumbnail_id', '310'),
(537, 335, '_edit_lock', '1445429416:1'),
(538, 335, '_edit_last', '1'),
(539, 335, '_tipo_into', 'field_54988a1439c1e'),
(540, 337, 'tipo_into', '0'),
(541, 337, '_thumbnail_id', '308'),
(542, 337, '_edit_lock', '1445429444:1'),
(543, 337, '_edit_last', '1'),
(544, 337, '_tipo_into', 'field_54988a1439c1e'),
(549, 343, '_edit_lock', '1450441478:2'),
(550, 343, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:3867;s:6:\"height\";i:2578;s:4:\"file\";s:29:\"ThinkstockPhotos-82635089.jpg\";}s:18:\"full-1450441317865\";a:3:{s:5:\"width\";i:1935;s:6:\"height\";i:1290;s:4:\"file\";s:44:\"ThinkstockPhotos-82635089-e1450441213178.jpg\";}}'),
(551, 343, '_edit_last', '2'),
(552, 61, '_edit_lock', '1450441488:2'),
(553, 347, '_wp_attached_file', '2015/01/Sem-Título.jpg'),
(554, 347, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:1736;s:4:\"file\";s:23:\"2015/01/Sem-Título.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Sem-Título-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Sem-Título-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Sem-Título-1024x463.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(558, 349, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:1736;s:4:\"file\";s:23:\"2015/02/Sem-Título.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Sem-Título-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Sem-Título-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Sem-Título-1024x463.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(557, 349, '_wp_attached_file', '2015/02/Sem-Título.jpg'),
(593, 11, '_thumbnail_id', '369'),
(595, 374, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:554;s:4:\"file\";s:20:\"2015/01/slide-18.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide-18-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slide-18-300x128.png\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide-18-1024x436.png\";s:5:\"width\";i:1024;s:6:\"height\";i:436;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(590, 371, '_wp_attached_file', '2014/12/PC180018_03.png'),
(591, 371, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:938;s:6:\"height\";i:554;s:4:\"file\";s:23:\"2014/12/PC180018_03.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"PC180018_03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"PC180018_03-300x177.png\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(588, 369, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:554;s:4:\"file\";s:20:\"2014/12/slide-18.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slide-18-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slide-18-300x128.png\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slide-18-1024x436.png\";s:5:\"width\";i:1024;s:6:\"height\";i:436;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(584, 366, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:4608;s:6:\"height\";i:3456;s:4:\"file\";s:12:\"PC180018.jpg\";}}'),
(582, 366, '_wp_attached_file', '2015/12/PC180018-e1450460755607.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(583, 366, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:739;s:6:\"height\";i:554;s:4:\"file\";s:35:\"2015/12/PC180018-e1450460755607.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"PC180018-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"PC180018-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"PC180018-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:3.899999999999999911182158029987476766109466552734375;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"VR340,D750\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1450453083;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"6.67\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:22:\"OLYMPUS DIGITAL CAMERA\";s:11:\"orientation\";i:1;}}'),
(579, 363, '_wp_attached_file', '2015/12/2.jpg'),
(580, 363, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1022;s:6:\"height\";i:554;s:4:\"file\";s:13:\"2015/12/2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x163.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";d:3.899999999999999911182158029987476766109466552734375;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"VR340,D750\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1450453083;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"6.67\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:22:\"OLYMPUS DIGITAL CAMERA\";s:11:\"orientation\";i:1;}}'),
(596, 126, '_thumbnail_id', '374'),
(597, 376, '_wp_attached_file', '2015/01/terciario.png'),
(598, 376, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:740;s:4:\"file\";s:21:\"2015/01/terciario.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"terciario-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"terciario-300x171.png\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"terciario-1024x583.png\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(599, 379, '_wp_attached_file', '2015/02/terciario.png'),
(600, 379, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:740;s:4:\"file\";s:21:\"2015/02/terciario.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"terciario-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"terciario-300x171.png\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"terciario-1024x583.png\";s:5:\"width\";i:1024;s:6:\"height\";i:583;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(602, 383, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:19:\"2015/01/Movicel.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Movicel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Movicel-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(603, 68, '_thumbnail_id', '383'),
(605, 387, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:19:\"2015/02/Movicel.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Movicel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Movicel-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(606, 192, '_thumbnail_id', '387'),
(607, 393, '_wp_attached_file', '2015/01/POLITICA_DA_SEGURANÇA_SOMETIM.pdf'),
(608, 394, '_wp_attached_file', '2015/01/POLÍTICA_DA_QUALIDADE_SOMETIM.pdf'),
(609, 396, '_wp_attached_file', '2015/01/POLITICA_AMBIENTAL_SOMETIM.pdf'),
(610, 401, '_wp_attached_file', '2015/02/POLITICA_DA_SEGURANÇA_SOMETIM.pdf'),
(611, 402, '_wp_attached_file', '2015/02/POLÍTICA_DA_QUALIDADE_SOMETIM.pdf'),
(612, 403, '_wp_attached_file', '2015/02/POLITICA_AMBIENTAL_SOMETIM.pdf'),
(613, 406, '_edit_lock', '1494843923:2'),
(614, 406, '_edit_last', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-12-17 17:25:13', '2014-12-17 17:25:13', 'Bem-vindo ao WordPress. Este é o seu primeiro artigo. Edite-o ou elimine-o e dê vida ao seu site!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2014-12-17 17:25:13', '2014-12-17 17:25:13', '', 0, 'http://bogen.sometim.com/?p=1', 1, 'post', '', 1),
(52, 1, '2015-01-02 12:06:13', '2015-01-02 12:06:13', '<p>Especializada na concepção e fabrico de Quadros Eléctricos de BT e MT, dos seguintes tipos:</p>\r\n<ul>\r\n	<li>Quadros Eléctricos\r\n<ul>\r\n	<li>Potência</li>\r\n	<li>Comando</li>\r\n	<li>Controlo de motores</li>\r\n	<li>Gavetas extraíveis</li>\r\n</ul>\r\n</li>\r\n	<li>Mesas de Comando</li>\r\n	<li>Automação</li>\r\n	<li>Postos de Transformação</li>\r\n</ul>\r\n</\r\n<p>Intervenção em todos os sectores de mercado a nível nacional; Reconhecida como Quadrista da Siemens .</p>\r\n<p><a class=\"download\" href=\"download.php?file=pdfs/SOMETIM_Solution_Partner.pdf\">“Siemens Solution Partner”</a></p>\r\n<p><a class=\"download\" href=\"download.php?file=pdfs/SOMETIM_06_2015_PT_V8_COMPLETA_FQE.pdf\">“Apresentação Sometim”</a></p>', 'Produção de <br> Quadros Eléctricos', 'Fabrico de quadros eléctricos de potência e comando', 'publish', 'closed', 'closed', '', 'producao-de-quadros-electricos', '', '', '2015-09-08 16:49:24', '2015-09-08 16:49:24', '', 0, 'http://bogen.sometim.com/?post_type=producao&#038;p=52', 5, 'producao', '', 0),
(49, 1, '2015-01-02 11:03:33', '2015-01-02 11:03:33', 'A Unidade Fabril da SOMETIM disponibiliza soluções globais no Fabrico de Quadros Eléctricos e da Metalomecânica', 'PRODUÇÃO FABRIL', '           \r\n            ', 'publish', 'closed', 'closed', '', 'producao-fabril', '', '', '2015-03-14 10:25:36', '2015-03-14 10:25:36', '', 0, 'http://bogen.sometim.com/?post_type=producao&#038;p=49', 4, 'producao', '', 0),
(6, 1, '2014-12-22 19:22:22', '2014-12-22 19:22:22', 'tendo como objetivo o desenvolvimento das actividades de Manutenção Metalomecânica e Montagens Industriais. Transformada em Sociedade Anónima em 1992, a SOMETIM investiu', 'A SOMETIM, LDA. FOI CONSTITUIDA EM 1983', 'fortemente, desde a sua criação, em Instalações, Equipamentos/Ferramentas e Formação Profissional, a fim de consolidar a sua oferta e a qualidade dos seus serviços e assegurar o desenvolvimento da sua actividade.', 'publish', 'closed', 'closed', '', 'a-sometim-lda-foi-constituida-em-1983', '', '', '2014-12-22 19:22:22', '2014-12-22 19:22:22', '', 0, 'http://bogen.sometim.com/?post_type=empresa&#038;p=6', 4, 'empresa', '', 0),
(7, 1, '2014-12-22 19:25:16', '2014-12-22 19:25:16', 'a partir de 2012, a SOMETIM diversificou e reforçou a sua actividade na área do facility management com a introdução da Manutenção Multitécnica, Manutenção Industrial, Fabrico de Quadros Eléctricos e Metalomecânica. Dotada de equipas qualificadas', 'PRESENTE NO MERCADO ANGOLANO', 'e pluridisciplinares, a SOMETIM assegura a oferta global de serviços especializados nas suas actividades e a sua presença em parcerias responsáveis e duradouras.', 'publish', 'closed', 'closed', '', 'presente-no-mercado-angolano', '', '', '2015-03-15 18:51:59', '2015-03-15 18:51:59', '', 0, 'http://bogen.sometim.com/?post_type=empresa&#038;p=7', 5, 'empresa', '', 0),
(9, 1, '2014-12-22 19:26:46', '2014-12-22 19:26:46', 'e numa perspectiva de melhoria contínua da sua actividade, em 2014 a SOMETIM preparou-se no sentido de obter a Certificação do Sistema de Gestão da Qualidade de acordo com a Norma', 'COM A COLOCAÇÃO DE NOVOS DESAFIOS', 'ISO 9001:2008, a Certificação do Sistema de Gestão de Segurança e Saúde no Trabalho de acordo com as Normas OHSAS 18001:2007 e a Certificação do Sistema de Gestão Ambiental de acordo com a Norma ISO 14001:2004', 'publish', 'closed', 'closed', '', 'com-a-colocacao-de-novos-desafios', '', '', '2015-03-15 18:51:02', '2015-03-15 18:51:02', '', 0, 'http://bogen.sometim.com/?post_type=empresa&#038;p=9', 6, 'empresa', '', 0),
(252, 1, '2015-03-15 18:51:04', '2015-03-15 18:51:04', '<p>e numa perspectiva de melhoria contínua da sua actividade, em 2014 a SOMETIM preparou-se no sentido de obter a Certificação do Sistema de Gestão da Qualidade de acordo com a Norma</p>\n', 'COM A COLOCAÇÃO DE NOVOS DESAFIOS', 'ISO 9001:2008, a Certificação do Sistema de Gestão de Segurança e Saúde no Trabalho de acordo com as Normas OHSAS 18001:2007 e a Certificação do Sistema de Gestão Ambiental de acordo com a Norma ISO 14001:2004', 'inherit', 'open', 'open', '', '9-autosave-v1', '', '', '2015-03-15 18:51:04', '2015-03-15 18:51:04', '', 9, 'http://bogen.sometim.com/9-autosave-v1/', 0, 'revision', '', 0),
(11, 1, '2014-12-22 20:48:17', '2014-12-22 20:48:17', ' Presente no Mercado Angolano a partir de 2012, a SOMETIM diversificou e reforçou a sua actividade com a introdução das Áreas de Manutenção Multitécnica, Manutenção Industrial, Fabrico de Quadros Eléctricos e Metalomecânica.', 'Diversificámos e reforçámos a nossa actividade', '', 'publish', 'closed', 'closed', '', 'diversificamos-e-reforcamos-a-nossa-actividade', '', '', '2015-12-29 13:35:03', '2015-12-29 13:35:03', '', 0, 'http://bogen.sometim.com/?post_type=slideshow&#038;p=11', 5, 'slideshow', '', 0),
(15, 1, '2014-12-22 20:51:13', '2014-12-22 20:51:13', '', 'Fabrico de Quadros Eléctricos', '', 'publish', 'closed', 'closed', '', 'fabrico-de-quadros-electricos', '', '', '2014-12-22 20:51:32', '2014-12-22 20:51:32', '', 0, 'http://bogen.sometim.com/?post_type=slideshow&#038;p=15', 6, 'slideshow', '', 0),
(18, 1, '2014-12-22 20:52:25', '2014-12-22 20:52:25', 'A Sometim, Engenharia e Serviços, S.A., inaugurou no dia 29 de Abril de 2014, uma fábrica de produção de quadros eléctricos em Viana, Luanda.', 'Inauguração Fábrica Sometim', '', 'publish', 'closed', 'closed', '', 'inauguracao-fabrica-sometim', '', '', '2015-03-26 15:14:54', '2015-03-26 15:14:54', '', 0, 'http://bogen.sometim.com/?post_type=slideshow&#038;p=18', 1, 'slideshow', '', 0),
(14, 1, '2014-12-22 20:50:49', '2014-12-22 20:50:49', '', 'slide', '', 'inherit', 'open', 'open', '', 'slide', '', '', '2014-12-22 20:50:49', '2014-12-22 20:50:49', '', 11, 'http://bogen.sometim.com/wp-content/uploads/2014/12/slide.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2014-12-22 20:51:22', '2014-12-22 20:51:22', '', 'slide-3', '', 'inherit', 'open', 'open', '', 'slide-3', '', '', '2014-12-22 20:51:22', '2014-12-22 20:51:22', '', 15, 'http://bogen.sometim.com/wp-content/uploads/2014/12/slide-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2014-12-22 20:52:21', '2014-12-22 20:52:21', '', 'slide-21', '', 'inherit', 'open', 'open', '', 'slide-21', '', '', '2014-12-22 20:52:21', '2014-12-22 20:52:21', '', 18, 'http://bogen.sometim.com/wp-content/uploads/2014/12/slide-21.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2014-12-22 21:15:22', '2014-12-22 21:15:22', 'A SOMETIM tem como objectivo preservar e manter os activos imobiliários; reduzir os custos de exploração; e garantir o correcto funcionamento, oferecendo solucões globais de manutenção.', 'MANUTENÇÃO', '', 'publish', 'closed', 'closed', '', 'manutencao', '', '', '2015-01-02 10:33:27', '2015-01-02 10:33:27', '', 0, 'http://bogen.sometim.com/?post_type=manutentencao&#038;p=21', 4, 'manutentencao', '', 0),
(23, 1, '2014-12-22 21:17:48', '2014-12-22 21:17:48', '', 'intro', '', 'publish', 'closed', 'closed', '', 'acf_intro', '', '', '2014-12-22 21:21:11', '2014-12-22 21:21:11', '', 0, 'http://bogen.sometim.com/?post_type=acf&#038;p=23', 0, 'acf', '', 0),
(48, 1, '2015-01-02 10:59:08', '2015-01-02 10:59:08', '', 'tercerio_2', '', 'inherit', 'open', 'open', '', 'tercerio_2', '', '', '2015-01-02 10:59:08', '2015-01-02 10:59:08', '', 46, 'http://bogen.sometim.com/wp-content/uploads/2015/01/tercerio_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2015-01-02 10:37:28', '2015-01-02 10:37:28', '', 'Slideshow Content', '', 'publish', 'closed', 'closed', '', 'acf_slideshow-content', '', '', '2015-01-02 10:43:46', '2015-01-02 10:43:46', '', 0, 'http://bogen.sometim.com/?post_type=acf&#038;p=42', 0, 'acf', '', 0),
(43, 1, '2015-01-02 10:54:59', '2015-01-02 10:54:59', '<p>A competência e a experiência da SOMETIM na Manutenção Industrial, permite desenvolver relações de parceria com os seus Clientes, nas seguintes áreas:</p>\r\n<ul><li>Serviços de Manutenção, Assistência e Reparação de Instalações e Equipamentos;</li><li>Petróleo/Gás;</li><li>Indústria;</li><li>Energia e Ambiente;</li><li>Metalomecânica</li><li>Paragens de Unidades Industriais</li><li>Recuperação e Calibração de Componentes</li><li>Fabrico e Montagem de pipelines</li></ul>', 'INDÚSTRIA', ' Realização de Manutenção Especializada', 'publish', 'closed', 'closed', '', 'industria', '', '', '2015-01-02 10:57:03', '2015-01-02 10:57:03', '', 0, 'http://bogen.sometim.com/?post_type=manutentencao&#038;p=43', 5, 'manutentencao', '', 0),
(46, 1, '2015-01-02 10:58:20', '2015-01-02 10:58:20', '<p>Equipas técnicas pluridisciplinares, especialmente vocacionadas para a prestação de serviços de manutenção, asseguram a presença da SOMETIM em parcerias responsáveis e duradouras nas seguintes vertentes:</p>\r\n<ul>\r\n	<li>Contractos Globais de Manutenção Multitécnica</li>\r\n	<li>Gestão e Exploração de Instalações Técnicas</li>\r\n	<li>Soluções Integradas de Gestão de Serviços, numa Óptica do “Facilities Management”.</li>\r\n	<li>Electricidade</li>\r\n	<li>AVAC</li>\r\n	<li>Redes Estruturadas</li>\r\n	<li>Redes Hidráulicas</li>\r\n	<li>Segurança</li>\r\n	<li>Telecomunicações</li>\r\n</ul>', 'TERCIÁRIO', 'Realização de Manutenção Multitécnica', 'publish', 'closed', 'closed', '', 'terciario', '', '', '2015-12-29 13:39:24', '2015-12-29 13:39:24', '', 0, 'http://bogen.sometim.com/?post_type=manutentencao&#038;p=46', 6, 'manutentencao', '', 0),
(45, 1, '2015-01-02 10:56:12', '2015-01-02 10:56:12', '', 'man-industria', '', 'inherit', 'open', 'open', '', 'man-industria', '', '', '2015-01-02 10:56:12', '2015-01-02 10:56:12', '', 43, 'http://bogen.sometim.com/wp-content/uploads/2015/01/man-industria.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2015-03-15 18:52:01', '2015-03-15 18:52:01', '<p>a partir de 2012, a SOMETIM diversificou e reforçou a sua actividade na área do facility management com a introdução da Manutenção Multitécnica, Manutenção Industrial, Fabrico de Quadros Eléctricos e Metalomecânica. Dotada de equipas qualificadas</p>\n', 'PRESENTE NO MERCADO ANGOLANO', 'e pluridisciplinares, a SOMETIM assegura a oferta global de serviços especializados nas suas actividades e a sua presença em parcerias responsáveis e duradouras.', 'inherit', 'open', 'open', '', '7-autosave-v1', '', '', '2015-03-15 18:52:01', '2015-03-15 18:52:01', '', 7, 'http://bogen.sometim.com/7-autosave-v1/', 0, 'revision', '', 0),
(152, 1, '2015-02-17 14:40:10', '2015-02-17 14:40:10', 'From 2012, SOMETIM diversified and reinforced its activity on the Facility Management area with the introduction of Multi-Disciplinary Maintenances', 'PRESENCE IN ANGOLAN MARKET', ', Industrial Maintenance, Panel Builder and Electrical & Mechanical Projects.', 'publish', 'closed', 'closed', '', 'presente-no-mercado-angolano-eng', '', '', '2015-03-15 18:53:09', '2015-03-15 18:53:09', '', 0, 'http://bogen.sometim.com/?post_type=empresa&#038;p=152', 2, 'empresa', '', 0),
(53, 1, '2015-10-10 22:27:30', '2015-10-10 22:27:30', '<p>Especializada na concepção e fabrico de Quadros Eléctricos de BT e MT, dos seguintes tipos:</p>\n<ul>\n	<li>Quadros Eléctricos\n<ul>\n	<li>Potência</li>\n	<li>Comando</li>\n	<li>Controlo de motores</li>\n	<li>Gavetas extraíveis</li>\n</ul>\n</li>\n	<li>Mesas de Comando</li>\n	<li>Automação</li>\n	<li>Postos de Transformação</li>\n</ul>\n</\n<p>Intervenção em todos os sectores de mercado a nível nacional; Reconhecida como Quadrista da Siemens .</p>\n<p><a class=\"download\" href=\"download.php?file=pdfs/SOMETIM_Solution_Partner.pdf\">“Siemens Solution Partner”</a></p>\n<p><a class=\"download\" href=\"download.php?file=pdfs/SOMETIM_06_2015_PT_V8_COMPLETA_FQE.pdf\">“Apresentação Sometim”</a></p>', 'Produção de <br> Quadros Eléctricos', 'Fabrico de quadros eléctricos de potência e comando', 'inherit', 'open', 'open', '', '52-autosave-v1', '', '', '2015-10-10 22:27:30', '2015-10-10 22:27:30', '', 52, 'http://bogen.sometim.com/?p=53', 0, 'revision', '', 0),
(54, 1, '2015-01-02 12:09:45', '2015-01-02 12:09:45', '', 'quadro_4', '', 'inherit', 'open', 'open', '', 'quadro_4', '', '', '2015-01-02 12:09:45', '2015-01-02 12:09:45', '', 52, 'http://bogen.sometim.com/wp-content/uploads/2015/01/quadro_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2015-01-02 12:09:47', '2015-01-02 12:09:47', '', 'quadro1', '', 'inherit', 'open', 'open', '', 'quadro1', '', '', '2015-01-02 12:09:47', '2015-01-02 12:09:47', '', 52, 'http://bogen.sometim.com/wp-content/uploads/2015/01/quadro1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2015-01-02 12:09:48', '2015-01-02 12:09:48', '', 'quadro2', '', 'inherit', 'open', 'open', '', 'quadro2', '', '', '2015-01-02 12:09:48', '2015-01-02 12:09:48', '', 52, 'http://bogen.sometim.com/wp-content/uploads/2015/01/quadro2.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2015-01-02 12:09:50', '2015-01-02 12:09:50', '', 'quadro3', '', 'inherit', 'open', 'open', '', 'quadro3', '', '', '2015-01-02 12:09:50', '2015-01-02 12:09:50', '', 52, 'http://bogen.sometim.com/wp-content/uploads/2015/01/quadro3.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2015-01-02 12:10:01', '2015-01-02 12:10:01', '', 'slidefb', '', 'inherit', 'open', 'open', '', 'slidefb', '', '', '2015-01-02 12:10:01', '2015-01-02 12:10:01', '', 52, 'http://bogen.sometim.com/wp-content/uploads/2015/01/slidefb.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2015-01-02 13:09:26', '2015-01-02 13:09:26', 'Nesta  actividade a SOMETIM destaca:\r\n<ul>\r\n	<li>Fornecimento de estruturas para instalações industriais</li>\r\n	<li>Fornecimento armários/quadros especiais para a indústria</li>\r\n	<li>Montagens Industriais</li>\r\n</ul>', 'Metalomecânica', 'Fabrico de estruturas metálicas', 'publish', 'closed', 'closed', '', 'metalomecanica', '', '', '2015-12-18 12:35:35', '2015-12-18 12:35:35', '', 0, 'http://bogen.sometim.com/?post_type=producao&#038;p=59', 6, 'producao', '', 0),
(348, 2, '2015-12-18 12:38:57', '2015-12-18 12:38:57', '<p>From this activity SOMETIM highlights:</p>\n<ul>\n<li>Supply of structures for Electrical Installations</li>\n<li>Supply Cabinets/Special Boards for Industry</li>\n<li>Industrial Installations</li>\n</ul>\n', 'Steel and <br> Mechanical Industries', 'Manufacture of Metallic Structures', 'inherit', 'open', 'open', '', '171-autosave-v1', '', '', '2015-12-18 12:38:57', '2015-12-18 12:38:57', '', 171, 'http://bogen.sometim.com/171-autosave-v1/', 0, 'revision', '', 0),
(61, 1, '2015-01-02 13:10:06', '2015-01-02 13:10:06', '', 'terceario', '', 'inherit', 'open', 'open', '', 'terceario', '', '', '2015-01-02 13:10:06', '2015-01-02 13:10:06', '', 59, 'http://bogen.sometim.com/wp-content/uploads/2015/01/terceario.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2015-01-02 13:11:49', '2015-01-02 13:11:49', 'A SOMETIM tem uma vasta carteira de cliente nas suas áreas de intervenção que abrangem os sectores da construcão civil; telecomunicações; financeira; industrial; e serviços públicos.', 'OS NOSSOS CLIENTES', '', 'publish', 'closed', 'closed', '', 'os-nossos-clientes', '', '', '2015-01-02 13:11:56', '2015-01-02 13:11:56', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=63', 8, 'clientes', '', 0),
(65, 1, '2015-01-02 13:14:48', '2015-01-02 13:14:48', '', 'INE', '', 'publish', 'closed', 'closed', '', 'ine', '', '', '2015-01-02 13:14:48', '2015-01-02 13:14:48', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=65', 30, 'clientes', '', 0),
(66, 1, '2015-01-02 13:14:22', '2015-01-02 13:14:22', '', 'ine_hover', '', 'inherit', 'open', 'open', '', 'ine_hover', '', '', '2015-01-02 13:14:22', '2015-01-02 13:14:22', '', 65, 'http://bogen.sometim.com/wp-content/uploads/2015/01/ine_hover.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2015-01-02 13:14:50', '2015-01-02 13:14:50', '', 'INE', '', 'inherit', 'open', 'open', '', '65-autosave-v1', '', '', '2015-01-02 13:14:50', '2015-01-02 13:14:50', '', 65, 'http://bogen.sometim.com/?p=67', 0, 'revision', '', 0),
(68, 1, '2015-01-02 13:15:48', '2015-01-02 13:15:48', '', 'Movicel', '', 'publish', 'closed', 'closed', '', 'movicel', '', '', '2015-12-31 12:32:51', '2015-12-31 12:32:51', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=68', 14, 'clientes', '', 0),
(69, 1, '2015-01-02 13:15:44', '2015-01-02 13:15:44', '', 'movicel_hover', '', 'inherit', 'open', 'open', '', 'movicel_hover', '', '', '2015-01-02 13:15:44', '2015-01-02 13:15:44', '', 68, 'http://bogen.sometim.com/wp-content/uploads/2015/01/movicel_hover.jpg', 0, 'attachment', 'image/jpeg', 0),
(385, 2, '2015-12-31 14:00:56', '2015-12-31 14:00:56', '', 'Movicel', '', 'inherit', 'open', 'open', '', '68-autosave-v1', '', '', '2015-12-31 14:00:56', '2015-12-31 14:00:56', '', 68, 'http://bogen.sometim.com/68-autosave-v1/', 0, 'revision', '', 0),
(71, 1, '2015-01-02 13:16:39', '2015-01-02 13:16:39', '', 'Somague', '', 'publish', 'closed', 'closed', '', 'somague', '', '', '2015-01-02 13:16:39', '2015-01-02 13:16:39', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=71', 13, 'clientes', '', 0),
(72, 1, '2015-01-02 13:16:28', '2015-01-02 13:16:28', '', 'somague_hover', '', 'inherit', 'open', 'open', '', 'somague_hover', '', '', '2015-01-02 13:16:28', '2015-01-02 13:16:28', '', 71, 'http://bogen.sometim.com/wp-content/uploads/2015/01/somague_hover.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2015-01-02 13:16:40', '2015-01-02 13:16:40', '', 'Somague', '', 'inherit', 'open', 'open', '', '71-autosave-v1', '', '', '2015-01-02 13:16:40', '2015-01-02 13:16:40', '', 71, 'http://bogen.sometim.com/?p=73', 0, 'revision', '', 0),
(74, 1, '2015-01-02 13:17:44', '2015-01-02 13:17:44', '', 'Sonangol', '', 'publish', 'closed', 'closed', '', 'sonangol', '', '', '2015-01-02 13:17:44', '2015-01-02 13:17:44', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=74', 12, 'clientes', '', 0),
(75, 1, '2015-01-02 13:17:38', '2015-01-02 13:17:38', '', 'sonangol_hover5', '', 'inherit', 'open', 'open', '', 'sonangol_hover5', '', '', '2015-01-02 13:17:38', '2015-01-02 13:17:38', '', 74, 'http://bogen.sometim.com/wp-content/uploads/2015/01/sonangol_hover5.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2015-01-02 13:17:46', '2015-01-02 13:17:46', '', 'Sonangol', '', 'inherit', 'open', 'open', '', '74-autosave-v1', '', '', '2015-01-02 13:17:46', '2015-01-02 13:17:46', '', 74, 'http://bogen.sometim.com/?p=76', 0, 'revision', '', 0),
(77, 1, '2015-01-02 13:19:00', '2015-01-02 13:19:00', '', 'Soares da Costa', '', 'publish', 'closed', 'closed', '', 'soares-da-costa', '', '', '2015-01-02 13:19:00', '2015-01-02 13:19:00', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=77', 11, 'clientes', '', 0),
(78, 1, '2015-01-02 13:18:55', '2015-01-02 13:18:55', '', 'soaresdacosta_hover', '', 'inherit', 'open', 'open', '', 'soaresdacosta_hover', '', '', '2015-01-02 13:18:55', '2015-01-02 13:18:55', '', 77, 'http://bogen.sometim.com/wp-content/uploads/2015/01/soaresdacosta_hover.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2015-02-17 15:04:25', '2015-02-17 15:04:25', '', 'Soares da Costa', '', 'inherit', 'open', 'open', '', '77-autosave-v1', '', '', '2015-02-17 15:04:25', '2015-02-17 15:04:25', '', 77, 'http://bogen.sometim.com/?p=185', 0, 'revision', '', 0),
(81, 1, '2015-01-02 13:20:00', '2015-01-02 13:20:00', '', 'bes_angola_hover', '', 'inherit', 'open', 'open', '', 'bes_angola_hover', '', '', '2015-01-02 13:20:00', '2015-01-02 13:20:00', '', 0, 'http://bogen.sometim.com/wp-content/uploads/2015/01/bes_angola_hover.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2015-02-17 14:39:22', '2015-02-17 14:39:22', 'in the perspective of continuous improving of its activity, in 2014, SOMETIM, prepared for obtaining the Quality Management System Certification ISO 9001:2008', 'WITH THE ARRIVAL OF NEW CHALLENGES', 'Occupational Health and Safety Management System Certification OHSAS 18001:2007 and Environmental Management Systems Certification ISO 14001:2004', 'publish', 'closed', 'closed', '', 'com-a-colocacao-de-novos-desafios-eng', '', '', '2015-03-15 18:53:59', '2015-03-15 18:53:59', '', 0, 'http://bogen.sometim.com/?post_type=empresa&#038;p=149', 3, 'empresa', '', 0),
(84, 1, '2015-01-02 13:21:25', '2015-01-02 13:21:25', '', 'CNT', '', 'publish', 'closed', 'closed', '', 'cnt', '', '', '2015-01-02 13:21:25', '2015-01-02 13:21:25', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=84', 10, 'clientes', '', 0),
(85, 1, '2015-01-02 13:21:20', '2015-01-02 13:21:20', '', 'cnt_hover', '', 'inherit', 'open', 'open', '', 'cnt_hover', '', '', '2015-01-02 13:21:20', '2015-01-02 13:21:20', '', 84, 'http://bogen.sometim.com/wp-content/uploads/2015/01/cnt_hover.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2015-02-17 15:03:35', '2015-02-17 15:03:35', '', 'CNT', '', 'inherit', 'open', 'open', '', '84-autosave-v1', '', '', '2015-02-17 15:03:35', '2015-02-17 15:03:35', '', 84, 'http://bogen.sometim.com/?p=180', 0, 'revision', '', 0),
(87, 1, '2015-01-02 13:22:07', '2015-01-02 13:22:07', '', 'Efacec', '', 'publish', 'closed', 'closed', '', 'efacec', '', '', '2015-01-02 13:22:07', '2015-01-02 13:22:07', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=87', 9, 'clientes', '', 0),
(88, 1, '2015-01-02 13:22:03', '2015-01-02 13:22:03', '', 'efacec_hover', '', 'inherit', 'open', 'open', '', 'efacec_hover', '', '', '2015-01-02 13:22:03', '2015-01-02 13:22:03', '', 87, 'http://bogen.sometim.com/wp-content/uploads/2015/01/efacec_hover.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2015-02-17 15:05:20', '2015-02-17 15:05:20', '', 'Somague', '', 'publish', 'closed', 'closed', '', 'somague-2', '', '', '2015-02-17 15:05:20', '2015-02-17 15:05:20', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=190', 6, 'clientes', '', 0),
(91, 1, '2015-01-02 13:23:28', '2015-01-02 13:23:28', 'Nesta secção poderá ver os Eventos de maior importância que a SOMETIM tem criado ou onde tem estado presente.', 'EVENTOS', '', 'publish', 'closed', 'closed', '', 'eventos', '', '', '2015-01-02 13:23:28', '2015-01-02 13:23:28', '', 0, 'http://bogen.sometim.com/?post_type=eventos&#038;p=91', 3, 'eventos', '', 0),
(93, 1, '2015-01-02 13:25:43', '2015-01-02 13:25:43', 'A Sometim, Engenharia e Serviços, S.A., inaugurou no dia 29 de Abril de 2014, uma fábrica de produção de quadros eléctricos em Viana, Luanda.\r\n\r\nA fábrica ocupa uma área de mil metros quadrados. Este investimento foi aprovado pela ANIP, empregando 33 electricistas angolanos e oito estrangeiros, com formação técnica específica ministrada pela Sometim.\r\n\r\nNa inauguração estiverem presentes cerca de 200 convidados, destacando-se o Eng.º Serafim Vieira em representação do Sr. Ministro da Energia e Águas.\r\n\r\nEsta unidade fabril veio dotar Angola de um parceiro sério e tecnicamente capaz de satisfazer as necessidades na área de quadros eléctricos nos mais diversos sectores da indústria nacional. Foi com muita satisfação que a SOMETIM deu início a este projecto, trazendo para Angola todo o conhecimento que nos permite produzir quadros eléctricos de média e baixa tensão ao nível do que melhor se faz internacionalmente.', 'Inauguração da fábrica de produção', '', 'publish', 'closed', 'closed', '', 'inauguracao-da-fabrica-de-producao', '', '', '2016-09-16 18:02:24', '2016-09-16 18:02:24', '', 0, 'http://bogen.sometim.com/?post_type=eventos&#038;p=93', 4, 'eventos', '', 0),
(247, 2, '2016-09-16 18:02:27', '2016-09-16 18:02:27', '<p>A Sometim, Engenharia e Serviços, S.A., inaugurou no dia 29 de Abril de 2014, uma fábrica de produção de quadros eléctricos em Viana, Luanda.</p>\n<p>A fábrica ocupa uma área de mil metros quadrados. Este investimento foi aprovado pela ANIP, empregando 33 electricistas angolanos e oito estrangeiros, com formação técnica específica ministrada pela Sometim.</p>\n<p>Na inauguração estiverem presentes cerca de 200 convidados, destacando-se o Eng.º Serafim Vieira em representação do Sr. Ministro da Energia e Águas.</p>\n<p>Esta unidade fabril veio dotar Angola de um parceiro sério e tecnicamente capaz de satisfazer as necessidades na área de quadros eléctricos nos mais diversos sectores da indústria nacional. Foi com muita satisfação que a SOMETIM deu início a este projecto, trazendo para Angola todo o conhecimento que nos permite produzir quadros eléctricos de média e baixa tensão ao nível do que melhor se faz internacionalmente.</p>\n', 'Inauguração da fábrica de produção', '', 'inherit', 'open', 'open', '', '93-autosave-v1', '', '', '2016-09-16 18:02:27', '2016-09-16 18:02:27', '', 93, 'http://bogen.sometim.com/93-autosave-v1/', 0, 'revision', '', 0),
(248, 2, '2015-03-14 10:07:36', '2015-03-14 10:07:36', '<p>A ambição de uma empresa exprime o que esta deseja ser no presente e no futuro, o tipo de actividades que decidiu exercer, o projecto que construiu para moldar o seu próprio futuro. A adesão dos colaboradores da empresa ao projecto é fundamental, sendo uma condição imprescindível para o seu sucesso.</p>\n', 'A NOSSA AMBIÇÃO', '', 'inherit', 'open', 'open', '', '101-autosave-v1', '', '', '2015-03-14 10:07:36', '2015-03-14 10:07:36', '', 101, 'http://bogen.sometim.com/101-autosave-v1/', 0, 'revision', '', 0),
(95, 1, '2015-01-02 13:26:24', '2015-01-02 13:26:24', '', 'event-1', '', 'inherit', 'open', 'open', '', 'event-1', '', '', '2015-01-02 13:26:24', '2015-01-02 13:26:24', '', 93, 'http://bogen.sometim.com/wp-content/uploads/2015/01/event-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2015-01-02 13:30:12', '2015-01-02 13:30:12', '  <p>O projecto da SOMETIM, respeitando sempre os princípios orientadores que estabelecemos para pautar as nossas actividades, é contribuir para a realização dos objectivos fundamentais \r\n                        de todas as empresas, ou seja, sermos competitivos nos nossos mercados e criar valor para os nossos accionistas.</p>\r\n                    <p>É com imenso orgulho que reivindicamos as nossas referências e a confiança demonstrada pelos nossos Clientes. Mas queremos ir ainda mais longe. Desejamos contribuir para a \r\n                        evolução das nossas especialidades e para a inovação, em todas as suas formas, assim como melhorar a competitividade dos nossos serviços e produtos, em estreita ligação como os \r\n                        nossos Clientes e com as demais partes envolvidas.</p>\r\n                    <p>É aqui que reside o nosso desafio: termos elevadas ambições para a nossa empresa, respeitando sempre o impreterível objectivo de rentabilidade.</p>\r\n                    <p>É pelo nosso comportamento que suscitamos e cultivamos a confiança, autêntica pedra angular da qualidade das relações, tanto no interior como no exterior da empresa.</p>', 'O NOSSO PROJETO', '', 'publish', 'closed', 'closed', '', 'o-nosso-projeto', '', '', '2015-01-09 14:16:17', '2015-01-09 14:16:17', '', 0, 'http://bogen.sometim.com/?post_type=qsa&#038;p=97', 8, 'qsa', '', 0),
(150, 1, '2015-03-15 18:54:01', '2015-03-15 18:54:01', '<p>in the perspective of continuous improving of its activity, in 2014, SOMETIM, prepared for obtaining the Quality Management System Certification ISO 9001:2008</p>\n', 'WITH THE ARRIVAL OF NEW CHALLENGES', 'Occupational Health and Safety Management System Certification OHSAS 18001:2007 and Environmental Management Systems Certification ISO 14001:2004', 'inherit', 'open', 'open', '', '149-autosave-v1', '', '', '2015-03-15 18:54:01', '2015-03-15 18:54:01', '', 149, 'http://bogen.sometim.com/?p=150', 0, 'revision', '', 0),
(253, 1, '2015-03-15 18:56:26', '2015-03-15 18:56:26', '<p>SOMETIM have the target of preserve and keep the Real State Assets, Exploration costs reduction; and assure correct operation, offering Global Solutions in Maintenance.</p>\n', 'MAINTENANCE', '', 'inherit', 'open', 'open', '', '158-autosave-v1', '', '', '2015-03-15 18:56:26', '2015-03-15 18:56:26', '', 158, 'http://bogen.sometim.com/158-autosave-v1/', 0, 'revision', '', 0),
(99, 1, '2015-01-02 13:31:47', '2015-01-02 13:31:47', 'A missão geral da nossa empresa consiste em oferecer Soluções integradas de Engenharia em Manutenção Multitécnica, Manutenção Industrial, Fabrico  de Quadros Eléctricos e Fabricação de Estruturas Metálicas nos segmentos de mercado do Petróleo/Gás, Transportes, Terciário e Indústria.\r\n                ', 'A NOSSA MISSÃO', '', 'publish', 'closed', 'closed', '', 'a-nossa-missao', '', '', '2015-01-09 14:16:05', '2015-01-09 14:16:05', '', 0, 'http://bogen.sometim.com/?post_type=qsa&#038;p=99', 7, 'qsa', '', 0),
(101, 1, '2015-01-02 13:32:19', '2015-01-02 13:32:19', 'A ambição de uma empresa exprime o que esta deseja ser no presente e no futuro, o tipo de actividades que decidiu exercer, o projecto que construiu para moldar o seu próprio futuro. A adesão dos colaboradores da empresa ao projecto é fundamental, sendo uma condição imprescindível para o seu sucesso.', 'A NOSSA AMBIÇÃO', '', 'publish', 'closed', 'closed', '', 'a-nossa-ambicao', '', '', '2015-01-09 14:15:53', '2015-01-09 14:15:53', '', 0, 'http://bogen.sometim.com/?post_type=qsa&#038;p=101', 6, 'qsa', '', 0),
(153, 1, '2015-03-15 18:53:10', '2015-03-15 18:53:10', '<p>From 2012, SOMETIM diversified and reinforced its activity on the Facility Management area with the introduction of Multi-Disciplinary Maintenances</p>\n', 'PRESENCE IN ANGOLAN MARKET', ', Industrial Maintenance, Panel Builder and Electrical & Mechanical Projects.', 'inherit', 'open', 'open', '', '152-autosave-v1', '', '', '2015-03-15 18:53:10', '2015-03-15 18:53:10', '', 152, 'http://bogen.sometim.com/?p=153', 0, 'revision', '', 0),
(103, 1, '2015-01-02 13:33:35', '2015-01-02 13:33:35', '', 'Download files', '', 'publish', 'closed', 'closed', '', 'acf_download-files', '', '', '2015-01-02 14:32:53', '2015-01-02 14:32:53', '', 0, 'http://bogen.sometim.com/?post_type=acf&#038;p=103', 0, 'acf', '', 0),
(104, 1, '2015-01-02 14:31:18', '2015-01-02 14:31:18', '', 'Faça download dos documentos aqui', '', 'publish', 'closed', 'closed', '', 'faca-download-dos-documentos-aqui', '', '', '2016-09-25 20:12:38', '2016-09-25 20:12:38', '', 0, 'http://bogen.sometim.com/?post_type=qsa&#038;p=104', 5, 'qsa', '', 0),
(110, 1, '2015-01-02 14:34:59', '2015-01-02 14:34:59', '', 'Politica_Ambiental', '', 'inherit', 'open', 'open', '', 'politica_ambiental', '', '', '2015-01-02 14:34:59', '2015-01-02 14:34:59', '', 104, 'http://bogen.sometim.com/wp-content/uploads/2015/01/Politica_Ambiental.pdf', 0, 'attachment', 'application/pdf', 0),
(108, 1, '2015-01-02 14:33:37', '2015-01-02 14:33:37', '', 'Politica_da_Segurança', '', 'inherit', 'open', 'open', '', 'politica_da_seguranca', '', '', '2015-01-02 14:33:37', '2015-01-02 14:33:37', '', 104, 'http://bogen.sometim.com/wp-content/uploads/2015/01/Politica_da_Segurança.pdf', 0, 'attachment', 'application/pdf', 0),
(109, 1, '2015-01-02 14:34:15', '2015-01-02 14:34:15', '', 'Politica_da_Qualidade', '', 'inherit', 'open', 'open', '', 'politica_da_qualidade', '', '', '2015-01-02 14:34:15', '2015-01-02 14:34:15', '', 104, 'http://bogen.sometim.com/wp-content/uploads/2015/01/Politica_da_Qualidade.pdf', 0, 'attachment', 'application/pdf', 0),
(112, 1, '2015-01-02 14:36:03', '2015-01-02 14:36:03', 'Se pretender que entremos em contacto consigo, deixe a sua mensagem e dados nos campos abaixo de modo a podermos contacta-lo.', 'CONTACTE-NOS', '', 'publish', 'closed', 'closed', '', 'contacte-nos', '', '', '2015-03-14 10:09:49', '2015-03-14 10:09:49', '', 0, 'http://bogen.sometim.com/?post_type=contactos&#038;p=112', 3, 'contactos', '', 0),
(282, 1, '2015-04-02 10:45:32', '2015-04-02 10:45:32', '', 'POLITICA-DA-SEGURANÇA-SOMETIM', '', 'inherit', 'open', 'open', '', 'politica-da-seguranca-sometim', '', '', '2015-04-02 10:45:32', '2015-04-02 10:45:32', '', 104, 'http://bogen.sometim.com/wp-content/uploads/2015/01/POLITICA-DA-SEGURANÇA-SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(222, 2, '2015-03-13 20:43:16', '2015-03-13 20:43:16', '<p>Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n', 'CONTACT US', '', 'inherit', 'open', 'open', '', '218-autosave-v1', '', '', '2015-03-13 20:43:16', '2015-03-13 20:43:16', '', 218, 'http://bogen.sometim.com/218-autosave-v1/', 0, 'revision', '', 0),
(363, 2, '2015-12-18 17:37:55', '2015-12-18 17:37:55', '', 'OLYMPUS DIGITAL CAMERA', '', 'inherit', 'open', 'open', '', 'olympus-digital-camera', '', '', '2015-12-18 17:37:55', '2015-12-18 17:37:55', '', 0, 'http://bogen.sometim.com/wp-content/uploads/2015/12/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2015-01-04 10:43:46', '2015-01-04 10:43:46', 'Sometim, Engenharia e Serviços, S.A. inaugurated on 29 April 2014, a Switchboard Production Plant in Viana, Luanda.', 'Inauguration Sometim Production Plant', '', 'publish', 'closed', 'closed', '', 'inauguracao-fabrica-sometim-2', '', '', '2015-03-16 15:18:33', '2015-03-16 15:18:33', '', 0, 'http://bogen.sometim.com/?post_type=slideshow&#038;p=118', 2, 'slideshow', '', 0),
(236, 2, '2015-03-14 09:38:44', '2015-03-14 09:38:44', '', 'slide-21', '', 'inherit', 'open', 'open', '', 'slide-21-2', '', '', '2015-03-14 09:38:44', '2015-03-14 09:38:44', '', 118, 'http://bogen.sometim.com/wp-content/uploads/2015/01/slide-21.jpg', 0, 'attachment', 'image/jpeg', 0),
(279, 2, '2015-03-26 15:14:23', '2015-03-26 15:14:23', '', 'Fabrico de Quadros Eléctricos', '', 'inherit', 'open', 'open', '', '15-autosave-v1', '', '', '2015-03-26 15:14:23', '2015-03-26 15:14:23', '', 15, 'http://bogen.sometim.com/15-autosave-v1/', 0, 'revision', '', 0),
(122, 1, '2015-01-04 10:44:49', '2015-01-04 10:44:49', '', 'Electrical Switchboards Production', '', 'publish', 'closed', 'closed', '', 'fabrico-de-quadros-electricos-eng', '', '', '2015-03-16 15:43:12', '2015-03-16 15:43:12', '', 0, 'http://bogen.sometim.com/?post_type=slideshow&#038;p=122', 4, 'slideshow', '', 0),
(274, 2, '2015-12-18 17:23:58', '2015-12-18 17:23:58', '<p> Presente no Mercado Angolano a partir de 2012, a SOMETIM diversificou e reforçou a sua actividade com a introdução das Áreas de Manutenção Multitécnica, Manutenção Industrial, Fabrico de Quadros Eléctricos e Metalomecânica.</p>\n', 'Diversificámos e reforçámos a nossa actividade', '', 'inherit', 'open', 'open', '', '11-autosave-v1', '', '', '2015-12-18 17:23:58', '2015-12-18 17:23:58', '', 11, 'http://bogen.sometim.com/11-autosave-v1/', 0, 'revision', '', 0),
(126, 1, '2015-01-04 10:45:41', '2015-01-04 10:45:41', 'Present in the Angolan market from 2012, the SOMETIM diversified and strengthened its activities with the introduction of Multitecnic Maintenance Areas, Industrial Maintenance, Electrical Switchboards and Metalworking Frames Manufacturing .', 'Diversified and strengthened our activity', '', 'publish', 'closed', 'closed', '', 'diversificamos-e-reforcamos-a-nossa-actividade-eng', '', '', '2015-12-29 13:36:17', '2015-12-29 13:36:17', '', 0, 'http://bogen.sometim.com/?post_type=slideshow&#038;p=126', 3, 'slideshow', '', 0),
(284, 1, '2015-04-02 10:46:54', '2015-04-02 10:46:54', '', 'POLITICA-AMBIENTAL-SOMETIM', '', 'inherit', 'open', 'open', '', 'politica-ambiental-sometim', '', '', '2015-04-02 10:46:54', '2015-04-02 10:46:54', '', 104, 'http://bogen.sometim.com/wp-content/uploads/2015/01/POLITICA-AMBIENTAL-SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(240, 2, '2015-03-14 09:46:26', '2015-03-14 09:46:26', '<p>A SOMETIM tem como objectivo preservar e manter os activos imobiliários; reduzir os custos de exploração; e garantir o correcto funcionamento, oferecendo solucões globais de manutenção.</p>\n', 'MANUTENÇÃO', '', 'inherit', 'open', 'open', '', '21-autosave-v1', '', '', '2015-03-14 09:46:26', '2015-03-14 09:46:26', '', 21, 'http://bogen.sometim.com/21-autosave-v1/', 0, 'revision', '', 0),
(239, 2, '2015-03-14 09:45:09', '2015-03-14 09:45:09', '<p>tendo como objetivo o desenvolvimento das actividades de Manutenção Metalomecânica e Montagens Industriais. Transformada em Sociedade Anónima em 1992, a SOMETIM investiu</p>\n', 'A SOMETIM, LDA. FOI CONSTITUIDA EM 1983', 'fortemente, desde a sua criação, em Instalações, Equipamentos/Ferramentas e Formação Profissional, a fim de consolidar a sua oferta e a qualidade dos seus serviços e assegurar o desenvolvimento da sua actividade.', 'inherit', 'open', 'open', '', '6-autosave-v1', '', '', '2015-03-14 09:45:09', '2015-03-14 09:45:09', '', 6, 'http://bogen.sometim.com/6-autosave-v1/', 0, 'revision', '', 0),
(155, 1, '2015-02-17 14:40:56', '2015-02-17 14:40:56', 'Having as target the development of the Electrical and Mechanical Industries and Industrial Assemblies. Turned in 1992 into a Joint Stock Company, SOMETIM highly invested', 'SOMETIM, LDA. WAS ESTABLISHED IN 1983', 'since its establishment, in Facilities, Equipment/Tooling and Professional Training to strongly consolidate its offer and Services quality while assuring the activity development.', 'publish', 'closed', 'closed', '', 'a-sometim-lda-foi-constituida-em-1983-eng', '', '', '2015-03-15 18:46:31', '2015-03-15 18:46:31', '', 0, 'http://bogen.sometim.com/?post_type=empresa&#038;p=155', 1, 'empresa', '', 0),
(156, 1, '2015-03-15 18:46:33', '2015-03-15 18:46:33', '<p>Having as target the development of the Electrical and Mechanical Industries and Industrial Assemblies. Turned in 1992 into a Joint Stock Company, SOMETIM highly invested</p>\n', 'SOMETIM, LDA. WAS ESTABLISHED IN 1983', 'since its establishment, in Facilities, Equipment/Tooling and Professional Training to strongly consolidate its offer and Services quality while assuring the activity development.', 'inherit', 'open', 'open', '', '155-autosave-v1', '', '', '2015-03-15 18:46:33', '2015-03-15 18:46:33', '', 155, 'http://bogen.sometim.com/?p=156', 0, 'revision', '', 0),
(158, 1, '2015-02-17 14:46:46', '2015-02-17 14:46:46', 'SOMETIM have the target of preserve and keep the Real State Assets, Exploration costs reduction; and assure correct operation, offering Global Solutions in Maintenance.', 'MAINTENANCE', '', 'publish', 'closed', 'closed', '', 'maintenance', '', '', '2015-03-15 18:56:23', '2015-03-15 18:56:23', '', 0, 'http://bogen.sometim.com/?post_type=manutentencao&#038;p=158', 1, 'manutentencao', '', 0),
(228, 2, '2015-03-16 15:46:25', '2015-03-16 15:46:25', '<p>SOMETIM have the target of preserve and keep the Real State Assets, Exploration costs reduction; and assure correct operation, offering Global Solutions in Maintenance.</p>\n', 'MAINTENANCE', '', 'inherit', 'open', 'open', '', '158-autosave-v1', '', '', '2015-03-16 15:46:25', '2015-03-16 15:46:25', '', 158, 'http://bogen.sometim.com/158-autosave-v1/', 0, 'revision', '', 0),
(161, 1, '2015-02-17 14:50:55', '2015-02-17 14:50:55', '<p>The Competence and experience of SOMETIM in Industrial Maintenance, allows developing Partnerships with its Clients on the following areas:</p>\r\n<ul>\r\n	<li>Maintenance Services, Assistance and Repairs of Installations and Equipment;</li>\r\n	<li>Oil &amp; Gas</li>\r\n	<li>Industry</li>\r\n	<li>Energy &amp; Environment</li>\r\n	<li>Steel &amp; Mechanical Industry</li>\r\n	<li>Industrial Plants Stoppages</li>\r\n	<li>Reconditioning &amp; Calibration of Parts</li>\r\n	<li>Manufacturing and Installation of Pipelines</li>\r\n</ul>', 'INDUSTRY', 'Conducting Specialized Maintenance', 'publish', 'closed', 'closed', '', 'industry', '', '', '2015-03-15 19:12:49', '2015-03-15 19:12:49', '', 0, 'http://bogen.sometim.com/?post_type=manutentencao&#038;p=161', 2, 'manutentencao', '', 0),
(265, 1, '2015-03-15 19:33:54', '2015-03-15 19:33:54', '', 'Efacec', '', 'inherit', 'open', 'open', '', '178-autosave-v1', '', '', '2015-03-15 19:33:54', '2015-03-15 19:33:54', '', 178, 'http://bogen.sometim.com/178-autosave-v1/', 0, 'revision', '', 0),
(232, 2, '2015-03-13 20:42:20', '2015-03-13 20:42:20', '<p>Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n', 'EVENTS', '', 'inherit', 'open', 'open', '', '199-autosave-v1', '', '', '2015-03-13 20:42:20', '2015-03-13 20:42:20', '', 199, 'http://bogen.sometim.com/199-autosave-v1/', 0, 'revision', '', 0),
(244, 2, '2015-03-14 09:58:15', '2015-03-14 09:58:15', '<p>Especializada Eng na concepção e fabrico de Quadros Eléctricos de BT e MT, dos seguintes tipos:</p>\n<ul>\n<li>Quadros Eléctricos\n<ul>\n<li>Potência</li>\n<li>Comando</li>\n<li>Controlo de motores</li>\n<li>Gavetas extraíveis</li>\n</ul>\n</li>\n<li>Mesas de Comando</li>\n<li>Automação</li>\n<li>Postos de Transformação</li>\n</ul>\n<p>Intervenção em todos os sectores de mercado a nível nacional; Reconhecida como Quadrista da Siemens .</p>\n<p><a class=\"download\" href=\"download.php?file=SOMETIM_Solution_Partner.pdf\">“Siemens Solution Partner”</a></p>\n', 'Production of <br> Electrical Panels', '', 'inherit', 'open', 'open', '', '169-autosave-v1', '', '', '2015-03-14 09:58:15', '2015-03-14 09:58:15', '', 169, 'http://bogen.sometim.com/169-autosave-v1/', 0, 'revision', '', 0),
(164, 1, '2015-02-17 14:51:59', '2015-02-17 14:51:59', 'Multi-disciplinary Technical Teams specially focused to Maintenance Services, assures the presence of SOMETIM in Responsible and Long-lasting Partnerships on the following strands:\r\n<ul>\r\n	<li>Global Multidisciplinary Maintenance Contracts</li>\r\n	<li>Management and Exploration of Technical Installations</li>\r\n	<li>Integrated Solutions of Services Management, under a scope of “ Facilities Management”</li>\r\n	<li>Electricity</li>\r\n	<li>AVAC</li>\r\n	<li>Structured Networks</li>\r\n	<li>Hydraulic Systems/Circuits</li>\r\n	<li>Security</li>\r\n	<li>Telecommunications</li>\r\n</ul>', 'TERTIARY', 'Conducting Facilities Maintenance', 'publish', 'closed', 'closed', '', 'tertiary', '', '', '2015-12-29 13:40:48', '2015-12-29 13:40:48', '', 0, 'http://bogen.sometim.com/?post_type=manutentencao&#038;p=164', 3, 'manutentencao', '', 0),
(167, 1, '2015-02-17 14:56:08', '2015-02-17 14:56:08', 'The Manufacturing Plant of SOMETIM offers Global Solutions for Electrical Switchboards manufacturing and Steel &amp; Mechanical Projects.', 'INDUSTRIAL PRODUCTION', '', 'publish', 'closed', 'closed', '', 'industrial-production', '', '', '2015-03-15 19:00:53', '2015-03-15 19:00:53', '', 0, 'http://bogen.sometim.com/?post_type=producao&#038;p=167', 1, 'producao', '', 0),
(257, 1, '2015-03-15 19:00:55', '2015-03-15 19:00:55', '<p>The Manufacturing Plant of SOMETIM offers Global Solutions for Electrical Switchboards manufacturing and Steel &amp; Mechanical Projects.</p>\n', 'INDUSTRIAL PRODUCTION', '', 'inherit', 'open', 'open', '', '167-autosave-v1', '', '', '2015-03-15 19:00:55', '2015-03-15 19:00:55', '', 167, 'http://bogen.sometim.com/167-autosave-v1/', 0, 'revision', '', 0),
(169, 1, '2015-02-17 14:56:52', '2015-02-17 14:56:52', '<p>Specialized on the Design and Manufacturing of Electrical Boards of LV &amp; MV of following types:</p>\r\n<ul>\r\n	<li>Electrical Boards\r\n<ul>\r\n	<li>Power</li>\r\n	<li>Control</li>\r\n	<li>Motors Control</li>\r\n	<li>Withdrawable drawers</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Control panels</li>\r\n	<li>Automation</li>\r\n	<li>Transformer Stations</li>\r\n</ul>\r\n<p>Interventional in all Market sectors at National level; recognized as Siemens electrical Panel Builder.</p>\r\n\r\n<p><a class=\"download\" href=\"/download.php?file=pdfs/SOMETIM_Solution_Partner.pdf\">“Siemens Solution Partner”</a></p>\r\n<p><a class=\"download\" href=\"download.php?file=pdfs/SOMETIM_06_2015_PT_V8_COMPLETA_FQE.pdf\">“Sometim Presentation”</a></p>', 'Electrical Switchboards  <br> Production', 'Manufacture of Power & Control Electrical Switchboards', 'publish', 'closed', 'closed', '', 'production-of-electrical-panels', '', '', '2015-09-08 16:50:14', '2015-09-08 16:50:14', '', 0, 'http://bogen.sometim.com/?post_type=producao&#038;p=169', 2, 'producao', '', 0),
(170, 1, '2015-09-08 16:50:16', '2015-09-08 16:50:16', '<p>Specialized on the Design and Manufacturing of Electrical Boards of LV &amp; MV of following types:</p>\n<ul>\n	<li>Electrical Boards\n<ul>\n	<li>Power</li>\n	<li>Control</li>\n	<li>Motors Control</li>\n	<li>Withdrawable drawers</li>\n</ul>\n</li>\n</ul>\n\n<ul>\n	<li>Control panels</li>\n	<li>Automation</li>\n	<li>Transformer Stations</li>\n</ul>\n<p>Interventional in all Market sectors at National level; recognized as Siemens electrical Panel Builder.</p>\n\n<p><a class=\"download\" href=\"/download.php?file=pdfs/SOMETIM_Solution_Partner.pdf\">“Siemens Solution Partner”</a></p>\n<p><a class=\"download\" href=\"download.php?file=pdfs/SOMETIM_06_2015_PT_V8_COMPLETA_FQE.pdf\">“Sometim Presentation”</a></p>', 'Electrical Switchboards  <br> Production', 'Manufacture of Power & Control Electrical Switchboards', 'inherit', 'open', 'open', '', '169-autosave-v1', '', '', '2015-09-08 16:50:16', '2015-09-08 16:50:16', '', 169, 'http://bogen.sometim.com/?p=170', 0, 'revision', '', 0),
(171, 1, '2015-02-17 14:58:19', '2015-02-17 14:58:19', 'From this activity SOMETIM highlights:\r\n<ul>\r\n	<li>Supply of structures for Electrical Installations</li>\r\n	<li>Supply Cabinets/Special Boards for Industry</li>\r\n	<li>Industrial Installations</li>\r\n</ul>', 'Steel and <br> Mechanical Industries', 'Manufacture of Metallic Structures', 'publish', 'closed', 'closed', '', 'metalworking', '', '', '2015-12-18 12:38:51', '2015-12-18 12:38:51', '', 0, 'http://bogen.sometim.com/?post_type=producao&#038;p=171', 3, 'producao', '', 0),
(347, 2, '2015-12-18 12:28:14', '2015-12-18 12:28:14', '', 'Sem Título', '', 'inherit', 'open', 'open', '', 'sem-titulo', '', '', '2015-12-18 12:28:14', '2015-12-18 12:28:14', '', 59, 'http://bogen.sometim.com/wp-content/uploads/2015/01/Sem-Título.jpg', 0, 'attachment', 'image/jpeg', 0),
(259, 1, '2015-03-15 19:11:44', '2015-03-15 19:11:44', '<p>From this activity SOMETIM highlights:</p>\n<ul>\n	<li>Supply of structures for Electrical Installations</li>\n	<li>Supply Cabinets/Special Boards for Industry</li>\n	<li>Industrial Installations</li>\n</ul>', 'Steel and <br> Mechanical Industries', 'Manufacture of Metallic Structures', 'inherit', 'open', 'open', '', '171-autosave-v1', '', '', '2015-03-15 19:11:44', '2015-03-15 19:11:44', '', 171, 'http://bogen.sometim.com/171-autosave-v1/', 0, 'revision', '', 0),
(343, 2, '2015-12-18 12:17:43', '2015-12-18 12:17:43', 'Welder working from cherry picker on warehouse construction', 'ThinkstockPhotos-82635089', '', 'inherit', 'open', 'open', '', 'thinkstockphotos-82635089', '', '', '2015-12-18 12:31:48', '2015-12-18 12:31:48', '', 59, 'http://bogen.sometim.com/wp-content/uploads/2015/01/ThinkstockPhotos-82635089.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 1, '2015-02-17 15:05:04', '2015-02-17 15:05:04', '', 'Sonangol', '', 'inherit', 'open', 'open', '', '188-autosave-v1', '', '', '2015-02-17 15:05:04', '2015-02-17 15:05:04', '', 188, 'http://bogen.sometim.com/?p=189', 0, 'revision', '', 0),
(176, 1, '2015-02-17 15:03:03', '2015-02-17 15:03:03', 'SOMETIM has a wide Portfolio of Clients in its intervention areas covering, Civil Construction, Telecommunications, Finance, Industrial and Public Services areas.', 'OUR CLIENTS', '', 'publish', 'closed', 'closed', '', 'our-clients', '', '', '2015-03-15 19:34:19', '2015-03-15 19:34:19', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=176', 1, 'clientes', '', 0),
(178, 1, '2015-02-17 15:03:23', '2015-02-17 15:03:23', '', 'Efacec', '', 'publish', 'closed', 'closed', '', 'efacec-2', '', '', '2015-02-17 15:03:23', '2015-02-17 15:03:23', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=178', 2, 'clientes', '', 0),
(181, 1, '2015-02-17 15:03:51', '2015-02-17 15:03:51', '', 'CNT', '', 'publish', 'closed', 'closed', '', 'cnt-2', '', '', '2015-02-17 15:03:51', '2015-02-17 15:03:51', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=181', 3, 'clientes', '', 0),
(182, 1, '2015-02-17 15:03:53', '2015-02-17 15:03:53', '', 'CNT', '', 'inherit', 'open', 'open', '', '181-autosave-v1', '', '', '2015-02-17 15:03:53', '2015-02-17 15:03:53', '', 181, 'http://bogen.sometim.com/?p=182', 0, 'revision', '', 0),
(346, 2, '2015-12-18 12:36:56', '2015-12-18 12:36:56', '<p>Nesta  actividade a SOMETIM destaca:</p>\n<ul>\n<li>Fornecimento de estruturas para instalações industriais</li>\n<li>Fornecimento armários/quadros especiais para a indústria</li>\n<li>Montagens Industriais</li>\n</ul>\n', 'Metalomecânica', 'Fabrico de estruturas metálicas', 'inherit', 'open', 'open', '', '59-autosave-v1', '', '', '2015-12-18 12:36:56', '2015-12-18 12:36:56', '', 59, 'http://bogen.sometim.com/59-autosave-v1/', 0, 'revision', '', 0),
(186, 1, '2015-02-17 15:04:40', '2015-02-17 15:04:40', '', 'Soares da Costa', '', 'publish', 'closed', 'closed', '', 'soares-da-costa-2', '', '', '2015-02-17 15:04:40', '2015-02-17 15:04:40', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=186', 4, 'clientes', '', 0),
(187, 1, '2015-02-17 15:04:42', '2015-02-17 15:04:42', '', 'Soares da Costa', '', 'inherit', 'open', 'open', '', '186-autosave-v1', '', '', '2015-02-17 15:04:42', '2015-02-17 15:04:42', '', 186, 'http://bogen.sometim.com/?p=187', 0, 'revision', '', 0),
(188, 1, '2015-02-17 15:05:01', '2015-02-17 15:05:01', '', 'Sonangol', '', 'publish', 'closed', 'closed', '', 'sonangol-2', '', '', '2015-02-17 15:05:01', '2015-02-17 15:05:01', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=188', 5, 'clientes', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(191, 1, '2015-02-17 15:05:22', '2015-02-17 15:05:22', '', 'Somague', '', 'inherit', 'open', 'open', '', '190-autosave-v1', '', '', '2015-02-17 15:05:22', '2015-02-17 15:05:22', '', 190, 'http://bogen.sometim.com/?p=191', 0, 'revision', '', 0),
(192, 1, '2015-02-17 15:05:41', '2015-02-17 15:05:41', '', 'Movicel', '', 'publish', 'closed', 'closed', '', 'movicel-2', '', '', '2015-12-31 14:01:38', '2015-12-31 14:01:38', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=192', 7, 'clientes', '', 0),
(194, 1, '2015-02-17 15:06:10', '2015-02-17 15:06:10', '', 'INE', '', 'publish', 'closed', 'closed', '', 'ine-2', '', '', '2015-02-17 15:06:10', '2015-02-17 15:06:10', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=194', 22, 'clientes', '', 0),
(195, 1, '2015-02-17 15:06:12', '2015-02-17 15:06:12', '', 'INE', '', 'inherit', 'open', 'open', '', '194-autosave-v1', '', '', '2015-02-17 15:06:12', '2015-02-17 15:06:12', '', 194, 'http://bogen.sometim.com/?p=195', 0, 'revision', '', 0),
(196, 1, '2015-02-17 18:21:55', '2015-02-17 18:21:55', 'A SOMETIM, Engenharia e Serviços, S.A. opened on 29th April 2014 one factory of Electrical Panel´s Production in Luanda (Viana) Angola.\r\n\r\nThe Factory has an area of one thousand square meters. This investment was approved by ANIP employing 33 Angolan Electricians and 8 foreign, all with specific technical formation given by SOMETIM.\r\n\r\nOn the inauguration were present around 200 guests, standing out Eng.º Serafim Vieira representing the Honorable Minister of Energy &amp; Water.\r\n\r\nThis Industry Plant endowed Angola with a reliable Partner and technically able to satisfy the Market needs for the area of Electrical Panels to the more different sectors of the Nacional Industry.\r\n\r\nWas with great pleasure that SOMETIM startup this Project, bringing to Angola all know-how that allows the production of LV &amp; MV Electrical Boards at high international levels.\r\n\r\n&nbsp;', 'Inauguration of the Switchboard Production Plant', '', 'publish', 'closed', 'closed', '', 'inauguracao-da-fabrica-de-producao-en', '', '', '2016-09-16 18:03:33', '2016-09-16 18:03:33', '', 0, 'http://bogen.sometim.com/?post_type=eventos&#038;p=196', 2, 'eventos', '', 0),
(390, 2, '2016-09-16 18:03:56', '2016-09-16 18:03:56', '<p>A SOMETIM, Engenharia e Serviços, S.A. opened on 29th April 2014 one factory of Electrical Panel´s Production in Luanda (Viana) Angola.</p>\n<p>The Factory has an area of one thousand square meters. This investment was approved by ANIP employing 33 Angolan Electricians and 8 foreign, all with specific technical formation given by SOMETIM.</p>\n<p>On the inauguration were present around 200 guests, standing out Eng.º Serafim Vieira representing the Honorable Minister of Energy &amp; Water.</p>\n<p>This Industry Plant endowed Angola with a reliable Partner and technically able to satisfy the Market needs for the area of Electrical Panels to the more different sectors of the Nacional Industry.</p>\n<p>Was with great pleasure that SOMETIM startup this Project, bringing to Angola all know-how that allows the production of LV &amp; MV Electrical Boards at high international levels.</p>\n<p>&nbsp;</p>\n', 'Inauguration of the Switchboard Production Plant', '', 'inherit', 'open', 'open', '', '196-autosave-v1', '', '', '2016-09-16 18:03:56', '2016-09-16 18:03:56', '', 196, 'http://bogen.sometim.com/196-autosave-v1/', 0, 'revision', '', 0),
(199, 1, '2015-02-17 18:26:22', '2015-02-17 18:26:22', 'In this Section you may find the more important Events that SOMETIM organized of was present.', 'EVENTS', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2015-03-15 19:34:40', '2015-03-15 19:34:40', '', 0, 'http://bogen.sometim.com/?post_type=eventos&#038;p=199', 1, 'eventos', '', 0),
(266, 1, '2015-03-15 19:38:07', '2015-03-15 19:38:07', 'A Sometim, Engenharia e Serviços, S.A., inaugurou no dia 29 de Abril de 2014, uma fábrica de produção de quadros eléctricos em Viana, Luanda.\n\nA fábrica ocupa uma área de mil metros quadrados. Este investimento foi aprovado pela ANIP, empregando 33 electricistas angolanos e oito estrangeiros, com formação técnica específica ministrada pela Sometim.\n\nNa inauguração estiverem presentes cerca de 200 convidados, destacando-se o Eng.º Serafim Vieira em representação do Sr. Ministro da Energia e Águas.\n\nEsta unidade fabril veio dotar Angola de um parceiro sério e tecnicamente capaz de satisfazer as necessidades na área de quadros eléctricos nos mais diversos sectores da indústria nacional. Foi com muita satisfação que a SOMETIM deu início a este projecto, trazendo para Angola todo o conhecimento que nos permite produzir quadros eléctricos de média e baixa tensão ao nível do que melhor se faz internacionalmente.\n\n<a class=\"link\" href=\"http://www.rtp.pt/play/p1487/e156507/perolas-do-oceano-2014\" target=\"_blank\"> Ver reportagem da inauguração (começa no minuto 17,55 )</a>', 'Inauguração da fábrica de produção', '', 'inherit', 'open', 'open', '', '93-autosave-v1', '', '', '2015-03-15 19:38:07', '2015-03-15 19:38:07', '', 93, 'http://bogen.sometim.com/93-autosave-v1/', 0, 'revision', '', 0),
(201, 1, '2015-02-17 18:31:09', '2015-02-17 18:31:09', 'O projecto da SOMETIM, respeitando sempre os princípios orientadores que estabelecemos para pautar as nossas actividades, é contribuir para a realização dos objectivos fundamentais\nde todas as empresas, ou seja, sermos competitivos nos nossos mercados e criar valor para os nossos accionistas.\n\nÉ com imenso orgulho que reivindicamos as nossas referências e a confiança demonstrada pelos nossos Clientes. Mas queremos ir ainda mais longe. Desejamos contribuir para a\nevolução das nossas especialidades e para a inovação, em todas as suas formas, assim como melhorar a competitividade dos nossos serviços e produtos, em estreita ligação como os\nnossos Clientes e com as demais partes envolvidas.\n\nÉ aqui que reside o nosso desafio: termos elevadas ambições para a nossa empresa, respeitando sempre o impreterível objectivo de rentabilidade.\n\nÉ pelo nosso comportamento que suscitamos e cultivamos a confiança, autêntica pedra angular da qualidade das relações, tanto no interior como no exterior da empresa.', 'O NOSSO PROJETO', '', 'inherit', 'open', 'open', '', '97-autosave-v1', '', '', '2015-02-17 18:31:09', '2015-02-17 18:31:09', '', 97, 'http://bogen.sometim.com/?p=201', 0, 'revision', '', 0),
(202, 1, '2015-02-17 18:31:47', '2015-02-17 18:31:47', '<p>SOMETIM´s Project, respecting always the principles guidelines that we established to guide our activities, is to contribute for the realization of the fundamental goals of all Companies, this means, being competitive in the Market and a value added to our shareholders.</p>\r\n\r\n<p>Proudly we reclaim our references and the trust showed by our Clients. But we want to go even further. We wish to contribute for the evolution of our specialties and for innovation, in all means, as well as improve the competitiveness of our Services and Products, in straight connection with our Clients and all parts involved.</p>\r\n\r\n<p>It is here where our challenge stands: having high ambitions for our Company, respecting always the imperative objective of profitability.</p>\r\n\r\n<p>It is because of our behavior that we have raised and promoted the trust, solid stone on relationship quality, so much inside or outside the Company.</p>', 'OUR PROJECT', '', 'publish', 'closed', 'closed', '', 'our-project', '', '', '2015-03-15 19:44:31', '2015-03-15 19:44:31', '', 0, 'http://bogen.sometim.com/?post_type=qsa&#038;p=202', 4, 'qsa', '', 0),
(288, 1, '2015-04-02 10:49:26', '2015-04-02 10:49:26', '', 'POLÍTICA-DA-QUALIDADE-SOMETIM', '', 'inherit', 'open', 'open', '', 'politica-da-qualidade-sometim-2', '', '', '2015-04-02 10:49:26', '2015-04-02 10:49:26', '', 211, 'http://bogen.sometim.com/wp-content/uploads/2015/02/POLÍTICA-DA-QUALIDADE-SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(287, 1, '2015-04-02 10:49:05', '2015-04-02 10:49:05', '', 'POLITICA-DA-SEGURANÇA-SOMETIM', '', 'inherit', 'open', 'open', '', 'politica-da-seguranca-sometim-2', '', '', '2015-04-02 10:49:05', '2015-04-02 10:49:05', '', 211, 'http://bogen.sometim.com/wp-content/uploads/2015/02/POLITICA-DA-SEGURANÇA-SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(204, 1, '2015-02-17 18:32:12', '2015-02-17 18:32:12', '<p>A missão geral da nossa empresa consiste em oferecer Soluções integradas de Engenharia em Manutenção Multitécnica, Manutenção Industrial, Fabrico  de Quadros Eléctricos e Fabricação de Estruturas Metálicas nos segmentos de mercado do Petróleo/Gás, Transportes, Terciário e Indústria.</p>\n', 'A NOSSA MISSÃO', '', 'inherit', 'open', 'open', '', '99-autosave-v1', '', '', '2015-02-17 18:32:12', '2015-02-17 18:32:12', '', 99, 'http://bogen.sometim.com/?p=204', 0, 'revision', '', 0),
(205, 1, '2015-02-17 18:32:46', '2015-02-17 18:32:46', 'Our general Mission consists in offering Engineering Integrated Solutions in Multi-disciplinary Techniques, Industrial Maintenance, Manufacturing of Electrical Swithboards and the Construction of Metallic Structures in the segments of Oil & Gas, Transportation, Tertiary and Industry.', 'OUR MISSION', '', 'publish', 'closed', 'closed', '', 'our-mission', '', '', '2015-03-15 19:40:27', '2015-03-15 19:40:27', '', 0, 'http://bogen.sometim.com/?post_type=qsa&#038;p=205', 3, 'qsa', '', 0),
(268, 1, '2015-03-15 19:40:28', '2015-03-15 19:40:28', 'Our general Mission consists in offering Engineering Integrated Solutions in Multi-disciplinary Techniques, Industrial Maintenance, Manufacturing of Electrical Swithboards and the Construction of Metallic Structures in the segments of Oil & Gas, Transportation, Tertiary and Industry.', 'OUR MISSION', '', 'inherit', 'open', 'open', '', '205-autosave-v1', '', '', '2015-03-15 19:40:28', '2015-03-15 19:40:28', '', 205, 'http://bogen.sometim.com/205-autosave-v1/', 0, 'revision', '', 0),
(207, 1, '2015-02-17 18:33:00', '2015-02-17 18:33:00', '<p>A ambição de uma empresa exprime o que esta deseja ser no presente e no futuro, o tipo de actividades que decidiu exercer, o projecto que construiu para moldar o seu próprio futuro. A adesão dos colaboradores da empresa ao projecto é fundamental, sendo uma condição imprescindível para o seu sucesso.</p>\n', 'A NOSSA AMBIÇÃO', '', 'inherit', 'open', 'open', '', '101-autosave-v1', '', '', '2015-02-17 18:33:00', '2015-02-17 18:33:00', '', 101, 'http://bogen.sometim.com/?p=207', 0, 'revision', '', 0),
(208, 1, '2015-02-17 18:33:51', '2015-02-17 18:33:51', 'The ambition of a Company expresses wants to be at the presence and in the future, the type of activities that decided to run, the project built to support its own future. The adherence of the Company´s employers to the Project is fundamental, being a condition indispensable for its own Success.', 'OUR AMBITION', '', 'publish', 'closed', 'closed', '', 'our-ambition', '', '', '2015-03-15 19:39:36', '2015-03-15 19:39:36', '', 0, 'http://bogen.sometim.com/?post_type=qsa&#038;p=208', 2, 'qsa', '', 0),
(267, 1, '2015-03-15 19:39:38', '2015-03-15 19:39:38', 'The ambition of a Company expresses wants to be at the presence and in the future, the type of activities that decided to run, the project built to support its own future. The adherence of the Company´s employers to the Project is fundamental, being a condition indispensable for its own Success.', 'OUR AMBITION', '', 'inherit', 'open', 'open', '', '208-autosave-v1', '', '', '2015-03-15 19:39:38', '2015-03-15 19:39:38', '', 208, 'http://bogen.sometim.com/208-autosave-v1/', 0, 'revision', '', 0),
(283, 1, '2015-04-02 10:46:28', '2015-04-02 10:46:28', '', 'POLÍTICA-DA-QUALIDADE-SOMETIM', '', 'inherit', 'open', 'open', '', 'politica-da-qualidade-sometim', '', '', '2015-04-02 10:46:28', '2015-04-02 10:46:28', '', 104, 'http://bogen.sometim.com/wp-content/uploads/2015/01/POLÍTICA-DA-QUALIDADE-SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(211, 1, '2015-02-17 18:35:02', '2015-02-17 18:35:02', '', 'You can do the download of the documents here.', '', 'publish', 'closed', 'closed', '', 'download-the-document-here', '', '', '2016-09-25 20:15:21', '2016-09-25 20:15:21', '', 0, 'http://bogen.sometim.com/?post_type=qsa&#038;p=211', 1, 'qsa', '', 0),
(213, 1, '2015-02-17 18:43:44', '2015-02-17 18:43:44', '', 'Politica_da_Seguranca-eng', '', 'inherit', 'open', 'open', '', 'politica_da_seguranca-eng', '', '', '2015-02-17 18:43:44', '2015-02-17 18:43:44', '', 211, 'http://bogen.sometim.com/wp-content/uploads/2015/02/Politica_da_Seguranca-eng.pdf', 0, 'attachment', 'application/pdf', 0),
(214, 1, '2015-02-17 18:44:05', '2015-02-17 18:44:05', '', 'Politica_da_Qualidade-eng', '', 'inherit', 'open', 'open', '', 'politica_da_qualidade-eng', '', '', '2015-02-17 18:44:05', '2015-02-17 18:44:05', '', 211, 'http://bogen.sometim.com/wp-content/uploads/2015/02/Politica_da_Qualidade-eng.pdf', 0, 'attachment', 'application/pdf', 0),
(215, 1, '2015-02-17 18:44:28', '2015-02-17 18:44:28', '', 'Politica_Ambiental-eng', '', 'inherit', 'open', 'open', '', 'politica_ambiental-eng', '', '', '2015-02-17 18:44:28', '2015-02-17 18:44:28', '', 211, 'http://bogen.sometim.com/wp-content/uploads/2015/02/Politica_Ambiental-eng.pdf', 0, 'attachment', 'application/pdf', 0),
(218, 1, '2015-02-17 18:46:05', '2015-02-17 18:46:05', 'If you will that we contact you, please leave your message and data on bellow blank fields, so we may contact you', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2015-03-15 19:46:14', '2015-03-15 19:46:14', '', 0, 'http://bogen.sometim.com/?post_type=contactos&#038;p=218', 2, 'contactos', '', 0),
(272, 1, '2015-03-15 19:46:16', '2015-03-15 19:46:16', 'If you will that we contact you, please leave your message and data on bellow blank fields, so we may contact you', 'Contact us', '', 'inherit', 'open', 'open', '', '218-autosave-v1', '', '', '2015-03-15 19:46:16', '2015-03-15 19:46:16', '', 218, 'http://bogen.sometim.com/218-autosave-v1/', 0, 'revision', '', 0),
(273, 2, '2015-03-16 15:18:37', '2015-03-16 15:18:37', '<p>Sometim, Engenharia e Serviços, S.A. inaugurated on 29 April 2014, a Switchboard Production Plant in Viana, Luanda.</p>\n', 'Inauguration Sometim Production Plant', '', 'inherit', 'open', 'open', '', '118-autosave-v1', '', '', '2015-03-16 15:18:37', '2015-03-16 15:18:37', '', 118, 'http://bogen.sometim.com/118-autosave-v1/', 0, 'revision', '', 0),
(256, 1, '2015-03-15 18:59:55', '2015-03-15 18:59:55', '<p>A Unidade Fabril da SOMETIM disponibiliza soluções globais no Fabrico de Quadros Eléctricos e da Metalomecânica</p>\n', 'PRODUÇÃO FABRIL', '           \n            ', 'inherit', 'open', 'open', '', '49-autosave-v1', '', '', '2015-03-15 18:59:55', '2015-03-15 18:59:55', '', 49, 'http://bogen.sometim.com/49-autosave-v1/', 0, 'revision', '', 0),
(227, 2, '2015-03-13 20:35:54', '2015-03-13 20:35:54', '<p>Lorem sometim Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>\n', 'A SOMETIM, LDA. FOI CONSTITUIDA EM 1983 Eng', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'inherit', 'open', 'open', '', '155-autosave-v1', '', '', '2015-03-13 20:35:54', '2015-03-13 20:35:54', '', 155, 'http://bogen.sometim.com/155-autosave-v1/', 0, 'revision', '', 0),
(230, 2, '2015-12-31 14:03:06', '2015-12-31 14:03:06', '<p>SOMETIM has a wide Portfolio of Clients in its intervention areas covering, Civil Construction, Telecommunications, Finance, Industrial and Public Services areas.</p>\n', 'OUR CLIENTS', '', 'inherit', 'open', 'open', '', '176-autosave-v1', '', '', '2015-12-31 14:03:06', '2015-12-31 14:03:06', '', 176, 'http://bogen.sometim.com/176-autosave-v1/', 0, 'revision', '', 0),
(277, 2, '2015-03-16 15:46:50', '2015-03-16 15:46:50', '<p>The Competence and experience of SOMETIM in Industrial Maintenance, allows developing Partnerships with its Clients on the following areas:</p>\n<ul>\n<li>Maintenance Services, Assistance and Repairs of Installations and Equipment;</li>\n<li>Oil &amp; Gas</li>\n<li>Industry</li>\n<li>Energy &amp; Environment</li>\n<li>Steel &amp; Mechanical Industry</li>\n<li>Industrial Plants Stoppages</li>\n<li>Reconditioning &amp; Calibration of Parts</li>\n<li>Manufacturing and Installation of Pipelines</li>\n</ul>\n', 'INDUSTRY', 'Conducting Specialized Maintenance', 'inherit', 'open', 'open', '', '161-autosave-v1', '', '', '2015-03-16 15:46:50', '2015-03-16 15:46:50', '', 161, 'http://bogen.sometim.com/161-autosave-v1/', 0, 'revision', '', 0),
(241, 2, '2015-03-14 10:03:37', '2015-03-14 10:03:37', '<p>A competência e a experiência da SOMETIM na Manutenção Industrial, permite desenvolver relações de parceria com os seus Clientes, nas seguintes áreas:</p>\n<ul>\n<li>Serviços de Manutenção, Assistência e Reparação de Instalações e Equipamentos;</li>\n<li>Petróleo/Gás;</li>\n<li>Indústria;</li>\n<li>Energia e Ambiente;</li>\n<li>Metalomecânica</li>\n<li>Paragens de Unidades Industriais</li>\n<li>Recuperação e Calibração de Componentes</li>\n<li>Fabrico e Montagem de pipelines</li>\n</ul>\n', 'INDÚSTRIA', ' Realização de Manutenção Especializada', 'inherit', 'open', 'open', '', '43-autosave-v1', '', '', '2015-03-14 10:03:37', '2015-03-14 10:03:37', '', 43, 'http://bogen.sometim.com/43-autosave-v1/', 0, 'revision', '', 0),
(243, 2, '2015-12-18 12:27:17', '2015-12-18 12:27:17', '<p>Especializada na concepção e fabrico de Quadros Eléctricos de BT e MT, dos seguintes tipos:</p>\n<ul>\n<li>Quadros Eléctricos\n<ul>\n<li>Potência</li>\n<li>Comando</li>\n<li>Controlo de motores</li>\n<li>Gavetas extraíveis</li>\n</ul>\n</li>\n<li>Mesas de Comando</li>\n<li>Automação</li>\n<li>Postos de Transformação</li>\n</ul>\n<p></\n\n<p>Intervenção em todos os sectores de mercado a nível nacional; Reconhecida como Quadrista da Siemens .</p>\n<p><a class=\"download\" href=\"download.php?file=pdfs/SOMETIM_Solution_Partner.pdf\">“Siemens Solution Partner”</a></p>\n<p><a class=\"download\" href=\"download.php?file=pdfs/SOMETIM_06_2015_PT_V8_COMPLETA_FQE.pdf\">“Apresentação Sometim”</a></p>\n', 'Produção de <br> Quadros Eléctricos', 'Fabrico de quadros eléctricos de potência e comando', 'inherit', 'open', 'open', '', '52-autosave-v1', '', '', '2015-12-18 12:27:17', '2015-12-18 12:27:17', '', 52, 'http://bogen.sometim.com/52-autosave-v1/', 0, 'revision', '', 0),
(301, 1, '2015-10-10 22:27:53', '2015-10-10 22:27:53', '', 'Efacec', '', 'inherit', 'open', 'open', '', '87-autosave-v1', '', '', '2015-10-10 22:27:53', '2015-10-10 22:27:53', '', 87, 'http://bogen.sometim.com/87-autosave-v1/', 0, 'revision', '', 0),
(300, 1, '2015-10-10 22:27:11', '2015-10-10 22:27:11', 'tendo como objetivo o desenvolvimento das actividades de Manutenção Metalomecânica e Montagens Industriais. Transformada em Sociedade Anónima em 1992, a SOMETIM investiu', 'A SOMETIM, LDA. FOI CONSTITUIDA EM 1983', 'fortemente, desde a sua criação, em Instalações, Equipamentos/Ferramentas e Formação Profissional, a fim de consolidar a sua oferta e a qualidade dos seus serviços e assegurar o desenvolvimento da sua actividade.', 'inherit', 'open', 'open', '', '6-autosave-v1', '', '', '2015-10-10 22:27:11', '2015-10-10 22:27:11', '', 6, 'http://bogen.sometim.com/6-autosave-v1/', 0, 'revision', '', 0),
(276, 2, '2015-03-16 15:51:54', '2015-03-16 15:51:54', '<p>Multi-disciplinary Technical Teams specially focused to Maintenance Services, assures the presence of SOMETIM in Responsible and Long-lasting Partnerships on the following strands:</p>\n<ul>\n<li>Global Multidisciplinary Maintenance Contracts</li>\n<li>Management and Exploration of Technical Installations</li>\n<li>Integrated Solutions of Services Management, under a scope of “ Facilities Management”</li>\n<li>Electricity</li>\n<li>AVAC</li>\n<li>Structured Networks</li>\n<li>Hydraulic Systems/Circuits</li>\n<li>Security</li>\n<li>Telecommunications</li>\n</ul>\n', 'TERTIARY', 'Conducting Facilities Maintenance', 'inherit', 'open', 'open', '', '164-autosave-v1', '', '', '2015-03-16 15:51:54', '2015-03-16 15:51:54', '', 164, 'http://bogen.sometim.com/164-autosave-v1/', 0, 'revision', '', 0),
(264, 1, '2015-03-15 19:33:49', '2015-03-15 19:33:49', 'A SOMETIM tem uma vasta carteira de cliente nas suas áreas de intervenção que abrangem os sectores da construcão civil; telecomunicações; financeira; industrial; e serviços públicos.', 'OS NOSSOS CLIENTES', '', 'inherit', 'open', 'open', '', '63-autosave-v1', '', '', '2015-03-15 19:33:49', '2015-03-15 19:33:49', '', 63, 'http://bogen.sometim.com/63-autosave-v1/', 0, 'revision', '', 0),
(291, 1, '2015-04-02 10:50:00', '2015-04-02 10:50:00', '', 'POLITICA-AMBIENTAL-SOMETIM', '', 'inherit', 'open', 'open', '', 'politica-ambiental-sometim-2', '', '', '2015-04-02 10:50:00', '2015-04-02 10:50:00', '', 211, 'http://bogen.sometim.com/wp-content/uploads/2015/02/POLITICA-AMBIENTAL-SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(303, 1, '2015-10-21 11:45:56', '2015-10-21 11:45:56', '', 'edifer', '', 'publish', 'closed', 'closed', '', 'edifer', '', '', '2015-10-21 11:45:56', '2015-10-21 11:45:56', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=303', 23, 'clientes', '', 0),
(304, 1, '2015-10-21 11:45:45', '2015-10-21 11:45:45', '', 'edifer', '', 'inherit', 'open', 'open', '', 'edifer', '', '', '2015-10-21 11:45:45', '2015-10-21 11:45:45', '', 303, 'http://bogen.sometim.com/wp-content/uploads/2015/10/edifer.png', 0, 'attachment', 'image/png', 0),
(305, 1, '2015-10-21 11:46:00', '2015-10-21 11:46:00', '', 'edifer', '', 'inherit', 'open', 'open', '', '303-autosave-v1', '', '', '2015-10-21 11:46:00', '2015-10-21 11:46:00', '', 303, 'http://bogen.sometim.com/303-autosave-v1/', 0, 'revision', '', 0),
(307, 1, '2015-10-21 11:48:14', '2015-10-21 11:48:14', '', 'imuvip', '', 'publish', 'closed', 'closed', '', 'imuvip', '', '', '2015-10-21 11:48:14', '2015-10-21 11:48:14', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=307', 25, 'clientes', '', 0),
(308, 1, '2015-10-21 11:48:02', '2015-10-21 11:48:02', '', 'imuvip', '', 'inherit', 'open', 'open', '', 'imuvip', '', '', '2015-10-21 11:48:02', '2015-10-21 11:48:02', '', 307, 'http://bogen.sometim.com/wp-content/uploads/2015/10/imuvip.png', 0, 'attachment', 'image/png', 0),
(309, 1, '2015-10-21 11:48:38', '2015-10-21 11:48:38', '', 'Nextiraone', '', 'publish', 'closed', 'closed', '', 'nextiraone', '', '', '2015-10-21 11:48:38', '2015-10-21 11:48:38', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=309', 29, 'clientes', '', 0),
(310, 1, '2015-10-21 11:48:31', '2015-10-21 11:48:31', '', 'Nextiraone', '', 'inherit', 'open', 'open', '', 'nextiraone', '', '', '2015-10-21 11:48:31', '2015-10-21 11:48:31', '', 309, 'http://bogen.sometim.com/wp-content/uploads/2015/10/Nextiraone.png', 0, 'attachment', 'image/png', 0),
(334, 1, '2015-10-21 12:10:02', '2015-10-21 12:10:02', '', 'Nextiraone', '', 'inherit', 'open', 'open', '', '309-autosave-v1', '', '', '2015-10-21 12:10:02', '2015-10-21 12:10:02', '', 309, 'http://bogen.sometim.com/309-autosave-v1/', 0, 'revision', '', 0),
(312, 1, '2015-10-21 11:49:05', '2015-10-21 11:49:05', '', 'odebrecht', '', 'publish', 'closed', 'closed', '', 'odebrecht', '', '', '2015-10-21 11:49:05', '2015-10-21 11:49:05', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=312', 28, 'clientes', '', 0),
(313, 1, '2015-10-21 11:48:59', '2015-10-21 11:48:59', '', 'odebrecht', '', 'inherit', 'open', 'open', '', 'odebrecht', '', '', '2015-10-21 11:48:59', '2015-10-21 11:48:59', '', 312, 'http://bogen.sometim.com/wp-content/uploads/2015/10/odebrecht.png', 0, 'attachment', 'image/png', 0),
(314, 1, '2015-10-21 11:49:08', '2015-10-21 11:49:08', '', 'odebrecht', '', 'inherit', 'open', 'open', '', '312-autosave-v1', '', '', '2015-10-21 11:49:08', '2015-10-21 11:49:08', '', 312, 'http://bogen.sometim.com/312-autosave-v1/', 0, 'revision', '', 0),
(315, 1, '2015-10-21 11:49:28', '2015-10-21 11:49:28', '', 'oel', '', 'publish', 'closed', 'closed', '', 'oel', '', '', '2015-10-21 11:49:28', '2015-10-21 11:49:28', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=315', 26, 'clientes', '', 0),
(316, 1, '2015-10-21 11:49:25', '2015-10-21 11:49:25', '', 'oel', '', 'inherit', 'open', 'open', '', 'oel', '', '', '2015-10-21 11:49:25', '2015-10-21 11:49:25', '', 315, 'http://bogen.sometim.com/wp-content/uploads/2015/10/oel.png', 0, 'attachment', 'image/png', 0),
(317, 1, '2015-10-21 11:49:31', '2015-10-21 11:49:31', '', 'oel', '', 'inherit', 'open', 'open', '', '315-autosave-v1', '', '', '2015-10-21 11:49:31', '2015-10-21 11:49:31', '', 315, 'http://bogen.sometim.com/315-autosave-v1/', 0, 'revision', '', 0),
(318, 1, '2015-10-21 11:49:46', '2015-10-21 11:49:46', '', 'prebuild', '', 'publish', 'closed', 'closed', '', 'prebuild', '', '', '2015-10-21 11:49:46', '2015-10-21 11:49:46', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=318', 27, 'clientes', '', 0),
(319, 1, '2015-10-21 11:49:49', '2015-10-21 11:49:49', '', 'prebuild', '', 'inherit', 'open', 'open', '', '318-autosave-v1', '', '', '2015-10-21 11:49:49', '2015-10-21 11:49:49', '', 318, 'http://bogen.sometim.com/318-autosave-v1/', 0, 'revision', '', 0),
(320, 1, '2015-10-21 11:49:55', '2015-10-21 11:49:55', '', 'prebuild', '', 'inherit', 'open', 'open', '', 'prebuild-2', '', '', '2015-10-21 11:49:55', '2015-10-21 11:49:55', '', 318, 'http://bogen.sometim.com/wp-content/uploads/2015/10/prebuild.png', 0, 'attachment', 'image/png', 0),
(321, 1, '2015-10-21 11:51:12', '2015-10-21 11:51:12', '', 'refriango', '', 'publish', 'closed', 'closed', '', 'refriango', '', '', '2015-10-21 11:51:12', '2015-10-21 11:51:12', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=321', 24, 'clientes', '', 0),
(322, 1, '2015-10-21 11:51:03', '2015-10-21 11:51:03', '', 'refriango', '', 'inherit', 'open', 'open', '', 'refriango', '', '', '2015-10-21 11:51:03', '2015-10-21 11:51:03', '', 321, 'http://bogen.sometim.com/wp-content/uploads/2015/10/refriango.png', 0, 'attachment', 'image/png', 0),
(323, 1, '2015-10-21 11:51:17', '2015-10-21 11:51:17', '', 'refriango', '', 'inherit', 'open', 'open', '', '321-autosave-v1', '', '', '2015-10-21 11:51:17', '2015-10-21 11:51:17', '', 321, 'http://bogen.sometim.com/321-autosave-v1/', 0, 'revision', '', 0),
(324, 1, '2015-10-21 12:07:49', '2015-10-21 12:07:49', '', 'Edifer', '', 'publish', 'closed', 'closed', '', 'edifer-2', '', '', '2015-10-21 12:07:49', '2015-10-21 12:07:49', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=324', 15, 'clientes', '', 0),
(325, 1, '2015-10-21 12:07:53', '2015-10-21 12:07:53', '', '', '', 'inherit', 'open', 'open', '', '324-autosave-v1', '', '', '2015-10-21 12:07:53', '2015-10-21 12:07:53', '', 324, 'http://bogen.sometim.com/324-autosave-v1/', 0, 'revision', '', 0),
(326, 1, '2015-10-21 12:08:57', '2015-10-21 12:08:57', '', 'Refriango', '', 'publish', 'closed', 'closed', '', 'refriango-2', '', '', '2015-10-21 12:08:57', '2015-10-21 12:08:57', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=326', 16, 'clientes', '', 0),
(327, 1, '2015-10-21 12:09:00', '2015-10-21 12:09:00', '', 'Refriango', '', 'inherit', 'open', 'open', '', '326-autosave-v1', '', '', '2015-10-21 12:09:00', '2015-10-21 12:09:00', '', 326, 'http://bogen.sometim.com/326-autosave-v1/', 0, 'revision', '', 0),
(328, 1, '2015-10-21 12:09:12', '2015-10-21 12:09:12', '', 'oel', '', 'publish', 'closed', 'closed', '', 'oel-2', '', '', '2015-10-21 12:09:12', '2015-10-21 12:09:12', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=328', 18, 'clientes', '', 0),
(329, 1, '2015-10-21 12:09:14', '2015-10-21 12:09:14', '', 'oel', '', 'inherit', 'open', 'open', '', '328-autosave-v1', '', '', '2015-10-21 12:09:14', '2015-10-21 12:09:14', '', 328, 'http://bogen.sometim.com/328-autosave-v1/', 0, 'revision', '', 0),
(330, 1, '2015-10-21 12:09:32', '2015-10-21 12:09:32', '', 'prebuild', '', 'publish', 'closed', 'closed', '', 'prebuild-2', '', '', '2015-10-21 12:09:32', '2015-10-21 12:09:32', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=330', 19, 'clientes', '', 0),
(331, 1, '2015-10-21 12:09:34', '2015-10-21 12:09:34', '', 'prebuild', '', 'inherit', 'open', 'open', '', '330-autosave-v1', '', '', '2015-10-21 12:09:34', '2015-10-21 12:09:34', '', 330, 'http://bogen.sometim.com/330-autosave-v1/', 0, 'revision', '', 0),
(332, 1, '2015-10-21 12:09:54', '2015-10-21 12:09:54', '', 'odebrecht', '', 'publish', 'closed', 'closed', '', 'odebrecht-2', '', '', '2015-10-21 12:09:54', '2015-10-21 12:09:54', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=332', 20, 'clientes', '', 0),
(333, 1, '2015-10-21 12:09:56', '2015-10-21 12:09:56', '', 'odebrecht', '', 'inherit', 'open', 'open', '', '332-autosave-v1', '', '', '2015-10-21 12:09:56', '2015-10-21 12:09:56', '', 332, 'http://bogen.sometim.com/332-autosave-v1/', 0, 'revision', '', 0),
(335, 1, '2015-10-21 12:10:14', '2015-10-21 12:10:14', '', 'Nextiraone', '', 'publish', 'closed', 'closed', '', 'nextiraone-2', '', '', '2015-10-21 12:10:14', '2015-10-21 12:10:14', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=335', 21, 'clientes', '', 0),
(336, 1, '2015-10-21 12:10:16', '2015-10-21 12:10:16', '', 'Nextiraone', '', 'inherit', 'open', 'open', '', '335-autosave-v1', '', '', '2015-10-21 12:10:16', '2015-10-21 12:10:16', '', 335, 'http://bogen.sometim.com/335-autosave-v1/', 0, 'revision', '', 0),
(337, 1, '2015-10-21 12:13:03', '2015-10-21 12:13:03', '', 'imuvip', '', 'publish', 'closed', 'closed', '', 'imuvip-2', '', '', '2015-10-21 12:13:03', '2015-10-21 12:13:03', '', 0, 'http://bogen.sometim.com/?post_type=clientes&#038;p=337', 17, 'clientes', '', 0),
(338, 1, '2015-10-21 12:13:05', '2015-10-21 12:13:05', '', 'imuvip', '', 'inherit', 'open', 'open', '', '337-autosave-v1', '', '', '2015-10-21 12:13:05', '2015-10-21 12:13:05', '', 337, 'http://bogen.sometim.com/337-autosave-v1/', 0, 'revision', '', 0),
(372, 1, '2015-12-29 13:35:05', '2015-12-29 13:35:05', ' Presente no Mercado Angolano a partir de 2012, a SOMETIM diversificou e reforçou a sua actividade com a introdução das Áreas de Manutenção Multitécnica, Manutenção Industrial, Fabrico de Quadros Eléctricos e Metalomecânica.', 'Diversificámos e reforçámos a nossa actividade', '', 'inherit', 'open', 'open', '', '11-autosave-v1', '', '', '2015-12-29 13:35:05', '2015-12-29 13:35:05', '', 11, 'http://bogen.sometim.com/11-autosave-v1/', 0, 'revision', '', 0),
(349, 2, '2015-12-18 12:38:37', '2015-12-18 12:38:37', '', 'Sem Título', '', 'inherit', 'open', 'open', '', 'sem-titulo-2', '', '', '2015-12-18 12:38:37', '2015-12-18 12:38:37', '', 171, 'http://bogen.sometim.com/wp-content/uploads/2015/02/Sem-Título.jpg', 0, 'attachment', 'image/jpeg', 0),
(371, 1, '2015-12-29 13:34:20', '2015-12-29 13:34:20', '', 'PC180018_03', '', 'inherit', 'open', 'open', '', 'pc180018_03', '', '', '2015-12-29 13:34:20', '2015-12-29 13:34:20', '', 11, 'http://bogen.sometim.com/wp-content/uploads/2014/12/PC180018_03.png', 0, 'attachment', 'image/png', 0),
(366, 2, '2015-12-18 17:44:36', '2015-12-18 17:44:36', '', 'OLYMPUS DIGITAL CAMERA', '', 'inherit', 'open', 'open', '', 'olympus-digital-camera-2', '', '', '2015-12-18 17:44:36', '2015-12-18 17:44:36', '', 0, 'http://bogen.sometim.com/wp-content/uploads/2015/12/PC180018.jpg', 0, 'attachment', 'image/jpeg', 0),
(369, 1, '2015-12-29 13:31:09', '2015-12-29 13:31:09', '', 'slide-18', '', 'inherit', 'open', 'open', '', 'slide-18', '', '', '2015-12-29 13:31:09', '2015-12-29 13:31:09', '', 11, 'http://bogen.sometim.com/wp-content/uploads/2014/12/slide-18.png', 0, 'attachment', 'image/png', 0),
(374, 1, '2015-12-29 13:36:11', '2015-12-29 13:36:11', '', 'slide-18', '', 'inherit', 'open', 'open', '', 'slide-18-2', '', '', '2015-12-29 13:36:11', '2015-12-29 13:36:11', '', 126, 'http://bogen.sometim.com/wp-content/uploads/2015/01/slide-18.png', 0, 'attachment', 'image/png', 0),
(377, 1, '2015-12-29 13:39:26', '2015-12-29 13:39:26', '<p>Equipas técnicas pluridisciplinares, especialmente vocacionadas para a prestação de serviços de manutenção, asseguram a presença da SOMETIM em parcerias responsáveis e duradouras nas seguintes vertentes:</p>\n<ul>\n	<li>Contractos Globais de Manutenção Multitécnica</li>\n	<li>Gestão e Exploração de Instalações Técnicas</li>\n	<li>Soluções Integradas de Gestão de Serviços, numa Óptica do “Facilities Management”.</li>\n	<li>Electricidade</li>\n	<li>AVAC</li>\n	<li>Redes Estruturadas</li>\n	<li>Redes Hidráulicas</li>\n	<li>Segurança</li>\n	<li>Telecomunicações</li>\n</ul>', 'TERCIÁRIO', 'Realização de Manutenção Multitécnica', 'inherit', 'open', 'open', '', '46-autosave-v1', '', '', '2015-12-29 13:39:26', '2015-12-29 13:39:26', '', 46, 'http://bogen.sometim.com/46-autosave-v1/', 0, 'revision', '', 0),
(376, 1, '2015-12-29 13:37:32', '2015-12-29 13:37:32', '', 'terciario', '', 'inherit', 'open', 'open', '', 'terciario-2', '', '', '2015-12-29 13:37:32', '2015-12-29 13:37:32', '', 46, 'http://bogen.sometim.com/wp-content/uploads/2015/01/terciario.png', 0, 'attachment', 'image/png', 0),
(380, 1, '2015-12-29 13:40:50', '2015-12-29 13:40:50', 'Multi-disciplinary Technical Teams specially focused to Maintenance Services, assures the presence of SOMETIM in Responsible and Long-lasting Partnerships on the following strands:\n<ul>\n	<li>Global Multidisciplinary Maintenance Contracts</li>\n	<li>Management and Exploration of Technical Installations</li>\n	<li>Integrated Solutions of Services Management, under a scope of “ Facilities Management”</li>\n	<li>Electricity</li>\n	<li>AVAC</li>\n	<li>Structured Networks</li>\n	<li>Hydraulic Systems/Circuits</li>\n	<li>Security</li>\n	<li>Telecommunications</li>\n</ul>', 'TERTIARY', 'Conducting Facilities Maintenance', 'inherit', 'open', 'open', '', '164-autosave-v1', '', '', '2015-12-29 13:40:50', '2015-12-29 13:40:50', '', 164, 'http://bogen.sometim.com/164-autosave-v1/', 0, 'revision', '', 0),
(379, 1, '2015-12-29 13:39:51', '2015-12-29 13:39:51', '', 'terciario', '', 'inherit', 'open', 'open', '', 'terciario-3', '', '', '2015-12-29 13:39:51', '2015-12-29 13:39:51', '', 164, 'http://bogen.sometim.com/wp-content/uploads/2015/02/terciario.png', 0, 'attachment', 'image/png', 0),
(383, 2, '2015-12-31 12:32:39', '2015-12-31 12:32:39', '', 'Movicel', '', 'inherit', 'open', 'open', '', 'movicel-3', '', '', '2015-12-31 12:32:39', '2015-12-31 12:32:39', '', 68, 'http://bogen.sometim.com/wp-content/uploads/2015/01/Movicel.jpg', 0, 'attachment', 'image/jpeg', 0),
(387, 2, '2015-12-31 14:01:32', '2015-12-31 14:01:32', '', 'Movicel', '', 'inherit', 'open', 'open', '', 'movicel-4', '', '', '2015-12-31 14:01:32', '2015-12-31 14:01:32', '', 192, 'http://bogen.sometim.com/wp-content/uploads/2015/02/Movicel.jpg', 0, 'attachment', 'image/jpeg', 0),
(393, 1, '2016-09-25 20:09:25', '2016-09-25 20:09:25', '', 'politica_da_seguranc%cc%a7a_sometim', '', 'inherit', 'open', 'open', '', 'politica_da_seguranc%cc%a7a_sometim', '', '', '2016-09-25 20:09:25', '2016-09-25 20:09:25', '', 104, 'http://bogen.sometim.com/wp-content/uploads/2015/01/POLITICA_DA_SEGURANÇA_SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(394, 1, '2016-09-25 20:09:59', '2016-09-25 20:09:59', '', 'politica_da_qualidade_sometim', '', 'inherit', 'open', 'open', '', 'politica_da_qualidade_sometim', '', '', '2016-09-25 20:09:59', '2016-09-25 20:09:59', '', 104, 'http://bogen.sometim.com/wp-content/uploads/2015/01/POLÍTICA_DA_QUALIDADE_SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(396, 1, '2016-09-25 20:12:14', '2016-09-25 20:12:14', '', 'politica_ambiental_sometim', '', 'inherit', 'open', 'open', '', 'politica_ambiental_sometim', '', '', '2016-09-25 20:12:14', '2016-09-25 20:12:14', '', 104, 'http://bogen.sometim.com/wp-content/uploads/2015/01/POLITICA_AMBIENTAL_SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(399, 1, '2016-09-25 20:13:08', '2016-09-25 20:13:08', '', 'Faça download dos documentos aqui', '', 'inherit', 'open', 'open', '', '104-autosave-v1', '', '', '2016-09-25 20:13:08', '2016-09-25 20:13:08', '', 104, 'http://bogen.sometim.com/104-autosave-v1/', 0, 'revision', '', 0),
(401, 1, '2016-09-25 20:14:09', '2016-09-25 20:14:09', '', 'politica_da_seguranc%cc%a7a_sometim', '', 'inherit', 'open', 'open', '', 'politica_da_seguranc%cc%a7a_sometim-2', '', '', '2016-09-25 20:14:09', '2016-09-25 20:14:09', '', 211, 'http://bogen.sometim.com/wp-content/uploads/2015/02/POLITICA_DA_SEGURANÇA_SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(402, 1, '2016-09-25 20:14:30', '2016-09-25 20:14:30', '', 'politica_da_qualidade_sometim', '', 'inherit', 'open', 'open', '', 'politica_da_qualidade_sometim-2', '', '', '2016-09-25 20:14:30', '2016-09-25 20:14:30', '', 211, 'http://bogen.sometim.com/wp-content/uploads/2015/02/POLÍTICA_DA_QUALIDADE_SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(403, 1, '2016-09-25 20:15:02', '2016-09-25 20:15:02', '', 'politica_ambiental_sometim', '', 'inherit', 'open', 'open', '', 'politica_ambiental_sometim-2', '', '', '2016-09-25 20:15:02', '2016-09-25 20:15:02', '', 211, 'http://bogen.sometim.com/wp-content/uploads/2015/02/POLITICA_AMBIENTAL_SOMETIM.pdf', 0, 'attachment', 'application/pdf', 0),
(406, 2, '2017-05-15 10:25:23', '0000-00-00 00:00:00', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-05-15 10:25:23', '2017-05-15 10:25:23', '', 0, 'http://bogen.sometim.com/?post_type=contactos&#038;p=406', 1, 'contactos', '', 0),
(411, 1, '2020-08-30 09:08:34', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-08-30 09:08:34', '0000-00-00 00:00:00', '', 0, 'http://bogen.sometim.com/?p=411', 0, 'post', '', 0),
(412, 3, '2020-08-30 09:11:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-08-30 09:11:21', '0000-00-00 00:00:00', '', 0, 'http://bogen.sometim.com/?p=412', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Português', 'pt', 0),
(3, 'Português', 'pll_pt', 0),
(4, 'English', 'en', 0),
(5, 'English', 'pll_en', 0),
(6, 'Sem categoria', 'sem-categoria-en', 0),
(7, 'pll_54986fac381e1', 'pll_54986fac381e1', 0),
(8, 'pll_54a919621c476', 'pll_54a919621c476', 0),
(9, 'pll_54a919a1caa62', 'pll_54a919a1caa62', 0),
(10, 'pll_54a919d5acd33', 'pll_54a919d5acd33', 0),
(11, 'pll_54e3529a5d81f', 'pll_54e3529a5d81f', 0),
(12, 'pll_54e352cad85cf', 'pll_54e352cad85cf', 0),
(13, 'pll_54e352f859972', 'pll_54e352f859972', 0),
(14, 'pll_54e35456923b2', 'pll_54e35456923b2', 0),
(15, 'pll_54e3554f8f7d7', 'pll_54e3554f8f7d7', 0),
(16, 'pll_54e3558f306c2', 'pll_54e3558f306c2', 0),
(17, 'pll_54e35688527e1', 'pll_54e35688527e1', 0),
(18, 'pll_54e356b411e6e', 'pll_54e356b411e6e', 0),
(19, 'pll_54e3570b3cd81', 'pll_54e3570b3cd81', 0),
(20, 'pll_54e3582797747', 'pll_54e3582797747', 0),
(21, 'pll_54e3583b5c128', 'pll_54e3583b5c128', 0),
(22, 'pll_54e358576d9ad', 'pll_54e358576d9ad', 0),
(23, 'pll_54e3586de1e33', 'pll_54e3586de1e33', 0),
(24, 'pll_54e358887b682', 'pll_54e358887b682', 0),
(25, 'pll_54e3589d780b6', 'pll_54e3589d780b6', 0),
(26, 'pll_54e358b0559e1', 'pll_54e358b0559e1', 0),
(27, 'pll_54e358c5770c4', 'pll_54e358c5770c4', 0),
(28, 'pll_54e358e28c82f', 'pll_54e358e28c82f', 0),
(29, 'pll_54e386c376d92', 'pll_54e386c376d92', 0),
(30, 'pll_54e387ce41015', 'pll_54e387ce41015', 0),
(31, 'pll_54e38913c54a1', 'pll_54e38913c54a1', 0),
(32, 'pll_54e3894e76109', 'pll_54e3894e76109', 0),
(33, 'pll_54e3898fa0fe4', 'pll_54e3898fa0fe4', 0),
(34, 'pll_54e389d6455fe', 'pll_54e389d6455fe', 0),
(35, 'pll_54e38c6dd4b38', 'pll_54e38c6dd4b38', 0),
(36, 'pll_56278015b843b', 'pll_56278015b843b', 0),
(37, 'pll_56278059da2eb', 'pll_56278059da2eb', 0),
(38, 'pll_5627806808551', 'pll_5627806808551', 0),
(39, 'pll_5627807c70c19', 'pll_5627807c70c19', 0),
(40, 'pll_56278092a5020', 'pll_56278092a5020', 0),
(41, 'pll_562780a617759', 'pll_562780a617759', 0),
(42, 'pll_5627814f95d22', 'pll_5627814f95d22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 3, 0),
(6, 5, 0),
(6, 7, 0),
(1, 7, 0),
(1, 2, 0),
(48, 2, 0),
(6, 2, 0),
(7, 2, 0),
(9, 2, 0),
(11, 2, 0),
(14, 2, 0),
(15, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(21, 2, 0),
(46, 2, 0),
(45, 2, 0),
(43, 2, 0),
(49, 2, 0),
(52, 2, 0),
(54, 2, 0),
(55, 2, 0),
(56, 2, 0),
(57, 2, 0),
(58, 2, 0),
(343, 4, 0),
(61, 2, 0),
(63, 2, 0),
(65, 2, 0),
(66, 2, 0),
(68, 2, 0),
(69, 2, 0),
(71, 2, 0),
(72, 2, 0),
(74, 2, 0),
(75, 2, 0),
(77, 2, 0),
(78, 2, 0),
(347, 2, 0),
(81, 2, 0),
(149, 4, 0),
(84, 2, 0),
(85, 2, 0),
(87, 2, 0),
(88, 2, 0),
(91, 2, 0),
(93, 2, 0),
(95, 2, 0),
(108, 2, 0),
(109, 2, 0),
(110, 2, 0),
(112, 2, 0),
(304, 2, 0),
(118, 4, 0),
(118, 8, 0),
(18, 8, 0),
(282, 2, 0),
(122, 4, 0),
(122, 9, 0),
(15, 9, 0),
(283, 2, 0),
(126, 4, 0),
(126, 10, 0),
(11, 10, 0),
(104, 2, 0),
(101, 2, 0),
(99, 2, 0),
(97, 2, 0),
(149, 11, 0),
(9, 11, 0),
(152, 4, 0),
(152, 12, 0),
(7, 12, 0),
(155, 4, 0),
(155, 13, 0),
(6, 13, 0),
(158, 4, 0),
(158, 14, 0),
(21, 14, 0),
(161, 4, 0),
(161, 15, 0),
(43, 15, 0),
(164, 4, 0),
(164, 16, 0),
(46, 16, 0),
(167, 4, 0),
(167, 17, 0),
(49, 17, 0),
(169, 4, 0),
(169, 18, 0),
(52, 18, 0),
(171, 4, 0),
(171, 19, 0),
(59, 19, 0),
(176, 4, 0),
(176, 20, 0),
(63, 20, 0),
(178, 4, 0),
(178, 21, 0),
(87, 21, 0),
(181, 4, 0),
(181, 22, 0),
(84, 22, 0),
(376, 2, 0),
(349, 4, 0),
(186, 4, 0),
(186, 24, 0),
(77, 24, 0),
(188, 4, 0),
(188, 25, 0),
(74, 25, 0),
(190, 4, 0),
(190, 26, 0),
(71, 26, 0),
(192, 4, 0),
(192, 27, 0),
(68, 27, 0),
(194, 4, 0),
(194, 28, 0),
(65, 28, 0),
(196, 4, 0),
(196, 29, 0),
(93, 29, 0),
(199, 4, 0),
(199, 30, 0),
(91, 30, 0),
(202, 4, 0),
(202, 31, 0),
(97, 31, 0),
(205, 4, 0),
(205, 32, 0),
(99, 32, 0),
(208, 4, 0),
(208, 33, 0),
(101, 33, 0),
(211, 4, 0),
(211, 34, 0),
(104, 34, 0),
(213, 4, 0),
(214, 4, 0),
(215, 4, 0),
(218, 4, 0),
(218, 35, 0),
(112, 35, 0),
(236, 4, 0),
(303, 2, 0),
(284, 2, 0),
(287, 4, 0),
(288, 4, 0),
(291, 4, 0),
(59, 2, 0),
(307, 2, 0),
(308, 2, 0),
(309, 2, 0),
(310, 2, 0),
(312, 2, 0),
(313, 2, 0),
(315, 2, 0),
(316, 2, 0),
(318, 2, 0),
(320, 2, 0),
(321, 2, 0),
(322, 2, 0),
(324, 4, 0),
(324, 36, 0),
(303, 36, 0),
(326, 4, 0),
(326, 37, 0),
(321, 37, 0),
(328, 4, 0),
(328, 38, 0),
(315, 38, 0),
(330, 4, 0),
(330, 39, 0),
(318, 39, 0),
(332, 4, 0),
(332, 40, 0),
(312, 40, 0),
(335, 4, 0),
(335, 41, 0),
(309, 41, 0),
(337, 4, 0),
(337, 42, 0),
(307, 42, 0),
(369, 2, 0),
(374, 4, 0),
(371, 2, 0),
(366, 2, 0),
(363, 2, 0),
(379, 4, 0),
(383, 2, 0),
(387, 4, 0),
(393, 2, 0),
(394, 2, 0),
(396, 2, 0),
(401, 4, 0),
(402, 4, 0),
(403, 4, 0),
(406, 2, 0),
(411, 2, 0),
(412, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'language', 'a:2:{s:6:\"locale\";s:5:\"pt_PT\";s:3:\"rtl\";s:1:\"0\";}', 0, 75),
(3, 3, 'term_language', '', 0, 1),
(4, 4, 'language', 'a:2:{s:6:\"locale\";s:5:\"en_GB\";s:3:\"rtl\";s:1:\"0\";}', 0, 49),
(5, 5, 'term_language', '', 0, 1),
(6, 6, 'category', '', 0, 0),
(7, 7, 'term_translations', 'a:2:{s:2:\"en\";i:6;s:2:\"pt\";i:1;}', 0, 2),
(8, 8, 'post_translations', 'a:2:{s:2:\"pt\";i:18;s:2:\"en\";i:118;}', 0, 2),
(9, 9, 'post_translations', 'a:2:{s:2:\"en\";i:122;s:2:\"pt\";i:15;}', 0, 2),
(10, 10, 'post_translations', 'a:2:{s:2:\"en\";i:126;s:2:\"pt\";i:11;}', 0, 2),
(11, 11, 'post_translations', 'a:2:{s:2:\"en\";i:149;s:2:\"pt\";i:9;}', 0, 2),
(12, 12, 'post_translations', 'a:2:{s:2:\"en\";i:152;s:2:\"pt\";i:7;}', 0, 2),
(13, 13, 'post_translations', 'a:2:{s:2:\"en\";i:155;s:2:\"pt\";i:6;}', 0, 2),
(14, 14, 'post_translations', 'a:2:{s:2:\"en\";i:158;s:2:\"pt\";i:21;}', 0, 2),
(15, 15, 'post_translations', 'a:2:{s:2:\"en\";i:161;s:2:\"pt\";i:43;}', 0, 2),
(16, 16, 'post_translations', 'a:2:{s:2:\"en\";i:164;s:2:\"pt\";i:46;}', 0, 2),
(17, 17, 'post_translations', 'a:2:{s:2:\"en\";i:167;s:2:\"pt\";i:49;}', 0, 2),
(18, 18, 'post_translations', 'a:2:{s:2:\"en\";i:169;s:2:\"pt\";i:52;}', 0, 2),
(19, 19, 'post_translations', 'a:2:{s:2:\"en\";i:171;s:2:\"pt\";i:59;}', 0, 2),
(20, 20, 'post_translations', 'a:2:{s:2:\"en\";i:176;s:2:\"pt\";i:63;}', 0, 2),
(21, 21, 'post_translations', 'a:2:{s:2:\"en\";i:178;s:2:\"pt\";i:87;}', 0, 2),
(22, 22, 'post_translations', 'a:2:{s:2:\"en\";i:181;s:2:\"pt\";i:84;}', 0, 2),
(23, 23, 'post_translations', 'a:0:{}', 0, 0),
(24, 24, 'post_translations', 'a:2:{s:2:\"en\";i:186;s:2:\"pt\";i:77;}', 0, 2),
(25, 25, 'post_translations', 'a:2:{s:2:\"en\";i:188;s:2:\"pt\";i:74;}', 0, 2),
(26, 26, 'post_translations', 'a:2:{s:2:\"en\";i:190;s:2:\"pt\";i:71;}', 0, 2),
(27, 27, 'post_translations', 'a:2:{s:2:\"en\";i:192;s:2:\"pt\";i:68;}', 0, 2),
(28, 28, 'post_translations', 'a:2:{s:2:\"en\";i:194;s:2:\"pt\";i:65;}', 0, 2),
(29, 29, 'post_translations', 'a:2:{s:2:\"en\";i:196;s:2:\"pt\";i:93;}', 0, 2),
(30, 30, 'post_translations', 'a:2:{s:2:\"en\";i:199;s:2:\"pt\";i:91;}', 0, 2),
(31, 31, 'post_translations', 'a:2:{s:2:\"en\";i:202;s:2:\"pt\";i:97;}', 0, 2),
(32, 32, 'post_translations', 'a:2:{s:2:\"en\";i:205;s:2:\"pt\";i:99;}', 0, 2),
(33, 33, 'post_translations', 'a:2:{s:2:\"en\";i:208;s:2:\"pt\";i:101;}', 0, 2),
(34, 34, 'post_translations', 'a:2:{s:2:\"en\";i:211;s:2:\"pt\";i:104;}', 0, 2),
(35, 35, 'post_translations', 'a:2:{s:2:\"en\";i:218;s:2:\"pt\";i:112;}', 0, 2),
(36, 36, 'post_translations', 'a:2:{s:2:\"en\";i:324;s:2:\"pt\";i:303;}', 0, 2),
(37, 37, 'post_translations', 'a:2:{s:2:\"en\";i:326;s:2:\"pt\";i:321;}', 0, 2),
(38, 38, 'post_translations', 'a:2:{s:2:\"en\";i:328;s:2:\"pt\";i:315;}', 0, 2),
(39, 39, 'post_translations', 'a:2:{s:2:\"en\";i:330;s:2:\"pt\";i:318;}', 0, 2),
(40, 40, 'post_translations', 'a:2:{s:2:\"en\";i:332;s:2:\"pt\";i:312;}', 0, 2),
(41, 41, 'post_translations', 'a:2:{s:2:\"en\";i:335;s:2:\"pt\";i:309;}', 0, 2),
(42, 42, 'post_translations', 'a:2:{s:2:\"en\";i:337;s:2:\"pt\";i:307;}', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'gnribeiro'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '0'),
(62, 2, 'manageedit-producaocolumnshidden', 'a:1:{i:0;s:0:\"\";}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '411'),
(16, 2, 'nickname', 'antonio_medalhas'),
(17, 2, 'first_name', 'Antonio'),
(18, 2, 'last_name', 'medalhas'),
(19, 2, 'description', ''),
(20, 2, 'rich_editing', 'true'),
(21, 2, 'comment_shortcuts', 'false'),
(22, 2, 'admin_color', 'fresh'),
(23, 2, 'use_ssl', '0'),
(24, 2, 'show_admin_bar_front', 'true'),
(25, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(26, 2, 'wp_user_level', '7'),
(27, 2, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets,wp410_dfw'),
(50, 2, 'user_lang', '0'),
(51, 2, 'description_en', ''),
(29, 2, 'wp_dashboard_quick_press_last_post_id', '409'),
(30, 2, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(31, 2, 'metaboxhidden_dashboard', 'a:1:{i:0;s:21:\"dashboard_quick_press\";}'),
(35, 1, 'wp_user-settings-time', '1474834355'),
(32, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(33, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:18:\"dashboard_activity\";i:1;s:21:\"dashboard_quick_press\";i:2;s:17:\"dashboard_primary\";}'),
(34, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(36, 1, 'closedpostboxes_manutentencao', 'a:0:{}'),
(37, 1, 'metaboxhidden_manutentencao', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(38, 1, 'pll_filter_content', 'pt'),
(39, 1, 'default_password_nag', ''),
(44, 2, 'pll_filter_content', 'pt'),
(45, 2, 'closedpostboxes_manutentencao', 'a:0:{}'),
(46, 2, 'metaboxhidden_manutentencao', 'a:2:{i:0;s:7:\"acf_103\";i:1;s:7:\"slugdiv\";}'),
(47, 2, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(48, 2, 'wp_user-settings-time', '1450441089'),
(52, 2, 'meta-box-order_manutentencao', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:29:\"ml_box,submitdiv,postimagediv\";s:6:\"normal\";s:41:\"acf_103,postexcerpt,acf_23,acf_42,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(53, 2, 'screen_layout_manutentencao', '2'),
(63, 2, 'session_tokens', 'a:1:{s:64:\"8b1256fdd87fc2822e5dada0d90a85e2738316cc16c229fe1119081ddb715afc\";a:4:{s:10:\"expiration\";i:1530893400;s:2:\"ip\";s:14:\"85.139.253.148\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36\";s:5:\"login\";i:1529683800;}}'),
(64, 1, 'session_tokens', 'a:3:{s:64:\"e828f3a8f14b3431b44d95d0bd140211845db66cc2c29538b84666f8e8cd7f9e\";a:4:{s:10:\"expiration\";i:1598951253;s:2:\"ip\";s:14:\"85.242.148.176\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598778453;}s:64:\"790ee38ba802ed542576fc3ad5d7aec25363dec97bb390baf5d539b669ded06d\";a:4:{s:10:\"expiration\";i:1598951267;s:2:\"ip\";s:14:\"85.242.148.176\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598778467;}s:64:\"29b78ab925b89e84818237d6a22c9150cd0ac8b955584563a62d07f98577a54e\";a:4:{s:10:\"expiration\";i:1598951314;s:2:\"ip\";s:14:\"85.242.148.176\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598778514;}}'),
(65, 3, 'nickname', 'admin'),
(66, 3, 'first_name', 'admin'),
(67, 3, 'last_name', 'admin'),
(68, 3, 'description', ''),
(69, 3, 'rich_editing', 'true'),
(70, 3, 'comment_shortcuts', 'false'),
(71, 3, 'admin_color', 'fresh'),
(72, 3, 'use_ssl', '0'),
(73, 3, 'show_admin_bar_front', 'true'),
(74, 3, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(75, 3, 'wp_user_level', '10'),
(76, 3, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(77, 3, 'session_tokens', 'a:1:{s:64:\"d63db9f09448772f7e7e4095737bc62faebb25b89564dbd90be8157f739c02de\";a:4:{s:10:\"expiration\";i:1598951481;s:2:\"ip\";s:14:\"85.242.148.176\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598778681;}}'),
(78, 3, 'wp_dashboard_quick_press_last_post_id', '412');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'gnribeiro', '$P$BbYcaqjLmIH5niPVaY0TRLMf0bURgp.', 'gnribeiro', 'gnoribeiro@gmail.com', '', '2014-12-17 17:25:13', '', 0, 'gnribeiro'),
(2, 'antonio_medalhas', '$P$BRerpqyiv6JinmhvVCso42x.PjgFbq1', 'antonio_medalhas', 'antonio.medalhas@diretriz.org', '', '2014-12-17 17:43:30', '', 0, 'Antonio medalhas'),
(3, 'admin', '$P$BSF3sNzTokgMAlGzcFUUtwYB4kzTgP/', 'admin', 'admin@admin.com', '', '2020-08-30 09:10:32', '', 0, 'admin admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1845;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=615;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
