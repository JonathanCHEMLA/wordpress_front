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
-- Base de données :  `wp_div_2018`
--

-- --------------------------------------------------------

--
-- Structure de la table `dadd_commentmeta`
--

CREATE TABLE `dadd_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_comments`
--

CREATE TABLE `dadd_comments` (
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
-- Déchargement des données de la table `dadd_comments`
--

INSERT INTO `dadd_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-12 09:51:52', '2018-03-12 08:51:52', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `dadd_links`
--

CREATE TABLE `dadd_links` (
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
-- Structure de la table `dadd_options`
--

CREATE TABLE `dadd_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dadd_options`
--

INSERT INTO `dadd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp-div2018', 'yes'),
(2, 'home', 'http://localhost/wp-div2018', 'yes'),
(3, 'blogname', 'site de dev', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
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
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:203:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:20:\"index.php/concert/?$\";s:27:\"index.php?post_type=concert\";s:50:\"index.php/concert/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=concert&feed=$matches[1]\";s:45:\"index.php/concert/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=concert&feed=$matches[1]\";s:37:\"index.php/concert/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=concert&paged=$matches[1]\";s:17:\"index.php/film/?$\";s:24:\"index.php?post_type=film\";s:47:\"index.php/film/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=film&feed=$matches[1]\";s:42:\"index.php/film/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=film&feed=$matches[1]\";s:34:\"index.php/film/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=film&paged=$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"index.php/concert/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/concert/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/concert/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/concert/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/concert/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/concert/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/concert/([^/]+)/embed/?$\";s:40:\"index.php?concert=$matches[1]&embed=true\";s:38:\"index.php/concert/([^/]+)/trackback/?$\";s:34:\"index.php?concert=$matches[1]&tb=1\";s:58:\"index.php/concert/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?concert=$matches[1]&feed=$matches[2]\";s:53:\"index.php/concert/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?concert=$matches[1]&feed=$matches[2]\";s:46:\"index.php/concert/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?concert=$matches[1]&paged=$matches[2]\";s:53:\"index.php/concert/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?concert=$matches[1]&cpage=$matches[2]\";s:42:\"index.php/concert/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?concert=$matches[1]&page=$matches[2]\";s:34:\"index.php/concert/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/concert/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/concert/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/concert/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/concert/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/concert/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"index.php/film/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"index.php/film/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"index.php/film/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"index.php/film/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"index.php/film/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"index.php/film/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"index.php/film/([^/]+)/embed/?$\";s:37:\"index.php?film=$matches[1]&embed=true\";s:35:\"index.php/film/([^/]+)/trackback/?$\";s:31:\"index.php?film=$matches[1]&tb=1\";s:55:\"index.php/film/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?film=$matches[1]&feed=$matches[2]\";s:50:\"index.php/film/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?film=$matches[1]&feed=$matches[2]\";s:43:\"index.php/film/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?film=$matches[1]&paged=$matches[2]\";s:50:\"index.php/film/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?film=$matches[1]&cpage=$matches[2]\";s:39:\"index.php/film/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?film=$matches[1]&page=$matches[2]\";s:31:\"index.php/film/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"index.php/film/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"index.php/film/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"index.php/film/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"index.php/film/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/film/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"index.php/product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:38:\"index.php/product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:46:\"index.php/product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:53:\"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:42:\"index.php/product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:34:\"index.php/product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:42:\"index.php/category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:39:\"index.php/tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:43:\"index.php/concert/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?concert=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/concert/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/concert/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:40:\"index.php/film/([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?film=$matches[1]&wc-api=$matches[3]\";s:46:\"index.php/film/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:57:\"index.php/film/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:43:\"index.php/product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:65:\"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:60:\"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:41:\"index.php/product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:53:\"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:35:\"index.php/product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:62:\"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:57:\"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:38:\"index.php/product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:50:\"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:32:\"index.php/product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=31&cpage=$matches[1]\";s:27:\"index.php/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:36:\"index.php/comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:39:\"index.php/search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:64:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:51:\"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:38:\"index.php/([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:72:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:72:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:83:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:38:\"index.php/(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:43:\"index.php/(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:35:\"index.php/(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:39:\"index.php/(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:38:\"index.php/(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:44:\"index.php/(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:42:\"index.php/(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:44:\"index.php/(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:47:\"index.php/(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:50:\"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:55:\"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:35:\"index.php/(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:41:\"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:25:\"divyoutube/divyoutube.php\";i:4;s:31:\"easy-fancybox/easy-fancybox.php\";i:5;s:27:\"map-adresse/map-adresse.php\";i:6;s:31:\"posts-recents/posts-recents.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:31:\"wp-google-maps/wpGoogleMaps.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:71:\"C:\\xampp\\htdocs\\wp-div 2018/wp-content/themes/twentyseventeen/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'bootstrap-basic4', 'yes'),
(41, 'stylesheet', 'basicchild', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:49:\"easy-language-switcher/easy-language-switcher.php\";a:2:{i:0;s:16:\"easyLangSwitcher\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '33', 'yes'),
(84, 'page_on_front', '31', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'dadd_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:13:\"sidebar-perso\";a:1:{i:0;s:13:\"media_video-2\";}s:12:\"sidebar-left\";a:0:{}s:13:\"sidebar-right\";a:1:{i:0;s:10:\"calendar-2\";}s:12:\"header-right\";a:0:{}s:12:\"navbar-right\";a:0:{}s:11:\"footer-left\";a:0:{}s:12:\"footer-right\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:2:{i:2;a:11:{s:13:\"attachment_id\";i:0;s:3:\"url\";s:28:\"https://youtu.be/hUvbb_eUP84\";s:5:\"title\";s:0:\"\";s:7:\"preload\";s:8:\"metadata\";s:4:\"loop\";b:0;s:7:\"content\";s:0:\"\";s:3:\"mp4\";s:0:\"\";s:3:\"m4v\";s:0:\"\";s:4:\"webm\";s:0:\"\";s:3:\"ogv\";s:0:\"\";s:3:\"flv\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:9:{i:1521049412;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1521060712;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521068400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521089012;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1521103953;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521104941;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1521132212;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1522713600;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1520845400;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, '_site_transient_timeout_browser_66b088582da3ef81a72c671e4be0dfc8', '1521449554', 'no'),
(126, '_site_transient_browser_66b088582da3ef81a72c671e4be0dfc8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.146\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(154, 'current_theme', 'Basic Child', 'yes'),
(155, 'theme_mods_bootstrap-basic4', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1520847877;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:12:\"sidebar-left\";a:0:{}s:13:\"sidebar-right\";a:1:{i:0;s:10:\"calendar-2\";}s:12:\"header-right\";a:0:{}s:12:\"navbar-right\";a:0:{}s:11:\"footer-left\";a:0:{}s:12:\"footer-right\";a:0:{}}}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(167, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(168, '_transient_timeout_plugin_slugs', '1521132202', 'no'),
(169, '_transient_plugin_slugs', 'a:12:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:25:\"divyoutube/divyoutube.php\";i:5;s:31:\"easy-fancybox/easy-fancybox.php\";i:6;s:9:\"hello.php\";i:7;s:27:\"map-adresse/map-adresse.php\";i:8;s:31:\"posts-recents/posts-recents.php\";i:9;s:39:\"sf-adminbar-tools/sf-adminbar-tools.php\";i:10;s:27:\"woocommerce/woocommerce.php\";i:11;s:31:\"wp-google-maps/wpGoogleMaps.php\";}', 'no'),
(170, 'recently_activated', 'a:2:{s:39:\"sf-adminbar-tools/sf-adminbar-tools.php\";i:1521033972;s:49:\"easy-language-switcher/easy-language-switcher.php\";i:1520868083;}', 'yes'),
(175, '_sf_abt', 'a:1:{s:9:\"coworkers\";a:1:{i:1;i:1;}}', 'yes'),
(179, 'theme_mods_basicchild', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:10:\"menufooter\";i:8;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(186, 'acf_version', '4.4.12', 'yes'),
(195, 'wpcf7', 'a:3:{s:7:\"version\";s:5:\"5.0.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1520868441;s:7:\"version\";s:5:\"5.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}s:9:\"recaptcha\";a:1:{s:40:\"6LfUMEwUAAAAABaWBecAbmn6KhVvnWc6EFleFhjd\";s:40:\"6LfUMEwUAAAAADnFlgq5VHJ5-ys-N9pgOF7rLb1d\";}}', 'yes'),
(197, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1521042719;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(199, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1521042718;s:7:\"checked\";a:5:{s:10:\"basicchild\";s:0:\"\";s:16:\"bootstrap-basic4\";s:5:\"1.0.2\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(202, 'fancybox_enableImg', '1', 'yes'),
(203, 'fancybox_enableInline', '', 'yes'),
(204, 'fancybox_enablePDF', '', 'yes'),
(205, 'fancybox_enableSWF', '', 'yes'),
(206, 'fancybox_enableSVG', '', 'yes'),
(207, 'fancybox_enableYoutube', '', 'yes'),
(208, 'fancybox_enableVimeo', '', 'yes'),
(209, 'fancybox_enableDailymotion', '', 'yes'),
(210, 'fancybox_enableiFrame', '', 'yes'),
(211, 'fancybox_overlayShow', '1', 'yes'),
(212, 'fancybox_hideOnOverlayClick', '1', 'yes'),
(213, 'fancybox_overlayOpacity', '', 'yes'),
(214, 'fancybox_overlayColor', '', 'yes'),
(215, 'fancybox_overlaySpotlight', '', 'yes'),
(216, 'fancybox_showCloseButton', '1', 'yes'),
(217, 'fancybox_backgroundColor', '', 'yes'),
(218, 'fancybox_textColor', '', 'yes'),
(219, 'fancybox_titleColor', '', 'yes'),
(220, 'fancybox_paddingColor', '', 'yes'),
(221, 'fancybox_borderRadius', '', 'yes'),
(222, 'fancybox_width', '', 'yes'),
(223, 'fancybox_height', '', 'yes'),
(224, 'fancybox_padding', '', 'yes'),
(225, 'fancybox_margin', '20', 'yes'),
(226, 'fancybox_centerOnScroll', '1', 'yes'),
(227, 'fancybox_enableEscapeButton', '1', 'yes'),
(228, 'fancybox_autoScale', '1', 'yes'),
(229, 'fancybox_speedIn', '', 'yes'),
(230, 'fancybox_speedOut', '', 'yes'),
(231, 'fancybox_autoClick', '1', 'yes'),
(232, 'fancybox_delayClick', '1000', 'yes'),
(233, 'fancybox_compatIE8', '', 'yes'),
(234, 'fancybox_metaData', '', 'yes'),
(235, 'fancybox_autoAttribute', '.jpg .jpeg .png .webp', 'yes'),
(236, 'fancybox_autoAttributeLimit', '', 'yes'),
(237, 'fancybox_classType', '', 'yes'),
(238, 'fancybox_transitionIn', '', 'yes'),
(239, 'fancybox_easingIn', 'easeOutBack', 'yes'),
(240, 'fancybox_transitionOut', '', 'yes'),
(241, 'fancybox_easingOut', 'easeInBack', 'yes'),
(242, 'fancybox_opacity', '', 'yes'),
(243, 'fancybox_hideOnContentClick', '', 'yes'),
(244, 'fancybox_titleShow', '1', 'yes'),
(245, 'fancybox_titlePosition', 'over', 'yes'),
(246, 'fancybox_titleFromAlt', '1', 'yes'),
(247, 'fancybox_autoGallery', '1', 'yes'),
(248, 'fancybox_showNavArrows', '1', 'yes'),
(249, 'fancybox_enableKeyboardNav', '1', 'yes'),
(250, 'fancybox_mouseWheel', '1', 'yes'),
(251, 'fancybox_cyclic', '', 'yes'),
(252, 'fancybox_changeSpeed', '', 'yes'),
(253, 'fancybox_changeFade', '', 'yes'),
(254, 'fancybox_autoSelector', 'div.gallery', 'yes'),
(257, 'EASY_SWITCHER_LANG', 'fr_FR', 'yes'),
(264, 'cptui_new_install', 'false', 'yes');
INSERT INTO `dadd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(265, 'cptui_post_types', 'a:2:{s:7:\"concert\";a:28:{s:4:\"name\";s:7:\"concert\";s:5:\"label\";s:8:\"Concerts\";s:14:\"singular_label\";s:7:\"Concert\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:22:\"dashicons-format-audio\";s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:8:\"comments\";i:4;s:15:\"page-attributes\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:4:\"film\";a:28:{s:4:\"name\";s:4:\"film\";s:5:\"label\";s:5:\"films\";s:14:\"singular_label\";s:4:\"film\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:22:\"dashicons-format-video\";s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:8:\"comments\";i:4;s:15:\"page-attributes\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(271, 'category_children', 'a:0:{}', 'yes'),
(301, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(302, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(303, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(304, 'wpgmza_db_version', '6.4.10', 'yes'),
(305, 'wpgmaps_current_version', '6.4.10', 'yes'),
(306, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(307, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(308, 'WPGMZA_OTHER_SETTINGS', 'a:1:{s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";}', 'yes'),
(309, 'WPGMZA_FIRST_TIME', '6.4.10', 'yes'),
(310, 'wpgmza_stats', 'a:3:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:8;s:13:\"last_accessed\";s:19:\"2018-03-14 15:34:40\";s:14:\"first_accessed\";s:19:\"2018-03-13 09:32:30\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:1;s:13:\"last_accessed\";s:19:\"2018-03-13 09:35:35\";s:14:\"first_accessed\";s:19:\"2018-03-13 09:35:35\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:4;s:13:\"last_accessed\";s:19:\"2018-03-13 09:38:14\";s:14:\"first_accessed\";s:19:\"2018-03-13 09:35:57\";}}', 'yes'),
(311, 'wpgmza_google_maps_api_key', 'AIzaSyB4mUcFWGjTM_Ea-QV6ZRGR-YA9WP9kJbo', 'yes'),
(312, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:17:\"47.98062820765308\";s:24:\"map_default_starting_lng\";s:17:\"5.215609012499954\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:6;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(343, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1521045801;s:7:\"checked\";a:12:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.1\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.7\";s:25:\"divyoutube/divyoutube.php\";s:3:\"1.0\";s:31:\"easy-fancybox/easy-fancybox.php\";s:5:\"1.6.2\";s:9:\"hello.php\";s:3:\"1.6\";s:27:\"map-adresse/map-adresse.php\";s:3:\"1.0\";s:31:\"posts-recents/posts-recents.php\";s:0:\"\";s:39:\"sf-adminbar-tools/sf-adminbar-tools.php\";s:5:\"3.0.4\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.3.3\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:6:\"6.4.10\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"3.3.3\";s:7:\"updated\";s:19:\"2018-02-28 13:11:12\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/3.3.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.7\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.7.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:7:\"default\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";s:7:\"default\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"easy-fancybox/easy-fancybox.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/easy-fancybox\";s:4:\"slug\";s:13:\"easy-fancybox\";s:6:\"plugin\";s:31:\"easy-fancybox/easy-fancybox.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/easy-fancybox/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/easy-fancybox.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/easy-fancybox/assets/icon-128x128.png?rev=1112136\";s:7:\"default\";s:66:\"https://ps.w.org/easy-fancybox/assets/icon-128x128.png?rev=1112136\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/easy-fancybox/assets/banner-772x250.jpg?rev=1112136\";s:7:\"default\";s:68:\"https://ps.w.org/easy-fancybox/assets/banner-772x250.jpg?rev=1112136\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"sf-adminbar-tools/sf-adminbar-tools.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/sf-adminbar-tools\";s:4:\"slug\";s:17:\"sf-adminbar-tools\";s:6:\"plugin\";s:39:\"sf-adminbar-tools/sf-adminbar-tools.php\";s:11:\"new_version\";s:5:\"3.0.4\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/sf-adminbar-tools/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/sf-adminbar-tools.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/sf-adminbar-tools/assets/banner-1544x500.jpg?rev=1286676\";s:2:\"1x\";s:72:\"https://ps.w.org/sf-adminbar-tools/assets/banner-772x250.jpg?rev=1286676\";s:7:\"default\";s:73:\"https://ps.w.org/sf-adminbar-tools/assets/banner-1544x500.jpg?rev=1286676\";}s:11:\"banners_rtl\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/sf-adminbar-tools/assets/banner-1544x500-rtl.jpg?rev=1286676\";s:2:\"1x\";s:76:\"https://ps.w.org/sf-adminbar-tools/assets/banner-772x250-rtl.jpg?rev=1286676\";s:7:\"default\";s:77:\"https://ps.w.org/sf-adminbar-tools/assets/banner-1544x500-rtl.jpg?rev=1286676\";}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.3.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-google-maps/wpGoogleMaps.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-google-maps\";s:4:\"slug\";s:14:\"wp-google-maps\";s:6:\"plugin\";s:31:\"wp-google-maps/wpGoogleMaps.php\";s:11:\"new_version\";s:6:\"6.4.10\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-google-maps/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-google-maps.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-128x128.png?rev=970398\";s:2:\"2x\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";s:7:\"default\";s:66:\"https://ps.w.org/wp-google-maps/assets/icon-256x256.png?rev=970398\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";s:7:\"default\";s:68:\"https://ps.w.org/wp-google-maps/assets/banner-772x250.jpg?rev=792293\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(344, '_site_transient_timeout_browser_e347199f414c5273d625d0ad1f957013', '1521632617', 'no'),
(345, '_site_transient_browser_e347199f414c5273d625d0ad1f957013', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.162\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(346, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1521071019', 'no'),
(347, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:0:{}}', 'no'),
(348, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1521071019', 'no');
INSERT INTO `dadd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(349, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 14 Mar 2018 11:38:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 08:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2107099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WPFR sponsor du WP Tech Lyon !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 07:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2082223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Loi anti-fraude et l’e-commerce : les informations officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Jan 2018 14:51:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"Loi anti-fraude\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2072415\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1503:\"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"39\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/election-bureau-wpfr-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Jan 2018 11:30:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2041252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1530:\"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/election-bureau-wpfr-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"PHP Tour Montpellier 2018 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Jan 2018 10:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2035309\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le point sur les certifications WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/point-certifications-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 17:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2001761\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1552:\"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/point-certifications-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/point-certifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 05 Sep 2017 11:59:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1860285\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/gen5-evenement-numerique-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"r4iY8Z7gUTVCA9Yz9jT3/gb4rRw\";s:13:\"last-modified\";s:29:\"Wed, 14 Mar 2018 11:38:58 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Wed, 14 Mar 2018 11:43:36 GMT\";s:7:\"expires\";s:29:\"Wed, 14 Mar 2018 11:43:36 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:104:\"hq=\":443\"; ma=2592000; quic=51303431; quic=51303339; quic=51303335,quic=\":443\"; ma=2592000; v=\"41,39,35\"\";}}s:5:\"build\";s:14:\"20180312083929\";}', 'no');
INSERT INTO `dadd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(350, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1521071019', 'no'),
(351, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1521027819', 'no'),
(352, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1521071019', 'no'),
(353, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Salon WPNDIGITAL : Site web et billetterie ouverts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/6Yg672d_xDo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://www.wpnormandie.fr/salon-wpndigital-site-web-et-billetterie-ouverts/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Mar 2018 07:31:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:375:\"\n		        Les choses s’accélèrent autour du salon WPNDigital. En effet, le site internet a ouvert vendredi dernier et avec la billetterie. Pour rappel WPNDigital est le premier salon en France à aborder les trois thématiques suivantes dans un même événement : le Web, le digital, WordPress. Il se déroulera le 2 juin 2018 au centre de congrès [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:445:\"Les choses s’accélèrent autour du salon WPNDigital. En effet, le site internet a ouvert vendredi dernier et avec la billetterie. Pour rappel WPNDigital est le premier salon en France à aborder les trois thématiques suivantes dans un même événement : le Web, le digital, WordPress. Il se déroulera le 2 juin 2018 au centre de congrès [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/6Yg672d_xDo\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://www.wpnormandie.fr/salon-wpndigital-site-web-et-billetterie-ouverts/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Forcer la désindexation de pages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"http://feedproxy.google.com/~r/wpfr/~3/T6D3Pa-pD9E/forcer-la-desindexation-de-pages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"http://blog.beapi.fr/forcer-la-desindexation-de-pages\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Mar 2018 11:35:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:221:\"\n		        Pour désindexer une page, une simple restriction 403 ne résout pas le problème, il faut forcer un code 410.\nCet article Forcer la désindexation de pages est apparu en premier sur Be API Tech blog.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3154:\"<header class=\"hkb-article__header\">\n<p class=\"hkb-article__title\">Si un environnement de dev/qualif/preprod est indexé par les moteurs de recherche, une simple restriction (403) ne résoud le problème que partiellement.</p>\n</header>\n<div class=\"hkb-article__content\">\n<p>En effet, les robots ne pourront plus accéder aux pages mais elles resteront dans l’index (donc interrogées régulièrement).</p>\n<h2 class=\"hkb-article__title\">Renvoyer des 410 afin de désindexer des pages</h2>\n<p>Pour indiquer aux moteurs de recherche que ces pages sont à désindexer, le moyen le plus rapide c’est de renvoyer des 410. Ce code indique qu’une ressource qui était disponible auparavant ne l’est plus actuellement.</p>\n<div class=\"code-embed-wrapper\"> <pre class=\"language-bash code-embed-pre\"><code class=\"language-bash code-embed-code\">RewriteEngine On\nRewriteCond %{HTTP_USER_AGENT} Googlebot [OR]\nRewriteCond %{HTTP_USER_AGENT} AdsBot-Google [OR]\nRewriteCond %{HTTP_USER_AGENT} msnbot [OR]\nRewriteCond %{HTTP_USER_AGENT} AltaVista [OR]\nRewriteCond %{HTTP_USER_AGENT} Slurp\nRewriteRule . - [G,L]</code></pre> <div class=\"code-embed-infos\"> <a href=\"https://github.com/BeAPI/bea-sample/blob/master/.htaccess-410\" title=\"Afficher .htaccess-410\" target=\"_blank\" class=\"code-embed-name\">.htaccess-410</a> <a href=\"https://raw.github.com/BeAPI/bea-sample/master/.htaccess-410\" title=\"Back to .htaccess-410\" class=\"code-embed-raw\" target=\"_blank\">affichage brut</a> </div> </div>\n<p>Pour cibler des pages en particulier, suivre l’exemple ci-dessous.</p>\n<div class=\"code-embed-wrapper\"> <pre class=\"language-bash code-embed-pre\"><code class=\"language-bash code-embed-code\">RewriteRule ^/wp-content/uploads/2017/01/CV_RF-Continue.pdf$ - [G,NC]\nRewriteRule ^/wp-content/uploads/2017/01/CV.pdf$ - [G,NC]\nRewriteRule ^/wp-content/uploads/2017/01/LM.pdf$ - [G,NC]\nRewriteRule ^/wp-content/uploads/2016/11/lettre_motivation_XT.pdf$ - [G,NC]\nRewriteRule ^/wp-content/uploads/2016/07/201606-CV-FR-v1.pdf$ - [G,NC]</code></pre> <div class=\"code-embed-infos\"> <a href=\"https://github.com/BeAPI/bea-sample/blob/master/.htaccess-410-precise\" title=\"Afficher .htaccess-410-precise\" target=\"_blank\" class=\"code-embed-name\">.htaccess-410-precise</a> <a href=\"https://raw.github.com/BeAPI/bea-sample/master/.htaccess-410-precise\" title=\"Back to .htaccess-410-precise\" class=\"code-embed-raw\" target=\"_blank\">affichage brut</a> </div> </div>\n<h2>Conclusion</h2>\n<header class=\"hkb-article__header\">\n<p class=\"hkb-article__title\">Une simple restriction 403 ne résout pas le problème, il faut forcer un code 410.</p>\n</header>\n<p><em>Bonus :</em> Plusieurs tests internes démontrent qu’au bout de 2 semaines, les URLs commencent à disparaître du moteur de recherche contre 6 mois environ quand du 403 est renvoyé !</p>\n<p>Enjoy !</p>\n</div>\n<p>Cet article <a rel=\"nofollow\" href=\"http://blog.beapi.fr/forcer-la-desindexation-de-pages\">Forcer la désindexation de pages</a> est apparu en premier sur <a rel=\"nofollow\" href=\"http://blog.beapi.fr\">Be API Tech blog</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/T6D3Pa-pD9E\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"http://blog.beapi.fr/forcer-la-desindexation-de-pages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Simplifiez le développement de vos thèmes avec Gulp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/NB6bUjJZEfY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://www.geekpress.fr/wordcamp-paris-themes-gulp/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Mar 2018 09:45:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:514:\"\n		        Cet article fait suite à ma conférence au WordCamp Paris 2018, ou je faisais une démonstration de l&#8217;utilisation de Gulp dans un thème WordPress, qui permet de compiler les fichiers CSS, JS, les compresser, recharger automatiquement le navigateur et bien d&#8217;autres encore. Démonstration. WordCamp Paris 2018 Cette année le WordCamp Paris s&#8217;est déroulé le 9 [&#8230;]\nCet article Simplifiez le développement de vos thèmes avec Gulp est apparu en premier sur GeekPress.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Geekpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:732:\"<p>Cet article fait suite à ma conférence au WordCamp Paris 2018, ou je faisais une démonstration de l&#8217;utilisation de Gulp dans un thème WordPress, qui permet de compiler les fichiers CSS, JS, les compresser, recharger automatiquement le navigateur et bien d&#8217;autres encore. Démonstration. WordCamp Paris 2018 Cette année le WordCamp Paris s&#8217;est déroulé le 9 [&#8230;]</p>\n<p>Cet article <a rel=\"nofollow\" href=\"http://www.geekpress.fr/wordcamp-paris-themes-gulp/\">Simplifiez le développement de vos thèmes avec Gulp</a> est apparu en premier sur <a rel=\"nofollow\" href=\"http://www.geekpress.fr\">GeekPress</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/NB6bUjJZEfY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://www.geekpress.fr/wordcamp-paris-themes-gulp/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"10 outils pour vous faciliter la vie avec WordPress !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/VBsH2q4ApFw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpformation.com/10-outils-faciliter-vie-wordpress/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Mar 2018 07:30:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:564:\"\n		        Je parie qu’on tombera d’accord si je vous dis que la vie est déjà assez compliquée comme ça. Pour commencer, elle est beaucoup trop courte et n’offre pas assez de temps pour faire tout ce qu’on a envie de faire… ce qui inclut votre liste d’objectifs sur WordPress. Et c’est pourquoi quelques outils bien conçus [&#8230;]\n\nL’article 10 outils pour vous faciliter la vie avec WordPress ! est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1433:\"<p><img width=\"1800\" height=\"1200\" src=\"https://wpformation.com/wp-content/uploads/2018/02/10-outils-pour-faciliter-WordPress.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"10 outils pour faciliter WordPress\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Je parie qu’on tombera d’accord si je vous dis que la vie est déjà assez compliquée comme ça. Pour commencer, elle est beaucoup trop courte et n’offre pas assez de temps pour faire tout ce qu’on a envie de faire… ce qui inclut votre liste d’objectifs sur WordPress. Et c’est pourquoi quelques outils bien conçus [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/10-outils-faciliter-vie-wordpress/\">10 outils pour vous faciliter la vie avec WordPress !</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/VBsH2q4ApFw\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpformation.com/10-outils-faciliter-vie-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Les 19 plugins WordPress à tester et à adopter en 2018 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/KforpBSDymg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpformation.com/19-plugins-wordpress-2018/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Mar 2018 13:45:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:617:\"\n		        Que ferait-on sans plugins ? Les utilisateurs de WordPress le savent bien : les plugins permettent d&#8217;ajouter des fonctionnalités afin d&#8217;obtenir un site web plus abouti et qui correspond mieux à leurs attentes. Sur le répertoire officiel des plugins de WordPress, il y a un nombre incroyable d&#8217;extensions mises à votre disposition, certaines se ressemblent, [&#8230;]\n\nL’article Les 19 plugins WordPress à tester et à adopter en 2018 ! est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1460:\"<p><img width=\"1920\" height=\"1080\" src=\"https://wpformation.com/wp-content/uploads/2018/02/19-plugins-WordPress-2018.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"19-plugins-WordPress-2018\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Que ferait-on sans plugins ? Les utilisateurs de WordPress le savent bien : les plugins permettent d&#8217;ajouter des fonctionnalités afin d&#8217;obtenir un site web plus abouti et qui correspond mieux à leurs attentes. Sur le répertoire officiel des plugins de WordPress, il y a un nombre incroyable d&#8217;extensions mises à votre disposition, certaines se ressemblent, [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/19-plugins-wordpress-2018/\">Les 19 plugins WordPress à tester et à adopter en 2018 !</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/KforpBSDymg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpformation.com/19-plugins-wordpress-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"Les 9 meilleures extensions pour installer Google Maps sur WordPress facilement\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/26o6KrHOSss/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:121:\"https://wpmarmite.com/google-maps-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=google-maps-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 08 Mar 2018 09:36:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:455:\"\n		        \nUn fantôme tapi dans le château d’Édimbourg, un cimetière d’avions aux États-Unis ou encore une étoile satanique : voilà ce qu’auraient un jour aperçu certains utilisateurs de Google Maps, en...\nLes 9 meilleures extensions pour installer Google Maps sur WordPress facilement est un article de WP Marmite, le blog qui vous aide à tirer le meilleur de WordPress.\nAbonnez-vous à la newsletter pour recevoir les suivants.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:892:\"<p><img width=\"640\" height=\"220\" src=\"https://wpmarmite.com/wp-content/uploads/2018/03/google-maps-wordpress.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Un fantôme tapi dans le château d’Édimbourg, un cimetière d’avions aux États-Unis ou encore une étoile satanique : voilà ce qu’auraient un jour aperçu certains utilisateurs de Google Maps, en...</p>\n<p><a rel=\"nofollow\" href=\"https://wpmarmite.com/google-maps-wordpress/\">Les 9 meilleures extensions pour installer Google Maps sur WordPress facilement</a> est un article de <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>, le blog qui vous aide à tirer le meilleur de WordPress.<br />\n<a href=\"https://wpmarmite.com/newsletter\">Abonnez-vous à la newsletter</a> pour recevoir les suivants.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/26o6KrHOSss\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:121:\"https://wpmarmite.com/google-maps-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=google-maps-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"NextScripts: Social Networks Auto-Poster\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/bL-BnXV6Q-M/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.echodesplugins.li-an.fr/plugins/nextscripts-social-networks-auto-poster/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Mar 2018 21:33:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"\n		        Partager automatiquement vos articles sur les réseaux sociaux		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:153:\"Partager automatiquement vos articles sur les réseaux sociaux<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/bL-BnXV6Q-M\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://www.echodesplugins.li-an.fr/plugins/nextscripts-social-networks-auto-poster/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"WordPress représente maintenant 30% du Web\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/sPr_jPN901c/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://www.wpnormandie.fr/wordpress-represente-maintenant-30-du-web/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 15:36:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:378:\"\n		        WordPress est utilisé par 30% des sites web au niveau mondial. C’est ce qui ressort du site « w3techs.com » qui recense tous les systèmes utilisés sur le web. C’est un chiffre symbolique qui montre bien à quel point WordPress est le « CMS star » au niveau mondial. C’est d’autant plus vrai lorsqu’on regarde le score des deux [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:448:\"WordPress est utilisé par 30% des sites web au niveau mondial. C’est ce qui ressort du site « w3techs.com » qui recense tous les systèmes utilisés sur le web. C’est un chiffre symbolique qui montre bien à quel point WordPress est le « CMS star » au niveau mondial. C’est d’autant plus vrai lorsqu’on regarde le score des deux [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/sPr_jPN901c\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://www.wpnormandie.fr/wordpress-represente-maintenant-30-du-web/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"YAHvXZzDczM30pZjhuJZ7eNyZl0\";s:13:\"last-modified\";s:29:\"Wed, 14 Mar 2018 11:27:42 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Wed, 14 Mar 2018 11:43:36 GMT\";s:7:\"expires\";s:29:\"Wed, 14 Mar 2018 11:43:36 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:104:\"hq=\":443\"; ma=2592000; quic=51303431; quic=51303339; quic=51303335,quic=\":443\"; ma=2592000; v=\"41,39,35\"\";}}s:5:\"build\";s:14:\"20180312083929\";}', 'no'),
(354, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1521071019', 'no'),
(355, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1521027819', 'no'),
(356, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1521071019', 'no'),
(357, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\'>Résultats des élections du bureau 2018</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/6Yg672d_xDo/\'>Salon WPNDIGITAL : Site web et billetterie ouverts</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/T6D3Pa-pD9E/forcer-la-desindexation-de-pages\'>Forcer la désindexation de pages</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/NB6bUjJZEfY/\'>Simplifiez le développement de vos thèmes avec Gulp</a></li></ul></div>', 'no'),
(360, 'mapadresse_settings', 'a:2:{s:7:\"cle_api\";s:39:\"AIzaSyB4mUcFWGjTM_Ea-QV6ZRGR-YA9WP9kJbo\";s:4:\"zoom\";s:2:\"17\";}', 'yes'),
(363, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1521053332', 'no'),
(364, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4440;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2646;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2543;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2408;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1857;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1638;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1631;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1447;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1383;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1380;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1378;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1301;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1280;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1186;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1088;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1056;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1014;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:993;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:869;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:863;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:823;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:797;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:791;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:699;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:689;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:683;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:674;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:672;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:654;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:651;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:639;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:636;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:631;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:610;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:608;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:599;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:599;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:587;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:584;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:584;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:558;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:545;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:535;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:530;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:519;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:512;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:510;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:504;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:489;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:486;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:485;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:484;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:478;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:470;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:465;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:462;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:453;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:451;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:436;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:426;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:423;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:418;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:416;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:416;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:411;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:410;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:402;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:397;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:390;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:383;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:377;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:361;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:354;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:353;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:350;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:343;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:341;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:339;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:337;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:335;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:334;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:334;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:333;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:329;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:328;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:326;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:317;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:305;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:302;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:302;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:300;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:295;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:292;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:292;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:290;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:290;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:287;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:286;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:285;}}', 'no'),
(369, 'woocommerce_store_address', '', 'yes'),
(370, 'woocommerce_store_address_2', '', 'yes'),
(371, 'woocommerce_store_city', '', 'yes'),
(372, 'woocommerce_default_country', 'GB', 'yes'),
(373, 'woocommerce_store_postcode', '', 'yes'),
(374, 'woocommerce_allowed_countries', 'all', 'yes'),
(375, 'woocommerce_all_except_countries', '', 'yes'),
(376, 'woocommerce_specific_allowed_countries', '', 'yes'),
(377, 'woocommerce_ship_to_countries', '', 'yes'),
(378, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(379, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(380, 'woocommerce_calc_taxes', 'no', 'yes'),
(381, 'woocommerce_currency', 'GBP', 'yes'),
(382, 'woocommerce_currency_pos', 'left', 'yes'),
(383, 'woocommerce_price_thousand_sep', ',', 'yes'),
(384, 'woocommerce_price_decimal_sep', '.', 'yes'),
(385, 'woocommerce_price_num_decimals', '2', 'yes'),
(386, 'woocommerce_shop_page_id', '', 'yes'),
(387, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(388, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(389, 'woocommerce_weight_unit', 'kg', 'yes'),
(390, 'woocommerce_dimension_unit', 'cm', 'yes'),
(391, 'woocommerce_enable_reviews', 'yes', 'yes'),
(392, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(393, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(394, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(395, 'woocommerce_review_rating_required', 'yes', 'no'),
(396, 'woocommerce_manage_stock', 'yes', 'yes'),
(397, 'woocommerce_hold_stock_minutes', '60', 'no'),
(398, 'woocommerce_notify_low_stock', 'yes', 'no'),
(399, 'woocommerce_notify_no_stock', 'yes', 'no'),
(400, 'woocommerce_stock_email_recipient', 'jonathanchemla55@gmail.com', 'no'),
(401, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(402, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(403, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(404, 'woocommerce_stock_format', '', 'yes'),
(405, 'woocommerce_file_download_method', 'force', 'no'),
(406, 'woocommerce_downloads_require_login', 'no', 'no'),
(407, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(408, 'woocommerce_prices_include_tax', 'no', 'yes'),
(409, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(410, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(411, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(412, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(413, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(414, 'woocommerce_tax_display_cart', 'excl', 'no'),
(415, 'woocommerce_price_display_suffix', '', 'yes'),
(416, 'woocommerce_tax_total_display', 'itemized', 'no'),
(417, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(418, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(419, 'woocommerce_ship_to_destination', 'billing', 'no'),
(420, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(421, 'woocommerce_enable_coupons', 'yes', 'yes'),
(422, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(423, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(424, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(425, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(426, 'woocommerce_cart_page_id', '', 'yes'),
(427, 'woocommerce_checkout_page_id', '', 'yes'),
(428, 'woocommerce_terms_page_id', '', 'no'),
(429, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(430, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(431, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(432, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(433, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(434, 'woocommerce_myaccount_page_id', '', 'yes'),
(435, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(436, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(437, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(438, 'woocommerce_registration_generate_username', 'yes', 'no'),
(439, 'woocommerce_registration_generate_password', 'no', 'no'),
(440, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(441, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(442, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(443, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(444, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(445, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(446, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(447, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(448, 'woocommerce_email_from_name', 'site de dev', 'no'),
(449, 'woocommerce_email_from_address', 'jonathanchemla55@gmail.com', 'no'),
(450, 'woocommerce_email_header_image', '', 'no'),
(451, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(452, 'woocommerce_email_base_color', '#96588a', 'no'),
(453, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(454, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(455, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(456, 'woocommerce_api_enabled', 'yes', 'yes'),
(457, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(458, 'current_theme_supports_woocommerce', 'no', 'yes'),
(459, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(460, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(461, 'product_cat_children', 'a:0:{}', 'yes'),
(462, 'default_product_cat', '22', 'yes'),
(465, 'woocommerce_version', '3.3.3', 'yes'),
(466, 'woocommerce_db_version', '3.3.3', 'yes'),
(467, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:14:\"template_files\";}', 'yes'),
(468, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(469, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(470, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(471, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(472, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(473, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(474, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(475, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(476, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(477, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(478, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `dadd_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(479, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(480, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(482, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(483, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `dadd_postmeta`
--

CREATE TABLE `dadd_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dadd_postmeta`
--

INSERT INTO `dadd_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2018/03/espresso.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/03/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 4, '_starter_content_theme', 'twentyseventeen'),
(5, 4, '_customize_draft_post_name', 'expresso'),
(6, 5, '_wp_attached_file', '2018/03/sandwich.jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/03/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 5, '_starter_content_theme', 'twentyseventeen'),
(9, 5, '_customize_draft_post_name', 'sandwich'),
(10, 6, '_wp_attached_file', '2018/03/coffee.jpg'),
(11, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2018/03/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 6, '_starter_content_theme', 'twentyseventeen'),
(13, 6, '_customize_draft_post_name', 'cafe'),
(14, 7, '_customize_draft_post_name', 'accueil'),
(15, 7, '_customize_changeset_uuid', '4df0239e-6b36-43ce-87db-bd81005d2ebc'),
(16, 8, '_thumbnail_id', '5'),
(17, 8, '_customize_draft_post_name', 'a-propos-de'),
(18, 8, '_customize_changeset_uuid', '4df0239e-6b36-43ce-87db-bd81005d2ebc'),
(19, 9, '_thumbnail_id', '4'),
(20, 9, '_customize_draft_post_name', 'contact'),
(21, 9, '_customize_changeset_uuid', '4df0239e-6b36-43ce-87db-bd81005d2ebc'),
(22, 10, '_thumbnail_id', '6'),
(23, 10, '_customize_draft_post_name', 'blog'),
(24, 10, '_customize_changeset_uuid', '4df0239e-6b36-43ce-87db-bd81005d2ebc'),
(25, 11, '_thumbnail_id', '4'),
(26, 11, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(27, 11, '_customize_changeset_uuid', '4df0239e-6b36-43ce-87db-bd81005d2ebc'),
(28, 13, '_wp_attached_file', '2018/03/espresso-1.jpg'),
(29, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/03/espresso-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 13, '_starter_content_theme', 'twentyseventeen'),
(31, 13, '_customize_draft_post_name', 'expresso'),
(32, 14, '_wp_attached_file', '2018/03/sandwich-1.jpg'),
(33, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/03/sandwich-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 14, '_starter_content_theme', 'twentyseventeen'),
(35, 14, '_customize_draft_post_name', 'sandwich'),
(36, 15, '_wp_attached_file', '2018/03/coffee-1.jpg'),
(37, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/03/coffee-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 15, '_starter_content_theme', 'twentyseventeen'),
(39, 15, '_customize_draft_post_name', 'cafe'),
(40, 16, '_customize_draft_post_name', 'accueil'),
(41, 16, '_customize_changeset_uuid', 'c2936ae5-7a0f-44b4-b6ce-ae6950936e41'),
(42, 17, '_thumbnail_id', '14'),
(43, 17, '_customize_draft_post_name', 'a-propos-de'),
(44, 17, '_customize_changeset_uuid', 'c2936ae5-7a0f-44b4-b6ce-ae6950936e41'),
(45, 18, '_thumbnail_id', '13'),
(46, 18, '_customize_draft_post_name', 'contact'),
(47, 18, '_customize_changeset_uuid', 'c2936ae5-7a0f-44b4-b6ce-ae6950936e41'),
(48, 19, '_thumbnail_id', '15'),
(49, 19, '_customize_draft_post_name', 'blog'),
(50, 19, '_customize_changeset_uuid', 'c2936ae5-7a0f-44b4-b6ce-ae6950936e41'),
(51, 20, '_thumbnail_id', '13'),
(52, 20, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(53, 20, '_customize_changeset_uuid', 'c2936ae5-7a0f-44b4-b6ce-ae6950936e41'),
(55, 22, '_wp_attached_file', '2018/03/espresso-2.jpg'),
(56, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/03/espresso-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 22, '_starter_content_theme', 'twentyseventeen'),
(58, 22, '_customize_draft_post_name', 'expresso'),
(59, 23, '_wp_attached_file', '2018/03/sandwich-2.jpg'),
(60, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/03/sandwich-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 23, '_starter_content_theme', 'twentyseventeen'),
(62, 23, '_customize_draft_post_name', 'sandwich'),
(63, 24, '_wp_attached_file', '2018/03/coffee-2.jpg'),
(64, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/03/coffee-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-2-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-2-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-2-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 24, '_starter_content_theme', 'twentyseventeen'),
(66, 24, '_customize_draft_post_name', 'cafe'),
(67, 25, '_customize_draft_post_name', 'accueil'),
(68, 25, '_customize_changeset_uuid', '5a153802-8e56-4d1f-9c2b-519aff08668a'),
(69, 26, '_thumbnail_id', '23'),
(70, 26, '_customize_draft_post_name', 'a-propos-de'),
(71, 26, '_customize_changeset_uuid', '5a153802-8e56-4d1f-9c2b-519aff08668a'),
(72, 27, '_thumbnail_id', '22'),
(73, 27, '_customize_draft_post_name', 'contact'),
(74, 27, '_customize_changeset_uuid', '5a153802-8e56-4d1f-9c2b-519aff08668a'),
(75, 28, '_thumbnail_id', '24'),
(76, 28, '_customize_draft_post_name', 'blog'),
(77, 28, '_customize_changeset_uuid', '5a153802-8e56-4d1f-9c2b-519aff08668a'),
(78, 29, '_thumbnail_id', '22'),
(79, 29, '_customize_draft_post_name', 'une-section-de-page-daccueil'),
(80, 29, '_customize_changeset_uuid', '5a153802-8e56-4d1f-9c2b-519aff08668a'),
(81, 30, '_customize_restore_dismissed', '1'),
(82, 21, '_customize_restore_dismissed', '1'),
(83, 12, '_customize_restore_dismissed', '1'),
(84, 31, '_edit_last', '1'),
(85, 31, '_edit_lock', '1521042383:1'),
(86, 33, '_edit_last', '1'),
(87, 33, '_edit_lock', '1520845689:1'),
(88, 35, '_menu_item_type', 'custom'),
(89, 35, '_menu_item_menu_item_parent', '0'),
(90, 35, '_menu_item_object_id', '35'),
(91, 35, '_menu_item_object', 'custom'),
(92, 35, '_menu_item_target', ''),
(93, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 35, '_menu_item_xfn', ''),
(95, 35, '_menu_item_url', 'http://localhost/wp-div%202018/'),
(96, 35, '_menu_item_orphaned', '1520845866'),
(97, 36, '_menu_item_type', 'post_type'),
(98, 36, '_menu_item_menu_item_parent', '0'),
(99, 36, '_menu_item_object_id', '31'),
(100, 36, '_menu_item_object', 'page'),
(101, 36, '_menu_item_target', ''),
(102, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 36, '_menu_item_xfn', ''),
(104, 36, '_menu_item_url', ''),
(105, 36, '_menu_item_orphaned', '1520845866'),
(106, 37, '_menu_item_type', 'post_type'),
(107, 37, '_menu_item_menu_item_parent', '0'),
(108, 37, '_menu_item_object_id', '33'),
(109, 37, '_menu_item_object', 'page'),
(110, 37, '_menu_item_target', ''),
(111, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 37, '_menu_item_xfn', ''),
(113, 37, '_menu_item_url', ''),
(114, 37, '_menu_item_orphaned', '1520845866'),
(115, 38, '_menu_item_type', 'post_type'),
(116, 38, '_menu_item_menu_item_parent', '0'),
(117, 38, '_menu_item_object_id', '2'),
(118, 38, '_menu_item_object', 'page'),
(119, 38, '_menu_item_target', ''),
(120, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 38, '_menu_item_xfn', ''),
(122, 38, '_menu_item_url', ''),
(123, 38, '_menu_item_orphaned', '1520845866'),
(124, 39, '_menu_item_type', 'post_type'),
(125, 39, '_menu_item_menu_item_parent', '0'),
(126, 39, '_menu_item_object_id', '33'),
(127, 39, '_menu_item_object', 'page'),
(128, 39, '_menu_item_target', ''),
(129, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 39, '_menu_item_xfn', ''),
(131, 39, '_menu_item_url', ''),
(132, 39, '_menu_item_orphaned', '1520845915'),
(133, 40, '_menu_item_type', 'post_type'),
(134, 40, '_menu_item_menu_item_parent', '0'),
(135, 40, '_menu_item_object_id', '31'),
(136, 40, '_menu_item_object', 'page'),
(137, 40, '_menu_item_target', ''),
(138, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 40, '_menu_item_xfn', ''),
(140, 40, '_menu_item_url', ''),
(141, 40, '_menu_item_orphaned', '1520845915'),
(142, 41, '_edit_last', '1'),
(143, 41, '_edit_lock', '1520855795:1'),
(150, 46, '_menu_item_type', 'post_type'),
(151, 46, '_menu_item_menu_item_parent', '0'),
(152, 46, '_menu_item_object_id', '31'),
(153, 46, '_menu_item_object', 'page'),
(154, 46, '_menu_item_target', ''),
(155, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(156, 46, '_menu_item_xfn', ''),
(157, 46, '_menu_item_url', ''),
(168, 48, '_menu_item_type', 'post_type'),
(169, 48, '_menu_item_menu_item_parent', '0'),
(170, 48, '_menu_item_object_id', '33'),
(171, 48, '_menu_item_object', 'page'),
(172, 48, '_menu_item_target', ''),
(173, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 48, '_menu_item_xfn', ''),
(175, 48, '_menu_item_url', ''),
(186, 52, '_edit_last', '1'),
(187, 52, 'field_5aa65e62746ee', 'a:11:{s:3:\"key\";s:19:\"field_5aa65e62746ee\";s:5:\"label\";s:10:\"Z1 Slide 1\";s:4:\"name\";s:10:\"z1_slide_1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(188, 52, 'field_5aa65ea8746ef', 'a:11:{s:3:\"key\";s:19:\"field_5aa65ea8746ef\";s:5:\"label\";s:10:\"Z1 Slide 2\";s:4:\"name\";s:10:\"z1_slide_2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(189, 52, 'field_5aa65ec2746f0', 'a:11:{s:3:\"key\";s:19:\"field_5aa65ec2746f0\";s:5:\"label\";s:10:\"Z1 Slide 3\";s:4:\"name\";s:10:\"z1_slide_3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(191, 52, 'position', 'normal'),
(192, 52, 'layout', 'no_box'),
(193, 52, 'hide_on_screen', ''),
(194, 52, '_edit_lock', '1520947734:1'),
(195, 53, '_wp_attached_file', '2018/03/lion-3040797_960_720.jpg'),
(196, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:32:\"2018/03/lion-3040797_960_720.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"lion-3040797_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"lion-3040797_960_720-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"lion-3040797_960_720-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"5.6\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D7200\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"300\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 54, '_wp_attached_file', '2018/03/tiger-2535888__180.jpg'),
(198, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:180;s:4:\"file\";s:30:\"2018/03/tiger-2535888__180.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"tiger-2535888__180-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon EOS 550D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"300\";s:3:\"iso\";s:4:\"1600\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 55, '_wp_attached_file', '2018/03/cats-3061372_960_720.jpg'),
(200, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:540;s:4:\"file\";s:32:\"2018/03/cats-3061372_960_720.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cats-3061372_960_720-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cats-3061372_960_720-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"cats-3061372_960_720-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:11:\"NIKON D3300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"55\";s:3:\"iso\";s:3:\"280\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 56, '_wp_attached_file', '2018/03/leaves_plant_bushes_119917_1920x1080.jpg'),
(202, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:48:\"2018/03/leaves_plant_bushes_119917_1920x1080.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"leaves_plant_bushes_119917_1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"leaves_plant_bushes_119917_1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"leaves_plant_bushes_119917_1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"leaves_plant_bushes_119917_1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 57, '_wp_attached_file', '2018/03/lighthouse_bay_sunset_sky_119925_300x168.jpg'),
(204, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:52:\"2018/03/lighthouse_bay_sunset_sky_119925_300x168.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"lighthouse_bay_sunset_sky_119925_300x168-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"lighthouse_bay_sunset_sky_119925_300x168-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 58, '_wp_attached_file', '2018/03/cliff_sea_surf_sky_119920_300x168.jpg'),
(206, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:45:\"2018/03/cliff_sea_surf_sky_119920_300x168.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"cliff_sea_surf_sky_119920_300x168-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"cliff_sea_surf_sky_119920_300x168-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 59, 'z1_slide_1', '56'),
(208, 59, '_z1_slide_1', 'field_5aa65e62746ee'),
(209, 59, 'z1_slide_2', '57'),
(210, 59, '_z1_slide_2', 'field_5aa65ea8746ef'),
(211, 59, 'z1_slide_3', '53'),
(212, 59, '_z1_slide_3', 'field_5aa65ec2746f0'),
(213, 31, 'z1_slide_1', '56'),
(214, 31, '_z1_slide_1', 'field_5aa65e62746ee'),
(215, 31, 'z1_slide_2', '55'),
(216, 31, '_z1_slide_2', 'field_5aa65ea8746ef'),
(217, 31, 'z1_slide_3', '53'),
(218, 31, '_z1_slide_3', 'field_5aa65ec2746f0'),
(219, 60, 'z1_slide_1', '56'),
(220, 60, '_z1_slide_1', 'field_5aa65e62746ee'),
(221, 60, 'z1_slide_2', '58'),
(222, 60, '_z1_slide_2', 'field_5aa65ea8746ef'),
(223, 60, 'z1_slide_3', '53'),
(224, 60, '_z1_slide_3', 'field_5aa65ec2746f0'),
(225, 61, 'z1_slide_1', '56'),
(226, 61, '_z1_slide_1', 'field_5aa65e62746ee'),
(227, 61, 'z1_slide_2', '54'),
(228, 61, '_z1_slide_2', 'field_5aa65ea8746ef'),
(229, 61, 'z1_slide_3', '53'),
(230, 61, '_z1_slide_3', 'field_5aa65ec2746f0'),
(231, 62, 'z1_slide_1', '56'),
(232, 62, '_z1_slide_1', 'field_5aa65e62746ee'),
(233, 62, 'z1_slide_2', '55'),
(234, 62, '_z1_slide_2', 'field_5aa65ea8746ef'),
(235, 62, 'z1_slide_3', '53'),
(236, 62, '_z1_slide_3', 'field_5aa65ec2746f0'),
(237, 63, '_wp_attached_file', '2018/03/cliff_sea_surf_sky_119920_300x168-1.jpg'),
(238, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:47:\"2018/03/cliff_sea_surf_sky_119920_300x168-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"cliff_sea_surf_sky_119920_300x168-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"cliff_sea_surf_sky_119920_300x168-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"cliff_sea_surf_sky_119920_300x168-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"cliff_sea_surf_sky_119920_300x168-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 64, 'z1_slide_1', '56'),
(240, 64, '_z1_slide_1', 'field_5aa65e62746ee'),
(241, 64, 'z1_slide_2', '58'),
(242, 64, '_z1_slide_2', 'field_5aa65ea8746ef'),
(243, 64, 'z1_slide_3', '53'),
(244, 64, '_z1_slide_3', 'field_5aa65ec2746f0'),
(245, 65, 'z1_slide_1', '56'),
(246, 65, '_z1_slide_1', 'field_5aa65e62746ee'),
(247, 65, 'z1_slide_2', '55'),
(248, 65, '_z1_slide_2', 'field_5aa65ea8746ef'),
(249, 65, 'z1_slide_3', '53'),
(250, 65, '_z1_slide_3', 'field_5aa65ec2746f0'),
(251, 66, '_edit_last', '1'),
(253, 66, 'position', 'normal'),
(254, 66, 'layout', 'no_box'),
(255, 66, 'hide_on_screen', ''),
(256, 66, '_edit_lock', '1520860198:1'),
(257, 66, 'field_5aa67c10e6387', 'a:11:{s:3:\"key\";s:19:\"field_5aa67c10e6387\";s:5:\"label\";s:15:\"Z2 Texte Gauche\";s:4:\"name\";s:15:\"z2_texte_gauche\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(258, 66, 'field_5aa67c4de6388', 'a:11:{s:3:\"key\";s:19:\"field_5aa67c4de6388\";s:5:\"label\";s:15:\"Z2 Texte Droite\";s:4:\"name\";s:15:\"z2_texte_droite\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(262, 66, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(263, 66, '_wp_trash_meta_status', 'publish'),
(264, 66, '_wp_trash_meta_time', '1520860385'),
(265, 66, '_wp_desired_post_slug', 'acf_zones-de-la-page-daccueil-2'),
(266, 52, 'field_5aa67ce6bf956', 'a:11:{s:3:\"key\";s:19:\"field_5aa67ce6bf956\";s:5:\"label\";s:15:\"Z2 Texte Gauche\";s:4:\"name\";s:15:\"z2_texte_gauche\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(268, 52, 'field_5aa67cfdbd0ff', 'a:11:{s:3:\"key\";s:19:\"field_5aa67cfdbd0ff\";s:5:\"label\";s:15:\"Z2 Texte Droite\";s:4:\"name\";s:15:\"z2_texte_droite\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(271, 67, 'z1_slide_1', '56'),
(272, 67, '_z1_slide_1', 'field_5aa65e62746ee'),
(273, 67, 'z1_slide_2', '55'),
(274, 67, '_z1_slide_2', 'field_5aa65ea8746ef'),
(275, 67, 'z1_slide_3', '53'),
(276, 67, '_z1_slide_3', 'field_5aa65ec2746f0'),
(277, 67, 'z2_texte_gauche', 'gauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauche'),
(278, 67, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(279, 67, 'z2_texte_droite', 'droite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite\r\n\r\ndroite'),
(280, 67, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(281, 31, 'z2_texte_gauche', '<h3><a href=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1.jpg\"><img class=\"aligncenter wp-image-63 size-medium\" src=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /></a>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(282, 31, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(283, 31, 'z2_texte_droite', '[wpgmza id=\"1\"]\r\n\r\n&nbsp;'),
(284, 31, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(285, 68, 'z1_slide_1', '56'),
(286, 68, '_z1_slide_1', 'field_5aa65e62746ee'),
(287, 68, 'z1_slide_2', '55'),
(288, 68, '_z1_slide_2', 'field_5aa65ea8746ef'),
(289, 68, 'z1_slide_3', '53'),
(290, 68, '_z1_slide_3', 'field_5aa65ec2746f0'),
(291, 68, 'z2_texte_gauche', 'gauchegauchegauchegauchegauchegauchegauche\r\n\r\ngauchegauchegauchegauchegauchegauchegauchegauchegauch\r\n\r\negauchegauchegauchegauchegauchegauchegauchegauchegaucheg\r\n\r\nauchegauchegauchegauchegauchegauchegauchegauchegauche\r\n\r\ngauchegauchegauchegauchegauchegauchegauchegauchegauc\r\n\r\nhegauchegauchegauchegauchegauchegauchegauchegaucheg\r\n\r\nauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchega\r\n\r\nuchegauchegauchegauchegauchegauchegauchegauchegauc\r\n\r\nhegauchegauchegauchegauchegauchegauchegauchegauch\r\n\r\negauchegauchegauchegauchegauchegauchegauchegauche\r\n\r\ngauchegauchegauchegauchegauchegauchegauchegauchega\r\n\r\nuchegauchegauchegauchegauchegauchegauchegauchegauc\r\n\r\nhegauchegauchegauchegauchegauchegauchegauchegauche\r\n\r\ngauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauche'),
(292, 68, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(293, 68, 'z2_texte_droite', 'droite\r\n\r\ndresrzerzerzer\r\n\r\nezrzerzerzerzerzerz\r\n\r\nzerzerzersrz'),
(294, 68, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(295, 52, 'field_5aa67fc769e7e', 'a:11:{s:3:\"key\";s:19:\"field_5aa67fc769e7e\";s:5:\"label\";s:17:\"Z3 image parallax\";s:4:\"name\";s:17:\"z3_image_parallax\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(296, 52, 'field_5aa67fdf69e7f', 'a:15:{s:3:\"key\";s:19:\"field_5aa67fdf69e7f\";s:5:\"label\";s:10:\"Z3 hauteur\";s:4:\"name\";s:10:\"z3_hauteur\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:3:\"300\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:2:\"px\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(298, 52, 'field_5aa680482d2f2', 'a:11:{s:3:\"key\";s:19:\"field_5aa680482d2f2\";s:5:\"label\";s:14:\"Z5  Vignette 1\";s:4:\"name\";s:13:\"z5_vignette_1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(301, 52, 'field_5aa6808b8c5e7', 'a:11:{s:3:\"key\";s:19:\"field_5aa6808b8c5e7\";s:5:\"label\";s:13:\"Z5 Vignette 2\";s:4:\"name\";s:13:\"z5_vignette_2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(302, 52, 'field_5aa680998c5e8', 'a:11:{s:3:\"key\";s:19:\"field_5aa680998c5e8\";s:5:\"label\";s:13:\"Z5 Vignette 3\";s:4:\"name\";s:13:\"z5_vignette_3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(303, 52, 'field_5aa680aa8c5e9', 'a:11:{s:3:\"key\";s:19:\"field_5aa680aa8c5e9\";s:5:\"label\";s:13:\"Z5 Vignette 4\";s:4:\"name\";s:13:\"z5_vignette_4\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}'),
(306, 69, '_wp_attached_file', '2018/03/21272477060_2ba057a282.jpg'),
(307, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2018/03/21272477060_2ba057a282.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"21272477060_2ba057a282-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"21272477060_2ba057a282-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 70, '_wp_attached_file', '2018/03/alisma-800x800-500x500.jpg'),
(309, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2018/03/alisma-800x800-500x500.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"alisma-800x800-500x500-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"alisma-800x800-500x500-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 71, '_wp_attached_file', '2018/03/kajaria-floor-tiles-800x800-500x500.jpg'),
(311, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:47:\"2018/03/kajaria-floor-tiles-800x800-500x500.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"kajaria-floor-tiles-800x800-500x500-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"kajaria-floor-tiles-800x800-500x500-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(314, 73, 'z1_slide_1', '56'),
(315, 73, '_z1_slide_1', 'field_5aa65e62746ee'),
(316, 73, 'z1_slide_2', '55'),
(317, 73, '_z1_slide_2', 'field_5aa65ea8746ef'),
(318, 73, 'z1_slide_3', '53'),
(319, 73, '_z1_slide_3', 'field_5aa65ec2746f0'),
(320, 73, 'z2_texte_gauche', 'gauchegauchegauchegauchegauchegauchegauche\r\n\r\ngauchegauchegauchegauchegauchegauchegauchegauchegauch\r\n\r\negauchegauchegauchegauchegauchegauchegauchegauchegaucheg\r\n\r\nauchegauchegauchegauchegauchegauchegauchegauchegauche\r\n\r\ngauchegauchegauchegauchegauchegauchegauchegauchegauc\r\n\r\nhegauchegauchegauchegauchegauchegauchegauchegaucheg\r\n\r\nauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauchega\r\n\r\nuchegauchegauchegauchegauchegauchegauchegauchegauc\r\n\r\nhegauchegauchegauchegauchegauchegauchegauchegauch\r\n\r\negauchegauchegauchegauchegauchegauchegauchegauche\r\n\r\ngauchegauchegauchegauchegauchegauchegauchegauchega\r\n\r\nuchegauchegauchegauchegauchegauchegauchegauchegauc\r\n\r\nhegauchegauchegauchegauchegauchegauchegauchegauche\r\n\r\ngauchegauchegauchegauchegauchegauchegauchegauchegauchegauchegauche'),
(321, 73, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(322, 73, 'z2_texte_droite', 'droite\r\n\r\ndresrzerzerzer\r\n\r\nezrzerzerzerzerzerz\r\n\r\nzerzerzersrz'),
(323, 73, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(324, 73, 'z3_image_parallax', '53'),
(325, 73, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(326, 73, 'z3_hauteur', '300'),
(327, 73, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(328, 73, 'z5__vignette_1', '72'),
(329, 73, '_z5__vignette_1', 'field_5aa680482d2f2'),
(330, 73, 'z5_vignette_2', '69'),
(331, 73, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(332, 73, 'z5_vignette_3', '71'),
(333, 73, '_z5_vignette_3', 'field_5aa680998c5e8'),
(334, 73, 'z5_vignette_4', '70'),
(335, 73, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(336, 73, '_', 'field_5aa680d08c5ea'),
(337, 31, 'z3_image_parallax', '53'),
(338, 31, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(339, 31, 'z3_hauteur', '300'),
(340, 31, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(341, 31, 'z5__vignette_1', '72'),
(342, 31, '_z5__vignette_1', 'field_5aa680482d2f2'),
(343, 31, 'z5_vignette_2', '69'),
(344, 31, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(345, 31, 'z5_vignette_3', '71'),
(346, 31, '_z5_vignette_3', 'field_5aa680998c5e8'),
(347, 31, 'z5_vignette_4', '70'),
(348, 31, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(349, 31, '_', 'field_5aa680d08c5ea'),
(351, 69, '_wp_attachment_image_alt', 'poire'),
(352, 71, '_wp_attachment_image_alt', 'Bougies'),
(353, 70, '_wp_attachment_image_alt', 'vin'),
(354, 74, 'z1_slide_1', '56'),
(355, 74, '_z1_slide_1', 'field_5aa65e62746ee'),
(356, 74, 'z1_slide_2', '55'),
(357, 74, '_z1_slide_2', 'field_5aa65ea8746ef'),
(358, 74, 'z1_slide_3', '53'),
(359, 74, '_z1_slide_3', 'field_5aa65ec2746f0'),
(360, 74, 'z2_texte_gauche', '<h3>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(361, 74, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(362, 74, 'z2_texte_droite', '<h3>Section 1.10.32 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(363, 74, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(364, 74, 'z3_image_parallax', '53'),
(365, 74, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(366, 74, 'z3_hauteur', '300'),
(367, 74, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(368, 74, 'z5__vignette_1', '72'),
(369, 74, '_z5__vignette_1', 'field_5aa680482d2f2'),
(370, 74, 'z5_vignette_2', '69'),
(371, 74, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(372, 74, 'z5_vignette_3', '71'),
(373, 74, '_z5_vignette_3', 'field_5aa680998c5e8'),
(374, 74, 'z5_vignette_4', '70'),
(375, 74, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(376, 74, '_', 'field_5aa680d08c5ea'),
(378, 75, 'z1_slide_1', '56'),
(379, 75, '_z1_slide_1', 'field_5aa65e62746ee'),
(380, 75, 'z1_slide_2', '55'),
(381, 75, '_z1_slide_2', 'field_5aa65ea8746ef'),
(382, 75, 'z1_slide_3', '53'),
(383, 75, '_z1_slide_3', 'field_5aa65ec2746f0');
INSERT INTO `dadd_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(384, 75, 'z2_texte_gauche', '<h3>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(385, 75, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(386, 75, 'z2_texte_droite', '&nbsp;\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(387, 75, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(388, 75, 'z3_image_parallax', '53'),
(389, 75, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(390, 75, 'z3_hauteur', '300'),
(391, 75, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(392, 75, 'z5__vignette_1', '72'),
(393, 75, '_z5__vignette_1', 'field_5aa680482d2f2'),
(394, 75, 'z5_vignette_2', '69'),
(395, 75, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(396, 75, 'z5_vignette_3', '71'),
(397, 75, '_z5_vignette_3', 'field_5aa680998c5e8'),
(398, 75, 'z5_vignette_4', '70'),
(399, 75, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(400, 75, '_', 'field_5aa680d08c5ea'),
(401, 52, 'field_5aa6891b6e237', 'a:11:{s:3:\"key\";s:19:\"field_5aa6891b6e237\";s:5:\"label\";s:16:\"Z4 Texte Central\";s:4:\"name\";s:16:\"z4_texte_central\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}'),
(403, 76, 'z1_slide_1', '56'),
(404, 76, '_z1_slide_1', 'field_5aa65e62746ee'),
(405, 76, 'z1_slide_2', '55'),
(406, 76, '_z1_slide_2', 'field_5aa65ea8746ef'),
(407, 76, 'z1_slide_3', '53'),
(408, 76, '_z1_slide_3', 'field_5aa65ec2746f0'),
(409, 76, 'z2_texte_gauche', '<h3>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(410, 76, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(411, 76, 'z2_texte_droite', '&nbsp;\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(412, 76, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(413, 76, 'z3_image_parallax', '53'),
(414, 76, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(415, 76, 'z3_hauteur', '300'),
(416, 76, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(417, 76, 'z5__vignette_1', '72'),
(418, 76, '_z5__vignette_1', 'field_5aa680482d2f2'),
(419, 76, 'z5_vignette_2', '69'),
(420, 76, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(421, 76, 'z5_vignette_3', '71'),
(422, 76, '_z5_vignette_3', 'field_5aa680998c5e8'),
(423, 76, 'z5_vignette_4', '70'),
(424, 76, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(425, 76, '_', 'field_5aa680d08c5ea'),
(426, 76, 'z4_texte_central', '<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(427, 76, '_z4_texte_central', 'field_5aa6891b6e237'),
(428, 31, 'z4_texte_central', '[recent-posts nb=\"4\" types=\"concert\"]\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(429, 31, '_z4_texte_central', 'field_5aa6891b6e237'),
(431, 77, 'z1_slide_1', '56'),
(432, 77, '_z1_slide_1', 'field_5aa65e62746ee'),
(433, 77, 'z1_slide_2', '55'),
(434, 77, '_z1_slide_2', 'field_5aa65ea8746ef'),
(435, 77, 'z1_slide_3', '53'),
(436, 77, '_z1_slide_3', 'field_5aa65ec2746f0'),
(437, 77, 'z2_texte_gauche', '<h3>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(438, 77, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(439, 77, 'z2_texte_droite', '&nbsp;\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(440, 77, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(441, 77, 'z3_image_parallax', '53'),
(442, 77, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(443, 77, 'z3_hauteur', '300'),
(444, 77, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(445, 77, 'z5_vignette_1', '72'),
(446, 77, '_z5_vignette_1', 'field_5aa680482d2f2'),
(447, 77, 'z5_vignette_2', '69'),
(448, 77, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(449, 77, 'z5_vignette_3', '71'),
(450, 77, '_z5_vignette_3', 'field_5aa680998c5e8'),
(451, 77, 'z5_vignette_4', '70'),
(452, 77, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(453, 77, '_', 'field_5aa680d08c5ea'),
(454, 77, 'z4_texte_central', '<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(455, 77, '_z4_texte_central', 'field_5aa6891b6e237'),
(456, 31, 'z5_vignette_1', '58'),
(457, 31, '_z5_vignette_1', 'field_5aa680482d2f2'),
(459, 78, '_form', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\nGenre: [radio radio-442 default:1 \"homme\" \"femme\"]\n\n[recaptcha]\n\n[submit \"Envoyer\"]'),
(460, 78, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:28:\"site de dev \"[your-subject]\"\";s:6:\"sender\";s:40:\"[your-name] <jonathanchemla55@gmail.com>\";s:9:\"recipient\";s:26:\"jonathanchemla55@gmail.com\";s:4:\"body\";s:216:\"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\nGenre: [genre]\n-- \nCet e-mail a été envoyé via le formulaire de contact de site de dev (http://localhost/wp-div%202018)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(461, 78, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"site de dev \"[your-subject]\"\";s:6:\"sender\";s:40:\"site de dev <jonathanchemla55@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:143:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de site de dev (http://localhost/wp-div%202018)\";s:18:\"additional_headers\";s:36:\"Reply-To: jonathanchemla55@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(462, 78, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Ce champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";s:12:\"invalid_date\";s:32:\"Le format de date est incorrect.\";s:14:\"date_too_early\";s:47:\"La date précède la première date autorisée.\";s:13:\"date_too_late\";s:57:\"La date est postérieure à la dernière date autorisée.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:31:\"Le fichier est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:14:\"invalid_number\";s:33:\"Le format du nombre est invalide.\";s:16:\"number_too_small\";s:50:\"Le nombre est plus petit que le minimum autorisé.\";s:16:\"number_too_large\";s:50:\"Le nombre est plus grand que le maximum autorisé.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:17:\"captcha_not_match\";s:29:\"Le code entré est incorrect.\";s:13:\"invalid_email\";s:38:\"L’adresse e-mail n’est pas valide.\";s:11:\"invalid_url\";s:27:\"L’URL n’est pas valide.\";s:11:\"invalid_tel\";s:45:\"Le numéro de téléphone n’est pas valide.\";}'),
(463, 78, '_additional_settings', ''),
(464, 78, '_locale', 'fr_FR'),
(465, 79, '_edit_last', '1'),
(466, 79, '_edit_lock', '1520936491:1'),
(467, 80, '_edit_last', '1'),
(468, 80, '_edit_lock', '1520936531:1'),
(469, 82, 'z1_slide_1', '56'),
(470, 82, '_z1_slide_1', 'field_5aa65e62746ee'),
(471, 82, 'z1_slide_2', '55'),
(472, 82, '_z1_slide_2', 'field_5aa65ea8746ef'),
(473, 82, 'z1_slide_3', '53'),
(474, 82, '_z1_slide_3', 'field_5aa65ec2746f0'),
(475, 82, 'z2_texte_gauche', '<h3><a href=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1.jpg\"><img class=\"aligncenter wp-image-63 size-medium\" src=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /></a>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(476, 82, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(477, 82, 'z2_texte_droite', '&nbsp;\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(478, 82, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(479, 82, 'z3_image_parallax', '53'),
(480, 82, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(481, 82, 'z3_hauteur', '300'),
(482, 82, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(483, 82, 'z5_vignette_1', '72'),
(484, 82, '_z5_vignette_1', 'field_5aa680482d2f2'),
(485, 82, 'z5_vignette_2', '69'),
(486, 82, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(487, 82, 'z5_vignette_3', '71'),
(488, 82, '_z5_vignette_3', 'field_5aa680998c5e8'),
(489, 82, 'z5_vignette_4', '70'),
(490, 82, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(491, 82, 'z4_texte_central', '<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(492, 82, '_z4_texte_central', 'field_5aa6891b6e237'),
(502, 85, '_edit_last', '1'),
(504, 85, 'position', 'normal'),
(505, 85, 'layout', 'no_box'),
(506, 85, 'hide_on_screen', ''),
(507, 85, '_edit_lock', '1520946383:1'),
(510, 85, 'field_5aa6a062ef15c', 'a:11:{s:3:\"key\";s:19:\"field_5aa6a062ef15c\";s:5:\"label\";s:5:\"Photo\";s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(511, 85, 'field_5aa6a081ef15d', 'a:14:{s:3:\"key\";s:19:\"field_5aa6a081ef15d\";s:5:\"label\";s:10:\"Date Heure\";s:4:\"name\";s:10:\"date_heure\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(512, 85, 'field_5aa6a0aeef15e', 'a:15:{s:3:\"key\";s:19:\"field_5aa6a0aeef15e\";s:5:\"label\";s:4:\"Prix\";s:4:\"name\";s:4:\"prix\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:3:\"€\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(513, 85, 'field_5aa6a0c5ef15f', 'a:11:{s:3:\"key\";s:19:\"field_5aa6a0c5ef15f\";s:5:\"label\";s:7:\"Adresse\";s:4:\"name\";s:7:\"adresse\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(514, 85, 'field_5aa6a0dbef160', 'a:14:{s:3:\"key\";s:19:\"field_5aa6a0dbef160\";s:5:\"label\";s:5:\"Salle\";s:4:\"name\";s:5:\"salle\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(516, 85, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"concert\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(517, 87, '_edit_last', '1'),
(518, 87, '_edit_lock', '1520930804:1'),
(519, 88, '_wp_attached_file', '2018/03/1280px-Imagine_Dragons_-_Ilosaarirock_2013_3.jpg'),
(520, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:850;s:4:\"file\";s:56:\"2018/03/1280px-Imagine_Dragons_-_Ilosaarirock_2013_3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"1280px-Imagine_Dragons_-_Ilosaarirock_2013_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"1280px-Imagine_Dragons_-_Ilosaarirock_2013_3-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:56:\"1280px-Imagine_Dragons_-_Ilosaarirock_2013_3-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:57:\"1280px-Imagine_Dragons_-_Ilosaarirock_2013_3-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(521, 87, 'photo', '88'),
(522, 87, '_photo', 'field_5aa6a062ef15c'),
(523, 87, 'date_heure', '2018-03-12 18:00:00'),
(524, 87, '_date_heure', 'field_5aa6a081ef15d'),
(525, 87, 'prix', '70'),
(526, 87, '_prix', 'field_5aa6a0aeef15e'),
(527, 87, 'adresse', '8 Boulevard de Bercy 75012 Paris'),
(528, 87, '_adresse', 'field_5aa6a0c5ef15f'),
(529, 87, 'salle', 'AccorHotels Arena'),
(530, 87, '_salle', 'field_5aa6a0dbef160'),
(531, 89, '_menu_item_type', 'post_type_archive'),
(532, 89, '_menu_item_menu_item_parent', '0'),
(533, 89, '_menu_item_object_id', '-15'),
(534, 89, '_menu_item_object', 'concert'),
(535, 89, '_menu_item_target', ''),
(536, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(537, 89, '_menu_item_xfn', ''),
(538, 89, '_menu_item_url', ''),
(540, 90, '_menu_item_type', 'post_type_archive'),
(541, 90, '_menu_item_menu_item_parent', '0'),
(542, 90, '_menu_item_object_id', '-15'),
(543, 90, '_menu_item_object', 'concert'),
(544, 90, '_menu_item_target', ''),
(545, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(546, 90, '_menu_item_xfn', ''),
(547, 90, '_menu_item_url', ''),
(548, 90, '_menu_item_orphaned', '1520870267'),
(549, 93, '_wp_attached_file', '2018/03/teme-tan-by-studio-miko-miko-modifie-1140x570.jpg'),
(550, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:570;s:4:\"file\";s:57:\"2018/03/teme-tan-by-studio-miko-miko-modifie-1140x570.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"teme-tan-by-studio-miko-miko-modifie-1140x570-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"teme-tan-by-studio-miko-miko-modifie-1140x570-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"teme-tan-by-studio-miko-miko-modifie-1140x570-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:58:\"teme-tan-by-studio-miko-miko-modifie-1140x570-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(551, 92, '_edit_last', '1'),
(552, 92, '_edit_lock', '1520930982:1'),
(553, 92, 'photo', '93'),
(554, 92, '_photo', 'field_5aa6a062ef15c'),
(555, 92, 'date_heure', '2018-04-04 12:00:00'),
(556, 92, '_date_heure', 'field_5aa6a081ef15d'),
(557, 92, 'prix', '45'),
(558, 92, '_prix', 'field_5aa6a0aeef15e'),
(559, 92, 'adresse', '18 bld de strasbourg paris'),
(560, 92, '_adresse', 'field_5aa6a0c5ef15f'),
(561, 92, 'salle', 'Amphib'),
(562, 92, '_salle', 'field_5aa6a0dbef160'),
(563, 94, '_edit_last', '1'),
(564, 94, '_edit_lock', '1521041066:1'),
(565, 95, '_wp_attached_file', '2018/03/slider-tshegue-1140x570.jpg'),
(566, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:570;s:4:\"file\";s:35:\"2018/03/slider-tshegue-1140x570.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"slider-tshegue-1140x570-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"slider-tshegue-1140x570-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"slider-tshegue-1140x570-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"slider-tshegue-1140x570-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(567, 94, 'photo', '95'),
(568, 94, '_photo', 'field_5aa6a062ef15c'),
(569, 94, 'date_heure', '2018-03-12 19:00:00'),
(570, 94, '_date_heure', 'field_5aa6a081ef15d'),
(571, 94, 'prix', '25'),
(572, 94, '_prix', 'field_5aa6a0aeef15e'),
(573, 94, 'adresse', '1 bld de la solidarite Paris'),
(574, 94, '_adresse', 'field_5aa6a0c5ef15f'),
(575, 94, 'salle', 'Trianon'),
(576, 94, '_salle', 'field_5aa6a0dbef160'),
(577, 99, '_edit_last', '1'),
(578, 99, '_edit_lock', '1520931240:1'),
(579, 100, '_wp_attached_file', '2018/03/solidays2016-benevoles©laurent_attias-1140x570.jpg'),
(580, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1140;s:6:\"height\";i:570;s:4:\"file\";s:59:\"2018/03/solidays2016-benevoles©laurent_attias-1140x570.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"solidays2016-benevoles©laurent_attias-1140x570-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"solidays2016-benevoles©laurent_attias-1140x570-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:59:\"solidays2016-benevoles©laurent_attias-1140x570-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:60:\"solidays2016-benevoles©laurent_attias-1140x570-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(581, 99, 'photo', '100'),
(582, 99, '_photo', 'field_5aa6a062ef15c'),
(583, 99, 'date_heure', '2018-04-04 20:30:00'),
(584, 99, '_date_heure', 'field_5aa6a081ef15d'),
(585, 99, 'prix', '450'),
(586, 99, '_prix', 'field_5aa6a0aeef15e'),
(587, 99, 'adresse', '3 bld st germain Paris'),
(588, 99, '_adresse', 'field_5aa6a0c5ef15f'),
(589, 99, 'salle', 'Casino de Paris'),
(590, 99, '_salle', 'field_5aa6a0dbef160'),
(591, 101, '_edit_last', '1'),
(592, 101, '_edit_lock', '1521039233:1'),
(593, 101, 'photo', '71'),
(594, 101, '_photo', 'field_5aa6a062ef15c'),
(595, 101, 'date_heure', '2018-03-12 20:00:00'),
(596, 101, '_date_heure', 'field_5aa6a081ef15d'),
(597, 101, 'prix', '10'),
(598, 101, '_prix', 'field_5aa6a0aeef15e'),
(599, 101, 'adresse', '2 rue de la providence Bagnolet'),
(600, 101, '_adresse', 'field_5aa6a0c5ef15f'),
(601, 101, 'salle', 'Cabaret de Paris'),
(602, 101, '_salle', 'field_5aa6a0dbef160'),
(603, 79, '_wp_trash_meta_status', 'draft'),
(604, 79, '_wp_trash_meta_time', '1520936639'),
(605, 79, '_wp_desired_post_slug', ''),
(606, 106, '_edit_last', '1'),
(607, 106, '_edit_lock', '1521034871:1'),
(608, 109, '_edit_last', '1'),
(609, 109, '_edit_lock', '1520958823:1'),
(637, 52, 'field_5aa7cf9104fd4', 'a:11:{s:3:\"key\";s:19:\"field_5aa7cf9104fd4\";s:5:\"label\";s:5:\"texte\";s:4:\"name\";s:5:\"texte\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";s:3:\"yes\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}'),
(638, 52, 'rule', 'a:5:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(639, 116, 'z1_slide_1', '56'),
(640, 116, '_z1_slide_1', 'field_5aa65e62746ee'),
(641, 116, 'z1_slide_2', '55'),
(642, 116, '_z1_slide_2', 'field_5aa65ea8746ef'),
(643, 116, 'z1_slide_3', '53'),
(644, 116, '_z1_slide_3', 'field_5aa65ec2746f0'),
(645, 116, 'z2_texte_gauche', '<h3><a href=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1.jpg\"><img class=\"aligncenter wp-image-63 size-medium\" src=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /></a>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(646, 116, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(647, 116, 'z2_texte_droite', '&nbsp;\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(648, 116, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(649, 116, 'z3_image_parallax', '53'),
(650, 116, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(651, 116, 'z3_hauteur', '300'),
(652, 116, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(653, 116, 'z5_vignette_1', '72'),
(654, 116, '_z5_vignette_1', 'field_5aa680482d2f2'),
(655, 116, 'z5_vignette_2', '69'),
(656, 116, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(657, 116, 'z5_vignette_3', '71'),
(658, 116, '_z5_vignette_3', 'field_5aa680998c5e8'),
(659, 116, 'z5_vignette_4', '70'),
(660, 116, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(661, 116, 'z4_texte_central', '<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(662, 116, '_z4_texte_central', 'field_5aa6891b6e237'),
(663, 116, 'texte', 'montextemontextemontextemontextemontextemontexte\r\n\r\nmontextemontextemontextemontextemontextemontexte\r\n\r\nmontextemontextemontextemontextemontextemontexte\r\n\r\nmontextemontextemontextemontextemontextemontexte'),
(664, 116, '_texte', 'field_5aa7cf9104fd4'),
(665, 31, 'texte', '<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(666, 31, '_texte', 'field_5aa7cf9104fd4'),
(667, 118, '_wp_attached_file', '2018/03/film.jpg'),
(668, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:138;s:6:\"height\";i:121;s:4:\"file\";s:16:\"2018/03/film.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(669, 119, '_edit_last', '1'),
(671, 119, 'field_5aa7dadaf2044', 'a:11:{s:3:\"key\";s:19:\"field_5aa7dadaf2044\";s:5:\"label\";s:5:\"photo\";s:4:\"name\";s:5:\"photo\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(673, 119, 'field_5aa7db28f2046', 'a:14:{s:3:\"key\";s:19:\"field_5aa7db28f2046\";s:5:\"label\";s:7:\"acteurs\";s:4:\"name\";s:7:\"acteurs\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:10:\"Acteurs : \";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(674, 119, 'field_5aa7db34f2047', 'a:14:{s:3:\"key\";s:19:\"field_5aa7db34f2047\";s:5:\"label\";s:11:\"realisateur\";s:4:\"name\";s:11:\"realisateur\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:15:\"Réalisateur : \";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(675, 119, 'field_5aa7db3ef2048', 'a:11:{s:3:\"key\";s:19:\"field_5aa7db3ef2048\";s:5:\"label\";s:17:\"Annee de Parution\";s:4:\"name\";s:17:\"annee_de_parution\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"date_format\";s:6:\"yymmdd\";s:14:\"display_format\";s:8:\"dd/mm/yy\";s:9:\"first_day\";s:1:\"1\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(677, 119, 'position', 'normal'),
(678, 119, 'layout', 'no_box'),
(679, 119, 'hide_on_screen', ''),
(680, 119, '_edit_lock', '1520953642:1'),
(682, 120, '_edit_last', '1'),
(683, 120, '_edit_lock', '1520952712:1'),
(684, 120, 'photo', '95'),
(685, 120, '_photo', 'field_5aa7dadaf2044'),
(686, 120, 'acteurs', 'Arnaud Vallette&nbsp;'),
(687, 120, '_acteurs', 'field_5aa7db28f2046'),
(688, 120, 'realisateur', 'Adnane Guanem'),
(689, 120, '_realisateur', 'field_5aa7db34f2047'),
(690, 120, 'annee_de_parution', '20180315'),
(691, 120, '_annee_de_parution', 'field_5aa7db3ef2048'),
(692, 121, '_edit_last', '1'),
(693, 121, '_edit_lock', '1520952749:1'),
(694, 121, 'photo', '88'),
(695, 121, '_photo', 'field_5aa7dadaf2044'),
(696, 121, 'acteurs', 'Adeline Clere'),
(697, 121, '_acteurs', 'field_5aa7db28f2046'),
(698, 121, 'realisateur', 'Quentin'),
(699, 121, '_realisateur', 'field_5aa7db34f2047'),
(700, 121, 'annee_de_parution', '20180303'),
(701, 121, '_annee_de_parution', 'field_5aa7db3ef2048'),
(702, 123, '_edit_last', '1'),
(703, 123, '_edit_lock', '1520952784:1'),
(704, 123, 'photo', '53'),
(705, 123, '_photo', 'field_5aa7dadaf2044'),
(706, 123, 'acteurs', 'Maxime Joyes'),
(707, 123, '_acteurs', 'field_5aa7db28f2046'),
(708, 123, 'realisateur', 'Nicolas Rocher'),
(709, 123, '_realisateur', 'field_5aa7db34f2047'),
(710, 123, 'annee_de_parution', '20180613'),
(711, 123, '_annee_de_parution', 'field_5aa7db3ef2048'),
(712, 124, '_menu_item_type', 'post_type'),
(713, 124, '_menu_item_menu_item_parent', '0'),
(714, 124, '_menu_item_object_id', '123'),
(715, 124, '_menu_item_object', 'film'),
(716, 124, '_menu_item_target', ''),
(717, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(718, 124, '_menu_item_xfn', ''),
(719, 124, '_menu_item_url', ''),
(720, 124, '_menu_item_orphaned', '1520950478'),
(721, 125, '_menu_item_type', 'post_type'),
(722, 125, '_menu_item_menu_item_parent', '0'),
(723, 125, '_menu_item_object_id', '121'),
(724, 125, '_menu_item_object', 'film'),
(725, 125, '_menu_item_target', ''),
(726, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(727, 125, '_menu_item_xfn', ''),
(728, 125, '_menu_item_url', ''),
(729, 125, '_menu_item_orphaned', '1520950478'),
(730, 126, '_menu_item_type', 'post_type'),
(731, 126, '_menu_item_menu_item_parent', '0'),
(732, 126, '_menu_item_object_id', '120'),
(733, 126, '_menu_item_object', 'film'),
(734, 126, '_menu_item_target', ''),
(735, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(736, 126, '_menu_item_xfn', ''),
(737, 126, '_menu_item_url', ''),
(738, 126, '_menu_item_orphaned', '1520950478'),
(739, 127, '_wp_attached_file', '2018/03/video.jpg'),
(740, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:128;s:4:\"file\";s:17:\"2018/03/video.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(750, 119, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"film\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(778, 132, '_menu_item_type', 'post_type'),
(779, 132, '_menu_item_menu_item_parent', '0'),
(780, 132, '_menu_item_object_id', '80'),
(781, 132, '_menu_item_object', 'page'),
(782, 132, '_menu_item_target', ''),
(783, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(784, 132, '_menu_item_xfn', ''),
(785, 132, '_menu_item_url', ''),
(786, 132, '_menu_item_orphaned', '1520952069'),
(787, 133, '_menu_item_type', 'post_type'),
(788, 133, '_menu_item_menu_item_parent', '0'),
(789, 133, '_menu_item_object_id', '109'),
(790, 133, '_menu_item_object', 'page'),
(791, 133, '_menu_item_target', ''),
(792, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(793, 133, '_menu_item_xfn', ''),
(794, 133, '_menu_item_url', ''),
(796, 134, '_menu_item_type', 'post_type'),
(797, 134, '_menu_item_menu_item_parent', '0'),
(798, 134, '_menu_item_object_id', '106'),
(799, 134, '_menu_item_object', 'page'),
(800, 134, '_menu_item_target', ''),
(801, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(802, 134, '_menu_item_xfn', ''),
(803, 134, '_menu_item_url', ''),
(805, 135, '_menu_item_type', 'post_type'),
(806, 135, '_menu_item_menu_item_parent', '0'),
(807, 135, '_menu_item_object_id', '80'),
(808, 135, '_menu_item_object', 'page'),
(809, 135, '_menu_item_target', ''),
(810, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(811, 135, '_menu_item_xfn', ''),
(812, 135, '_menu_item_url', ''),
(814, 136, '_menu_item_type', 'post_type'),
(815, 136, '_menu_item_menu_item_parent', '0'),
(816, 136, '_menu_item_object_id', '80'),
(817, 136, '_menu_item_object', 'page'),
(818, 136, '_menu_item_target', ''),
(819, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(820, 136, '_menu_item_xfn', ''),
(821, 136, '_menu_item_url', ''),
(823, 137, '_menu_item_type', 'post_type_archive'),
(824, 137, '_menu_item_menu_item_parent', '0'),
(825, 137, '_menu_item_object_id', '-33'),
(826, 137, '_menu_item_object', 'film'),
(827, 137, '_menu_item_target', ''),
(828, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(829, 137, '_menu_item_xfn', ''),
(830, 137, '_menu_item_url', ''),
(831, 153, '_edit_last', '1'),
(832, 153, '_edit_lock', '1521040008:1'),
(833, 153, 'photo', '54'),
(834, 153, '_photo', 'field_5aa6a062ef15c'),
(835, 153, 'date_heure', '2018-03-18 18:00:00'),
(836, 153, '_date_heure', 'field_5aa6a081ef15d'),
(837, 153, 'prix', '40'),
(838, 153, '_prix', 'field_5aa6a0aeef15e'),
(839, 153, 'adresse', '18 quai de la liberté'),
(840, 153, '_adresse', 'field_5aa6a0c5ef15f'),
(841, 153, 'salle', 'Maubeuge'),
(842, 153, '_salle', 'field_5aa6a0dbef160'),
(843, 155, 'z1_slide_1', '56'),
(844, 155, '_z1_slide_1', 'field_5aa65e62746ee'),
(845, 155, 'z1_slide_2', '55'),
(846, 155, '_z1_slide_2', 'field_5aa65ea8746ef'),
(847, 155, 'z1_slide_3', '53'),
(848, 155, '_z1_slide_3', 'field_5aa65ec2746f0'),
(849, 155, 'z2_texte_gauche', '<h3><a href=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1.jpg\"><img class=\"aligncenter wp-image-63 size-medium\" src=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /></a>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(850, 155, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(851, 155, 'z2_texte_droite', '&nbsp;\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(852, 155, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(853, 155, 'z3_image_parallax', '53');
INSERT INTO `dadd_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(854, 155, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(855, 155, 'z3_hauteur', '300'),
(856, 155, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(857, 155, 'z5_vignette_1', '72'),
(858, 155, '_z5_vignette_1', 'field_5aa680482d2f2'),
(859, 155, 'z5_vignette_2', '69'),
(860, 155, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(861, 155, 'z5_vignette_3', '71'),
(862, 155, '_z5_vignette_3', 'field_5aa680998c5e8'),
(863, 155, 'z5_vignette_4', '70'),
(864, 155, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(865, 155, 'z4_texte_central', '[recent-posts nb=\"4\" types=\"concert\"]\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(866, 155, '_z4_texte_central', 'field_5aa6891b6e237'),
(867, 155, 'texte', 'montextemontextemontextemontextemontextemontexte\r\n\r\nmontextemontextemontextemontextemontextemontexte\r\n\r\nmontextemontextemontextemontextemontextemontexte\r\n\r\nmontextemontextemontextemontextemontextemontexte'),
(868, 155, '_texte', 'field_5aa7cf9104fd4'),
(869, 156, 'z1_slide_1', '56'),
(870, 156, '_z1_slide_1', 'field_5aa65e62746ee'),
(871, 156, 'z1_slide_2', '55'),
(872, 156, '_z1_slide_2', 'field_5aa65ea8746ef'),
(873, 156, 'z1_slide_3', '53'),
(874, 156, '_z1_slide_3', 'field_5aa65ec2746f0'),
(875, 156, 'z2_texte_gauche', '<h3><a href=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1.jpg\"><img class=\"aligncenter wp-image-63 size-medium\" src=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /></a>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(876, 156, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(877, 156, 'z2_texte_droite', '[wpgmza id=\"1\"]\r\n\r\n&nbsp;'),
(878, 156, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(879, 156, 'z3_image_parallax', '53'),
(880, 156, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(881, 156, 'z3_hauteur', '300'),
(882, 156, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(883, 156, 'z5_vignette_1', '72'),
(884, 156, '_z5_vignette_1', 'field_5aa680482d2f2'),
(885, 156, 'z5_vignette_2', '69'),
(886, 156, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(887, 156, 'z5_vignette_3', '71'),
(888, 156, '_z5_vignette_3', 'field_5aa680998c5e8'),
(889, 156, 'z5_vignette_4', '70'),
(890, 156, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(891, 156, 'z4_texte_central', '[recent-posts nb=\"4\" types=\"concert\"]\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(892, 156, '_z4_texte_central', 'field_5aa6891b6e237'),
(893, 156, 'texte', '<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(894, 156, '_texte', 'field_5aa7cf9104fd4'),
(895, 157, 'z1_slide_1', '56'),
(896, 157, '_z1_slide_1', 'field_5aa65e62746ee'),
(897, 157, 'z1_slide_2', '55'),
(898, 157, '_z1_slide_2', 'field_5aa65ea8746ef'),
(899, 157, 'z1_slide_3', '53'),
(900, 157, '_z1_slide_3', 'field_5aa65ec2746f0'),
(901, 157, 'z2_texte_gauche', '<a href=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1.jpg\"><img class=\"aligncenter wp-image-63 size-medium\" src=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /></a>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)\r\n\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(902, 157, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(903, 157, 'z2_texte_droite', '[wpgmza id=\"1\"]\r\n\r\n&nbsp;'),
(904, 157, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(905, 157, 'z3_image_parallax', '53'),
(906, 157, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(907, 157, 'z3_hauteur', '300'),
(908, 157, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(909, 157, 'z5_vignette_1', '72'),
(910, 157, '_z5_vignette_1', 'field_5aa680482d2f2'),
(911, 157, 'z5_vignette_2', '69'),
(912, 157, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(913, 157, 'z5_vignette_3', '71'),
(914, 157, '_z5_vignette_3', 'field_5aa680998c5e8'),
(915, 157, 'z5_vignette_4', '70'),
(916, 157, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(917, 157, 'z4_texte_central', '[recent-posts nb=\"4\" types=\"concert\"]\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(918, 157, '_z4_texte_central', 'field_5aa6891b6e237'),
(919, 157, 'texte', '<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(920, 157, '_texte', 'field_5aa7cf9104fd4'),
(921, 158, 'z1_slide_1', '56'),
(922, 158, '_z1_slide_1', 'field_5aa65e62746ee'),
(923, 158, 'z1_slide_2', '55'),
(924, 158, '_z1_slide_2', 'field_5aa65ea8746ef'),
(925, 158, 'z1_slide_3', '53'),
(926, 158, '_z1_slide_3', 'field_5aa65ec2746f0'),
(927, 158, 'z2_texte_gauche', '<h3><a href=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1.jpg\"><img class=\"aligncenter wp-image-63 size-medium\" src=\"http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /></a>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)</h3>\r\n\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"'),
(928, 158, '_z2_texte_gauche', 'field_5aa67ce6bf956'),
(929, 158, 'z2_texte_droite', '[wpgmza id=\"1\"]\r\n\r\n&nbsp;'),
(930, 158, '_z2_texte_droite', 'field_5aa67cfdbd0ff'),
(931, 158, 'z3_image_parallax', '53'),
(932, 158, '_z3_image_parallax', 'field_5aa67fc769e7e'),
(933, 158, 'z3_hauteur', '300'),
(934, 158, '_z3_hauteur', 'field_5aa67fdf69e7f'),
(935, 158, 'z5_vignette_1', '58'),
(936, 158, '_z5_vignette_1', 'field_5aa680482d2f2'),
(937, 158, 'z5_vignette_2', '69'),
(938, 158, '_z5_vignette_2', 'field_5aa6808b8c5e7'),
(939, 158, 'z5_vignette_3', '71'),
(940, 158, '_z5_vignette_3', 'field_5aa680998c5e8'),
(941, 158, 'z5_vignette_4', '70'),
(942, 158, '_z5_vignette_4', 'field_5aa680aa8c5e9'),
(943, 158, 'z4_texte_central', '[recent-posts nb=\"4\" types=\"concert\"]\r\n<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(944, 158, '_z4_texte_central', 'field_5aa6891b6e237'),
(945, 158, 'texte', '<h3>Traduction de H. Rackham (1914)</h3>\r\n\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"'),
(946, 158, '_texte', 'field_5aa7cf9104fd4');

-- --------------------------------------------------------

--
-- Structure de la table `dadd_posts`
--

CREATE TABLE `dadd_posts` (
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
-- Déchargement des données de la table `dadd_posts`
--

INSERT INTO `dadd_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-12 09:51:52', '2018-03-12 08:51:52', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-03-12 09:51:52', '2018-03-12 08:51:52', '', 0, 'http://localhost/wp-div%202018/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-12 09:51:52', '2018-03-12 08:51:52', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/wp-div%202018/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-03-12 09:51:52', '2018-03-12 08:51:52', '', 0, 'http://localhost/wp-div%202018/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-03-12 09:52:35', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-12 09:52:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=3', 0, 'post', '', 0),
(4, 1, '2018-03-12 09:57:14', '0000-00-00 00:00:00', '', 'Expresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:57:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2018-03-12 09:57:14', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:57:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2018-03-12 09:57:14', '0000-00-00 00:00:00', '', 'Café', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:57:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-03-12 09:57:14', '0000-00-00 00:00:00', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-03-12 09:57:14', '0000-00-00 00:00:00', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-03-12 09:57:14', '0000-00-00 00:00:00', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-03-12 09:57:14', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-03-12 09:57:14', '0000-00-00 00:00:00', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:57:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-03-12 09:57:14', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"73e260c8eb25a28444bcc0121581b74e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bcf44c7148d85a448d0a598a825e1082\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"93942a98878c94c8707c58cc8bc606cb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"73e260c8eb25a28444bcc0121581b74e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"93942a98878c94c8707c58cc8bc606cb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bcf44c7148d85a448d0a598a825e1082\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            4,\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wp-div%202018/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 10,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:57:14\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '4df0239e-6b36-43ce-87db-bd81005d2ebc', '', '', '2018-03-12 09:57:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2018-03-12 10:00:40', '0000-00-00 00:00:00', '', 'Expresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:59:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/espresso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-03-12 10:00:40', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:59:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-03-12 10:00:40', '0000-00-00 00:00:00', '', 'Café', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 09:59:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-03-12 10:00:40', '0000-00-00 00:00:00', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:59:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-03-12 10:00:40', '0000-00-00 00:00:00', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:59:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-03-12 10:00:40', '0000-00-00 00:00:00', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:59:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-03-12 10:00:40', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:59:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-03-12 10:00:40', '0000-00-00 00:00:00', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 09:59:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-03-12 10:00:40', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"73e260c8eb25a28444bcc0121581b74e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bcf44c7148d85a448d0a598a825e1082\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"93942a98878c94c8707c58cc8bc606cb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"73e260c8eb25a28444bcc0121581b74e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"93942a98878c94c8707c58cc8bc606cb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bcf44c7148d85a448d0a598a825e1082\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            13,\n            14,\n            15,\n            16,\n            17,\n            18,\n            19,\n            20\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wp-div%202018/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 17,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 19,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 18,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 16,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 19,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 20,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 17,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 19,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 08:59:19\"\n    },\n    \"blogdescription\": {\n        \"value\": \"D\\u00e9veloppement WP\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:40\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'c2936ae5-7a0f-44b4-b6ce-ae6950936e41', '', '', '2018-03-12 10:00:40', '2018-03-12 09:00:40', '', 0, 'http://localhost/wp-div%202018/?p=21', 0, 'customize_changeset', '', 0),
(22, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 'Expresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 10:00:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/espresso-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 10:00:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/sandwich-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 'Café', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 10:00:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/coffee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', 'Bienvenue sur votre site ! C’est votre page d’accueil que vos visiteurs verront lorsqu’ils arriveront sur votre site la première fois.', 'Accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', 'Vous pourriez être un artiste et vouloir présenter vos travaux et vous même ou encore être une entreprise avec une mission à promouvoir.', 'À propos de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', 'C’est une page avec des informations de contact de base, comme l’adresse et le numéro de téléphone. Vous pouvez aussi essayer une extension pour ajouter un formulaire de contact.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', 'C’est un exemple de section de page d’accueil. Les sections de page d’accueil peuvent être n’importe quelle page autre que la page d’accueil elle-même, y compris la page qui affiche vos derniers articles de blog.', 'Une section de page d’accueil', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-03-12 10:00:49', '0000-00-00 00:00:00', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"73e260c8eb25a28444bcc0121581b74e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bcf44c7148d85a448d0a598a825e1082\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"93942a98878c94c8707c58cc8bc606cb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE0OiJSZXRyb3V2ZXotbm91cyI7czo0OiJ0ZXh0IjtzOjE4OToiPHN0cm9uZz5BZHJlc3NlPC9zdHJvbmc+CkF2ZW51ZSBkZXMgQ2hhbXBzLcOJbHlzw6llcwo3NTAwOCwgUGFyaXMKCjxzdHJvbmc+SGV1cmVzIGTigJlvdXZlcnR1cmU8L3N0cm9uZz4KRHUgbHVuZGkgYXUgdmVuZHJlZGnCoDogOWgwMCZuZGFzaDsxN2gwMApMZXMgc2FtZWRpIGV0IGRpbWFuY2hlwqA6IDExaDAwJm5kYXNoOzE1aDAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Retrouvez-nous\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"73e260c8eb25a28444bcc0121581b74e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiLDgCBwcm9wb3MgZGUgY2Ugc2l0ZSI7czo0OiJ0ZXh0IjtzOjk5OiJD4oCZZXN0IHBldXQtw6p0cmUgbGUgYm9uIGVuZHJvaXQgcG91ciB2b3VzIHByw6lzZW50ZXIgZXQgdm90cmUgc2l0ZSBvdSBpbnPDqXJlciBxdWVscXVlcyBjcsOpZGl0cy4iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u00c0 propos de ce site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"93942a98878c94c8707c58cc8bc606cb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiJSZWNoZXJjaGVyIjt9\",\n            \"title\": \"Rechercher\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bcf44c7148d85a448d0a598a825e1082\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            22,\n            23,\n            24,\n            25,\n            26,\n            27,\n            28,\n            29\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu sup\\u00e9rieur\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://localhost/wp-div%202018/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 26,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"\\u00c0 propos de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 28,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 27,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Menu des liens de r\\u00e9seaux sociaux\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 25,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 28,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 29,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 28,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 27,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-03-12 09:00:49\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '5a153802-8e56-4d1f-9c2b-519aff08668a', '', '', '2018-03-12 10:00:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2018-03-12 10:09:13', '2018-03-12 09:09:13', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-03-14 16:38:00', '2018-03-14 15:38:00', '', 0, 'http://localhost/wp-div%202018/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-03-12 10:09:13', '2018-03-12 09:09:13', 'Accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 10:09:13', '2018-03-12 09:09:13', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-03-12 10:09:26', '2018-03-12 09:09:26', 'Blog', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-03-12 10:09:26', '2018-03-12 09:09:26', '', 0, 'http://localhost/wp-div%202018/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-03-12 10:09:26', '2018-03-12 09:09:26', 'Blog', 'Blog', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-03-12 10:09:26', '2018-03-12 09:09:26', '', 33, 'http://localhost/wp-div%202018/index.php/2018/03/12/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-03-12 10:11:06', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:11:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-03-12 10:11:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:11:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2018-03-12 10:11:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:11:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-03-12 10:11:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:11:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2018-03-12 10:11:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:11:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-03-12 10:11:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 10:11:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2018-03-12 10:15:58', '2018-03-12 09:15:58', 'Mon article ajouté rtytrytryrtyrdffggdfgdfgdfgfggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg\r\n\r\ndfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfd\r\n\r\ndfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdf', 'Mon article ajouté', '', 'publish', 'open', 'open', '', 'mon-article-ajoute', '', '', '2018-03-12 10:16:37', '2018-03-12 09:16:37', '', 0, 'http://localhost/wp-div%202018/?p=41', 0, 'post', '', 0);
INSERT INTO `dadd_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(42, 1, '2018-03-12 10:15:58', '2018-03-12 09:15:58', 'Mon article ajouté rtytrytryrtyrdffggdfgdfgdfg', 'Mon article ajouté', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-03-12 10:15:58', '2018-03-12 09:15:58', '', 41, 'http://localhost/wp-div%202018/index.php/2018/03/12/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-03-12 10:16:20', '2018-03-12 09:16:20', 'Mon article ajouté rtytrytryrtyrdffggdfgdfgdfgfggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg\r\n\r\ndfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfd\r\n\r\ndfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdfdf', 'Mon article ajouté', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2018-03-12 10:16:20', '2018-03-12 09:16:20', '', 41, 'http://localhost/wp-div%202018/index.php/2018/03/12/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-03-12 10:17:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-12 10:17:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=44', 0, 'post', '', 0),
(45, 1, '2018-03-12 10:17:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-03-12 10:17:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=45', 0, 'post', '', 0),
(46, 1, '2018-03-12 10:18:41', '2018-03-12 09:18:41', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-03-13 15:52:14', '2018-03-13 14:52:14', '', 0, 'http://localhost/wp-div%202018/?p=46', 1, 'nav_menu_item', '', 0),
(48, 1, '2018-03-12 10:18:41', '2018-03-12 09:18:41', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2018-03-13 15:52:14', '2018-03-13 14:52:14', '', 0, 'http://localhost/wp-div%202018/?p=48', 2, 'nav_menu_item', '', 0),
(50, 1, '2018-03-12 11:31:32', '2018-03-12 10:31:32', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2018-03-12 11:31:32', '2018-03-12 10:31:32', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-autosave-v1/', 0, 'revision', '', 0),
(51, 1, '2018-03-12 11:31:34', '2018-03-12 10:31:34', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 11:31:34', '2018-03-12 10:31:34', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-03-12 12:04:49', '2018-03-12 11:04:49', '', 'Zones de la page d\'accueil', '', 'publish', 'closed', 'closed', '', 'acf_zones-de-la-page-daccueil', '', '', '2018-03-13 14:19:47', '2018-03-13 13:19:47', '', 0, 'http://localhost/wp-div%202018/?post_type=acf&#038;p=52', 0, 'acf', '', 0),
(53, 1, '2018-03-12 12:10:32', '2018-03-12 11:10:32', '', 'lion-3040797_960_720', '', 'inherit', 'open', 'closed', '', 'lion-3040797_960_720', '', '', '2018-03-12 12:10:32', '2018-03-12 11:10:32', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/lion-3040797_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-03-12 12:10:33', '2018-03-12 11:10:33', '', 'tiger-2535888__180', '', 'inherit', 'open', 'closed', '', 'tiger-2535888__180', '', '', '2018-03-12 12:10:33', '2018-03-12 11:10:33', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/tiger-2535888__180.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-03-12 12:10:33', '2018-03-12 11:10:33', '', 'cats-3061372_960_720', '', 'inherit', 'open', 'closed', '', 'cats-3061372_960_720', '', '', '2018-03-12 12:10:33', '2018-03-12 11:10:33', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/cats-3061372_960_720.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-03-12 12:12:17', '2018-03-12 11:12:17', '', 'leaves_plant_bushes_119917_1920x1080', '', 'inherit', 'open', 'closed', '', 'leaves_plant_bushes_119917_1920x1080', '', '', '2018-03-12 12:12:17', '2018-03-12 11:12:17', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/leaves_plant_bushes_119917_1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-03-12 12:12:18', '2018-03-12 11:12:18', '', 'lighthouse_bay_sunset_sky_119925_300x168', '', 'inherit', 'open', 'closed', '', 'lighthouse_bay_sunset_sky_119925_300x168', '', '', '2018-03-12 12:12:18', '2018-03-12 11:12:18', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/lighthouse_bay_sunset_sky_119925_300x168.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-03-12 12:12:18', '2018-03-12 11:12:18', '', 'cliff_sea_surf_sky_119920_300x168', '', 'inherit', 'open', 'closed', '', 'cliff_sea_surf_sky_119920_300x168', '', '', '2018-03-12 12:12:18', '2018-03-12 11:12:18', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-03-12 12:17:00', '2018-03-12 11:17:00', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 12:17:00', '2018-03-12 11:17:00', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-03-12 12:59:17', '2018-03-12 11:59:17', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 12:59:17', '2018-03-12 11:59:17', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-03-12 12:59:53', '2018-03-12 11:59:53', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 12:59:53', '2018-03-12 11:59:53', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-03-12 13:00:29', '2018-03-12 12:00:29', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 13:00:29', '2018-03-12 12:00:29', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-03-12 13:01:47', '2018-03-12 12:01:47', '', 'cliff_sea_surf_sky_119920_300x168', '', 'inherit', 'open', 'closed', '', 'cliff_sea_surf_sky_119920_300x168-2', '', '', '2018-03-12 13:01:47', '2018-03-12 12:01:47', '', 31, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/cliff_sea_surf_sky_119920_300x168-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-03-12 13:01:58', '2018-03-12 12:01:58', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 13:01:58', '2018-03-12 12:01:58', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-03-12 13:02:32', '2018-03-12 12:02:32', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 13:02:32', '2018-03-12 12:02:32', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-03-12 14:09:32', '2018-03-12 13:09:32', '', 'Zones de la page d\'accueil', '', 'trash', 'closed', 'closed', '', 'acf_zones-de-la-page-daccueil-2__trashed', '', '', '2018-03-12 14:13:05', '2018-03-12 13:13:05', '', 0, 'http://localhost/wp-div%202018/?post_type=acf&#038;p=66', 0, 'acf', '', 0),
(67, 1, '2018-03-12 14:14:32', '2018-03-12 13:14:32', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 14:14:32', '2018-03-12 13:14:32', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-03-12 14:23:55', '2018-03-12 13:23:55', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 14:23:55', '2018-03-12 13:23:55', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-03-12 14:35:51', '2018-03-12 13:35:51', '', '21272477060_2ba057a282', 'legend 2', 'inherit', 'open', 'closed', '', '21272477060_2ba057a282', '', '', '2018-03-12 14:43:52', '2018-03-12 13:43:52', '', 31, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/21272477060_2ba057a282.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-03-12 14:35:51', '2018-03-12 13:35:51', '', 'alisma-800x800-500x500', 'LegendE 4', 'inherit', 'open', 'closed', '', 'alisma-800x800-500x500', '', '', '2018-03-12 14:44:15', '2018-03-12 13:44:15', '', 31, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/alisma-800x800-500x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-03-12 14:35:52', '2018-03-12 13:35:52', '', 'kajaria-floor-tiles-800x800-500x500', 'Legende 3', 'inherit', 'open', 'closed', '', 'kajaria-floor-tiles-800x800-500x500', '', '', '2018-03-12 14:44:04', '2018-03-12 13:44:04', '', 31, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/kajaria-floor-tiles-800x800-500x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-03-12 14:37:45', '2018-03-12 13:37:45', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 14:37:45', '2018-03-12 13:37:45', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-03-12 14:57:28', '2018-03-12 13:57:28', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 14:57:28', '2018-03-12 13:57:28', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2018-03-12 14:59:49', '2018-03-12 13:59:49', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 14:59:49', '2018-03-12 13:59:49', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-03-12 15:07:28', '2018-03-12 14:07:28', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 15:07:28', '2018-03-12 14:07:28', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-03-12 15:19:11', '2018-03-12 14:19:11', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 15:19:11', '2018-03-12 14:19:11', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-03-12 15:27:21', '2018-03-12 14:27:21', '<label> Votre nom (obligatoire)\r\n    [text* your-name] </label>\r\n\r\n<label> Votre adresse de messagerie (obligatoire)\r\n    [email* your-email] </label>\r\n\r\n<label> Objet\r\n    [text your-subject] </label>\r\n\r\n<label> Votre message\r\n    [textarea your-message] </label>\r\n\r\nGenre: [radio radio-442 default:1 \"homme\" \"femme\"]\r\n\r\n[recaptcha]\r\n\r\n[submit \"Envoyer\"]\n1\nsite de dev \"[your-subject]\"\n[your-name] <jonathanchemla55@gmail.com>\njonathanchemla55@gmail.com\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\nGenre: [genre]\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de site de dev (http://localhost/wp-div%202018)\nReply-To: [your-email]\n\n\n\n\nsite de dev \"[your-subject]\"\nsite de dev <jonathanchemla55@gmail.com>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de site de dev (http://localhost/wp-div%202018)\nReply-To: jonathanchemla55@gmail.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Formulaire de contact 1', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2018-03-12 15:50:36', '2018-03-12 14:50:36', '', 0, 'http://localhost/wp-div%202018/?post_type=wpcf7_contact_form&#038;p=78', 0, 'wpcf7_contact_form', '', 0),
(79, 1, '2018-03-13 11:23:59', '2018-03-13 10:23:59', '', 'Contact', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-03-13 11:23:59', '2018-03-13 10:23:59', '', 0, 'http://localhost/wp-div%202018/?page_id=79', 0, 'page', '', 0),
(80, 1, '2018-03-12 15:33:38', '2018-03-12 14:33:38', '[wpgmza id=\"1\"]\r\n\r\n[contact-form-7 id=\"78\" title=\"Formulaire de contact 1\"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-03-13 10:41:40', '2018-03-13 09:41:40', '', 0, 'http://localhost/wp-div%202018/?page_id=80', 0, 'page', '', 0),
(81, 1, '2018-03-12 15:33:38', '2018-03-12 14:33:38', '[contact-form-7 id=\"78\" title=\"Formulaire de contact 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-03-12 15:33:38', '2018-03-12 14:33:38', '', 80, 'http://localhost/wp-div%202018/index.php/2018/03/12/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-03-12 15:54:51', '2018-03-12 14:54:51', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-12 15:54:51', '2018-03-12 14:54:51', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/12/31-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-03-12 16:37:39', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 16:37:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&p=84', 0, 'concert', '', 0),
(85, 1, '2018-03-12 16:43:56', '2018-03-12 15:43:56', '', 'Sections de Concerts', '', 'publish', 'closed', 'closed', '', 'acf_sections-de-concerts', '', '', '2018-03-12 16:49:19', '2018-03-12 15:49:19', '', 0, 'http://localhost/wp-div%202018/?post_type=acf&#038;p=85', 0, 'acf', '', 0),
(86, 1, '2018-03-12 16:47:55', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-12 16:47:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&p=86', 0, 'concert', '', 0),
(87, 1, '2018-03-12 16:55:11', '2018-03-12 15:55:11', '<b>imagine Dragons</b> est un <a title=\"Groupe musical\" href=\"https://fr.wikipedia.org/wiki/Groupe_musical\">groupe</a> de <a title=\"Rock alternatif\" href=\"https://fr.wikipedia.org/wiki/Rock_alternatif\">rock alternatif</a> <a title=\"États-Unis\" href=\"https://fr.wikipedia.org/wiki/%C3%89tats-Unis\">américain</a>, originaire de <a title=\"Las Vegas\" href=\"https://fr.wikipedia.org/wiki/Las_Vegas\">Las Vegas</a>, dans le <a title=\"Nevada\" href=\"https://fr.wikipedia.org/wiki/Nevada\">Nevada</a>. Imagine Dragons est formé en <a title=\"2008 en musique\" href=\"https://fr.wikipedia.org/wiki/2008_en_musique\">2008</a> alors que le chanteur Dan Reynolds est à l\'université Brigham Young. Leur musique est souvent décrite comme positive et inspirante. Peu de temps après, le groupe a déménagé à Las Vegas, dans le Nevada, où les membres actuels se sont joints au groupe. Le nom du groupe est une anagramme, dont les mots originaux sont connus seulement des membres du groupe<sup id=\"cite_ref-1\" class=\"reference\"><a href=\"https://fr.wikipedia.org/wiki/Imagine_Dragons#cite_note-1\">1</a></sup>.', 'Imagine Dragons', '', 'publish', 'open', 'closed', '', 'imagine-dragons', '', '', '2018-03-12 17:26:26', '2018-03-12 16:26:26', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&#038;p=87', 0, 'concert', '', 0),
(88, 1, '2018-03-12 16:54:14', '2018-03-12 15:54:14', '', '1280px-Imagine_Dragons_-_Ilosaarirock_2013_3', '', 'inherit', 'open', 'closed', '', '1280px-imagine_dragons_-_ilosaarirock_2013_3', '', '', '2018-03-12 16:54:14', '2018-03-12 15:54:14', '', 87, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/1280px-Imagine_Dragons_-_Ilosaarirock_2013_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-03-12 16:57:32', '2018-03-12 15:57:32', '', 'Tous les concerts', '', 'publish', 'closed', 'closed', '', '89', '', '', '2018-03-13 15:52:14', '2018-03-13 14:52:14', '', 0, 'http://localhost/wp-div%202018/?p=89', 4, 'nav_menu_item', '', 0),
(90, 1, '2018-03-12 16:57:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-12 16:57:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2018-03-13 09:41:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-13 09:41:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&p=91', 0, 'concert', '', 0),
(92, 1, '2018-03-13 09:51:58', '2018-03-13 08:51:58', '&nbsp;\r\n\r\nUn beatmaking groovy dans la lignée de ce que la scène francophone fait de mieux. Des sonorités latino et africaines, le tout saupoudré d’un verbe et d’une poésie incitant au voyage : la musique de Témé Tan est singulière et communique sa joie de vivre. Cet homme seul sur scène arrive à emporter avec lui des foules.', 'TÉMÉ TAN', '', 'publish', 'open', 'closed', '', 'teme-tan', '', '', '2018-03-13 09:51:58', '2018-03-13 08:51:58', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&#038;p=92', 0, 'concert', '', 0),
(93, 1, '2018-03-13 09:50:11', '2018-03-13 08:50:11', '', 'teme-tan-by-studio-miko-miko-modifie-1140x570', '', 'inherit', 'open', 'closed', '', 'teme-tan-by-studio-miko-miko-modifie-1140x570', '', '', '2018-03-13 09:50:11', '2018-03-13 08:50:11', '', 92, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/teme-tan-by-studio-miko-miko-modifie-1140x570.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2018-03-13 09:53:56', '2018-03-13 08:53:56', 'Tshegue, c’est une musique hétéroclite qui mêle punk, rock, rumba et afrobeat pour créer un son afropunk unique. C’est aussi le charisme dévastateur de sa chanteuse Faty, soutenue', 'TSEGUE', '', 'publish', 'open', 'closed', '', 'tsegue', '', '', '2018-03-13 09:53:56', '2018-03-13 08:53:56', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&#038;p=94', 0, 'concert', '', 0),
(95, 1, '2018-03-13 09:53:46', '2018-03-13 08:53:46', '', 'slider-tshegue-1140x570', '', 'inherit', 'open', 'closed', '', 'slider-tshegue-1140x570', '', '', '2018-03-13 09:53:46', '2018-03-13 08:53:46', '', 94, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/slider-tshegue-1140x570.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-03-13 09:54:16', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-13 09:54:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&p=96', 0, 'concert', '', 0),
(97, 1, '2018-03-13 09:54:17', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-13 09:54:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&p=97', 0, 'concert', '', 0),
(98, 1, '2018-03-13 09:54:21', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-13 09:54:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&p=98', 0, 'concert', '', 0),
(99, 1, '2018-03-13 09:56:10', '2018-03-13 08:56:10', 'L’histoire de l’association est avant tout celle d’un engagement collectif et générationnel fondé sur l’envie d’agir, de sensibiliser à la cause et d’aider les plus vulnérables. Jeunes et particulièrement motivés, les 3 000 bénévoles qui se battent contre le sida à nos côtés font preuve d’une énergie et d’un altruisme qui forcent le respect. Chaque année, Solidays rend hommage aux forces vives de Solidarité Sida sur la grande scène. Applaudissez-les avec nous !', 'Hommage aux benevoles', '', 'publish', 'open', 'closed', '', 'hommage-aux-benevoles', '', '', '2018-03-13 09:56:10', '2018-03-13 08:56:10', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&#038;p=99', 0, 'concert', '', 0),
(100, 1, '2018-03-13 09:55:06', '2018-03-13 08:55:06', '', 'solidays2016-benevoles©laurent_attias-1140x570', '', 'inherit', 'open', 'closed', '', 'solidays2016-benevoleslaurent_attias-1140x570', '', '', '2018-03-13 09:55:06', '2018-03-13 08:55:06', '', 99, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/solidays2016-benevoles©laurent_attias-1140x570.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-03-13 09:57:56', '2018-03-13 08:57:56', '<div class=\"strate-text col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2\">\r\n\r\nÀ la fois rappeur et instrumentiste, Roméo Elvis est surtout un véritable showman. Charismatique à souhait, le bruxellois fait vibrer les foules avec des concerts de plus en plus fous, mêlant sincérité, décalage, et turn up. La Belgique arrive et on adore ça !\r\n\r\n</div>\r\n<div class=\"strate-video col-sm-10 col-sm-offset-1 video\">\r\n<div class=\"post-item video wrap-video\">\r\n<div class=\"video-overlay\"><a href=\"http://www.solidays.org/programme/romeo-elvis/#\"><img class=\"bg-image\" src=\"https://i.ytimg.com/vi/DTtDNEG09QM/maxresdefault.jpg\" /></a></div>\r\n<div class=\"wrap-video\"><iframe class=\"embedVideo\" src=\"https://www.youtube.com/embed/DTtDNEG09QM\" width=\"300\" height=\"150\" data-mce-fragment=\"1\"></iframe></div>\r\n</div>\r\n</div>', 'ROMEO ELVIS', '', 'publish', 'open', 'closed', '', 'romeo-elvis', '', '', '2018-03-14 14:53:20', '2018-03-14 13:53:20', '', 0, 'http://localhost/wp-div%202018/?post_type=concert&#038;p=101', 0, 'concert', '', 0),
(102, 1, '2018-03-13 10:40:37', '2018-03-13 09:40:37', '&nbsp;\n\n[contact-form-7 id=\"78\" title=\"Formulaire de contact 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '80-autosave-v1', '', '', '2018-03-13 10:40:37', '2018-03-13 09:40:37', '', 80, 'http://localhost/wp-div%202018/index.php/2018/03/13/80-autosave-v1/', 0, 'revision', '', 0),
(103, 1, '2018-03-13 10:41:40', '2018-03-13 09:41:40', '[wpgmza id=\"1\"]\r\n\r\n[contact-form-7 id=\"78\" title=\"Formulaire de contact 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-03-13 10:41:40', '2018-03-13 09:41:40', '', 80, 'http://localhost/wp-div%202018/index.php/2018/03/13/80-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-03-13 10:49:05', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-13 10:49:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?page_id=104', 0, 'page', '', 0),
(105, 1, '2018-03-13 11:23:59', '2018-03-13 10:23:59', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-03-13 11:23:59', '2018-03-13 10:23:59', '', 79, 'http://localhost/wp-div%202018/index.php/2018/03/13/79-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-03-13 12:15:06', '2018-03-13 11:15:06', '[map-adresse zoom=\"19\"]46 rue de paris 93260 les lilas[/map-adresse]\r\n\r\n&nbsp;\r\n\r\ntrertzertertertertertertertert', 'Qui sommes-nous?', '', 'publish', 'closed', 'closed', '', 'mentions-legales', '', '', '2018-03-14 14:00:43', '2018-03-14 13:00:43', '', 0, 'http://localhost/wp-div%202018/?page_id=106', 0, 'page', '', 0),
(107, 1, '2018-03-13 12:15:06', '2018-03-13 11:15:06', '', 'Mentions légales', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-03-13 12:15:06', '2018-03-13 11:15:06', '', 106, 'http://localhost/wp-div%202018/index.php/2018/03/13/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-03-13 12:15:33', '2018-03-13 11:15:33', 'trertzertertertertertertertert', 'Qui sommes-nous?', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-03-13 12:15:33', '2018-03-13 11:15:33', '', 106, 'http://localhost/wp-div%202018/index.php/2018/03/13/106-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-03-13 12:15:55', '2018-03-13 11:15:55', '[youtube]0cxagh6KD30[/youtube]\r\n\r\n[youtube format=\"4by3\"]0cxagh6KD30[/youtube]\r\n\r\n[youtube format=\"16by9\"]0cxagh6KD30[/youtube]\r\n\r\nLOREM IpSUm', 'Mentions Légales', '', 'publish', 'closed', 'closed', '', 'mentions-legales-2', '', '', '2018-03-13 17:28:44', '2018-03-13 16:28:44', '', 0, 'http://localhost/wp-div%202018/?page_id=109', 0, 'page', '', 0),
(110, 1, '2018-03-13 12:15:55', '2018-03-13 11:15:55', 'gdfgdffgdfgdfgdfgdgd', 'Mentions Légales', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-03-13 12:15:55', '2018-03-13 11:15:55', '', 109, 'http://localhost/wp-div%202018/index.php/2018/03/13/109-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-03-13 13:50:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-13 13:50:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=acf&p=114', 0, 'acf', '', 0),
(115, 1, '2018-03-13 13:54:07', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-13 13:54:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=acf&p=115', 0, 'acf', '', 0),
(116, 1, '2018-03-13 14:23:18', '2018-03-13 13:23:18', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-13 14:23:18', '2018-03-13 13:23:18', '', 31, 'http://localhost/wp-div%202018/index.php/2018/03/13/31-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-03-13 14:28:50', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-13 14:28:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=acf&p=117', 0, 'acf', '', 0),
(118, 1, '2018-03-13 15:04:49', '2018-03-13 14:04:49', '', 'film', '', 'inherit', 'open', 'closed', '', 'film', '', '', '2018-03-13 15:04:49', '2018-03-13 14:04:49', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/film.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2018-03-13 15:08:38', '2018-03-13 14:08:38', '', 'Section des films', '', 'publish', 'closed', 'closed', '', 'acf_section-des-films', '', '', '2018-03-13 15:32:42', '2018-03-13 14:32:42', '', 0, 'http://localhost/wp-div%202018/?post_type=acf&#038;p=119', 0, 'acf', '', 0),
(120, 1, '2018-03-13 15:10:59', '2018-03-13 14:10:59', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Mon premier film', '', 'publish', 'closed', 'closed', '', 'mon-premier-film', '', '', '2018-03-13 15:54:13', '2018-03-13 14:54:13', '', 0, 'http://localhost/wp-div%202018/?post_type=film&#038;p=120', 0, 'film', '', 0),
(121, 1, '2018-03-13 15:11:52', '2018-03-13 14:11:52', '<strong>2</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Mon second film', '', 'publish', 'closed', 'closed', '', 'mon-second-film', '', '', '2018-03-13 15:54:51', '2018-03-13 14:54:51', '', 0, 'http://localhost/wp-div%202018/?post_type=film&#038;p=121', 0, 'film', '', 0),
(122, 1, '2018-03-13 15:12:23', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-13 15:12:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=film&p=122', 0, 'film', '', 0),
(123, 1, '2018-03-13 15:13:27', '2018-03-13 14:13:27', 'Le <strong>Lorem Ipsum 3eme</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Mon troisieme film', '', 'publish', 'closed', 'closed', '', 'mon-troisieme-film', '', '', '2018-03-13 15:55:12', '2018-03-13 14:55:12', '', 0, 'http://localhost/wp-div%202018/?post_type=film&#038;p=123', 0, 'film', '', 0),
(124, 1, '2018-03-13 15:14:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-13 15:14:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=124', 1, 'nav_menu_item', '', 0),
(125, 1, '2018-03-13 15:14:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-13 15:14:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=125', 1, 'nav_menu_item', '', 0),
(126, 1, '2018-03-13 15:14:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-13 15:14:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=126', 1, 'nav_menu_item', '', 0),
(127, 1, '2018-03-13 15:19:09', '2018-03-13 14:19:09', '', 'video', '', 'inherit', 'open', 'closed', '', 'video', '', '', '2018-03-13 15:19:09', '2018-03-13 14:19:09', '', 0, 'http://localhost/wp-div%202018/wp-content/uploads/2018/03/video.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2018-03-13 15:41:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-13 15:41:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?p=132', 1, 'nav_menu_item', '', 0),
(133, 1, '2018-03-13 15:44:08', '2018-03-13 14:44:08', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2018-03-13 15:50:37', '2018-03-13 14:50:37', '', 0, 'http://localhost/wp-div%202018/?p=133', 1, 'nav_menu_item', '', 0),
(134, 1, '2018-03-13 15:44:08', '2018-03-13 14:44:08', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2018-03-13 15:50:37', '2018-03-13 14:50:37', '', 0, 'http://localhost/wp-div%202018/?p=134', 2, 'nav_menu_item', '', 0),
(135, 1, '2018-03-13 15:44:08', '2018-03-13 14:44:08', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2018-03-13 15:50:37', '2018-03-13 14:50:37', '', 0, 'http://localhost/wp-div%202018/?p=135', 3, 'nav_menu_item', '', 0),
(136, 1, '2018-03-13 15:48:35', '2018-03-13 14:48:35', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2018-03-13 15:52:14', '2018-03-13 14:52:14', '', 0, 'http://localhost/wp-div%202018/?p=136', 3, 'nav_menu_item', '', 0),
(137, 1, '2018-03-13 15:48:35', '2018-03-13 14:48:35', '', 'Tous les films', '', 'publish', 'closed', 'closed', '', 'tous-les-films-2', '', '', '2018-03-13 15:52:14', '2018-03-13 14:52:14', '', 0, 'http://localhost/wp-div%202018/?p=137', 5, 'nav_menu_item', '', 0),
(138, 1, '2018-03-13 15:54:10', '2018-03-13 14:54:10', 'Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Mon premier film', '', 'inherit', 'closed', 'closed', '', '120-autosave-v1', '', '', '2018-03-13 15:54:10', '2018-03-13 14:54:10', '', 120, 'http://localhost/wp-div%202018/index.php/2018/03/13/120-autosave-v1/', 0, 'revision', '', 0),
(139, 1, '2018-03-13 16:05:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-13 16:05:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=acf&p=139', 0, 'acf', '', 0),
(140, 1, '2018-03-13 16:07:53', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-13 16:07:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=acf&p=140', 0, 'acf', '', 0),
(141, 1, '2018-03-13 16:12:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-03-13 16:12:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div%202018/?post_type=film&p=141', 0, 'film', '', 0),
(142, 1, '2018-03-13 17:28:11', '2018-03-13 16:28:11', '[youtube]0mrhJQo6l_Q[/youtube]\n\n[youtube format=\"4by3\"]0mrhJQo6l_Q[/youtube]\n\n[youtube format=\"16by9\"]0mrhJQo6l_Q[/youtube]\n\nLOREM IpSUm', 'Mentions Légales', '', 'inherit', 'closed', 'closed', '', '109-autosave-v1', '', '', '2018-03-13 17:28:11', '2018-03-13 16:28:11', '', 109, 'http://localhost/wp-div%202018/index.php/2018/03/13/109-autosave-v1/', 0, 'revision', '', 0),
(143, 1, '2018-03-13 17:17:03', '2018-03-13 16:17:03', '[youtube]O0hD_la_nWs[/youtube]\r\n\r\ngdfgdffgdfgdfgdfgdgd', 'Mentions Légales', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-03-13 17:17:03', '2018-03-13 16:17:03', '', 109, 'http://localhost/wp-div%202018/index.php/2018/03/13/109-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-03-13 17:26:33', '2018-03-13 16:26:33', '[youtube]O0hD_la_nWs[/youtube]\r\n\r\n[youtube format=\"4by3\"]O0hD_la_nWs[/youtube]\r\n\r\n[youtube format=\"16by9\"]O0hD_la_nWs[/youtube]\r\n\r\nLOREM IpSUm', 'Mentions Légales', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-03-13 17:26:33', '2018-03-13 16:26:33', '', 109, 'http://localhost/wp-div%202018/index.php/2018/03/13/109-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-03-13 17:27:40', '2018-03-13 16:27:40', '[youtube]il_mtW7ngxI[/youtube]\r\n\r\n[youtube format=\"4by3\"]il_mtW7ngxI[/youtube]\r\n\r\n[youtube format=\"16by9\"]il_mtW7ngxI[/youtube]\r\n\r\nLOREM IpSUm', 'Mentions Légales', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-03-13 17:27:40', '2018-03-13 16:27:40', '', 109, 'http://localhost/wp-div%202018/index.php/2018/03/13/109-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-03-13 17:28:16', '2018-03-13 16:28:16', '[youtube]0mrhJQo6l_Q[/youtube]\r\n\r\n[youtube format=\"4by3\"]0mrhJQo6l_Q[/youtube]\r\n\r\n[youtube format=\"16by9\"]0mrhJQo6l_Q[/youtube]\r\n\r\nLOREM IpSUm', 'Mentions Légales', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-03-13 17:28:16', '2018-03-13 16:28:16', '', 109, 'http://localhost/wp-div%202018/index.php/2018/03/13/109-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-03-13 17:28:44', '2018-03-13 16:28:44', '[youtube]0cxagh6KD30[/youtube]\r\n\r\n[youtube format=\"4by3\"]0cxagh6KD30[/youtube]\r\n\r\n[youtube format=\"16by9\"]0cxagh6KD30[/youtube]\r\n\r\nLOREM IpSUm', 'Mentions Légales', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-03-13 17:28:44', '2018-03-13 16:28:44', '', 109, 'http://localhost/wp-div%202018/index.php/2018/03/13/109-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-03-14 10:39:11', '2018-03-14 09:39:11', '[map-adresse zoom =\"17\"]10, rue de rivoli, Paris[/map-adresse]\r\n\r\n&nbsp;\r\n\r\ntrertzertertertertertertertert', 'Qui sommes-nous?', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-03-14 10:39:11', '2018-03-14 09:39:11', '', 106, 'http://localhost/wp-div%202018/index.php/2018/03/14/106-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-03-14 14:01:45', '2018-03-14 13:01:45', '[map-adresse zoom=\"19\"]46 rue de paris 93260 les lilas[/map-adresse]\n\ntrertzertertertertertertertert', 'Qui sommes-nous?', '', 'inherit', 'closed', 'closed', '', '106-autosave-v1', '', '', '2018-03-14 14:01:45', '2018-03-14 13:01:45', '', 106, 'http://localhost/wp-div%202018/index.php/2018/03/14/106-autosave-v1/', 0, 'revision', '', 0),
(150, 1, '2018-03-14 10:47:29', '2018-03-14 09:47:29', '[map-adresse]10, rue de rivoli, Paris[/map-adresse]\r\n\r\n&nbsp;\r\n\r\ntrertzertertertertertertertert', 'Qui sommes-nous?', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-03-14 10:47:29', '2018-03-14 09:47:29', '', 106, 'http://localhost/wp-div%202018/index.php/2018/03/14/106-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-03-14 13:59:15', '2018-03-14 12:59:15', '[map-adresse]46 rue de paris 93260 les lilas[/map-adresse]\r\n\r\n&nbsp;\r\n\r\ntrertzertertertertertertertert', 'Qui sommes-nous?', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-03-14 13:59:15', '2018-03-14 12:59:15', '', 106, 'http://localhost/wp-div%202018/index.php/2018/03/14/106-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2018-03-14 14:00:43', '2018-03-14 13:00:43', '[map-adresse zoom=\"19\"]46 rue de paris 93260 les lilas[/map-adresse]\r\n\r\n&nbsp;\r\n\r\ntrertzertertertertertertertert', 'Qui sommes-nous?', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-03-14 14:00:43', '2018-03-14 13:00:43', '', 106, 'http://localhost/wp-div%202018/index.php/2018/03/14/106-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2018-03-14 16:09:05', '2018-03-14 15:09:05', 'c est rien d interressant!', 'Mon dernier concert', '', 'publish', 'open', 'closed', '', 'mon-dernier-concert', '', '', '2018-03-14 16:09:05', '2018-03-14 15:09:05', '', 0, 'http://localhost/wp-div2018/?post_type=concert&#038;p=153', 0, 'concert', '', 0),
(154, 1, '2018-03-14 16:09:28', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-03-14 16:09:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-div2018/?page_id=154', 0, 'page', '', 0),
(155, 1, '2018-03-14 16:29:27', '2018-03-14 15:29:27', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-14 16:29:27', '2018-03-14 15:29:27', '', 31, 'http://localhost/wp-div2018/index.php/2018/03/14/31-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2018-03-14 16:35:14', '2018-03-14 15:35:14', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-14 16:35:14', '2018-03-14 15:35:14', '', 31, 'http://localhost/wp-div2018/index.php/2018/03/14/31-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2018-03-14 16:37:07', '2018-03-14 15:37:07', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-14 16:37:07', '2018-03-14 15:37:07', '', 31, 'http://localhost/wp-div2018/index.php/2018/03/14/31-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2018-03-14 16:38:00', '2018-03-14 15:38:00', 'Bienvenue sur votre site. C est votre page d\'accueil', 'Accueil', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-03-14 16:38:00', '2018-03-14 15:38:00', '', 31, 'http://localhost/wp-div2018/index.php/2018/03/14/31-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `dadd_termmeta`
--

CREATE TABLE `dadd_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_terms`
--

CREATE TABLE `dadd_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dadd_terms`
--

INSERT INTO `dadd_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu principal', 'menu-principal', 0),
(3, 'POP', 'pop', 0),
(4, 'ROCK', 'rock', 0),
(5, 'TECHNO', 'techno', 0),
(6, 'CLASSIC', 'classic', 0),
(8, 'MenuFooter', 'menufooter', 0),
(9, 'simple', 'simple', 0),
(10, 'grouped', 'grouped', 0),
(11, 'variable', 'variable', 0),
(12, 'external', 'external', 0),
(13, 'exclude-from-search', 'exclude-from-search', 0),
(14, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(15, 'featured', 'featured', 0),
(16, 'outofstock', 'outofstock', 0),
(17, 'rated-1', 'rated-1', 0),
(18, 'rated-2', 'rated-2', 0),
(19, 'rated-3', 'rated-3', 0),
(20, 'rated-4', 'rated-4', 0),
(21, 'rated-5', 'rated-5', 0),
(22, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Structure de la table `dadd_term_relationships`
--

CREATE TABLE `dadd_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dadd_term_relationships`
--

INSERT INTO `dadd_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(41, 1, 0),
(46, 2, 0),
(48, 2, 0),
(87, 3, 0),
(87, 4, 0),
(87, 5, 0),
(87, 6, 0),
(89, 2, 0),
(92, 3, 0),
(94, 1, 0),
(99, 6, 0),
(101, 5, 0),
(133, 8, 0),
(134, 8, 0),
(135, 8, 0),
(136, 2, 0),
(137, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `dadd_term_taxonomy`
--

CREATE TABLE `dadd_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dadd_term_taxonomy`
--

INSERT INTO `dadd_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2),
(8, 8, 'nav_menu', '', 0, 3),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_type', '', 0, 0),
(11, 11, 'product_type', '', 0, 0),
(12, 12, 'product_type', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_visibility', '', 0, 0),
(22, 22, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `dadd_usermeta`
--

CREATE TABLE `dadd_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `dadd_usermeta`
--

INSERT INTO `dadd_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'dadd_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'dadd_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"6b45cb4eecc606f8a4b02f49ed1cc0c88eed277384b0f762e8ba983cd673f490\";a:4:{s:10:\"expiration\";i:1521192652;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36\";s:5:\"login\";i:1521019852;}s:64:\"0f06426d8ef3e8d666c400133d710579cfee93261db007ceb1a806c56b6e9528\";a:4:{s:10:\"expiration\";i:1521207799;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36\";s:5:\"login\";i:1521034999;}}'),
(17, 1, 'dadd_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'dadd_user-settings', 'libraryContent=browse&hidetb=1'),
(23, 1, 'dadd_user-settings-time', '1521041363'),
(24, 1, 'closedpostboxes_acf', 'a:0:{}'),
(25, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `dadd_users`
--

CREATE TABLE `dadd_users` (
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
-- Déchargement des données de la table `dadd_users`
--

INSERT INTO `dadd_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BWWCqwRKAPhEiDo5yyb/Ype7YDS/CY1', 'admin', 'jonathanchemla55@gmail.com', '', '2018-03-12 08:51:52', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `dadd_wc_download_log`
--

CREATE TABLE `dadd_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_wc_webhooks`
--

CREATE TABLE `dadd_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_api_keys`
--

CREATE TABLE `dadd_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_attribute_taxonomies`
--

CREATE TABLE `dadd_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `dadd_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_log`
--

CREATE TABLE `dadd_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_order_itemmeta`
--

CREATE TABLE `dadd_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_order_items`
--

CREATE TABLE `dadd_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_payment_tokenmeta`
--

CREATE TABLE `dadd_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_payment_tokens`
--

CREATE TABLE `dadd_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_sessions`
--

CREATE TABLE `dadd_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_shipping_zones`
--

CREATE TABLE `dadd_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_shipping_zone_locations`
--

CREATE TABLE `dadd_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_shipping_zone_methods`
--

CREATE TABLE `dadd_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_tax_rates`
--

CREATE TABLE `dadd_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_woocommerce_tax_rate_locations`
--

CREATE TABLE `dadd_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_wpgmza`
--

CREATE TABLE `dadd_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dadd_wpgmza`
--

INSERT INTO `dadd_wpgmza` (`id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `other_data`) VALUES
(2, 1, '1 Rue de Rivoli, Paris, France', '', '', '', '', '48.8555799', '2.3591636999999537', '0', '', '0', '', 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `dadd_wpgmza_categories`
--

CREATE TABLE `dadd_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_wpgmza_category_maps`
--

CREATE TABLE `dadd_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_wpgmza_maps`
--

CREATE TABLE `dadd_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dadd_wpgmza_maps`
--

INSERT INTO `dadd_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '47.980628', '5.215609', '47.98062820765308,5.215609012499954', 6, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:12:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:21:\"Code Postal / Adresse\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;}');

-- --------------------------------------------------------

--
-- Structure de la table `dadd_wpgmza_polygon`
--

CREATE TABLE `dadd_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `dadd_wpgmza_polylines`
--

CREATE TABLE `dadd_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dadd_commentmeta`
--
ALTER TABLE `dadd_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `dadd_comments`
--
ALTER TABLE `dadd_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Index pour la table `dadd_links`
--
ALTER TABLE `dadd_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `dadd_options`
--
ALTER TABLE `dadd_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `dadd_postmeta`
--
ALTER TABLE `dadd_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `dadd_posts`
--
ALTER TABLE `dadd_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `dadd_termmeta`
--
ALTER TABLE `dadd_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `dadd_terms`
--
ALTER TABLE `dadd_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `dadd_term_relationships`
--
ALTER TABLE `dadd_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `dadd_term_taxonomy`
--
ALTER TABLE `dadd_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `dadd_usermeta`
--
ALTER TABLE `dadd_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `dadd_users`
--
ALTER TABLE `dadd_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `dadd_wc_download_log`
--
ALTER TABLE `dadd_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Index pour la table `dadd_wc_webhooks`
--
ALTER TABLE `dadd_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `dadd_woocommerce_api_keys`
--
ALTER TABLE `dadd_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Index pour la table `dadd_woocommerce_attribute_taxonomies`
--
ALTER TABLE `dadd_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Index pour la table `dadd_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `dadd_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `dadd_woocommerce_log`
--
ALTER TABLE `dadd_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Index pour la table `dadd_woocommerce_order_itemmeta`
--
ALTER TABLE `dadd_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `dadd_woocommerce_order_items`
--
ALTER TABLE `dadd_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `dadd_woocommerce_payment_tokenmeta`
--
ALTER TABLE `dadd_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `dadd_woocommerce_payment_tokens`
--
ALTER TABLE `dadd_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `dadd_woocommerce_sessions`
--
ALTER TABLE `dadd_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Index pour la table `dadd_woocommerce_shipping_zones`
--
ALTER TABLE `dadd_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index pour la table `dadd_woocommerce_shipping_zone_locations`
--
ALTER TABLE `dadd_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index pour la table `dadd_woocommerce_shipping_zone_methods`
--
ALTER TABLE `dadd_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Index pour la table `dadd_woocommerce_tax_rates`
--
ALTER TABLE `dadd_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Index pour la table `dadd_woocommerce_tax_rate_locations`
--
ALTER TABLE `dadd_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index pour la table `dadd_wpgmza`
--
ALTER TABLE `dadd_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dadd_wpgmza_categories`
--
ALTER TABLE `dadd_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dadd_wpgmza_category_maps`
--
ALTER TABLE `dadd_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dadd_wpgmza_maps`
--
ALTER TABLE `dadd_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dadd_wpgmza_polygon`
--
ALTER TABLE `dadd_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dadd_wpgmza_polylines`
--
ALTER TABLE `dadd_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `dadd_commentmeta`
--
ALTER TABLE `dadd_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_comments`
--
ALTER TABLE `dadd_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `dadd_links`
--
ALTER TABLE `dadd_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_options`
--
ALTER TABLE `dadd_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT pour la table `dadd_postmeta`
--
ALTER TABLE `dadd_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=947;

--
-- AUTO_INCREMENT pour la table `dadd_posts`
--
ALTER TABLE `dadd_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT pour la table `dadd_termmeta`
--
ALTER TABLE `dadd_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_terms`
--
ALTER TABLE `dadd_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `dadd_term_taxonomy`
--
ALTER TABLE `dadd_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `dadd_usermeta`
--
ALTER TABLE `dadd_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `dadd_users`
--
ALTER TABLE `dadd_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `dadd_wc_download_log`
--
ALTER TABLE `dadd_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_wc_webhooks`
--
ALTER TABLE `dadd_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_api_keys`
--
ALTER TABLE `dadd_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_attribute_taxonomies`
--
ALTER TABLE `dadd_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `dadd_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_log`
--
ALTER TABLE `dadd_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_order_itemmeta`
--
ALTER TABLE `dadd_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_order_items`
--
ALTER TABLE `dadd_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_payment_tokenmeta`
--
ALTER TABLE `dadd_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_payment_tokens`
--
ALTER TABLE `dadd_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_sessions`
--
ALTER TABLE `dadd_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_shipping_zones`
--
ALTER TABLE `dadd_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_shipping_zone_locations`
--
ALTER TABLE `dadd_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_shipping_zone_methods`
--
ALTER TABLE `dadd_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_tax_rates`
--
ALTER TABLE `dadd_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_woocommerce_tax_rate_locations`
--
ALTER TABLE `dadd_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_wpgmza`
--
ALTER TABLE `dadd_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dadd_wpgmza_categories`
--
ALTER TABLE `dadd_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_wpgmza_category_maps`
--
ALTER TABLE `dadd_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_wpgmza_maps`
--
ALTER TABLE `dadd_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `dadd_wpgmza_polygon`
--
ALTER TABLE `dadd_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dadd_wpgmza_polylines`
--
ALTER TABLE `dadd_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
