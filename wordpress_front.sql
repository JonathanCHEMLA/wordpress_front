-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 16 mars 2018 à 13:57
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress_front`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-12 09:18:35', '2018-02-12 09:18:35', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress_front', 'yes'),
(2, 'home', 'http://localhost/wordpress_front', 'yes'),
(3, 'blogname', 'Wordpress Front', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jonathanchemla55@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'jS F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:35:\"date-translator/date-translator.php\";i:2;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:70:\"C:\\xampp\\htdocs\\wordpress_front/wp-content/plugins/akismet/akismet.php\";i:1;s:71:\"C:\\xampp\\htdocs\\wordpress_front/wp-content/themes/customtheme/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'splendid-portfolio', 'yes'),
(41, 'stylesheet', 'splendid-portfolio-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:17:\"weglot/weglot.php\";a:2:{i:0;s:6:\"Weglot\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:7:\"primary\";a:1:{i:0;s:10:\"calendar-2\";}s:6:\"custom\";a:0:{}s:8:\"about-me\";a:0:{}s:9:\"portfolio\";a:0:{}s:10:\"contact-me\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:10:\"Calendrier\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1521212425;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521235115;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521278427;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521278578;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521280399;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1518432055;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(129, 'can_compress_scripts', '1', 'no'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(167, 'recently_activated', 'a:2:{s:23:\"loco-translate/loco.php\";i:1518539043;s:17:\"weglot/weglot.php\";i:1518538005;}', 'yes'),
(176, 'wpseo', 'a:25:{s:14:\"blocking_files\";a:0:{}s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"6.2\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:20:\"enable_setting_pages\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1518429199;}', 'yes'),
(177, 'wpseo_permalinks', 'a:9:{s:15:\"cleanpermalinks\";b:0;s:24:\"cleanpermalink-extravars\";s:0:\"\";s:29:\"cleanpermalink-googlecampaign\";b:0;s:31:\"cleanpermalink-googlesitesearch\";b:0;s:15:\"cleanreplytocom\";b:0;s:10:\"cleanslugs\";b:1;s:18:\"redirectattachment\";b:0;s:17:\"stripcategorybase\";b:0;s:13:\"trailingslash\";b:0;}', 'yes'),
(178, 'wpseo_titles', 'a:53:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:15:\"usemetakeywords\";b:0;s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:18:\"metakey-home-wpseo\";s:0:\"\";s:20:\"metakey-author-wpseo\";s:0:\"\";s:22:\"noindex-subpages-wpseo\";b:0;s:20:\"noindex-author-wpseo\";b:0;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"metakey-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:16:\"hideeditbox-post\";b:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"metakey-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:16:\"hideeditbox-page\";b:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"metakey-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:22:\"hideeditbox-attachment\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:20:\"metakey-tax-category\";s:0:\"\";s:24:\"hideeditbox-tax-category\";b:0;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:20:\"metakey-tax-post_tag\";s:0:\"\";s:24:\"hideeditbox-tax-post_tag\";b:0;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:23:\"metakey-tax-post_format\";s:0:\"\";s:27:\"hideeditbox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(179, 'wpseo_social', 'a:20:{s:9:\"fb_admins\";a:0:{}s:12:\"fbconnectkey\";s:32:\"3daf7dc3bf6f31917da0428eb7e2bc1f\";s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(180, 'wpseo_rss', 'a:2:{s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";}', 'yes'),
(181, 'wpseo_internallinks', 'a:10:{s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:23:\"breadcrumbs-blog-remove\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:23:\"post_types-post-maintax\";i:0;}', 'yes'),
(182, 'wpseo_xml', 'a:16:{s:22:\"disable_author_sitemap\";b:1;s:22:\"disable_author_noposts\";b:1;s:16:\"enablexmlsitemap\";b:1;s:16:\"entries-per-page\";i:1000;s:14:\"excluded-posts\";s:0:\"\";s:38:\"user_role-administrator-not_in_sitemap\";b:0;s:31:\"user_role-editor-not_in_sitemap\";b:0;s:31:\"user_role-author-not_in_sitemap\";b:0;s:36:\"user_role-contributor-not_in_sitemap\";b:0;s:35:\"user_role-subscriber-not_in_sitemap\";b:0;s:30:\"post_types-post-not_in_sitemap\";b:0;s:30:\"post_types-page-not_in_sitemap\";b:0;s:36:\"post_types-attachment-not_in_sitemap\";b:1;s:34:\"taxonomies-category-not_in_sitemap\";b:0;s:34:\"taxonomies-post_tag-not_in_sitemap\";b:0;s:37:\"taxonomies-post_format-not_in_sitemap\";b:0;}', 'yes'),
(183, 'wpseo_flush_rewrite', '1', 'yes'),
(184, '_transient_timeout_wpseo_link_table_inaccessible', '1549965199', 'no'),
(185, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(186, '_transient_timeout_wpseo_meta_table_inaccessible', '1549965199', 'no'),
(187, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(194, 'wpseo_sitemap_1_cache_validator', '4UQ2t', 'no'),
(195, 'wpseo_sitemap_category_cache_validator', '6qUm5', 'no'),
(196, 'wpseo_sitemap_post_cache_validator', '4UQ2Q', 'no'),
(200, 'wpseo_sitemap_16_cache_validator', '3Eyzj', 'no'),
(205, 'theme_mods_twentyfifteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1518431428;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(208, 'current_theme', 'Splendid Portfolio', 'yes'),
(209, 'theme_switched', '', 'yes'),
(210, 'theme_switched_via_customizer', '', 'yes'),
(211, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(213, '_transient_twentyfifteen_categories', '2', 'yes'),
(215, 'theme_mods_customtheme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1518512852;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"calendar-2\";}}}}', 'yes'),
(228, 'wpseo_sitemap_page_cache_validator', '6wfgq', 'no'),
(256, 'theme_mods_splendid-portfolio', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"primary-navigation\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1518515370;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:7:\"primary\";a:1:{i:0;s:10:\"calendar-2\";}s:6:\"custom\";a:0:{}s:8:\"about-me\";a:0:{}s:9:\"portfolio\";a:0:{}s:10:\"contact-me\";a:0:{}}}}', 'yes'),
(260, 'theme_mods_splendid-portfolio-child', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"primary-navigation\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1518515359;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:10:\"calendar-2\";}}}s:16:\"header_textcolor\";s:6:\"0081cc\";s:13:\"global_layout\";s:10:\"no-sidebar\";}', 'yes'),
(270, 'wpseo_sitemap_23_cache_validator', '3ZIiK', 'no'),
(286, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"5.0\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1518529876;s:7:\"version\";s:3:\"5.0\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(293, 'wpseo_sitemap_25_cache_validator', '4F9Sk', 'no'),
(294, 'wpseo_sitemap_53_cache_validator', '4F9Sq', 'no'),
(302, 'wpseo_sitemap_24_cache_validator', '4LSaX', 'no'),
(308, 'wpseo_sitemap_67_cache_validator', 'oT5Q', 'no'),
(312, 'wpseo_sitemap_63_cache_validator', '5xeK1', 'no'),
(314, 'wpseo_sitemap_60_cache_validator', '5xkee', 'no'),
(319, 'wpseo_sitemap_56_cache_validator', '4WmT3', 'no'),
(320, 'wpseo_sitemap_57_cache_validator', '4WmT8', 'no'),
(321, 'with_flags', 'on', 'yes'),
(322, 'with_name', 'on', 'yes'),
(323, 'is_dropdown', 'on', 'yes'),
(324, 'is_fullname', 'off', 'yes'),
(325, 'override_css', '', 'yes'),
(326, 'is_menu', 'off', 'yes'),
(327, 'wg_allowed', '1', 'yes'),
(328, 'widget_weglotwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(329, 'loco_settings', 'a:3:{s:1:\"c\";s:18:\"Loco_data_Settings\";s:1:\"v\";i:0;s:1:\"d\";a:11:{s:7:\"version\";s:5:\"2.1.0\";s:8:\"gen_hash\";b:0;s:9:\"use_fuzzy\";b:1;s:11:\"num_backups\";i:1;s:9:\"pot_alias\";a:3:{i:0;s:10:\"default.po\";i:1;s:8:\"en_US.po\";i:2;s:5:\"en.po\";}s:9:\"php_alias\";a:2:{i:0;s:3:\"php\";i:1;s:4:\"twig\";}s:10:\"fs_persist\";b:0;s:10:\"fs_protect\";i:1;s:12:\"max_php_size\";s:4:\"100K\";s:11:\"po_utf8_bom\";b:0;s:8:\"po_width\";s:2:\"79\";}}', 'yes'),
(332, '_transient_loco_po_bd5568da9fe72087063fd32ace45caaa', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:18:\"languages/en_GB.po\";s:5:\"bytes\";i:410031;s:5:\"mtime\";i:1518426741;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:2586;s:1:\"p\";i:2586;s:1:\"f\";i:0;}}}', 'yes'),
(333, '_transient_loco_po_a13ab5a6821451ef1617ce18b3e24c89', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:24:\"languages/admin-en_GB.po\";s:5:\"bytes\";i:479178;s:5:\"mtime\";i:1518426741;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:2427;s:1:\"p\";i:2427;s:1:\"f\";i:0;}}}', 'yes'),
(334, '_transient_loco_po_3fd164c2ad03d1dbdf834796a979a2a8', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:32:\"languages/admin-network-en_GB.po\";s:5:\"bytes\";i:58451;s:5:\"mtime\";i:1518426741;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:311;s:1:\"p\";i:311;s:1:\"f\";i:0;}}}', 'yes'),
(335, '_transient_loco_po_a3c8ba1be1046d5b4b0d1e9e18c27381', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:34:\"languages/plugins/akismet-en_GB.po\";s:5:\"bytes\";i:31228;s:5:\"mtime\";i:1518427122;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:197;s:1:\"p\";i:197;s:1:\"f\";i:0;}}}', 'yes'),
(336, '_transient_loco_po_5f16b3ccfb098b0266aa5aeed89970b2', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:41:\"languages/plugins/contact-form-7-en_GB.po\";s:5:\"bytes\";i:52671;s:5:\"mtime\";i:1518529870;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:329;s:1:\"p\";i:329;s:1:\"f\";i:0;}}}', 'yes'),
(337, '_transient_loco_po_59e3cf756ba31c28918456f1bf0f50ed', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:40:\"plugins/weglot/languages/weglot-en_GB.po\";s:5:\"bytes\";i:19417;s:5:\"mtime\";i:1518537800;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:171;s:1:\"p\";i:165;s:1:\"f\";i:0;}}}', 'yes'),
(338, '_transient_loco_po_869080e190ea00a61272afb3e0d09832', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:40:\"languages/plugins/wordpress-seo-en_GB.po\";s:5:\"bytes\";i:235600;s:5:\"mtime\";i:1518429148;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:1158;s:1:\"p\";i:1158;s:1:\"f\";i:0;}}}', 'yes'),
(339, '_transient_loco_po_f16a1b7a9f27bb0b1357985e99ad97ea', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:39:\"languages/themes/twentyfifteen-en_GB.po\";s:5:\"bytes\";i:9031;s:5:\"mtime\";i:1518427123;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:66;s:1:\"p\";i:66;s:1:\"f\";i:0;}}}', 'yes'),
(340, '_transient_loco_po_a3ace33d60a893eaa18f32edf25ae311', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:41:\"languages/themes/twentyseventeen-en_GB.po\";s:5:\"bytes\";i:10211;s:5:\"mtime\";i:1518427124;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:71;s:1:\"p\";i:71;s:1:\"f\";i:0;}}}', 'yes'),
(341, '_transient_loco_po_08f9e3a569d8be88fc82e2e7bdef9795', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:39:\"languages/themes/twentysixteen-en_GB.po\";s:5:\"bytes\";i:9497;s:5:\"mtime\";i:1518427125;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:70;s:1:\"p\";i:70;s:1:\"f\";i:0;}}}', 'yes'),
(405, 'wpseo_sitemap_75_cache_validator', '5cBOe', 'no'),
(419, 'wpseo_taxonomy_meta', 'a:1:{s:8:\"category\";a:1:{i:7;a:2:{s:13:\"wpseo_linkdex\";s:2:\"59\";s:19:\"wpseo_content_score\";s:2:\"60\";}}}', 'yes'),
(421, 'wpseo_sitemap_80_cache_validator', '5pUNW', 'no'),
(422, 'wpseo_sitemap_70_cache_validator', '5q21W', 'no'),
(424, 'category_children', 'a:0:{}', 'yes'),
(441, 'wpseo_sitemap_101_cache_validator', '6j9Zw', 'no'),
(486, '_site_transient_timeout_browser_66b088582da3ef81a72c671e4be0dfc8', '1521471810', 'no'),
(487, '_site_transient_browser_66b088582da3ef81a72c671e4be0dfc8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.146\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(506, 'new_admin_email', 'jonathanchemla55@gmail.com', 'yes'),
(527, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1521204897;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(528, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1521204896;s:7:\"checked\";a:6:{s:11:\"customtheme\";s:3:\"0.1\";s:24:\"splendid-portfolio-child\";s:5:\"0.0.1\";s:18:\"splendid-portfolio\";s:5:\"0.1.5\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(536, '_site_transient_timeout_theme_roots', '1521206696', 'no'),
(537, '_site_transient_theme_roots', 'a:6:{s:11:\"customtheme\";s:7:\"/themes\";s:24:\"splendid-portfolio-child\";s:7:\"/themes\";s:18:\"splendid-portfolio\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(539, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1521204900;s:8:\"response\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.1.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.1.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:7:\"default\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";s:7:\"default\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:54:\"<ul>\n<li>Various bug fixes and improvements</li>\n</ul>\";s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:17:\"weglot/weglot.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:20:\"w.org/plugins/weglot\";s:4:\"slug\";s:6:\"weglot\";s:6:\"plugin\";s:17:\"weglot/weglot.php\";s:11:\"new_version\";s:4:\"1.10\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/weglot/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/weglot.1.10.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/weglot/assets/icon-128x128.png?rev=1784581\";s:2:\"2x\";s:59:\"https://ps.w.org/weglot/assets/icon-256x256.png?rev=1784581\";s:7:\"default\";s:59:\"https://ps.w.org/weglot/assets/icon-256x256.png?rev=1784581\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/weglot/assets/banner-1544x500.jpg?rev=1784581\";s:2:\"1x\";s:61:\"https://ps.w.org/weglot/assets/banner-772x250.jpg?rev=1784581\";s:7:\"default\";s:62:\"https://ps.w.org/weglot/assets/banner-1544x500.jpg?rev=1784581\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"7.0.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.7.0.3.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-128x128.png?rev=1834347\";s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1834347\";s:7:\"default\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1834347\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1695112\";s:7:\"default\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112\";}s:11:\"banners_rtl\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1695112\";s:7:\"default\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112\";}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:35:\"date-translator/date-translator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/date-translator\";s:4:\"slug\";s:15:\"date-translator\";s:6:\"plugin\";s:35:\"date-translator/date-translator.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/date-translator/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/date-translator.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/date-translator/assets/icon-128x128.png?rev=1088715\";s:7:\"default\";s:68:\"https://ps.w.org/date-translator/assets/icon-128x128.png?rev=1088715\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/date-translator/assets/banner-772x250.png?rev=1083597\";s:7:\"default\";s:70:\"https://ps.w.org/date-translator/assets/banner-772x250.png?rev=1083597\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 6, '_edit_last', '1'),
(3, 6, '_edit_lock', '1518628982:1'),
(12, 12, '_wp_attached_file', '2018/02/photo2.jpg'),
(13, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:18:\"2018/02/photo2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"photo2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"photo2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(14, 13, '_edit_last', '1'),
(15, 13, '_edit_lock', '1519154853:1'),
(16, 15, '_menu_item_type', 'post_type'),
(17, 15, '_menu_item_menu_item_parent', '0'),
(18, 15, '_menu_item_object_id', '13'),
(19, 15, '_menu_item_object', 'page'),
(20, 15, '_menu_item_target', ''),
(21, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 15, '_menu_item_xfn', ''),
(23, 15, '_menu_item_url', ''),
(36, 6, '_yoast_wpseo_primary_category', ''),
(37, 6, '_yoast_wpseo_focuskw_text_input', 'wordpress'),
(38, 6, '_yoast_wpseo_focuskw', 'wordpress'),
(39, 6, '_yoast_wpseo_linkdex', '38'),
(40, 6, '_yoast_wpseo_content_score', '90'),
(45, 19, '_edit_last', '1'),
(46, 19, '_edit_lock', '1518628954:1'),
(47, 19, '_yoast_wpseo_content_score', '30'),
(48, 19, '_yoast_wpseo_primary_category', ''),
(91, 13, '_wp_page_template', 'default'),
(92, 13, '_yoast_wpseo_content_score', '60'),
(94, 34, '_wp_attached_file', '2018/02/languages.png'),
(95, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:298;s:6:\"height\";i:190;s:4:\"file\";s:21:\"2018/02/languages.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"languages-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 36, '_wp_attached_file', '2018/02/screenshot.png'),
(97, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1652;s:4:\"file\";s:22:\"2018/02/screenshot.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"screenshot-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"screenshot-300x258.png\";s:5:\"width\";i:300;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"screenshot-768x661.png\";s:5:\"width\";i:768;s:6:\"height\";i:661;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"screenshot-1024x881.png\";s:5:\"width\";i:1024;s:6:\"height\";i:881;s:9:\"mime-type\";s:9:\"image/png\";}s:33:\"splendid-portfolio-featured-image\";a:4:{s:4:\"file\";s:23:\"screenshot-1200x372.png\";s:5:\"width\";i:1200;s:6:\"height\";i:372;s:9:\"mime-type\";s:9:\"image/png\";}s:36:\"splendid-portfolio-jetpack-portfolio\";a:4:{s:4:\"file\";s:23:\"screenshot-1200x630.png\";s:5:\"width\";i:1200;s:6:\"height\";i:630;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 37, '_wp_attached_file', '2018/02/screenshot-1.png'),
(99, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1117;s:4:\"file\";s:24:\"2018/02/screenshot-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"screenshot-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"screenshot-1-300x175.png\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"screenshot-1-768x447.png\";s:5:\"width\";i:768;s:6:\"height\";i:447;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"screenshot-1-1024x596.png\";s:5:\"width\";i:1024;s:6:\"height\";i:596;s:9:\"mime-type\";s:9:\"image/png\";}s:33:\"splendid-portfolio-featured-image\";a:4:{s:4:\"file\";s:25:\"screenshot-1-1200x372.png\";s:5:\"width\";i:1200;s:6:\"height\";i:372;s:9:\"mime-type\";s:9:\"image/png\";}s:36:\"splendid-portfolio-jetpack-portfolio\";a:4:{s:4:\"file\";s:25:\"screenshot-1-1200x630.png\";s:5:\"width\";i:1200;s:6:\"height\";i:630;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 46, '_edit_last', '1'),
(122, 46, '_edit_lock', '1519161062:1'),
(123, 47, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(124, 47, '_mail', 'a:8:{s:7:\"subject\";s:32:\"Wordpress Front \"[your-subject]\"\";s:6:\"sender\";s:40:\"[your-name] <jonathanchemla55@gmail.com>\";s:4:\"body\";s:186:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Wordpress Front (http://localhost/wordpress_front)\";s:9:\"recipient\";s:26:\"jonathanchemla55@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(125, 47, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"Wordpress Front \"[your-subject]\"\";s:6:\"sender\";s:44:\"Wordpress Front <jonathanchemla55@gmail.com>\";s:4:\"body\";s:128:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Wordpress Front (http://localhost/wordpress_front)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:36:\"Reply-To: jonathanchemla55@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(126, 47, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(127, 47, '_additional_settings', NULL),
(128, 47, '_locale', 'en_GB'),
(129, 50, '_edit_last', '1'),
(130, 50, '_wp_page_template', 'default'),
(131, 50, '_yoast_wpseo_content_score', '30'),
(132, 50, '_edit_lock', '1519159824:1'),
(143, 46, '_wp_page_template', 'default'),
(144, 46, '_yoast_wpseo_content_score', '60'),
(145, 55, '_menu_item_type', 'post_type'),
(146, 55, '_menu_item_menu_item_parent', '0'),
(147, 55, '_menu_item_object_id', '46'),
(148, 55, '_menu_item_object', 'page'),
(149, 55, '_menu_item_target', ''),
(150, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 55, '_menu_item_xfn', ''),
(152, 55, '_menu_item_url', ''),
(174, 60, '_edit_last', '1'),
(175, 60, '_edit_lock', '1519147612:1'),
(178, 60, '_yoast_wpseo_content_score', '30'),
(179, 60, '_yoast_wpseo_primary_category', '4'),
(182, 62, '_menu_item_type', 'taxonomy'),
(183, 62, '_menu_item_menu_item_parent', '0'),
(184, 62, '_menu_item_object_id', '4'),
(185, 62, '_menu_item_object', 'category'),
(186, 62, '_menu_item_target', ''),
(187, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 62, '_menu_item_xfn', ''),
(189, 62, '_menu_item_url', ''),
(191, 63, '_edit_last', '1'),
(192, 63, '_edit_lock', '1519155266:1'),
(195, 63, '_yoast_wpseo_content_score', '60'),
(196, 63, '_yoast_wpseo_primary_category', '4'),
(201, 67, '_edit_last', '1'),
(202, 67, '_edit_lock', '1519154969:1'),
(203, 68, '_wp_attached_file', '2018/02/piano.jpg'),
(204, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:2600;s:4:\"file\";s:17:\"2018/02/piano.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"piano-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"piano-222x300.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"piano-768x1040.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1040;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"piano-756x1024.jpg\";s:5:\"width\";i:756;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"splendid-portfolio-featured-image\";a:4:{s:4:\"file\";s:18:\"piano-1200x372.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:36:\"splendid-portfolio-jetpack-portfolio\";a:4:{s:4:\"file\";s:18:\"piano-1200x630.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:630;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 67, '_yoast_wpseo_content_score', '30'),
(208, 67, '_yoast_wpseo_primary_category', '4'),
(223, 19, '_wp_trash_meta_status', 'publish'),
(224, 19, '_wp_trash_meta_time', '1518629101'),
(225, 19, '_wp_desired_post_slug', 'mon-premier-article-du-prof'),
(226, 6, '_wp_trash_meta_status', 'publish'),
(227, 6, '_wp_trash_meta_time', '1518629131'),
(228, 6, '_wp_desired_post_slug', '6'),
(229, 1, '_wp_trash_meta_status', 'publish'),
(230, 1, '_wp_trash_meta_time', '1518629134'),
(231, 1, '_wp_desired_post_slug', 'hello-world'),
(232, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(233, 75, '_edit_last', '1'),
(234, 75, '_edit_lock', '1519159813:1'),
(237, 75, '_yoast_wpseo_primary_category', '6'),
(240, 75, '_yoast_wpseo_content_score', '60'),
(241, 77, '_menu_item_type', 'taxonomy'),
(242, 77, '_menu_item_menu_item_parent', '0'),
(243, 77, '_menu_item_object_id', '6'),
(244, 77, '_menu_item_object', 'category'),
(245, 77, '_menu_item_target', ''),
(246, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(247, 77, '_menu_item_xfn', ''),
(248, 77, '_menu_item_url', ''),
(264, 67, '_wp_old_date', '2018-02-01'),
(267, 60, '_wp_old_date', '2018-02-07'),
(283, 81, '_edit_last', '1'),
(284, 81, '_edit_lock', '1519157672:1'),
(285, 81, '_wp_page_template', 'default'),
(286, 81, '_yoast_wpseo_content_score', '30'),
(287, 84, '_menu_item_type', 'post_type'),
(288, 84, '_menu_item_menu_item_parent', '0'),
(289, 84, '_menu_item_object_id', '81'),
(290, 84, '_menu_item_object', 'page'),
(291, 84, '_menu_item_target', ''),
(292, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(293, 84, '_menu_item_xfn', ''),
(294, 84, '_menu_item_url', ''),
(295, 84, '_menu_item_orphaned', '1519148144'),
(296, 85, '_edit_last', '1'),
(297, 85, '_edit_lock', '1519148134:1'),
(298, 85, '_wp_page_template', 'default'),
(299, 85, '_yoast_wpseo_content_score', '60'),
(300, 87, '_menu_item_type', 'post_type'),
(301, 87, '_menu_item_menu_item_parent', '0'),
(302, 87, '_menu_item_object_id', '85'),
(303, 87, '_menu_item_object', 'page'),
(304, 87, '_menu_item_target', ''),
(305, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(306, 87, '_menu_item_xfn', ''),
(307, 87, '_menu_item_url', ''),
(309, 88, '_menu_item_type', 'post_type'),
(310, 88, '_menu_item_menu_item_parent', '0'),
(311, 88, '_menu_item_object_id', '81'),
(312, 88, '_menu_item_object', 'page'),
(313, 88, '_menu_item_target', ''),
(314, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(315, 88, '_menu_item_xfn', ''),
(316, 88, '_menu_item_url', ''),
(318, 90, '_wp_attached_file', '2018/02/ma_photo-1.jpg'),
(319, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:22:\"2018/02/ma_photo-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ma_photo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ma_photo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"splendid-portfolio-featured-image\";a:4:{s:4:\"file\";s:22:\"ma_photo-1-512x372.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(322, 63, '_wp_old_date', '2018-01-15'),
(323, 101, '_edit_last', '1'),
(324, 101, '_edit_lock', '1519159543:1'),
(325, 102, '_wp_attached_file', '2018/02/capture_decranRSX101.jpg'),
(326, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:797;s:6:\"height\";i:947;s:4:\"file\";s:32:\"2018/02/capture_decranRSX101.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"capture_decranRSX101-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"capture_decranRSX101-252x300.jpg\";s:5:\"width\";i:252;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"capture_decranRSX101-768x913.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:913;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"splendid-portfolio-featured-image\";a:4:{s:4:\"file\";s:32:\"capture_decranRSX101-797x372.jpg\";s:5:\"width\";i:797;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:36:\"splendid-portfolio-jetpack-portfolio\";a:4:{s:4:\"file\";s:32:\"capture_decranRSX101-797x630.jpg\";s:5:\"width\";i:797;s:6:\"height\";i:630;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(327, 103, '_wp_attached_file', '2018/02/capture_decranNFP107.jpg'),
(328, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:795;s:6:\"height\";i:963;s:4:\"file\";s:32:\"2018/02/capture_decranNFP107.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"capture_decranNFP107-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"capture_decranNFP107-248x300.jpg\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"capture_decranNFP107-768x930.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:930;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:33:\"splendid-portfolio-featured-image\";a:4:{s:4:\"file\";s:32:\"capture_decranNFP107-795x372.jpg\";s:5:\"width\";i:795;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:36:\"splendid-portfolio-jetpack-portfolio\";a:4:{s:4:\"file\";s:32:\"capture_decranNFP107-795x630.jpg\";s:5:\"width\";i:795;s:6:\"height\";i:630;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(331, 101, '_yoast_wpseo_content_score', '30'),
(332, 101, '_yoast_wpseo_primary_category', '6'),
(337, 101, '_wp_old_date', '2018-02-20'),
(348, 116, '_wp_attached_file', '2018/02/email-1.jpg'),
(349, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:227;s:4:\"file\";s:19:\"2018/02/email-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"email-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(350, 117, '_wp_attached_file', '2018/02/linkedin.png'),
(351, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:408;s:6:\"height\";i:124;s:4:\"file\";s:20:\"2018/02/linkedin.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"linkedin-150x124.png\";s:5:\"width\";i:150;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"linkedin-300x91.png\";s:5:\"width\";i:300;s:6:\"height\";i:91;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-12 09:18:35', '2018-02-12 09:18:35', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-02-14 17:25:34', '2018-02-14 17:25:34', '', 0, 'http://localhost/wordpress_front/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-12 09:18:35', '2018-02-12 09:18:35', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Leicester City, XYZ employs over 2,000 people and does all kinds of awesome things for the Leicester community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress_front/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-02-12 09:18:35', '2018-02-12 09:18:35', '', 0, 'http://localhost/wordpress_front/?page_id=2', 0, 'page', '', 0),
(6, 1, '2018-02-12 09:30:34', '2018-02-12 09:30:34', '<h2>Mon premier titre</h2>\r\nCeci est mon premier article en WordPress. Je pars à la conquête du Web.\r\n<h2>Mon deuxième titre</h2>\r\nCeci est ma <em>deuxième</em> section.\r\n<h2><img class=\"alignnone wp-image-10\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/rainbow-300x138.png\" alt=\"\" width=\"359\" height=\"165\" /></h2>', 'Mon premier article WordPress', '', 'trash', 'open', 'open', '', '6__trashed', '', '', '2018-02-14 17:25:31', '2018-02-14 17:25:31', '', 0, 'http://localhost/wordpress_front/?p=6', 0, 'post', '', 0),
(7, 1, '2018-02-12 09:29:33', '2018-02-12 09:29:33', '<h2>Mon premier titre</h2>\r\nCeci est mon premier article en WordPress. Je pars à la conquête du Web.\r\n<h2>Mon deuxième titre</h2>\r\nCeci est ma <em>deuxième</em> section.\r\n\r\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 09:29:33', '2018-02-12 09:29:33', '', 6, 'http://localhost/wordpress_front/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-02-12 09:39:00', '2018-02-12 09:39:00', '<h2>Mon premier titre</h2>\nCeci est mon premier article en WordPress. Je pars à la conquête du Web.\n<h2>Mon deuxième titre</h2>\nCeci est ma <em>deuxième</em> section.\n<h2><img class=\"alignnone  wp-image-10\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/rainbow-300x138.png\" alt=\"\" width=\"359\" height=\"165\" /></h2>', 'Mon premier article WordPress', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2018-02-12 09:39:00', '2018-02-12 09:39:00', '', 6, 'http://localhost/wordpress_front/2018/02/12/6-autosave-v1/', 0, 'revision', '', 0),
(9, 1, '2018-02-12 09:35:58', '2018-02-12 09:35:58', '<h2>Mon premier titre</h2>\r\nCeci est mon premier article en WordPress. Je pars à la conquête du Web.\r\n<h2>Mon deuxième titre</h2>\r\nCeci est ma <em>deuxième</em> section.\r\n\r\n&nbsp;', 'Mon premier article WordPress', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 09:35:58', '2018-02-12 09:35:58', '', 6, 'http://localhost/wordpress_front/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-02-12 09:39:06', '2018-02-12 09:39:06', '<h2>Mon premier titre</h2>\r\nCeci est mon premier article en WordPress. Je pars à la conquête du Web.\r\n<h2>Mon deuxième titre</h2>\r\nCeci est ma <em>deuxième</em> section.\r\n<h2><img class=\"alignnone  wp-image-10\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/rainbow-300x138.png\" alt=\"\" width=\"359\" height=\"165\" /></h2>', 'Mon premier article WordPress', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 09:39:06', '2018-02-12 09:39:06', '', 6, 'http://localhost/wordpress_front/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-02-12 09:42:28', '2018-02-12 09:42:28', '', 'photo2', '', 'inherit', 'open', 'closed', '', 'photo2', '', '', '2018-02-12 09:42:28', '2018-02-12 09:42:28', '', 6, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/photo2.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-02-12 09:46:07', '2018-02-12 09:46:07', '<h2></h2>\r\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n<h2></h2>\r\n<h2 style=\"text-align: center;\"><em>Nombreux sont les égarements de l\'homme, notre vocation nous rattrape toujours !</em></h2>\r\n&nbsp;\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><strong>Ma passion pour les messages codés,</strong> est apparue dès mon plus jeune âge : en centre aéré, mes jeux préférés étaient évidemment ... les rébus et les chasses au trésor!\r\n\r\nEh oui, je suis un chercheur acharné! :)\r\n\r\nDès l\'obtention de mon Baccalauréat, ma première motivation était de me marier. J\'obtai donc pour des études courtes et ciblées:  BTS Informatique, option développeur d\'applications &amp; cours du soir, avec le CNAM.\r\n\r\nPuis, au sortir de mes études, en 2006, l\'étroitesse du marché dans cette branche, ainsi que mon  manque d\'expérience, me poussèrent à suivre les recommandations de mon cousin. Je m\'orientai vers le commerce.\r\n\r\nCurieusement, je ressentis de plus en plus, avec le temps, le <strong>besoin d\'automatiser</strong> toutes mes tâches. Si bien que je mis en place, pour mon entreprise, des fichiers Excel, reliés ou non à la boite email Outlook.\r\n\r\nHappé par la programmation informatique, ma reconversion professionnelle fût évidente. je commencai à suivre des cours en ligne et découvris le langage PHP.\r\n\r\nA présent, ma soif de découverte me pousse chaque jour à explorer de nouveaux langages et renforcer mes acquis.\r\n\r\nJe vous propose de découvrir mon <a style=\"font-family: inherit; font-size: inherit;\" href=\"http://: http://localhost/wordpress_front/wp-content/uploads/2018/02/CV/cv.html\">CV</a><span style=\"font-family: inherit; font-size: inherit;\"> en ligne, ou à le télécharger, en <a href=\"http://CV de Jonathan CHEMLA\">PDF</a>.</span>\r\n\r\nA bientôt,<img class=\"size-medium wp-image-90 aligncenter\" style=\"font-family: inherit; font-size: inherit;\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/ma_photo-1-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\n&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Qui suis-je ?', '', 'publish', 'closed', 'closed', '', 'ma-super-page', '', '', '2018-02-20 19:29:15', '2018-02-20 19:29:15', '', 0, 'http://localhost/wordpress_front/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-02-12 09:46:07', '2018-02-12 09:46:07', '<h2>Ma première page</h2>\r\nJe suis une page wordpress. J\'ai droit à un lien permanent et je peux être accessible via un menu.', 'Ma super page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-12 09:46:07', '2018-02-12 09:46:07', '', 13, 'http://localhost/wordpress_front/2018/02/12/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-02-12 09:48:47', '2018-02-12 09:48:47', '', 'ACCUEIL', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-02-20 19:30:29', '2018-02-20 19:30:29', '', 0, 'http://localhost/wordpress_front/?p=15', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-02-12 14:06:11', '2018-02-12 14:06:11', 'je suis un article', 'Mon premier article du prof', '', 'trash', 'open', 'open', '', 'mon-premier-article-du-prof__trashed', '', '', '2018-02-14 17:25:01', '2018-02-14 17:25:01', '', 0, 'http://localhost/wordpress_front/?p=19', 0, 'post', '', 0),
(20, 1, '2018-02-12 14:06:07', '2018-02-12 14:06:07', 'je suis un article', 'Mon premier article du prof', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-02-12 14:06:07', '2018-02-12 14:06:07', '', 19, 'http://localhost/wordpress_front/19-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-02-20 19:29:13', '2018-02-20 19:29:13', '<h2></h2>\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\n<h2></h2>\n<h2 style=\"text-align: center;\"><em>Nombreux sont les égarements de l\'homme, notre vocation nous rattrape toujours !</em></h2>\n&nbsp;\n<table>\n<tbody>\n<tr>\n<td><strong>Ma passion pour les messages codés,</strong> est apparue dès mon plus jeune âge : en centre aéré, mes jeux préférés étaient évidemment ... les rébus et les chasses au trésor!\n\nEh oui, je suis un chercheur acharné! :)\n\nDès l\'obtention de mon Baccalauréat, ma première motivation était de me marier. J\'obtai donc pour des études courtes et ciblées:  BTS Informatique, option développeur d\'applications &amp; cours du soir, avec le CNAM.\n\nPuis, au sortir de mes études, en 2006, l\'étroitesse du marché dans cette branche, ainsi que mon  manque d\'expérience, me poussèrent à suivre les recommandations de mon cousin. Je m\'orientai vers le commerce.\n\nCurieusement, je ressentis de plus en plus, avec le temps, le <strong>besoin d\'automatiser</strong> toutes mes tâches. Si bien que je mis en place, pour mon entreprise, des fichiers Excel, reliés ou non à la boite email Outlook.\n\nHappé par la programmation informatique, ma reconversion professionnelle fût évidente. je commencai à suivre des cours en ligne et découvris le langage PHP.\n\nA présent, ma soif de découverte me pousse chaque jour à explorer de nouveaux langages et renforcer mes acquis.\n\nJe vous propose de découvrir mon <a style=\"font-family: inherit; font-size: inherit;\" href=\"http://: http://localhost/wordpress_front/wp-content/uploads/2018/02/CV/cv.html\">CV</a><span style=\"font-family: inherit; font-size: inherit;\"> en ligne, ou à le télécharger, en <a href=\"http://CV de Jonathan CHEMLA\">PDF</a>.</span>\n\nA bientôt,<img class=\"size-medium wp-image-90 aligncenter\" style=\"font-family: inherit; font-size: inherit;\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/ma_photo-1-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\n\n&nbsp;</td>\n</tr>\n</tbody>\n</table>', 'Qui suis-je ?', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2018-02-20 19:29:13', '2018-02-20 19:29:13', '', 13, 'http://localhost/wordpress_front/13-autosave-v1/', 0, 'revision', '', 0),
(32, 1, '2018-02-13 11:43:16', '2018-02-13 11:43:16', '<h2>Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h3>EXPERIENCE PROFESSIONNELLE</h3>\r\n<h4>Depuis Novembre 2017 : Refonte du site internet SAPHIR</h4>\r\n⇨ Création du site internet avec intégration Base de Données\r\n⦁ Création de pages HTML/ CSS\r\n⦁ Intégration de code PHP/MYSQL\r\n⦁ Mise en relation avec une base de données\r\n<h4>De 2011 à 2017 : Chargé de relation clients ETTER Vente et conseils ouverture de comptes clients :</h4>\r\n⦁ Prospection et Rendez-vous, physique et téléphonique,\r\n⦁ Création et utilisation de fonctions et macros Excel pour mes tâches automatisées : bon de commande, tableau des marges, Emailing.\r\n<h4>De Février à Avril 2011 : Responsable Clientèle WebMarketing AVENT MEDIA</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection téléphonique,\r\n⦁ Prise de rendez-vous au téléphone ou chez Avent Media,\r\n⦁ Présentation de la société à des prospects en B to B.\r\n<h4>De 2006 à 2011 : Commercial en Fournitures de Bureau chez BUROSSAF et SOPAZ</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection physique et téléphonique,\r\n⦁ Présentation de la société à des prospects en B to B et B to C\r\n<h3>PROJETS REALISES</h3>\r\nMy licorne, Les chats,\r\n<h3>FORMATIONS</h3>\r\n2018 : Formalisation Professionnalisante WebForce3 intensive: 490 heures.\r\nLabélisation et Certification en languages Front-end/Back-end.\r\n2006-2007 : Unités de Valeur obtenues (au CNAM) : RSX101 et NFP107\r\n2005 : BTS Informatique de Gestion option développeur d’applications (CUGI)\r\n<h3>DIVERS</h3>\r\nAnglais : Fluent\r\nHOBBY :Piano, histoire, Archéologie, piscine,', 'Bienvenue sur mon port-folio', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-13 11:43:16', '2018-02-13 11:43:16', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-02-13 11:45:52', '2018-02-13 11:45:52', '', 'languages', '', 'inherit', 'open', 'closed', '', 'languages', '', '', '2018-02-13 11:45:52', '2018-02-13 11:45:52', '', 13, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-02-13 11:46:10', '2018-02-13 11:46:10', '<h2></h2>\r\n<h2><img class=\"alignnone size-full wp-image-34\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n<h2>Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h3>EXPERIENCE PROFESSIONNELLE</h3>\r\n<h4>Depuis Novembre 2017 : Refonte du site internet SAPHIR</h4>\r\n⇨ Création du site internet avec intégration Base de Données\r\n⦁ Création de pages HTML/ CSS\r\n⦁ Intégration de code PHP/MYSQL\r\n⦁ Mise en relation avec une base de données\r\n<h4>De 2011 à 2017 : Chargé de relation clients ETTER Vente et conseils ouverture de comptes clients :</h4>\r\n⦁ Prospection et Rendez-vous, physique et téléphonique,\r\n⦁ Création et utilisation de fonctions et macros Excel pour mes tâches automatisées : bon de commande, tableau des marges, Emailing.\r\n<h4>De Février à Avril 2011 : Responsable Clientèle WebMarketing AVENT MEDIA</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection téléphonique,\r\n⦁ Prise de rendez-vous au téléphone ou chez Avent Media,\r\n⦁ Présentation de la société à des prospects en B to B.\r\n<h4>De 2006 à 2011 : Commercial en Fournitures de Bureau chez BUROSSAF et SOPAZ</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection physique et téléphonique,\r\n⦁ Présentation de la société à des prospects en B to B et B to C\r\n<h3>PROJETS REALISES</h3>\r\nMy licorne, Les chats,\r\n<h3>FORMATIONS</h3>\r\n2018 : Formalisation Professionnalisante WebForce3 intensive: 490 heures.\r\nLabélisation et Certification en languages Front-end/Back-end.\r\n2006-2007 : Unités de Valeur obtenues (au CNAM) : RSX101 et NFP107\r\n2005 : BTS Informatique de Gestion option développeur d’applications (CUGI)\r\n<h3>DIVERS</h3>\r\nAnglais : Fluent\r\nHOBBY :Piano, histoire, Archéologie, piscine,', 'Bienvenue sur mon port-folio', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-13 11:46:10', '2018-02-13 11:46:10', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-02-13 11:48:34', '2018-02-13 11:48:34', '', 'screenshot', '', 'inherit', 'open', 'closed', '', 'screenshot', '', '', '2018-02-13 14:27:39', '2018-02-13 14:27:39', '', 60, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/screenshot.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2018-02-13 11:49:19', '2018-02-13 11:49:19', '', 'screenshot', '', 'inherit', 'open', 'closed', '', 'screenshot-2', '', '', '2018-02-13 14:30:26', '2018-02-13 14:30:26', '', 63, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/screenshot-1.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2018-02-13 13:30:05', '2018-02-13 13:30:05', '<h2></h2>\r\n<h2>Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n<h3>EXPERIENCE PROFESSIONNELLE</h3>\r\n<h4>Depuis Novembre 2017 : Refonte du site internet SAPHIR</h4>\r\n⇨ Création du site internet avec intégration Base de Données\r\n⦁ Création de pages HTML/ CSS\r\n⦁ Intégration de code PHP/MYSQL\r\n⦁ Mise en relation avec une base de données\r\n<h4>De 2011 à 2017 : Chargé de relation clients ETTER Vente et conseils ouverture de comptes clients :</h4>\r\n⦁ Prospection et Rendez-vous, physique et téléphonique,\r\n⦁ Création et utilisation de fonctions et macros Excel pour mes tâches automatisées : bon de commande, tableau des marges, Emailing.\r\n<h4>De Février à Avril 2011 : Responsable Clientèle WebMarketing AVENT MEDIA</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection téléphonique,\r\n⦁ Prise de rendez-vous au téléphone ou chez Avent Media,\r\n⦁ Présentation de la société à des prospects en B to B.\r\n<h4>De 2006 à 2011 : Commercial en Fournitures de Bureau chez BUROSSAF et SOPAZ</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection physique et téléphonique,\r\n⦁ Présentation de la société à des prospects en B to B et B to C\r\n<h3>PROJETS REALISES</h3>\r\nMy licorne, Les chats,\r\n<h3>FORMATIONS</h3>\r\n2018 : Formalisation Professionnalisante WebForce3 intensive: 490 heures.\r\nLabélisation et Certification en languages Front-end/Back-end.\r\n2006-2007 : Unités de Valeur obtenues (au CNAM) : RSX101 et NFP107\r\n2005 : BTS Informatique de Gestion option développeur d’applications (CUGI)\r\n<h3>DIVERS</h3>\r\nAnglais : Fluent\r\nHOBBY :Piano, histoire, Archéologie, piscine,', 'Mon C.V.', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-13 13:30:05', '2018-02-13 13:30:05', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-02-13 13:58:55', '2018-02-13 13:58:55', '&nbsp;\r\n<p style=\"text-align: right;\">Me contacter par mail : <a href=\"mailto:jonathanchemla55@gmail.com\"><img class=\"alignnone wp-image-116\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/email-1.jpg\" alt=\"\" width=\"36\" height=\"37\" />,</a>\r\nPour me retrouver sur :<img class=\"alignnone wp-image-117\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/linkedin-300x91.png\" alt=\"\" width=\"69\" height=\"21\" />,\r\nOu par téléphone : 07 69 81 68 17.</p>\r\n&nbsp;\r\n<h2><strong>Laissez-moi votre message ci-dessous:</strong>\r\n[contact-form-7 id=\"47\" title=\"Contact form 1\"]</h2>', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'moncontact', '', '', '2018-02-20 21:11:58', '2018-02-20 21:11:58', '', 0, 'http://localhost/wordpress_front/?page_id=46', 0, 'page', '', 0),
(47, 1, '2018-02-13 13:51:16', '2018-02-13 13:51:16', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nWordpress Front \"[your-subject]\"\n[your-name] <jonathanchemla55@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Wordpress Front (http://localhost/wordpress_front)\njonathanchemla55@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nWordpress Front \"[your-subject]\"\nWordpress Front <jonathanchemla55@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Wordpress Front (http://localhost/wordpress_front)\n[your-email]\nReply-To: jonathanchemla55@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-02-13 13:51:16', '2018-02-13 13:51:16', '', 0, 'http://localhost/wordpress_front/?post_type=wpcf7_contact_form&p=47', 0, 'wpcf7_contact_form', '', 0),
(50, 1, '2018-02-13 13:53:13', '2018-02-13 13:53:13', '[contact-form-7 id=\"47\" title=\"Contact form 1\"]', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-02-13 13:53:13', '2018-02-13 13:53:13', '', 0, 'http://localhost/wordpress_front/?page_id=50', 0, 'page', '', 0),
(51, 1, '2018-02-13 13:53:13', '2018-02-13 13:53:13', '[contact-form-7 id=\"47\" title=\"Contact form 1\"]', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-02-13 13:53:13', '2018-02-13 13:53:13', '', 50, 'http://localhost/wordpress_front/50-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-02-13 13:58:55', '2018-02-13 13:58:55', '[contact-form-7 id=\"47\" title=\"Contact form 1\"]MonContact', 'MonContact', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-13 13:58:55', '2018-02-13 13:58:55', '', 46, 'http://localhost/wordpress_front/46-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-02-13 14:00:44', '2018-02-13 14:00:44', '', 'CONTACT', '', 'publish', 'closed', 'closed', '', '55', '', '', '2018-02-20 19:30:30', '2018-02-20 19:30:30', '', 0, 'http://localhost/wordpress_front/?p=55', 6, 'nav_menu_item', '', 0),
(60, 1, '2018-02-01 14:27:50', '2018-02-01 14:27:50', '<img class=\"alignnone size-medium wp-image-36\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/screenshot-300x258.png\" alt=\"\" width=\"300\" height=\"258\" />\r\n\r\nCe site responsive est réalisé simplement en HTML/CSS.\r\n\r\nj\'y ai importé :\r\n<ul>\r\n 	<li>quatre photos de licornes auxquelles j\'y ai attaché une legende(FigCaption),</li>\r\n 	<li>une carte GoogleMap,</li>\r\n 	<li>un simple formulaire d\'inscription à ma Newsletter.</li>\r\n</ul>', 'Les Licornes', '', 'publish', 'open', 'open', '', 'les-licornes', '', '', '2018-02-20 17:25:18', '2018-02-20 17:25:18', '', 0, 'http://localhost/wordpress_front/?p=60', 0, 'post', '', 0),
(61, 1, '2018-02-13 14:27:50', '2018-02-13 14:27:50', '<img class=\"alignnone size-medium wp-image-36\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/screenshot-300x258.png\" alt=\"\" width=\"300\" height=\"258\" />', 'Les Licornes', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-02-13 14:27:50', '2018-02-13 14:27:50', '', 60, 'http://localhost/wordpress_front/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-02-13 14:29:36', '2018-02-13 14:29:36', 'Travaux personnels', 'REALISATIONS', '', 'publish', 'closed', 'closed', '', 'realisations', '', '', '2018-02-20 19:30:29', '2018-02-20 19:30:29', '', 0, 'http://localhost/wordpress_front/?p=62', 3, 'nav_menu_item', '', 0),
(63, 1, '2018-02-15 14:37:28', '2018-02-15 14:37:28', '<img class=\"alignnone size-medium wp-image-37\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/screenshot-1-300x175.png\" alt=\"\" width=\"300\" height=\"175\" />\r\n\r\nCe site responsive est réalisé en Bootstrap. Il comporte :\r\n\r\n-un formulaire jQuery,\r\n\r\n-un carousel,\r\n\r\nAu passage de la souris sur la tête de chat, celle-ci change de couleur.', 'Les Chats', '', 'publish', 'open', 'open', '', 'les-chats', '', '', '2018-02-20 19:34:26', '2018-02-20 19:34:26', '', 0, 'http://localhost/wordpress_front/?p=63', 0, 'post', '', 0),
(64, 1, '2018-02-13 14:37:28', '2018-02-13 14:37:28', '<img class=\"alignnone size-medium wp-image-37\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/screenshot-1-300x175.png\" alt=\"\" width=\"300\" height=\"175\" />\r\n\r\nCe site responsive est réalisé en Bootstrap. Il comporte :\r\n\r\n-un formulaire jQuery,\r\n\r\n-un carousel,\r\n\r\nAu passage de la souris sur la tête de chat, celle-ci change de couleur.', 'Les Chats', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2018-02-13 14:37:28', '2018-02-13 14:37:28', '', 63, 'http://localhost/wordpress_front/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-02-13 14:41:11', '2018-02-13 14:41:11', '<img class=\"alignnone size-medium wp-image-36\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/screenshot-300x258.png\" alt=\"\" width=\"300\" height=\"258\" />\n\nCe site responsive est réalisé simplement en HTML/CSS.\n\nj\'y ai importé :\n<ul>\n 	<li>quatre photos de licornes auxquelles j\'y ai attaché une legende(FigCaption).</li>\n 	<li>une carte Google</li>\n</ul>', 'Les Licornes', '', 'inherit', 'closed', 'closed', '', '60-autosave-v1', '', '', '2018-02-13 14:41:11', '2018-02-13 14:41:11', '', 60, 'http://localhost/wordpress_front/60-autosave-v1/', 0, 'revision', '', 0),
(66, 1, '2018-02-13 14:43:05', '2018-02-13 14:43:05', '<img class=\"alignnone size-medium wp-image-36\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/screenshot-300x258.png\" alt=\"\" width=\"300\" height=\"258\" />\r\n\r\nCe site responsive est réalisé simplement en HTML/CSS.\r\n\r\nj\'y ai importé :\r\n<ul>\r\n 	<li>quatre photos de licornes auxquelles j\'y ai attaché une legende(FigCaption),</li>\r\n 	<li>une carte GoogleMap,</li>\r\n 	<li>un simple formulaire d\'inscription à ma Newsletter.</li>\r\n</ul>', 'Les Licornes', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-02-13 14:43:05', '2018-02-13 14:43:05', '', 60, 'http://localhost/wordpress_front/60-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-02-07 15:03:36', '2018-02-07 15:03:36', '<img class=\"alignnone size-medium wp-image-68\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/piano-222x300.jpg\" alt=\"\" width=\"222\" height=\"300\" />\r\n\r\nComposition de mon site:\r\n<ul>\r\n 	<li>Une premiere image, qui occupe 100% de la taille de l\'écran,</li>\r\n 	<li>Une première section de deux vidéos de cours, disponibles en ligne,</li>\r\n 	<li>Une deuxieme section de quatre photos,</li>\r\n 	<li>Une dernière section de deux autre vidéos, importées directement de Youtube.</li>\r\n</ul>\r\n&nbsp;', 'Piano Piano', '', 'publish', 'open', 'open', '', 'piano-piano', '', '', '2018-02-20 16:28:24', '2018-02-20 16:28:24', '', 0, 'http://localhost/wordpress_front/?p=67', 0, 'post', '', 0),
(68, 1, '2018-02-13 14:57:41', '2018-02-13 14:57:41', '', 'piano', '', 'inherit', 'open', 'closed', '', 'piano', '', '', '2018-02-13 14:57:41', '2018-02-13 14:57:41', '', 67, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/piano.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-02-13 15:03:36', '2018-02-13 15:03:36', '<img class=\"alignnone size-medium wp-image-68\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/piano-222x300.jpg\" alt=\"\" width=\"222\" height=\"300\" />\r\n\r\nComposition de mon site:\r\n<ul>\r\n 	<li>Une premiere image, qui occupe 100% de la taille de l\'écran,</li>\r\n 	<li>Une première section de deux vidéos de cours, disponibles en ligne,</li>\r\n 	<li>Une deuxieme section de quatre photos,</li>\r\n 	<li>Une dernière section de deux autre vidéos, importées directement de Youtube.</li>\r\n</ul>\r\n&nbsp;', 'Piano Piano', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-02-13 15:03:36', '2018-02-13 15:03:36', '', 67, 'http://localhost/wordpress_front/67-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-02-14 17:25:34', '2018-02-14 17:25:34', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-14 17:25:34', '2018-02-14 17:25:34', '', 1, 'http://localhost/wordpress_front/1-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-02-20 09:03:34', '2018-02-20 09:03:34', '<h2></h2>\r\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n&nbsp;\r\n<h3>EXPERIENCE PROFESSIONNELLE</h3>\r\n<h4>Depuis Novembre 2017 : Refonte du site internet SAPHIR</h4>\r\n⇨ Création du site internet avec intégration Base de Données\r\n⦁ Création de pages HTML/ CSS\r\n⦁ Intégration de code PHP/MYSQL\r\n⦁ Mise en relation avec une base de données\r\n<h4>De 2011 à 2017 : Chargé de relation clients ETTER Vente et conseils ouverture de comptes clients :</h4>\r\n⦁ Prospection et Rendez-vous, physique et téléphonique,\r\n⦁ Création et utilisation de fonctions et macros Excel pour mes tâches automatisées : bon de commande, tableau des marges, Emailing.\r\n<h4>De Février à Avril 2011 : Responsable Clientèle WebMarketing AVENT MEDIA</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection téléphonique,\r\n⦁ Prise de rendez-vous au téléphone ou chez Avent Media,\r\n⦁ Présentation de la société à des prospects en B to B.\r\n<h4>De 2006 à 2011 : Commercial en Fournitures de Bureau chez BUROSSAF et SOPAZ</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection physique et téléphonique,\r\n⦁ Présentation de la société à des prospects en B to B et B to C\r\n<h3>PROJETS REALISES</h3>\r\nMy licorne, Les chats,\r\n<h3>FORMATIONS</h3>\r\n2018 : Formalisation Professionnalisante WebForce3 intensive: 490 heures.\r\nLabélisation et Certification en languages Front-end/Back-end.\r\n2006-2007 : Unités de Valeur obtenues (au CNAM) : RSX101 et NFP107\r\n2005 : BTS Informatique de Gestion option développeur d’applications (CUGI)\r\n<h3>DIVERS</h3>\r\nAnglais : Fluent\r\nHOBBY :Piano, histoire, Archéologie, piscine,', 'Mon C.V.', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-20 09:03:34', '2018-02-20 09:03:34', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-02-20 09:15:47', '2018-02-20 09:15:47', '<h2></h2>\r\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n&nbsp;\r\n<h3>EXPERIENCE PROFESSIONNELLE</h3>\r\n<h4>Depuis Novembre 2017 : Refonte du site internet SAPHIR</h4>\r\n⇨ Création du site internet avec intégration Base de Données\r\n⦁ Création de pages HTML/ CSS\r\n⦁ Intégration de code PHP/MYSQL\r\n⦁ Mise en relation avec une base de données\r\n<h4>De 2011 à 2017 : Chargé de relation clients ETTER Vente et conseils ouverture de comptes clients :</h4>\r\n⦁ Prospection et Rendez-vous, physique et téléphonique,\r\n⦁ Création et utilisation de fonctions et macros Excel pour mes tâches automatisées : bon de commande, tableau des marges, Emailing.\r\n<h4>De Février à Avril 2011 : Responsable Clientèle WebMarketing AVENT MEDIA</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection téléphonique,\r\n⦁ Prise de rendez-vous au téléphone ou chez Avent Media,\r\n⦁ Présentation de la société à des prospects en B to B.\r\n<h4>De 2006 à 2011 : Commercial en Fournitures de Bureau chez BUROSSAF et SOPAZ</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection physique et téléphonique,\r\n⦁ Présentation de la société à des prospects en B to B et B to C\r\n<h3>PROJETS REALISES</h3>\r\nMy licorne, Les chats,\r\n<h3>FORMATIONS</h3>\r\n2018 : Formalisation Professionnalisante WebForce3 intensive: 490 heures.\r\nLabélisation et Certification en languages Front-end/Back-end.\r\n2006-2007 : Unités de Valeur obtenues (au CNAM) : RSX101 et NFP107\r\n2005 : BTS Informatique de Gestion option développeur d’applications (CUGI)\r\n<h3>DIVERS</h3>\r\nAnglais : Fluent\r\nHOBBY :Piano, histoire, Archéologie, piscine,', 'Qui suis-je ?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-20 09:15:47', '2018-02-20 09:15:47', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-02-20 16:06:39', '2018-02-20 16:06:39', '<strong>Les domaines couverts par le programme :</strong>\r\n\r\n- Intégration HTML 5 / CSS 3\r\n- Responsive Web Design (mobile)\r\n- Bootstrap\r\n- JavaScript, Jquery et AJAX\r\n- Angular / Ionic\r\n- Base de données MySQL\r\n- PHP procédure et orienté objet / Symfony\r\n- Développement MVC\r\n- CMS WordPress\r\n\r\n<strong>Cliquer sur la capture d\'ecran ci-dessous pour télécharger le programme de ma formation WebForce3</strong>\r\n\r\n<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/6-43810209.pdf\"><img src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_d\'ecran.jpg\" alt=\"Programme de ma formation WebForce3\" /></a>', 'Formation WebForce3', '', 'publish', 'open', 'open', '', 'formation-webforce3', '', '', '2018-02-20 20:51:49', '2018-02-20 20:51:49', '', 0, 'http://localhost/wordpress_front/?p=75', 0, 'post', '', 0),
(76, 1, '2018-02-20 16:06:39', '2018-02-20 16:06:39', '<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/6-43810209.pdf\">Lien vers le programme de ma formation WEB FORCE 3</a>', 'Formation WebForce3', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-02-20 16:06:39', '2018-02-20 16:06:39', '', 75, 'http://localhost/wordpress_front/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-02-20 16:07:56', '2018-02-20 16:07:56', '', 'FORMATIONS', '', 'publish', 'closed', 'closed', '', 'programmes-de-formation', '', '', '2018-02-20 19:30:30', '2018-02-20 19:30:30', '', 0, 'http://localhost/wordpress_front/?p=77', 5, 'nav_menu_item', '', 0),
(78, 1, '2018-02-20 20:51:13', '2018-02-20 20:51:13', '<strong>Les domaines couverts par le programme :</strong>\n-Angular / Ionic\n\n-Bootstrap\n\n- Intégration HTML 5 / CSS 3\n- Responsive Web Design (mobile)\n- JavaScript, Jquery et AJAX\n- Base de données MySQL\n- PHP procédure et orienté objet / Symfony\n- Développement MVC\n- CMS WordPress\n\n<strong>Cliquer sur la capture d\'ecran ci-dessous pour télécharger le programme de ma formation WebForce3</strong>\n\n<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/6-43810209.pdf\"><img src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_d\'ecran.jpg\" alt=\"Programme de ma formation WebForce3\" /></a>', 'Formation WebForce3', '', 'inherit', 'closed', 'closed', '', '75-autosave-v1', '', '', '2018-02-20 20:51:13', '2018-02-20 20:51:13', '', 75, 'http://localhost/wordpress_front/75-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2018-02-20 16:18:25', '2018-02-20 16:18:25', '\r\n<strong>Cliquer sur la capture d\'ecran ci-dessous pour télécharger le programme de ma formation WebForce3</strong>\r\n\r\n<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/6-43810209.pdf\"><img src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_d\'ecran.jpg\" alt=\"Programme de ma formation WebForce3\"></a>', 'Formation WebForce3', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-02-20 16:18:25', '2018-02-20 16:18:25', '', 75, 'http://localhost/wordpress_front/75-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-02-20 17:32:02', '2018-02-20 17:32:02', '&nbsp;\r\n\r\nbody{\r\npadding:0;\r\nfont-family:arial;\r\nbox-sizing:border-box;\r\nfont-size:12px;\r\n}\r\n\r\n/***************************************HEADER***********************************/\r\n\r\n#coordonnees img{\r\nwidth:60px;     /* largeur de l\'image \"LinkedIn\" */\r\nmargin-bottom:-5px;     /* marge, en dessous de l\'image */\r\n}\r\n\r\n#coordonnees [href=\"https://www.linkedin.com/in/jonathan-chemla\"],\r\n#coordonnees [href=\"mailto:jonathanchemla55@gmail.com\"],\r\n#coordonnees [href=\"#\"]{\r\ncolor:#318CE7;     /*Bleu*/\r\n}\r\n#les_langages{\r\nposition: absolute;     /*On sort cet élément du flux de notre page*/\r\nmargin: 0 auto;     /*on centre l\'image des \"langages de programmation\" */\r\nleft:35%;\r\ntop:0;\r\ntext-align:center;     /*Centrer le contenu de la DIV, qui est en position Absolute*/\r\nz-index:-1;      /*les languages apparaissent en second plan*/\r\n}\r\nh1{\r\nfont-size:18px;     /*Taille de police*/\r\n}\r\n#les_langages img{\r\nwidth:220px;     /*Image des différents langages connus*/\r\n}\r\n\r\n/************************************MAIN****************************************/\r\nmain{\r\nmargin-top:18px;\r\n}\r\nh2{\r\nfont-size:14px;\r\nmargin:5px;\r\n}\r\nh3{\r\nfont-size:14px;\r\ndisplay:inline-block;\r\nmargin:5px;\r\n}\r\np{\r\nfont-size:12px;\r\nmargin:2px;\r\n}\r\nheader .grand{\r\nfont-size:22px;\r\n}\r\n.left{\r\nfloat:left;\r\nwidth:70%;\r\n}\r\n.right{\r\nfloat:right;\r\nwidth:30%;\r\ntext-align:center;\r\n}\r\n.clear{\r\nclear:both;     /* Annule l\'effet des float, left et right */\r\n}\r\n.centrage{     /* Permet de décaler vers la droite les sous-rubriques */\r\nmargin-left:40px;\r\nmargin-top:5px;\r\n}\r\n.bleu{\r\ncolor:#318CE7;\r\n}\r\n.gras{\r\nfont-weight:bold;\r\n}\r\n\r\n/************EXPERIENCE PROFESSIONNELLE**************/\r\n.nom_societe{\r\ntext-align:right;     /* Aligne à droite les noms des entreprises */\r\n}\r\n\r\n/****TABLEAUX DES PROJETS REALISES: MY UNICORN...****/\r\ntable{\r\nborder:3px solid #6495ed;\r\nwidth:90%;\r\nmargin:20px auto;\r\n}\r\nthead{\r\nbackground:#d0e3fa;\r\nborder:1px solid #6495ed;\r\n}\r\ntbody{\r\nborder:1px solid #6495ed;\r\n}\r\nth{\r\nborder:1px solid #6495ed;\r\npadding:5px;\r\nbackground:#eff6ff;\r\nwidth:25%;     /* le width du th va donner auto une taille aux TD donc pas besoin de donner une width a TD */\r\n}\r\ntd{\r\nfont-size:80%;\r\nborder:1px solid #6495ed;\r\npadding:5px;\r\ntext-align:center;\r\n}\r\n\r\n&nbsp;', 'Exemple de page de code CSS', '', 'publish', 'closed', 'closed', '', 'page-de-code', '', '', '2018-02-20 20:10:49', '2018-02-20 20:10:49', '', 0, 'http://localhost/wordpress_front/?page_id=81', 0, 'page', '', 0),
(82, 1, '2018-02-20 17:32:02', '2018-02-20 17:32:02', '&lt;!--\r\n\r\nMa page de code\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n--&gt;', 'Page de code', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-02-20 17:32:02', '2018-02-20 17:32:02', '', 81, 'http://localhost/wordpress_front/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-02-20 17:35:01', '2018-02-20 17:35:01', '[contact-form-7 id=\"47\" title=\"Contact form 1\"]MonContact', 'Mon Contact', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-20 17:35:01', '2018-02-20 17:35:01', '', 46, 'http://localhost/wordpress_front/46-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-02-20 17:35:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-20 17:35:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_front/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2018-02-20 17:37:14', '2018-02-20 17:37:14', 'Mettre ici tous les Langages sous forme dynamique. Demander de l\'aide à Adnane.', 'COMPETENCES', '', 'publish', 'closed', 'closed', '', 'competences', '', '', '2018-02-20 17:37:14', '2018-02-20 17:37:14', '', 0, 'http://localhost/wordpress_front/?page_id=85', 0, 'page', '', 0),
(86, 1, '2018-02-20 17:37:14', '2018-02-20 17:37:14', 'Mettre ici tous les Langages sous forme dynamique. Demander de l\'aide à Adnane.', 'COMPETENCES', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-02-20 17:37:14', '2018-02-20 17:37:14', '', 85, 'http://localhost/wordpress_front/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-02-20 17:38:46', '2018-02-20 17:38:46', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2018-02-20 19:30:29', '2018-02-20 19:30:29', '', 0, 'http://localhost/wordpress_front/?p=87', 2, 'nav_menu_item', '', 0),
(88, 1, '2018-02-20 17:38:46', '2018-02-20 17:38:46', '', 'PAGE DE CODE', '', 'publish', 'closed', 'closed', '', 'page-de-code', '', '', '2018-02-20 19:30:30', '2018-02-20 19:30:30', '', 0, 'http://localhost/wordpress_front/?p=88', 4, 'nav_menu_item', '', 0),
(89, 1, '2018-02-20 17:56:21', '2018-02-20 17:56:21', '<h2></h2>\r\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n\r\n<table>\r\n<tr> \r\n<td><img src=\"\"></td> \r\n<td>Ma passion pour l\'informatique</td> \r\n</tr>\r\n</table>\r\n', 'Qui suis-je ?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-20 17:56:21', '2018-02-20 17:56:21', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-02-20 17:59:45', '2018-02-20 17:59:45', '', 'ma_photo', '', 'inherit', 'open', 'closed', '', 'ma_photo', '', '', '2018-02-20 17:59:45', '2018-02-20 17:59:45', '', 13, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/ma_photo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-02-20 19:09:47', '2018-02-20 19:09:47', '<h2></h2>\r\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n<h2></h2>\r\n<h2 style=\"text-align: center;\"><em>Nombreux sont les égarements de l\'homme, notre vocation nous rattrape toujours !</em></h2>\r\n&nbsp;\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Ma passion pour les messages codés est apparue, dès mon plus jeune âge : En centre aéré, mes jeux préférés étaient évidemment ... les rébus et les chasses au trésor!\r\n\r\nEh oui, je suis un chercheur acharné! :)\r\n\r\nDès l\'obtention de mon Baccalauréat, ma première motivation était de me marier. J\'obtai donc pour des études courtes et ciblées:  BTS Informatique, option développeur d\'applications &amp; cours du soir, avec le CNAM.\r\n\r\nL\'année 2006 était une année plutôt difficile en informatique, et je n\'avais pas d\'expériences. Je suivis alors les recommandations de mon cousin et m\'orientai vers le commerce. Curieusement, je ressentis, avec le temps, le <strong>besoin d\'automatiser</strong> toutes mes tâches. Je mis alors en place des fichiers Excel, reliés ou non à mon Outlook.\r\n\r\nHappé par la programmation informatique, ma reconversion professionnelle fût évidente. je commencai à suivre des cours en ligne et découvris le langage PHP.\r\n\r\nDécidé à aller plus loin, je découvre chaque jour de nouveaux langages et renforce mes acquis par le biais d\'une formation intensive Full Stack.\r\n\r\nJe vous propose de découvrir mes réalisations et mets mon <a href=\"http://: http://localhost/wordpress_front/wp-content/uploads/2018/02/CV/cv.html\">CV</a> à votre disposition.\r\n\r\nA bientôt,<img class=\"size-medium wp-image-90 aligncenter\" style=\"font-family: inherit; font-size: inherit;\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/ma_photo-1-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\n&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Qui suis-je ?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-20 19:09:47', '2018-02-20 19:09:47', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-02-20 19:14:45', '2018-02-20 19:14:45', '<h2></h2>\r\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n<h2></h2>\r\n<h2 style=\"text-align: center;\"><em>Nombreux sont les égarements de l\'homme, notre vocation nous rattrape toujours !</em></h2>\r\n&nbsp;\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Ma passion pour les messages codés est apparue, dès mon plus jeune âge : En centre aéré, mes jeux préférés étaient évidemment ... les rébus et les chasses au trésor!\r\n\r\nEh oui, je suis un chercheur acharné! :)\r\n\r\nDès l\'obtention de mon Baccalauréat, ma première motivation était de me marier. J\'obtai donc pour des études courtes et ciblées:  BTS Informatique, option développeur d\'applications &amp; cours du soir, avec le CNAM.\r\n\r\nL\'année 2006 était une année plutôt difficile en informatique, et je n\'avais pas d\'expériences. Je suivis alors les recommandations de mon cousin et m\'orientai vers le commerce. Curieusement, je ressentis, avec le temps, le <strong>besoin d\'automatiser</strong> toutes mes tâches. Je mis alors en place des fichiers Excel, reliés ou non à mon Outlook.\r\n\r\nHappé par la programmation informatique, ma reconversion professionnelle fût évidente. je commencai à suivre des cours en ligne et découvris le langage PHP.\r\n\r\nDécidé à aller plus loin, je découvre chaque jour de nouveaux langages et renforce mes acquis par le biais d\'une formation intensive Full Stack.\r\n\r\nJe vous propose de découvrir mon <a style=\"font-family: inherit; font-size: inherit;\" href=\"http://: http://localhost/wordpress_front/wp-content/uploads/2018/02/CV/cv.html\">CV</a><span style=\"font-family: inherit; font-size: inherit;\"> en ligne, ou à le télécharger en <a href=\"http://CV de Jonathan CHEMLA\">PDF</a>.</span>\r\n\r\nA bientôt,<img class=\"size-medium wp-image-90 aligncenter\" style=\"font-family: inherit; font-size: inherit;\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/ma_photo-1-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\n&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Qui suis-je ?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-20 19:14:45', '2018-02-20 19:14:45', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-02-20 19:16:03', '2018-02-20 19:16:03', '<h2></h2>\r\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n<h2></h2>\r\n<h2 style=\"text-align: center;\"><em>Nombreux sont les égarements de l\'homme, notre vocation nous rattrape toujours !</em></h2>\r\n&nbsp;\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><strong>Ma passion pour les messages codés</strong> est apparue, dès mon plus jeune âge : En centre aéré, mes jeux préférés étaient évidemment ... les rébus et les chasses au trésor!\r\n\r\nEh oui, je suis un chercheur acharné! :)\r\n\r\nDès l\'obtention de mon Baccalauréat, ma première motivation était de me marier. J\'obtai donc pour des études courtes et ciblées:  BTS Informatique, option développeur d\'applications &amp; cours du soir, avec le CNAM.\r\n\r\nL\'année 2006 était une année plutôt difficile en informatique, et je n\'avais pas d\'expériences. Je suivis alors les recommandations de mon cousin et m\'orientai vers le commerce. Curieusement, je ressentis, avec le temps, le <strong>besoin d\'automatiser</strong> toutes mes tâches. Je mis alors en place des fichiers Excel, reliés ou non à mon Outlook.\r\n\r\nHappé par la programmation informatique, ma reconversion professionnelle fût évidente. je commencai à suivre des cours en ligne et découvris le langage PHP.\r\n\r\nDécidé à aller plus loin, je découvre chaque jour de nouveaux langages et renforce mes acquis par le biais d\'une formation intensive Full Stack.\r\n\r\nJe vous propose de découvrir mon <a style=\"font-family: inherit; font-size: inherit;\" href=\"http://: http://localhost/wordpress_front/wp-content/uploads/2018/02/CV/cv.html\">CV</a><span style=\"font-family: inherit; font-size: inherit;\"> en ligne, ou à le télécharger en <a href=\"http://CV de Jonathan CHEMLA\">PDF</a>.</span>\r\n\r\nA bientôt,<img class=\"size-medium wp-image-90 aligncenter\" style=\"font-family: inherit; font-size: inherit;\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/ma_photo-1-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\n&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Qui suis-je ?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-20 19:16:03', '2018-02-20 19:16:03', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(94, 1, '2018-02-20 19:17:17', '2018-02-20 19:17:17', '<h2></h2>\r\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n<h2></h2>\r\n<h2 style=\"text-align: center;\"><em>Nombreux sont les égarements de l\'homme, notre vocation nous rattrape toujours !</em></h2>\r\n&nbsp;\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><strong>Ma passion pour les messages codés,</strong> est apparue dès mon plus jeune âge : en centre aéré, mes jeux préférés étaient évidemment ... les rébus et les chasses au trésor!\r\n\r\nEh oui, je suis un chercheur acharné! :)\r\n\r\nDès l\'obtention de mon Baccalauréat, ma première motivation était de me marier. J\'obtai donc pour des études courtes et ciblées:  BTS Informatique, option développeur d\'applications &amp; cours du soir, avec le CNAM.\r\n\r\nL\'année 2006 était une année plutôt difficile en informatique, et je n\'avais pas d\'expériences. Je suivis alors les recommandations de mon cousin et m\'orientai vers le commerce. Curieusement, je ressentis, avec le temps, le <strong>besoin d\'automatiser</strong> toutes mes tâches. Je mis alors en place des fichiers Excel, reliés ou non à mon Outlook.\r\n\r\nHappé par la programmation informatique, ma reconversion professionnelle fût évidente. je commencai à suivre des cours en ligne et découvris le langage PHP.\r\n\r\nDécidé à aller plus loin, je découvre chaque jour de nouveaux langages et renforce mes acquis par le biais d\'une formation intensive Full Stack.\r\n\r\nJe vous propose de découvrir mon <a style=\"font-family: inherit; font-size: inherit;\" href=\"http://: http://localhost/wordpress_front/wp-content/uploads/2018/02/CV/cv.html\">CV</a><span style=\"font-family: inherit; font-size: inherit;\"> en ligne, ou à le télécharger en <a href=\"http://CV de Jonathan CHEMLA\">PDF</a>.</span>\r\n\r\nA bientôt,<img class=\"size-medium wp-image-90 aligncenter\" style=\"font-family: inherit; font-size: inherit;\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/ma_photo-1-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\n&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Qui suis-je ?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-20 19:17:17', '2018-02-20 19:17:17', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-02-20 19:29:15', '2018-02-20 19:29:15', '<h2></h2>\r\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n<h2></h2>\r\n<h2 style=\"text-align: center;\"><em>Nombreux sont les égarements de l\'homme, notre vocation nous rattrape toujours !</em></h2>\r\n&nbsp;\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><strong>Ma passion pour les messages codés,</strong> est apparue dès mon plus jeune âge : en centre aéré, mes jeux préférés étaient évidemment ... les rébus et les chasses au trésor!\r\n\r\nEh oui, je suis un chercheur acharné! :)\r\n\r\nDès l\'obtention de mon Baccalauréat, ma première motivation était de me marier. J\'obtai donc pour des études courtes et ciblées:  BTS Informatique, option développeur d\'applications &amp; cours du soir, avec le CNAM.\r\n\r\nPuis, au sortir de mes études, en 2006, l\'étroitesse du marché dans cette branche, ainsi que mon  manque d\'expérience, me poussèrent à suivre les recommandations de mon cousin. Je m\'orientai vers le commerce.\r\n\r\nCurieusement, je ressentis de plus en plus, avec le temps, le <strong>besoin d\'automatiser</strong> toutes mes tâches. Si bien que je mis en place, pour mon entreprise, des fichiers Excel, reliés ou non à la boite email Outlook.\r\n\r\nHappé par la programmation informatique, ma reconversion professionnelle fût évidente. je commencai à suivre des cours en ligne et découvris le langage PHP.\r\n\r\nA présent, ma soif de découverte me pousse chaque jour à explorer de nouveaux langages et renforcer mes acquis.\r\n\r\nJe vous propose de découvrir mon <a style=\"font-family: inherit; font-size: inherit;\" href=\"http://: http://localhost/wordpress_front/wp-content/uploads/2018/02/CV/cv.html\">CV</a><span style=\"font-family: inherit; font-size: inherit;\"> en ligne, ou à le télécharger, en <a href=\"http://CV de Jonathan CHEMLA\">PDF</a>.</span>\r\n\r\nA bientôt,<img class=\"size-medium wp-image-90 aligncenter\" style=\"font-family: inherit; font-size: inherit;\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/ma_photo-1-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\n&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Qui suis-je ?', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-02-20 19:29:15', '2018-02-20 19:29:15', '', 13, 'http://localhost/wordpress_front/13-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-02-20 20:08:41', '2018-02-20 20:08:41', '&nbsp;\n\nbody{\npadding:0;\nfont-family:arial;\nbox-sizing:border-box;\nfont-size:12px;\n}\n\n/***************************************HEADER***********************************/\n\n#coordonnees img{\nwidth:60px;     /* largeur de l\'image \"LinkedIn\" */\nmargin-bottom:-5px;     /* marge, en dessous de l\'image */\n}\n\n#coordonnees [href=\"https://www.linkedin.com/in/jonathan-chemla\"],\n#coordonnees [href=\"mailto:jonathanchemla55@gmail.com\"],\n#coordonnees [href=\"#\"]{\ncolor:#318CE7;     /*Bleu*/\n}\n#les_langages{\nposition: absolute;     /*On sort cet élément du flux de notre page*/\nmargin: 0 auto;     /*on centre l\'image des \"langages de programmation\" */\nleft:35%;\ntop:0;\ntext-align:center;     /*Centrer le contenu de la DIV, qui est en position Absolute*/\nz-index:-1;      /*les languages apparaissent en second plan*/\n}\nh1{\nfont-size:18px;     /*Taille de police*/\n}\n#les_langages img{\nwidth:220px;     /*Image des différents langages connus*/\n}\n\n/************************************MAIN****************************************/\nmain{\nmargin-top:18px;\n}\nh2{\nfont-size:14px;\nmargin:5px;\n}\nh3{\nfont-size:14px;\ndisplay:inline-block;\nmargin:5px;\n}\np{\nfont-size:12px;\nmargin:2px;\n}\nheader .grand{\nfont-size:22px;\n}\n.left{\nfloat:left;\nwidth:70%;\n}\n.right{\nfloat:right;\nwidth:30%;\ntext-align:center;\n}\n.clear{\nclear:both;     /* Annule l\'effet des float, left et right */\n}\n.centrage{     /* Permet de décaler vers la droite les sous-rubriques */\nmargin-left:40px;\nmargin-top:5px;\n}\n.bleu{\ncolor:#318CE7;\n}\n.gras{\nfont-weight:bold;\n}\n\n/************EXPERIENCE PROFESSIONNELLE**************/\n.nom_societe{\ntext-align:right;     /* Aligne à droite les noms des entreprises */\n}\n\n/****TABLEAUX DES PROJETS REALISES: MY UNICORN...****/\ntable{\nborder:3px solid #6495ed;\nwidth:90%;\nmargin:20px auto;\n}\nthead{\nbackground:#d0e3fa;\nborder:1px solid #6495ed;\n}\ntbody{\nborder:1px solid #6495ed;\n}\nth{\nborder:1px solid #6495ed;\npadding:5px;\nbackground:#eff6ff;\nwidth:25%;     /* le width du th va donner auto une taille aux TD donc pas besoin de donner une width a TD */\n}\ntd{\nfont-size:80%;\nborder:1px solid #6495ed;\npadding:5px;\ntext-align:center;\n}\n\n&nbsp;', 'Exemple de page de code CSS', '', 'inherit', 'closed', 'closed', '', '81-autosave-v1', '', '', '2018-02-20 20:08:41', '2018-02-20 20:08:41', '', 81, 'http://localhost/wordpress_front/81-autosave-v1/', 0, 'revision', '', 0),
(97, 1, '2018-02-20 19:44:36', '2018-02-20 19:44:36', '&lt;!--\r\n\r\nbody{\r\npadding:0;\r\nfont-family:arial;\r\nbox-sizing:border-box;\r\nfont-size:12px;\r\n}\r\n\r\n/***************************************HEADER***********************************/\r\n\r\n#coordonnees img{\r\nwidth:60px;/**/\r\nmargin-bottom:-5px;/**/\r\n}\r\n#coordonnees [href=\"https://www.linkedin.com/in/jonathan-chemla\"],#coordonnees [href=\"mailto:jonathanchemla55@gmail.com\"],#coordonnees [href=\"#\"]{\r\n\r\ncolor:#318CE7;/**/\r\n}\r\n\r\n#les_langages{\r\nposition: absolute;/**/\r\nmargin: 0 auto;\r\nleft:35%;/*Marge à gauche de 60px*/\r\ntop:0px;/*Positionné à 60px du haut*/\r\ntext-align:center; /*Centrer le contenu de la DIV en position Absolute*/\r\nz-index:-1;\r\n}\r\nh1{\r\nfont-size:18px;/*Taille de police*/\r\n}\r\n#les_langages img{\r\nwidth:220px;/*IMAGE DES DIFFERENTS LANGAGES*/\r\n}\r\n\r\n/************************************MAIN****************************************/\r\nmain{\r\nmargin-top:18px;\r\n}\r\n\r\nh2{\r\nfont-size:14px;\r\nmargin:5px;\r\n}\r\nh3{\r\nfont-size:14px;\r\ndisplay:inline-block;\r\nmargin:5px;\r\n}\r\np{\r\nfont-size:12px;\r\nmargin:2px;\r\n}\r\nheader .grand{\r\nfont-size:22px;\r\n}\r\n\r\n.left{\r\nfloat:left;\r\nwidth:70%;\r\n}\r\n.right{\r\nfloat:right;\r\nwidth:30%;\r\ntext-align:center;\r\n}\r\n.clear{\r\nclear:both;\r\n}\r\n.centrage{\r\nmargin-left:40px;\r\nmargin-top:5px;\r\n}\r\n.bleu{\r\ncolor:#318CE7;\r\n}\r\n.gras{\r\nfont-weight:bold;\r\n}\r\n\r\n/**********EXPERIENCE PROFESSIONNELLE***********/\r\n.nom_societe{\r\ntext-align:right;\r\n}\r\n\r\n/*********TABLEAUX DES PROJETS REALISES:**********/\r\ntable{\r\nborder:3px solid #6495ed;\r\nwidth:90%;\r\nmargin:20px auto;\r\n}\r\n\r\nthead{\r\nbackground:#d0e3fa;\r\nborder:1px solid #6495ed;\r\n}\r\ntbody{\r\nborder:1px solid #6495ed;\r\n}\r\nth{\r\nborder:1px solid #6495ed;\r\npadding:5px;\r\nbackground:#eff6ff;\r\nwidth:25%; /**le width du th va donner auto une taille aux TD donc pas besoin de donner une width a TD**/\r\n\r\n}\r\ntd{\r\nfont-size:80%;\r\nborder:1px solid #6495ed;\r\npadding:5px;\r\ntext-align:center;\r\n\r\n}\r\n\r\n--&gt;', 'Page de code', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-02-20 19:44:36', '2018-02-20 19:44:36', '', 81, 'http://localhost/wordpress_front/81-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-02-20 19:51:07', '2018-02-20 19:51:07', '&nbsp;\r\n\r\nbody{\r\npadding:0;\r\nfont-family:arial;\r\nbox-sizing:border-box;\r\nfont-size:12px;\r\n}\r\n\r\n/***************************************HEADER***********************************/\r\n\r\n#coordonnees img{\r\nwidth:60px;/**/\r\nmargin-bottom:-5px;/**/\r\n}\r\n\r\n#coordonnees [href=\"https://www.linkedin.com/in/jonathan-chemla\"],\r\n#coordonnees [href=\"mailto:jonathanchemla55@gmail.com\"],\r\n#coordonnees [href=\"#\"]{\r\ncolor:#318CE7;/*Bleu*/\r\n}\r\n#les_langages{\r\nposition: absolute;/*On sort cet élément du flux de notre page*/\r\nmargin: 0 auto;\r\nleft:35%;/*Marge à gauche de 60px*/\r\ntop:0px;/*Positionné à 60px du haut*/\r\ntext-align:center; /*Centrer le contenu de la DIV en position Absolute*/\r\nz-index:-1; /*les languages apparaissent en second plan*/\r\n}\r\nh1{\r\nfont-size:18px;/*Taille de police*/\r\n}\r\n#les_langages img{\r\nwidth:220px;/*IMAGE DES DIFFERENTS LANGAGES*/\r\n}\r\n\r\n/************************************MAIN****************************************/\r\nmain{\r\nmargin-top:18px;\r\n}\r\nh2{\r\nfont-size:14px;\r\nmargin:5px;\r\n}\r\nh3{\r\nfont-size:14px;\r\ndisplay:inline-block;\r\nmargin:5px;\r\n}\r\np{\r\nfont-size:12px;\r\nmargin:2px;\r\n}\r\nheader .grand{\r\nfont-size:22px;\r\n}\r\n.left{\r\nfloat:left;\r\nwidth:70%;\r\n}\r\n.right{\r\nfloat:right;\r\nwidth:30%;\r\ntext-align:center;\r\n}\r\n.clear{\r\nclear:both;\r\n}\r\n.centrage{\r\nmargin-left:40px;\r\nmargin-top:5px;\r\n}\r\n.bleu{\r\ncolor:#318CE7;\r\n}\r\n.gras{\r\nfont-weight:bold;\r\n}\r\n\r\n/************EXPERIENCE PROFESSIONNELLE**************/\r\n.nom_societe{\r\ntext-align:right;\r\n}\r\n\r\n/****TABLEAUX DES PROJETS REALISES: MY UNICORN...****/\r\ntable{\r\nborder:3px solid #6495ed;\r\nwidth:90%;\r\nmargin:20px auto;\r\n}\r\nthead{\r\nbackground:#d0e3fa;\r\nborder:1px solid #6495ed;\r\n}\r\ntbody{\r\nborder:1px solid #6495ed;\r\n}\r\nth{\r\nborder:1px solid #6495ed;\r\npadding:5px;\r\nbackground:#eff6ff;\r\nwidth:25%; /**le width du th va donner auto une taille aux TD donc pas besoin de donner une width a TD**/\r\n}\r\ntd{\r\nfont-size:80%;\r\nborder:1px solid #6495ed;\r\npadding:5px;\r\ntext-align:center;\r\n}\r\n\r\n&nbsp;', 'Page de code', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-02-20 19:51:07', '2018-02-20 19:51:07', '', 81, 'http://localhost/wordpress_front/81-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-02-20 19:51:56', '2018-02-20 19:51:56', '&nbsp;\r\n\r\nbody{\r\npadding:0;\r\nfont-family:arial;\r\nbox-sizing:border-box;\r\nfont-size:12px;\r\n}\r\n\r\n/***************************************HEADER***********************************/\r\n\r\n#coordonnees img{\r\nwidth:60px;/**/\r\nmargin-bottom:-5px;/**/\r\n}\r\n\r\n#coordonnees [href=\"https://www.linkedin.com/in/jonathan-chemla\"],\r\n#coordonnees [href=\"mailto:jonathanchemla55@gmail.com\"],\r\n#coordonnees [href=\"#\"]{\r\ncolor:#318CE7;/*Bleu*/\r\n}\r\n#les_langages{\r\nposition: absolute;/*On sort cet élément du flux de notre page*/\r\nmargin: 0 auto;\r\nleft:35%;/*Marge à gauche de 60px*/\r\ntop:0px;/*Positionné à 60px du haut*/\r\ntext-align:center; /*Centrer le contenu de la DIV en position Absolute*/\r\nz-index:-1; /*les languages apparaissent en second plan*/\r\n}\r\nh1{\r\nfont-size:18px;/*Taille de police*/\r\n}\r\n#les_langages img{\r\nwidth:220px;/*IMAGE DES DIFFERENTS LANGAGES*/\r\n}\r\n\r\n/************************************MAIN****************************************/\r\nmain{\r\nmargin-top:18px;\r\n}\r\nh2{\r\nfont-size:14px;\r\nmargin:5px;\r\n}\r\nh3{\r\nfont-size:14px;\r\ndisplay:inline-block;\r\nmargin:5px;\r\n}\r\np{\r\nfont-size:12px;\r\nmargin:2px;\r\n}\r\nheader .grand{\r\nfont-size:22px;\r\n}\r\n.left{\r\nfloat:left;\r\nwidth:70%;\r\n}\r\n.right{\r\nfloat:right;\r\nwidth:30%;\r\ntext-align:center;\r\n}\r\n.clear{\r\nclear:both;\r\n}\r\n.centrage{\r\nmargin-left:40px;\r\nmargin-top:5px;\r\n}\r\n.bleu{\r\ncolor:#318CE7;\r\n}\r\n.gras{\r\nfont-weight:bold;\r\n}\r\n\r\n/************EXPERIENCE PROFESSIONNELLE**************/\r\n.nom_societe{\r\ntext-align:right;\r\n}\r\n\r\n/****TABLEAUX DES PROJETS REALISES: MY UNICORN...****/\r\ntable{\r\nborder:3px solid #6495ed;\r\nwidth:90%;\r\nmargin:20px auto;\r\n}\r\nthead{\r\nbackground:#d0e3fa;\r\nborder:1px solid #6495ed;\r\n}\r\ntbody{\r\nborder:1px solid #6495ed;\r\n}\r\nth{\r\nborder:1px solid #6495ed;\r\npadding:5px;\r\nbackground:#eff6ff;\r\nwidth:25%; /**le width du th va donner auto une taille aux TD donc pas besoin de donner une width a TD**/\r\n}\r\ntd{\r\nfont-size:80%;\r\nborder:1px solid #6495ed;\r\npadding:5px;\r\ntext-align:center;\r\n}\r\n\r\n&nbsp;', 'Exemple de page de code CSS', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-02-20 19:51:56', '2018-02-20 19:51:56', '', 81, 'http://localhost/wordpress_front/81-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-02-20 20:08:43', '2018-02-20 20:08:43', '&nbsp;\r\n\r\nbody{\r\npadding:0;\r\nfont-family:arial;\r\nbox-sizing:border-box;\r\nfont-size:12px;\r\n}\r\n\r\n/***************************************HEADER***********************************/\r\n\r\n#coordonnees img{\r\nwidth:60px;     /* largeur de l\'image \"LinkedIn\" */\r\nmargin-bottom:-5px;     /* marge, en dessous de l\'image */\r\n}\r\n\r\n#coordonnees [href=\"https://www.linkedin.com/in/jonathan-chemla\"],\r\n#coordonnees [href=\"mailto:jonathanchemla55@gmail.com\"],\r\n#coordonnees [href=\"#\"]{\r\ncolor:#318CE7;     /*Bleu*/\r\n}\r\n#les_langages{\r\nposition: absolute;     /*On sort cet élément du flux de notre page*/\r\nmargin: 0 auto;     /*on centre l\'image des \"langages de programmation\" */\r\nleft:35%;\r\ntop:0;\r\ntext-align:center;     /*Centrer le contenu de la DIV, qui est en position Absolute*/\r\nz-index:-1;      /*les languages apparaissent en second plan*/\r\n}\r\nh1{\r\nfont-size:18px;     /*Taille de police*/\r\n}\r\n#les_langages img{\r\nwidth:220px;     /*Image des différents langages connus*/\r\n}\r\n\r\n/************************************MAIN****************************************/\r\nmain{\r\nmargin-top:18px;\r\n}\r\nh2{\r\nfont-size:14px;\r\nmargin:5px;\r\n}\r\nh3{\r\nfont-size:14px;\r\ndisplay:inline-block;\r\nmargin:5px;\r\n}\r\np{\r\nfont-size:12px;\r\nmargin:2px;\r\n}\r\nheader .grand{\r\nfont-size:22px;\r\n}\r\n.left{\r\nfloat:left;\r\nwidth:70%;\r\n}\r\n.right{\r\nfloat:right;\r\nwidth:30%;\r\ntext-align:center;\r\n}\r\n.clear{\r\nclear:both;     /* Annule l\'effet des float, left et right */\r\n}\r\n.centrage{     /* Permet de décaler vers la droite les sous-rubriques */\r\nmargin-left:40px;\r\nmargin-top:5px;\r\n}\r\n.bleu{\r\ncolor:#318CE7;\r\n}\r\n.gras{\r\nfont-weight:bold;\r\n}\r\n\r\n/************EXPERIENCE PROFESSIONNELLE**************/\r\n.nom_societe{\r\ntext-align:right;     /* Aligne à droite les noms des entreprises */\r\n}\r\n\r\n/****TABLEAUX DES PROJETS REALISES: MY UNICORN...****/\r\ntable{\r\nborder:3px solid #6495ed;\r\nwidth:90%;\r\nmargin:20px auto;\r\n}\r\nthead{\r\nbackground:#d0e3fa;\r\nborder:1px solid #6495ed;\r\n}\r\ntbody{\r\nborder:1px solid #6495ed;\r\n}\r\nth{\r\nborder:1px solid #6495ed;\r\npadding:5px;\r\nbackground:#eff6ff;\r\nwidth:25%;     /* le width du th va donner auto une taille aux TD donc pas besoin de donner une width a TD */\r\n}\r\ntd{\r\nfont-size:80%;\r\nborder:1px solid #6495ed;\r\npadding:5px;\r\ntext-align:center;\r\n}\r\n\r\n&nbsp;', 'Exemple de page de code CSS', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-02-20 20:08:43', '2018-02-20 20:08:43', '', 81, 'http://localhost/wordpress_front/81-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-02-19 20:32:28', '2018-02-19 20:32:28', '<p style=\"text-align: center;\">\r\n<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/RSX101.pdf\">\r\n<img class=\"wp-image-102 alignnone alignleft\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranRSX101-252x300.jpg\" alt=\"\" width=\"367\" height=\"437\" /></a><a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/NFP107.pdf\"><img class=\"wp-image-103 alignnone\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranNFP107-248x300.jpg\" alt=\"\" width=\"368\" height=\"445\" /></a></p>', 'Unité de Valeur Réseaux et Télécommunication & Systèmes de Gestion des Bases de Données Relationnelles au CNAM', '', 'publish', 'open', 'open', '', 'unite-de-valeur-reseaux-et-telecommunication-systemes-de-gestion-des-bases-de-donnees-relationnelles-au-cnam', '', '', '2018-02-20 20:40:10', '2018-02-20 20:40:10', '', 0, 'http://localhost/wordpress_front/?p=101', 0, 'post', '', 0),
(102, 1, '2018-02-20 20:21:14', '2018-02-20 20:21:14', '', 'capture_d\'ecranRSX101', '', 'inherit', 'open', 'closed', '', 'capture_decranrsx101', '', '', '2018-02-20 20:21:14', '2018-02-20 20:21:14', '', 101, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranRSX101.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2018-02-20 20:21:15', '2018-02-20 20:21:15', '', 'capture_d\'ecranNFP107', '', 'inherit', 'open', 'closed', '', 'capture_decrannfp107', '', '', '2018-02-20 20:21:15', '2018-02-20 20:21:15', '', 101, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranNFP107.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-02-20 20:32:28', '2018-02-20 20:32:28', '<p style=\"text-align: center;\"><a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/.RSX101pdf\"><img class=\"wp-image-102 alignnone alignleft\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranRSX101-252x300.jpg\" alt=\"\" width=\"367\" height=\"437\" /></a> <a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/.NFP107.pdf\"><img class=\"wp-image-103 alignnone\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranNFP107-248x300.jpg\" alt=\"\" width=\"368\" height=\"445\" /></a></p>', 'Unité de Valeur Réseaux et Télécommunication & Systèmes de Gestion des Bases de Données Relationnelles au CNAM', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-02-20 20:32:28', '2018-02-20 20:32:28', '', 101, 'http://localhost/wordpress_front/101-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-02-20 20:35:34', '2018-02-20 20:35:34', '<p style=\"text-align: center;\"><a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/.RSX101pdf\"><img class=\"wp-image-102 alignnone alignleft\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranRSX101-252x300.jpg\" alt=\"\" width=\"367\" height=\"437\" /></a> <a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/NFP107.pdf\"><img class=\"wp-image-103 alignnone\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranNFP107-248x300.jpg\" alt=\"\" width=\"368\" height=\"445\" /></a></p>', 'Unité de Valeur Réseaux et Télécommunication & Systèmes de Gestion des Bases de Données Relationnelles au CNAM', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-02-20 20:35:34', '2018-02-20 20:35:34', '', 101, 'http://localhost/wordpress_front/101-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2018-02-20 20:39:13', '2018-02-20 20:39:13', '<p style=\"text-align: center;\">\n<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/RSX101.pdf\">\n<img class=\"wp-image-102 alignnone alignleft\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranRSX101-252x300.jpg\" alt=\"\" width=\"367\" height=\"437\" /></a> \n<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/NFP107.pdf\">\n<img class=\"wp-image-103 alignnone\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranNFP107-248x300.jpg\" alt=\"\" width=\"368\" height=\"445\" /></a></p>', 'Unité de Valeur Réseaux et Télécommunication & Systèmes de Gestion des Bases de Données Relationnelles au CNAM', '', 'inherit', 'closed', 'closed', '', '101-autosave-v1', '', '', '2018-02-20 20:39:13', '2018-02-20 20:39:13', '', 101, 'http://localhost/wordpress_front/101-autosave-v1/', 0, 'revision', '', 0),
(108, 1, '2018-02-20 20:39:15', '2018-02-20 20:39:15', '<p style=\"text-align: center;\">\r\n<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/RSX101.pdf\">\r\n<img class=\"wp-image-102 alignnone alignleft\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranRSX101-252x300.jpg\" alt=\"\" width=\"367\" height=\"437\" /></a> \r\n<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/NFP107.pdf\">\r\n<img class=\"wp-image-103 alignnone\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranNFP107-248x300.jpg\" alt=\"\" width=\"368\" height=\"445\" /></a></p>', 'Unité de Valeur Réseaux et Télécommunication & Systèmes de Gestion des Bases de Données Relationnelles au CNAM', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-02-20 20:39:15', '2018-02-20 20:39:15', '', 101, 'http://localhost/wordpress_front/101-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-02-20 20:40:10', '2018-02-20 20:40:10', '<p style=\"text-align: center;\">\r\n<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/RSX101.pdf\">\r\n<img class=\"wp-image-102 alignnone alignleft\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranRSX101-252x300.jpg\" alt=\"\" width=\"367\" height=\"437\" /></a><a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/NFP107.pdf\"><img class=\"wp-image-103 alignnone\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_decranNFP107-248x300.jpg\" alt=\"\" width=\"368\" height=\"445\" /></a></p>', 'Unité de Valeur Réseaux et Télécommunication & Systèmes de Gestion des Bases de Données Relationnelles au CNAM', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2018-02-20 20:40:10', '2018-02-20 20:40:10', '', 101, 'http://localhost/wordpress_front/101-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-02-20 20:51:49', '2018-02-20 20:51:49', '<strong>Les domaines couverts par le programme :</strong>\r\n\r\n- Intégration HTML 5 / CSS 3\r\n- Responsive Web Design (mobile)\r\n- Bootstrap\r\n- JavaScript, Jquery et AJAX\r\n- Angular / Ionic\r\n- Base de données MySQL\r\n- PHP procédure et orienté objet / Symfony\r\n- Développement MVC\r\n- CMS WordPress\r\n\r\n<strong>Cliquer sur la capture d\'ecran ci-dessous pour télécharger le programme de ma formation WebForce3</strong>\r\n\r\n<a href=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/6-43810209.pdf\"><img src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/capture_d\'ecran.jpg\" alt=\"Programme de ma formation WebForce3\" /></a>', 'Formation WebForce3', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2018-02-20 20:51:49', '2018-02-20 20:51:49', '', 75, 'http://localhost/wordpress_front/75-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2018-02-20 21:11:10', '2018-02-20 21:11:10', '&nbsp;\n\nMe contacter par mail : <a href=\"mailto:jonathanchemla55@gmail.com\"><img class=\"alignnone wp-image-116\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/email-1.jpg\" alt=\"\" width=\"36\" height=\"37\" />,</a>\nPour me retrouver sur :<img class=\"alignnone wp-image-117\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/linkedin-300x91.png\" alt=\"\" width=\"69\" height=\"21\" />,\nOu par téléphone : 07 69 81 68 17.\n\n<strong>Laissez-moi votre message ci-dessous:</strong>\n[contact-form-7 id=\"47\" title=\"Contact form 1\"]', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '46-autosave-v1', '', '', '2018-02-20 21:11:10', '2018-02-20 21:11:10', '', 46, 'http://localhost/wordpress_front/46-autosave-v1/', 0, 'revision', '', 0),
(112, 1, '2018-02-20 20:53:33', '2018-02-20 20:53:33', '\r\n[contact-form-7 id=\"47\" title=\"Contact form 1\"]MonContact', 'Contact', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-20 20:53:33', '2018-02-20 20:53:33', '', 46, 'http://localhost/wordpress_front/46-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2018-02-20 20:53:42', '2018-02-20 20:53:42', '[contact-form-7 id=\"47\" title=\"Contact form 1\"]MonContactaaaaa', 'Contact', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-20 20:53:42', '2018-02-20 20:53:42', '', 46, 'http://localhost/wordpress_front/46-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-02-20 20:58:18', '2018-02-20 20:58:18', '[contact-form-7 id=\"47\" title=\"Contact form 1\"]<br>\r\n\r\nPour me contacter par mail : <a href=\"mailto:jonathanchemla55@gmail.com\">jonathanchemla55@gmail.com</a><br>\r\nVous pouvez également me retrouver sur : <a class=\"gras\" href=\"https://www.linkedin.com/in/jonathan-chemla\"><img src=\"images/linkedin.png\">/jonathan-chemla</a><br>\r\nOu par téléphone : 07 69 81 68 17 <br>\r\n			\r\n			', 'Contact', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-20 20:58:18', '2018-02-20 20:58:18', '', 46, 'http://localhost/wordpress_front/46-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-02-20 21:02:06', '2018-02-20 21:02:06', 'Pour me contacter par mail : <a href=\"mailto:jonathanchemla55@gmail.com\">jonathanchemla55@gmail.com</a>\r\nVous pouvez également me retrouver sur : <a class=\"gras\" href=\"https://www.linkedin.com/in/jonathan-chemla\"><img src=\"images/linkedin.png\" />/jonathan-chemla</a>\r\nOu par téléphone : 07 69 81 68 17\r\n\r\n<strong>Laissez-moi votre message ci-dessous:</strong>\r\n[contact-form-7 id=\"47\" title=\"Contact form 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-20 21:02:06', '2018-02-20 21:02:06', '', 46, 'http://localhost/wordpress_front/46-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-02-20 21:05:58', '2018-02-20 21:05:58', '', 'email', '', 'inherit', 'open', 'closed', '', 'email', '', '', '2018-02-20 21:05:58', '2018-02-20 21:05:58', '', 46, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/email-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2018-02-20 21:05:59', '2018-02-20 21:05:59', '', 'linkedin', '', 'inherit', 'open', 'closed', '', 'linkedin', '', '', '2018-02-20 21:05:59', '2018-02-20 21:05:59', '', 46, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/linkedin.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2018-02-20 21:09:49', '2018-02-20 21:09:49', 'Me contacter par mail : <a href=\"mailto:jonathanchemla55@gmail.com\"><img class=\"alignnone  wp-image-116\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/email-1.jpg\" alt=\"\" width=\"36\" height=\"37\" /></a>\r\nPour me retrouver sur :<img class=\"alignnone  wp-image-117\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/linkedin-300x91.png\" alt=\"\" width=\"69\" height=\"21\" />\r\nOu par téléphone : 07 69 81 68 17.\r\n\r\n<strong>Laissez-moi votre message ci-dessous:</strong>\r\n[contact-form-7 id=\"47\" title=\"Contact form 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-20 21:09:49', '2018-02-20 21:09:49', '', 46, 'http://localhost/wordpress_front/46-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-02-20 21:10:09', '2018-02-20 21:10:09', 'Me contacter par mail : <a href=\"mailto:jonathanchemla55@gmail.com\"><img class=\"alignnone wp-image-116\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/email-1.jpg\" alt=\"\" width=\"36\" height=\"37\" />,</a>\r\nPour me retrouver sur :<img class=\"alignnone wp-image-117\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/linkedin-300x91.png\" alt=\"\" width=\"69\" height=\"21\" />,\r\nOu par téléphone : 07 69 81 68 17.\r\n\r\n<strong>Laissez-moi votre message ci-dessous:</strong>\r\n[contact-form-7 id=\"47\" title=\"Contact form 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-20 21:10:09', '2018-02-20 21:10:09', '', 46, 'http://localhost/wordpress_front/46-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-02-20 21:11:33', '2018-02-20 21:11:33', '&nbsp;\r\n\r\nMe contacter par mail : <a href=\"mailto:jonathanchemla55@gmail.com\"><img class=\"alignnone wp-image-116\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/email-1.jpg\" alt=\"\" width=\"36\" height=\"37\" />,</a>\r\nPour me retrouver sur :<img class=\"alignnone wp-image-117\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/linkedin-300x91.png\" alt=\"\" width=\"69\" height=\"21\" />,\r\nOu par téléphone : 07 69 81 68 17.\r\n\r\n&nbsp;\r\n\r\n<strong>Laissez-moi votre message ci-dessous:</strong>\r\n[contact-form-7 id=\"47\" title=\"Contact form 1\"]', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-20 21:11:33', '2018-02-20 21:11:33', '', 46, 'http://localhost/wordpress_front/46-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-02-20 21:11:58', '2018-02-20 21:11:58', '&nbsp;\r\n<p style=\"text-align: right;\">Me contacter par mail : <a href=\"mailto:jonathanchemla55@gmail.com\"><img class=\"alignnone wp-image-116\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/email-1.jpg\" alt=\"\" width=\"36\" height=\"37\" />,</a>\r\nPour me retrouver sur :<img class=\"alignnone wp-image-117\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/linkedin-300x91.png\" alt=\"\" width=\"69\" height=\"21\" />,\r\nOu par téléphone : 07 69 81 68 17.</p>\r\n&nbsp;\r\n<h2><strong>Laissez-moi votre message ci-dessous:</strong>\r\n[contact-form-7 id=\"47\" title=\"Contact form 1\"]</h2>', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-02-20 21:11:58', '2018-02-20 21:11:58', '', 46, 'http://localhost/wordpress_front/46-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-03-12 15:03:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-12 15:03:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress_front/?p=122', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'First step', 'first-step', 0),
(3, 'Menu principal', 'menu-principal', 0),
(4, 'Realisations', 'realisations', 0),
(5, 'Evaluations', 'evaluations', 0),
(6, 'Programmes de formation', 'programmes-de-formation', 0),
(7, 'Mon Cv', 'mon-cv', 0),
(8, 'COMPETENCES', 'competences', 0),
(9, 'PAGE DE CODE', 'page-de-code', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(15, 3, 0),
(19, 1, 0),
(55, 3, 0),
(60, 4, 0),
(62, 3, 0),
(63, 4, 0),
(67, 4, 0),
(75, 6, 0),
(77, 3, 0),
(87, 3, 0),
(88, 3, 0),
(101, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', 'Tous les articles liés à nos premiers pas en Wordpress', 0, 0),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'category', 'Travaux personnels', 0, 3),
(5, 5, 'category', 'Evaluations wf3', 0, 0),
(6, 6, 'category', '', 0, 2),
(7, 7, 'category', '&nbsp;\r\n<h2></h2>\r\n<h2 style=\"text-align: center;\">Développeur Intégrateur Web &amp; Mobile</h2>\r\n<h2><img class=\"alignnone size-full wp-image-34 aligncenter\" src=\"http://localhost/wordpress_front/wp-content/uploads/2018/02/languages.png\" alt=\"\" width=\"298\" height=\"190\" /></h2>\r\n&nbsp;\r\n<h3>EXPERIENCE PROFESSIONNELLE</h3>\r\n<h4>Depuis Novembre 2017 : Refonte du site internet SAPHIR</h4>\r\n⇨ Création du site internet avec intégration Base de Données\r\n⦁ Création de pages HTML/ CSS\r\n⦁ Intégration de code PHP/MYSQL\r\n⦁ Mise en relation avec une base de données\r\n<h4>De 2011 à 2017 : Chargé de relation clients ETTER Vente et conseils ouverture de comptes clients :</h4>\r\n⦁ Prospection et Rendez-vous, physique et téléphonique,\r\n⦁ Création et utilisation de fonctions et macros Excel pour mes tâches automatisées : bon de commande, tableau des marges, Emailing.\r\n<h4>De Février à Avril 2011 : Responsable Clientèle WebMarketing AVENT MEDIA</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection téléphonique,\r\n⦁ Prise de rendez-vous au téléphone ou chez Avent Media,\r\n⦁ Présentation de la société à des prospects en B to B.\r\n<h4>De 2006 à 2011 : Commercial en Fournitures de Bureau chez BUROSSAF et SOPAZ</h4>\r\n⇨ Création, conseils et gestion de comptes clients :\r\n⦁ Prospection physique et téléphonique,\r\n⦁ Présentation de la société à des prospects en B to B et B to C\r\n<h3>PROJETS REALISES</h3>\r\nMy licorne, Les chats,\r\n<h3>FORMATIONS</h3>\r\n2018 : Formalisation Professionnalisante WebForce3 intensive: 490 heures.\r\nLabélisation et Certification en languages Front-end/Back-end.\r\n2006-2007 : Unités de Valeur obtenues (au CNAM) : RSX101 et NFP107\r\n2005 : BTS Informatique de Gestion option développeur d’applications (CUGI)\r\n<h3>DIVERS</h3>\r\nAnglais : Fluent\r\nHOBBY :Piano, histoire, Archéologie, piscine,', 0, 0),
(8, 8, 'category', '', 0, 0),
(9, 9, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'wordpress_front'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"95c01d99d37e6c6b73e0429b33a243a8199f2494573581735243b444405f0a01\";a:4:{s:10:\"expiration\";i:1521039809;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.146 Safari/537.36\";s:5:\"login\";i:1520867009;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '122'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&hidetb=1&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1519160521'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'wp_yoast_notifications', 'a:3:{i:0;a:2:{s:7:\"message\";s:781:\"We\'ve noticed you\'ve been using Yoast SEO for some time now; we hope you love it! We\'d be thrilled if you could <a href=\"https://yoa.st/rate-yoast-seo?utm_content=6.2\">give us a 5 stars rating on WordPress.org</a>!\n\nIf you are experiencing issues, <a href=\"https://yoa.st/bugreport?utm_content=6.2\">please file a bug report</a> and we\'ll do our best to help you out.\n\nBy the way, did you know we also have a <a href=\'https://yoa.st/premium-notification?utm_content=6.2\'>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keywords. It also comes with 24/7 personal support.\n\n<a class=\"button\" href=\"http://localhost/wordpress_front/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}i:1;a:2:{s:7:\"message\";s:175:\"Don\'t miss your crawl errors: <a href=\"http://localhost/wordpress_front/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}i:2;a:2:{s:7:\"message\";s:293:\"You still have the default WordPress tagline, even an empty one is probably better. <a href=\"http://localhost/wordpress_front/wp-admin/customize.php?url=http%3A%2F%2Flocalhost%2Fwordpress_front%2Fwp-admin%2Foptions-general.php%3Fsettings-updated%3Dtrue\">You can fix this in the customizer</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:28:\"wpseo-dismiss-tagline-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}}'),
(24, 1, 'nav_menu_recently_edited', '3'),
(25, 1, '_yoast_wpseo_profile_updated', '1518515371');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wordpress_front', '$P$B3z0TsGv9RIplbQ9Fmaeja1kK2CXcw.', 'wordpress_front', 'jonathanchemla55@gmail.com', '', '2018-02-12 09:18:34', '', 0, 'wordpress_front');

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(12, '', 13, 0, 'internal'),
(13, '', 13, 0, 'internal'),
(26, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/RSX101.pdf', 101, 0, 'internal'),
(27, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/NFP107.pdf', 101, 0, 'internal'),
(28, 'http://localhost/wordpress_front/wp-content/uploads/2018/02/6-43810209.pdf', 75, 0, 'internal'),
(36, 'mailto:jonathanchemla55@gmail.com', 46, 0, 'external');

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(10, 0, 0),
(13, 2, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0),
(26, 0, 0),
(27, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(33, 0, 0),
(38, 0, 0),
(39, 0, 0),
(40, 0, 0),
(41, 0, 0),
(42, 0, 0),
(43, 0, 0),
(45, 0, 0),
(46, 0, 0),
(48, 0, 0),
(49, 0, 0),
(50, 0, 0),
(52, 0, 0),
(53, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(63, 0, 0),
(67, 0, 0),
(70, 0, 0),
(72, 0, 0),
(75, 1, 0),
(80, 0, 0),
(81, 0, 0),
(85, 0, 0),
(101, 2, 0),
(105, 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Index pour la table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
