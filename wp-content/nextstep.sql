-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 08:39 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nextstep`
--

-- --------------------------------------------------------

--
-- Table structure for table `nse_commentmeta`
--

CREATE TABLE `nse_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nse_comments`
--

CREATE TABLE `nse_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nse_comments`
--

INSERT INTO `nse_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-07-07 05:46:04', '2021-07-07 05:46:04', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nse_links`
--

CREATE TABLE `nse_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nse_options`
--

CREATE TABLE `nse_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nse_options`
--

INSERT INTO `nse_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/nextstep', 'yes'),
(2, 'home', 'http://localhost/nextstep', 'yes'),
(3, 'blogname', 'NextStep', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tempnabeen1196@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:207:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"slider/?$\";s:26:\"index.php?post_type=slider\";s:39:\"slider/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:34:\"slider/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=slider&feed=$matches[1]\";s:26:\"slider/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=slider&paged=$matches[1]\";s:13:\"university/?$\";s:30:\"index.php?post_type=university\";s:43:\"university/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=university&feed=$matches[1]\";s:38:\"university/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=university&feed=$matches[1]\";s:30:\"university/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=university&paged=$matches[1]\";s:10:\"gallery/?$\";s:27:\"index.php?post_type=gallery\";s:40:\"gallery/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=gallery&feed=$matches[1]\";s:35:\"gallery/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=gallery&feed=$matches[1]\";s:27:\"gallery/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=gallery&paged=$matches[1]\";s:7:\"team/?$\";s:24:\"index.php?post_type=team\";s:37:\"team/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:32:\"team/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:24:\"team/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=team&paged=$matches[1]\";s:8:\"video/?$\";s:25:\"index.php?post_type=video\";s:38:\"video/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=video&feed=$matches[1]\";s:33:\"video/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=video&feed=$matches[1]\";s:25:\"video/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=video&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:47:\"slider/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:42:\"slider/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?slider=$matches[1]&feed=$matches[2]\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"university/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"university/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"university/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"university/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"university/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"university/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"university/([^/]+)/embed/?$\";s:43:\"index.php?university=$matches[1]&embed=true\";s:31:\"university/([^/]+)/trackback/?$\";s:37:\"index.php?university=$matches[1]&tb=1\";s:51:\"university/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?university=$matches[1]&feed=$matches[2]\";s:46:\"university/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?university=$matches[1]&feed=$matches[2]\";s:39:\"university/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?university=$matches[1]&paged=$matches[2]\";s:46:\"university/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?university=$matches[1]&cpage=$matches[2]\";s:35:\"university/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?university=$matches[1]&page=$matches[2]\";s:27:\"university/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"university/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"university/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"university/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"university/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"university/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"gallery/([^/]+)/embed/?$\";s:40:\"index.php?gallery=$matches[1]&embed=true\";s:28:\"gallery/([^/]+)/trackback/?$\";s:34:\"index.php?gallery=$matches[1]&tb=1\";s:48:\"gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?gallery=$matches[1]&feed=$matches[2]\";s:43:\"gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?gallery=$matches[1]&feed=$matches[2]\";s:36:\"gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&paged=$matches[2]\";s:43:\"gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&cpage=$matches[2]\";s:32:\"gallery/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?gallery=$matches[1]&page=$matches[2]\";s:24:\"gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"team/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"team/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"team/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"team/([^/]+)/embed/?$\";s:37:\"index.php?team=$matches[1]&embed=true\";s:25:\"team/([^/]+)/trackback/?$\";s:31:\"index.php?team=$matches[1]&tb=1\";s:45:\"team/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:40:\"team/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:33:\"team/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&paged=$matches[2]\";s:40:\"team/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&cpage=$matches[2]\";s:29:\"team/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?team=$matches[1]&page=$matches[2]\";s:21:\"team/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"team/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"team/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"video/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"video/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"video/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"video/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"video/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"video/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"video/([^/]+)/embed/?$\";s:38:\"index.php?video=$matches[1]&embed=true\";s:26:\"video/([^/]+)/trackback/?$\";s:32:\"index.php?video=$matches[1]&tb=1\";s:46:\"video/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?video=$matches[1]&feed=$matches[2]\";s:41:\"video/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?video=$matches[1]&feed=$matches[2]\";s:34:\"video/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?video=$matches[1]&paged=$matches[2]\";s:41:\"video/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?video=$matches[1]&cpage=$matches[2]\";s:30:\"video/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?video=$matches[1]&page=$matches[2]\";s:22:\"video/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"video/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"video/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"video/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"video/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"video/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=85&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:41:\"featured-galleries/featured-galleries.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '5.75', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'nextstep', 'yes'),
(41, 'stylesheet', 'nextstep', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '82', 'yes'),
(82, 'page_on_front', '85', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1641188763', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'nse_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1626072364;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1626111964;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1626155164;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626155176;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626155178;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1626327964;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625639826;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1626068971;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_timeout_browser_7f65ff317c237641f7aace3b7dac03d6', '1626241577', 'no'),
(130, '_site_transient_browser_7f65ff317c237641f7aace3b7dac03d6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"91.0.4472.124\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, '_site_transient_timeout_php_check_722257398ed85eaa39d12bc29012c839', '1626241578', 'no'),
(132, '_site_transient_php_check_722257398ed85eaa39d12bc29012c839', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(137, 'recently_activated', 'a:1:{s:30:\"advanced-custom-fields/acf.php\";i:1625654073;}', 'yes'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(155, 'current_theme', 'NextStep', 'yes'),
(156, 'theme_mods_nextstep', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1625639817;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:12:\"header_image\";s:66:\"http://localhost/nextstep/wp-content/uploads/2021/07/main-logo.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:152;s:3:\"url\";s:66:\"http://localhost/nextstep/wp-content/uploads/2021/07/main-logo.png\";s:13:\"thumbnail_url\";s:66:\"http://localhost/nextstep/wp-content/uploads/2021/07/main-logo.png\";s:6:\"height\";i:267;s:5:\"width\";i:1000;}}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(161, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1626063306;s:7:\"checked\";a:1:{s:8:\"nextstep\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(163, 'category_children', 'a:0:{}', 'yes'),
(174, 'acf_version', '5.9.7', 'yes'),
(196, '_transient_health-check-site-status-result', '{\"good\":\"13\",\"recommended\":\"5\",\"critical\":\"2\"}', 'yes'),
(224, 'WPLANG', '', 'yes'),
(225, 'new_admin_email', 'tempnabeen1196@gmail.com', 'yes'),
(236, 'theme_options', 'a:8:{s:7:\"address\";s:18:\"Baneswor,Ktm,Nepal\";s:9:\"telephone\";s:26:\"+977-984567123 / 321456987\";s:5:\"email\";s:22:\"edu.nextstep@gmail.com\";s:6:\"mapurl\";s:272:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3532.5565387221486!2d85.34175851438441!3d27.70009793241885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb199b59cc063b0x683472b34754bbde!2sKnockoutSystemPvt.Ltd.!5e0!3m2!1sen!2snp!4v1625845508293!5m2!1sen!2snp\";s:8:\"linkedin\";s:25:\"https://www.linkedin.com/\";s:8:\"facebook\";s:25:\"https://www.facebook.com/\";s:7:\"twitter\";s:20:\"https://twitter.com/\";s:9:\"instagram\";s:26:\"https://www.instagram.com/\";}', 'yes'),
(252, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(302, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1625989161;s:7:\"version\";s:5:\"5.4.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(304, 'secret_key', 'H[n=jdv~p+&&Vbbam=.+hoE)ln$2/x*FTn|D#H1P*2;9Z[xq?=@y2b^!D@:eq%v{', 'no'),
(318, '_site_transient_timeout_theme_roots', '1626070771', 'no'),
(319, '_site_transient_theme_roots', 'a:1:{s:8:\"nextstep\";s:7:\"/themes\";}', 'no'),
(320, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1626068972;s:7:\"checked\";a:3:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.1\";s:41:\"featured-galleries/featured-galleries.php\";s:5:\"1.7.1\";}s:8:\"response\";a:1:{s:41:\"featured-galleries/featured-galleries.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/featured-galleries\";s:4:\"slug\";s:18:\"featured-galleries\";s:6:\"plugin\";s:41:\"featured-galleries/featured-galleries.php\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/featured-galleries/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/featured-galleries.2.1.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/featured-galleries/assets/icon-256x256.png?rev=1073825\";s:2:\"1x\";s:71:\"https://ps.w.org/featured-galleries/assets/icon-128x128.png?rev=1073825\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/featured-galleries/assets/banner-1544x500.png?rev=865937\";s:2:\"1x\";s:72:\"https://ps.w.org/featured-galleries/assets/banner-772x250.png?rev=865937\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:6:\"4.9.18\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `nse_postmeta`
--

CREATE TABLE `nse_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nse_postmeta`
--

INSERT INTO `nse_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1625652361:1'),
(7, 7, '_wp_attached_file', '2021/07/study-in-australia.jpg'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:326;s:4:\"file\";s:30:\"2021/07/study-in-australia.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(9, 6, '_thumbnail_id', '7'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1625653578:1'),
(12, 10, '_wp_attached_file', '2021/07/study_in_canada.png'),
(13, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:628;s:4:\"file\";s:27:\"2021/07/study_in_canada.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 9, '_thumbnail_id', '10'),
(15, 12, '_edit_last', '1'),
(16, 12, '_edit_lock', '1625653925:1'),
(17, 13, '_wp_attached_file', '2021/07/Study-In-UK.jpg'),
(18, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:628;s:4:\"file\";s:23:\"2021/07/Study-In-UK.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:5:\"Kruti\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1606827129\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 12, '_thumbnail_id', '13'),
(20, 15, '_edit_last', '1'),
(21, 15, '_edit_lock', '1625912783:1'),
(22, 16, '_wp_attached_file', '2021/07/who-we-are.jpg'),
(23, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:22:\"2021/07/who-we-are.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 15, '_thumbnail_id', '16'),
(25, 18, '_edit_last', '1'),
(26, 18, '_edit_lock', '1625912085:1'),
(29, 3, '_wp_trash_meta_status', 'draft'),
(30, 3, '_wp_trash_meta_time', '1625654476'),
(31, 3, '_wp_desired_post_slug', 'privacy-policy'),
(32, 2, '_wp_trash_meta_status', 'publish'),
(33, 2, '_wp_trash_meta_time', '1625654476'),
(34, 2, '_wp_desired_post_slug', 'sample-page'),
(35, 18, 'fg_temp_metadata', '16,13,10,7'),
(37, 18, 'fg_perm_metadata', '16,13,10,7'),
(43, 25, '_edit_last', '1'),
(44, 25, '_edit_lock', '1625796446:1'),
(45, 26, '_wp_attached_file', '2021/07/canada.png'),
(46, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:380;s:4:\"file\";s:18:\"2021/07/canada.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 27, '_wp_attached_file', '2021/07/japan.png'),
(48, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:380;s:4:\"file\";s:17:\"2021/07/japan.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 28, '_wp_attached_file', '2021/07/uk.jpg'),
(50, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1066;s:4:\"file\";s:14:\"2021/07/uk.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 29, '_wp_attached_file', '2021/07/uk.png'),
(52, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:380;s:4:\"file\";s:14:\"2021/07/uk.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 30, '_wp_attached_file', '2021/07/uni1.png'),
(54, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:85;s:4:\"file\";s:16:\"2021/07/uni1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 31, '_wp_attached_file', '2021/07/uni2.png'),
(56, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:85;s:4:\"file\";s:16:\"2021/07/uni2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 32, '_wp_attached_file', '2021/07/uni3.png'),
(58, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:85;s:4:\"file\";s:16:\"2021/07/uni3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 33, '_wp_attached_file', '2021/07/uni4.png'),
(60, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:85;s:4:\"file\";s:16:\"2021/07/uni4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 34, '_wp_attached_file', '2021/07/uni5.png'),
(62, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:85;s:4:\"file\";s:16:\"2021/07/uni5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 35, '_wp_attached_file', '2021/07/uni6.png'),
(64, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:85;s:6:\"height\";i:85;s:4:\"file\";s:16:\"2021/07/uni6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 36, '_wp_attached_file', '2021/07/uni7.png'),
(66, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:85;s:4:\"file\";s:16:\"2021/07/uni7.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 37, '_wp_attached_file', '2021/07/usa.jpg'),
(68, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:15:\"2021/07/usa.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(69, 38, '_wp_attached_file', '2021/07/usa.png'),
(70, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:380;s:4:\"file\";s:15:\"2021/07/usa.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 25, '_thumbnail_id', '36'),
(72, 25, '_university', 'https://www.westernsydney.edu.au/'),
(73, 40, '_edit_last', '1'),
(74, 40, '_edit_lock', '1625796495:1'),
(75, 41, '_wp_attached_file', '2021/07/maq.jpg'),
(76, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:315;s:4:\"file\";s:15:\"2021/07/maq.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 40, '_thumbnail_id', '41'),
(78, 40, '_university', 'https://www.mq.edu.au/'),
(79, 44, '_wp_attached_file', '2021/07/darwin.png'),
(80, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:315;s:4:\"file\";s:18:\"2021/07/darwin.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 43, '_edit_last', '1'),
(82, 43, '_thumbnail_id', '44'),
(83, 43, '_university', 'https://www.cdu.edu.au/'),
(84, 43, '_edit_lock', '1625796576:1'),
(85, 46, '_edit_last', '1'),
(86, 46, '_edit_lock', '1625797058:1'),
(87, 47, '_wp_attached_file', '2021/07/latobe.png'),
(88, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:942;s:6:\"height\";i:320;s:4:\"file\";s:18:\"2021/07/latobe.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 46, '_thumbnail_id', '47'),
(90, 46, '_university', 'https://www.latrobe.edu.au/'),
(91, 50, '_wp_attached_file', '2021/07/download.png'),
(92, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2021/07/download.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 49, '_edit_last', '1'),
(94, 49, '_thumbnail_id', '50'),
(95, 49, '_university', 'https://www.unimelb.edu.au/'),
(96, 49, '_edit_lock', '1625797093:1'),
(97, 54, 'fg_temp_metadata', '56,57,58'),
(98, 54, '_edit_last', '1'),
(99, 54, '_edit_lock', '1625805038:1'),
(100, 55, '_wp_attached_file', '2021/07/6fdfbf12-7fea-4edc-b5f8-80462c8f7835_DSC_0886.jpg'),
(101, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:57:\"2021/07/6fdfbf12-7fea-4edc-b5f8-80462c8f7835_DSC_0886.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 56, '_wp_attached_file', '2021/07/6d2b3492-5979-4781-ba84-ce82b0513832_DSC_0903.jpg'),
(103, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:57:\"2021/07/6d2b3492-5979-4781-ba84-ce82b0513832_DSC_0903.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 57, '_wp_attached_file', '2021/07/e0d1ebdd-f9d7-4e96-a7ed-1f234bec655c_DSC_0899.jpg'),
(105, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:57:\"2021/07/e0d1ebdd-f9d7-4e96-a7ed-1f234bec655c_DSC_0899.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 58, '_wp_attached_file', '2021/07/6fdfbf12-7fea-4edc-b5f8-80462c8f7835_DSC_0886-1.jpg'),
(107, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:59:\"2021/07/6fdfbf12-7fea-4edc-b5f8-80462c8f7835_DSC_0886-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 54, '_thumbnail_id', '55'),
(109, 54, 'fg_perm_metadata', '56,57,58'),
(110, 60, 'fg_temp_metadata', '65,64,63,62,61'),
(111, 60, '_edit_last', '1'),
(112, 60, '_edit_lock', '1625806406:1'),
(113, 61, '_wp_attached_file', '2021/07/us_fair_5.jpg'),
(114, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:21:\"2021/07/us_fair_5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 62, '_wp_attached_file', '2021/07/us_fair_4.jpg'),
(116, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:21:\"2021/07/us_fair_4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 63, '_wp_attached_file', '2021/07/us_fair_3.jpg'),
(118, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:21:\"2021/07/us_fair_3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 64, '_wp_attached_file', '2021/07/us_fair_2.jpg'),
(120, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:21:\"2021/07/us_fair_2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 65, '_wp_attached_file', '2021/07/us_fair.jpg'),
(122, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2021/07/us_fair.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 66, '_wp_attached_file', '2021/07/eduusfair2.jpg'),
(124, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1446;s:6:\"height\";i:721;s:4:\"file\";s:22:\"2021/07/eduusfair2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Bogavac, Ana (Podgorica)\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1552403439\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 60, '_thumbnail_id', '66'),
(126, 60, 'fg_perm_metadata', '65,64,63,62,61'),
(127, 68, '_edit_last', '1'),
(128, 68, '_edit_lock', '1625806655:1'),
(129, 68, '_thumbnail_id', '66'),
(130, 68, 'fg_temp_metadata', '65,64,63,62,61'),
(131, 68, 'fg_perm_metadata', '65,64,63,62,61'),
(132, 70, 'fg_temp_metadata', '58,57,56'),
(133, 70, '_edit_last', '1'),
(134, 70, '_edit_lock', '1625806691:1'),
(135, 70, '_thumbnail_id', '58'),
(136, 70, 'fg_perm_metadata', '58,57,56'),
(137, 1, '_wp_trash_meta_status', 'publish'),
(138, 1, '_wp_trash_meta_time', '1625827713'),
(139, 1, '_wp_desired_post_slug', 'hello-world'),
(140, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(141, 73, 'fg_temp_metadata', ''),
(142, 73, '_edit_last', '1'),
(143, 73, '_edit_lock', '1625979078:1'),
(144, 74, '_wp_attached_file', '2021/07/bb864e88-fbc3-45f2-b238-e2f4f7fd1781_pte-A2.png'),
(145, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:55:\"2021/07/bb864e88-fbc3-45f2-b238-e2f4f7fd1781_pte-A2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 73, '_thumbnail_id', '74'),
(150, 76, 'fg_temp_metadata', ''),
(151, 76, '_edit_last', '1'),
(152, 76, '_edit_lock', '1625978443:1'),
(153, 77, '_wp_attached_file', '2021/07/canadaninan.png'),
(154, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2021/07/canadaninan.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 76, '_thumbnail_id', '77'),
(159, 79, 'fg_temp_metadata', ''),
(160, 79, '_edit_last', '1'),
(161, 79, '_edit_lock', '1625844147:1'),
(162, 80, '_wp_attached_file', '2021/07/free_bridge.jpg'),
(163, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:23:\"2021/07/free_bridge.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 79, '_thumbnail_id', '80'),
(168, 82, 'fg_temp_metadata', ''),
(169, 82, '_edit_last', '1'),
(171, 82, '_edit_lock', '1625838818:1'),
(173, 85, 'fg_temp_metadata', ''),
(174, 85, '_edit_last', '1'),
(176, 85, '_edit_lock', '1625837591:1'),
(177, 87, 'fg_temp_metadata', ''),
(178, 87, '_edit_last', '1'),
(179, 87, '_edit_lock', '1625844580:1'),
(181, 87, '_wp_page_template', 'contact.php'),
(183, 89, '_wp_attached_file', '2021/07/office.jpg'),
(184, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:18:\"2021/07/office.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 87, '_thumbnail_id', '89'),
(188, 91, 'fg_temp_metadata', ''),
(189, 91, '_edit_last', '1'),
(190, 91, '_edit_lock', '1626005664:1'),
(191, 91, '_wp_page_template', 'about.php'),
(194, 97, '_edit_last', '1'),
(195, 97, '_edit_lock', '1625848475:1'),
(196, 97, '_position', 'CEO'),
(197, 97, '_company', 'Nextstep Education'),
(198, 97, '_facebook', 'https://www.facebook.com/'),
(199, 97, '_linkedin', 'https://www.linkedin.com'),
(200, 97, '_instagram', 'https://www.instagram.com/'),
(201, 97, '_twitter', 'https://twitter.com/home'),
(202, 99, '_wp_attached_file', '2021/07/4-42408_vector-art-design-men-fashion-vector-art-illustration.png'),
(203, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:860;s:6:\"height\";i:879;s:4:\"file\";s:73:\"2021/07/4-42408_vector-art-design-men-fashion-vector-art-illustration.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 97, '_thumbnail_id', '99'),
(205, 100, '_edit_last', '1'),
(206, 100, '_edit_lock', '1625848717:1'),
(207, 101, '_wp_attached_file', '2021/07/noimage_testi.png'),
(208, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2021/07/noimage_testi.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 100, '_thumbnail_id', '101'),
(210, 100, '_position', 'Manager'),
(211, 100, '_company', 'Nextstep Education'),
(212, 100, '_facebook', 'https://www.facebook.com/'),
(213, 100, '_linkedin', 'https://www.linkedin.com'),
(214, 100, '_instagram', 'https://www.instagram.com/'),
(215, 100, '_twitter', 'https://twitter.com/home'),
(217, 105, 'fg_temp_metadata', ''),
(218, 105, '_edit_last', '1'),
(219, 105, '_edit_lock', '1625849697:1'),
(220, 106, '_wp_attached_file', '2021/07/banner-thumb.png'),
(221, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:693;s:6:\"height\";i:722;s:4:\"file\";s:24:\"2021/07/banner-thumb.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 105, '_thumbnail_id', '106'),
(223, 105, '_wp_page_template', 'default'),
(227, 109, '_wp_attached_file', '2021/07/student1.jpg'),
(228, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2356;s:6:\"height\";i:1571;s:4:\"file\";s:20:\"2021/07/student1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:24:\"Andrey Kiselev - Fotolia\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:52:\"Medical theme: friendly female doctor in a hospital.\";s:17:\"created_timestamp\";s:10:\"1244627506\";s:9:\"copyright\";s:24:\"Andrey Kiselev - Fotolia\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:20:\"successful treatment\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:100:{i:0;s:9:\"assistant\";i:1;s:10:\"attractive\";i:2;s:4:\"card\";i:3;s:4:\"care\";i:4;s:9:\"caucasian\";i:5;s:6:\"clinic\";i:6;s:8:\"clinical\";i:7;s:4:\"coat\";i:8;s:10:\"consultant\";i:9;s:13:\"convalescence\";i:10;s:4:\"cure\";i:11;s:9:\"diagnosis\";i:12;s:7:\"disease\";i:13;s:6:\"doctor\";i:14;s:9:\"education\";i:15;s:6:\"female\";i:16;s:3:\"flu\";i:17;s:8:\"friendly\";i:18;s:6:\"health\";i:19;s:10:\"healthcare\";i:20;s:7:\"history\";i:21;s:8:\"hospital\";i:22;s:4:\"gown\";i:23;s:6:\"indoor\";i:24;s:9:\"insurance\";i:25;s:10:\"internship\";i:26;s:3:\"lab\";i:27;s:10:\"laboratory\";i:28;s:7:\"medical\";i:29;s:8:\"medicine\";i:30;s:5:\"nurse\";i:31;s:6:\"people\";i:32;s:9:\"physician\";i:33;s:12:\"prescription\";i:34;s:12:\"professional\";i:35;s:8:\"recovery\";i:36;s:6:\"report\";i:37;s:4:\"read\";i:38;s:8:\"research\";i:39;s:4:\"room\";i:40;s:7:\"success\";i:41;s:7:\"science\";i:42;s:5:\"smile\";i:43;s:7:\"student\";i:44;s:5:\"study\";i:45;s:9:\"treatment\";i:46;s:5:\"thumb\";i:47;s:5:\"woman\";i:48;s:7:\"working\";i:49;s:5:\"young\";i:50;s:6:\"doctor\";i:51;s:7:\"success\";i:52;s:6:\"health\";i:53;s:10:\"healthcare\";i:54;s:8:\"hospital\";i:55;s:10:\"laboratory\";i:56;s:8:\"medicine\";i:57;s:7:\"student\";i:58;s:5:\"woman\";i:59;s:9:\"assistant\";i:60;s:10:\"attractive\";i:61;s:4:\"card\";i:62;s:4:\"care\";i:63;s:9:\"caucasian\";i:64;s:6:\"clinic\";i:65;s:8:\"clinical\";i:66;s:4:\"coat\";i:67;s:10:\"consultant\";i:68;s:13:\"convalescence\";i:69;s:4:\"cure\";i:70;s:9:\"diagnosis\";i:71;s:7:\"disease\";i:72;s:9:\"education\";i:73;s:6:\"female\";i:74;s:3:\"flu\";i:75;s:8:\"friendly\";i:76;s:7:\"history\";i:77;s:4:\"gown\";i:78;s:6:\"indoor\";i:79;s:9:\"insurance\";i:80;s:10:\"internship\";i:81;s:3:\"lab\";i:82;s:7:\"medical\";i:83;s:5:\"nurse\";i:84;s:6:\"people\";i:85;s:9:\"physician\";i:86;s:12:\"prescription\";i:87;s:12:\"professional\";i:88;s:8:\"recovery\";i:89;s:6:\"report\";i:90;s:4:\"read\";i:91;s:8:\"research\";i:92;s:4:\"room\";i:93;s:7:\"science\";i:94;s:5:\"smile\";i:95;s:5:\"study\";i:96;s:9:\"treatment\";i:97;s:5:\"thumb\";i:98;s:7:\"working\";i:99;s:5:\"young\";}}}'),
(235, 112, '_menu_item_type', 'post_type'),
(236, 112, '_menu_item_menu_item_parent', '0'),
(237, 112, '_menu_item_object_id', '85'),
(238, 112, '_menu_item_object', 'page'),
(239, 112, '_menu_item_target', ''),
(240, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(241, 112, '_menu_item_xfn', ''),
(242, 112, '_menu_item_url', ''),
(244, 113, '_menu_item_type', 'post_type'),
(245, 113, '_menu_item_menu_item_parent', '0'),
(246, 113, '_menu_item_object_id', '82'),
(247, 113, '_menu_item_object', 'page'),
(248, 113, '_menu_item_target', ''),
(249, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(250, 113, '_menu_item_xfn', ''),
(251, 113, '_menu_item_url', ''),
(253, 114, '_menu_item_type', 'post_type'),
(254, 114, '_menu_item_menu_item_parent', '0'),
(255, 114, '_menu_item_object_id', '91'),
(256, 114, '_menu_item_object', 'page'),
(257, 114, '_menu_item_target', ''),
(258, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 114, '_menu_item_xfn', ''),
(260, 114, '_menu_item_url', ''),
(271, 116, '_menu_item_type', 'post_type'),
(272, 116, '_menu_item_menu_item_parent', '0'),
(273, 116, '_menu_item_object_id', '87'),
(274, 116, '_menu_item_object', 'page'),
(275, 116, '_menu_item_target', ''),
(276, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(277, 116, '_menu_item_xfn', ''),
(278, 116, '_menu_item_url', ''),
(298, 15, 'fg_temp_metadata', ''),
(299, 15, '_wp_page_template', 'default'),
(303, 122, '_edit_last', '1'),
(304, 122, '_edit_lock', '1625988992:1'),
(305, 122, '_oembed_0fa50134974a32fb5b46b328a39f0742', '<iframe title=\"Virtual Education Fair Demo\" width=\"640\" height=\"480\" src=\"https://www.youtube.com/embed/2MPhNv777uc?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(306, 122, '_oembed_time_0fa50134974a32fb5b46b328a39f0742', '1625915582'),
(307, 124, '_menu_item_type', 'post_type_archive'),
(308, 124, '_menu_item_menu_item_parent', '0'),
(309, 124, '_menu_item_object_id', '-41'),
(310, 124, '_menu_item_object', 'gallery'),
(311, 124, '_menu_item_target', ''),
(312, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 124, '_menu_item_xfn', ''),
(314, 124, '_menu_item_url', ''),
(316, 125, '_menu_item_type', 'post_type_archive'),
(317, 125, '_menu_item_menu_item_parent', '0'),
(318, 125, '_menu_item_object_id', '-52'),
(319, 125, '_menu_item_object', 'video'),
(320, 125, '_menu_item_target', ''),
(321, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(322, 125, '_menu_item_xfn', ''),
(323, 125, '_menu_item_url', ''),
(325, 126, '_menu_item_type', 'custom'),
(326, 126, '_menu_item_menu_item_parent', '0'),
(327, 126, '_menu_item_object_id', '126'),
(328, 126, '_menu_item_object', 'custom'),
(329, 126, '_menu_item_target', ''),
(330, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(331, 126, '_menu_item_xfn', ''),
(332, 126, '_menu_item_url', 'http://localhost/nexus'),
(334, 122, '_videourl', 'https://www.youtube.com/embed/2MPhNv777uc'),
(335, 128, '_edit_last', '1'),
(336, 128, '_edit_lock', '1625988246:1'),
(337, 128, '_videourl', 'https://www.youtube.com/embed/i7speokRrpw'),
(338, 128, '_thumbnail_id', '66'),
(339, 122, '_thumbnail_id', '80'),
(340, 130, '_edit_last', '1'),
(341, 130, '_edit_lock', '1625974322:1'),
(342, 130, '_videourl', 'https://youtu.be/zlz9dN9l_dU'),
(343, 132, '_wp_attached_file', '2021/07/india_education_fair.jpg'),
(344, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:360;s:4:\"file\";s:32:\"2021/07/india_education_fair.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 130, '_thumbnail_id', '132'),
(358, 136, 'fg_temp_metadata', ''),
(359, 137, '_wp_attached_file', '2021/07/start_img.png'),
(360, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:541;s:6:\"height\";i:485;s:4:\"file\";s:21:\"2021/07/start_img.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(361, 136, '_edit_last', '1'),
(362, 136, '_thumbnail_id', '137'),
(366, 136, '_edit_lock', '1625979167:1'),
(367, 139, 'fg_temp_metadata', ''),
(368, 139, '_edit_last', '1'),
(369, 139, '_edit_lock', '1625979312:1'),
(370, 140, '_wp_attached_file', '2021/07/ielts.jpg'),
(371, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:711;s:6:\"height\";i:562;s:4:\"file\";s:17:\"2021/07/ielts.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(372, 141, '_wp_attached_file', '2021/07/maxresdefault.jpg'),
(373, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:25:\"2021/07/maxresdefault.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(374, 139, '_thumbnail_id', '141'),
(378, 143, 'fg_temp_metadata', ''),
(379, 143, '_edit_last', '1'),
(380, 143, '_edit_lock', '1625980376:1'),
(381, 144, '_wp_attached_file', '2021/07/british.png'),
(382, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:19:\"2021/07/british.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 143, '_thumbnail_id', '144'),
(387, 112, '_wp_old_date', '2021-07-10'),
(388, 113, '_wp_old_date', '2021-07-10'),
(389, 124, '_wp_old_date', '2021-07-10'),
(390, 125, '_wp_old_date', '2021-07-10'),
(391, 126, '_wp_old_date', '2021-07-10'),
(392, 114, '_wp_old_date', '2021-07-10'),
(393, 116, '_wp_old_date', '2021-07-10'),
(411, 147, '_form', '[text* your-name placeholder \"Your Name\"]\n[number* your-phone placeholder \"Your Phone Number\"]\n[email* your-email placeholder \"Your Email\"]\n[text* your-subject placeholder \"Your Subject\"]\n[textarea* your-message placeholder \"Your Message\"]\n[submit class:btn \"Submit\"]'),
(412, 147, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <tempnabeen1196@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(413, 147, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <tempnabeen1196@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(414, 147, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(415, 147, '_additional_settings', ''),
(416, 147, '_locale', 'en_US'),
(419, 148, '_edit_last', '1'),
(420, 148, '_edit_lock', '1625997651:1'),
(421, 148, '_thumbnail_id', '47'),
(422, 148, '_show_to_model', '1'),
(423, 150, '_edit_last', '1'),
(424, 150, '_edit_lock', '1626071442:1'),
(425, 150, '_thumbnail_id', '32'),
(426, 150, '_show_to_model', '1'),
(427, 152, '_wp_attached_file', '2021/07/main-logo.png'),
(428, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:267;s:4:\"file\";s:21:\"2021/07/main-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(429, 152, '_wp_attachment_custom_header_last_used_nextstep', '1626000430'),
(430, 152, '_wp_attachment_is_custom_header', 'nextstep'),
(431, 153, '_wp_trash_meta_status', 'publish'),
(432, 153, '_wp_trash_meta_time', '1626000430'),
(433, 112, '_wp_old_date', '2021-07-11'),
(434, 113, '_wp_old_date', '2021-07-11'),
(435, 124, '_wp_old_date', '2021-07-11'),
(436, 125, '_wp_old_date', '2021-07-11'),
(437, 126, '_wp_old_date', '2021-07-11'),
(438, 114, '_wp_old_date', '2021-07-11'),
(439, 116, '_wp_old_date', '2021-07-11'),
(440, 150, '_companyurl', 'https://www.facebook.com/');

-- --------------------------------------------------------

--
-- Table structure for table `nse_posts`
--

CREATE TABLE `nse_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nse_posts`
--

INSERT INTO `nse_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-07-07 05:46:04', '2021-07-07 05:46:04', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2021-07-09 10:48:33', '2021-07-09 10:48:33', '', 0, 'http://localhost/nextstep/?p=1', 0, 'post', '', 1),
(2, 1, '2021-07-07 05:46:04', '2021-07-07 05:46:04', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/nextstep/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-07-07 10:41:16', '2021-07-07 10:41:16', '', 0, 'http://localhost/nextstep/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-07-07 05:46:04', '2021-07-07 05:46:04', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/nextstep.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2021-07-07 10:41:16', '2021-07-07 10:41:16', '', 0, 'http://localhost/nextstep/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-07-07 05:46:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-07-07 05:46:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/nextstep/?p=4', 0, 'post', '', 0),
(6, 1, '2021-07-07 09:28:00', '2021-07-07 09:28:00', 'A great place to study and live', 'Study In Australia', '', 'publish', 'open', 'open', '', 'study-in-australia', '', '', '2021-07-07 09:28:00', '2021-07-07 09:28:00', '', 0, 'http://localhost/nextstep/?post_type=slider&#038;p=6', 0, 'slider', '', 0),
(7, 1, '2021-07-07 09:27:20', '2021-07-07 09:27:20', '', 'study-in-australia', '', 'inherit', 'open', 'closed', '', 'study-in-australia', '', '', '2021-07-07 09:27:20', '2021-07-07 09:27:20', '', 6, 'http://localhost/nextstep/wp-content/uploads/2021/07/study-in-australia.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2021-07-07 09:28:00', '2021-07-07 09:28:00', 'A great place to study and live', 'Study In Australia', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-07-07 09:28:00', '2021-07-07 09:28:00', '', 6, 'http://localhost/nextstep/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-07-07 10:27:27', '2021-07-07 10:27:27', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 'Study In Canada', '', 'publish', 'open', 'open', '', 'study-in-canada', '', '', '2021-07-07 10:27:27', '2021-07-07 10:27:27', '', 0, 'http://localhost/nextstep/?post_type=slider&#038;p=9', 0, 'slider', '', 0),
(10, 1, '2021-07-07 10:27:23', '2021-07-07 10:27:23', '', 'study_in_canada', '', 'inherit', 'open', 'closed', '', 'study_in_canada', '', '', '2021-07-07 10:27:23', '2021-07-07 10:27:23', '', 9, 'http://localhost/nextstep/wp-content/uploads/2021/07/study_in_canada.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2021-07-07 10:27:27', '2021-07-07 10:27:27', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 'Study In Canada', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-07-07 10:27:27', '2021-07-07 10:27:27', '', 9, 'http://localhost/nextstep/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-07-07 10:29:00', '2021-07-07 10:29:00', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 'Study In UK', '', 'publish', 'open', 'open', '', 'study-in-uk', '', '', '2021-07-07 10:29:00', '2021-07-07 10:29:00', '', 0, 'http://localhost/nextstep/?post_type=slider&#038;p=12', 0, 'slider', '', 0),
(13, 1, '2021-07-07 10:28:56', '2021-07-07 10:28:56', '', 'Study-In-UK', '', 'inherit', 'open', 'closed', '', 'study-in-uk', '', '', '2021-07-07 10:28:56', '2021-07-07 10:28:56', '', 12, 'http://localhost/nextstep/wp-content/uploads/2021/07/Study-In-UK.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2021-07-07 10:29:00', '2021-07-07 10:29:00', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 'Study In UK', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-07-07 10:29:00', '2021-07-07 10:29:00', '', 12, 'http://localhost/nextstep/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-07-07 10:37:13', '2021-07-07 10:37:13', 'NextStep Education is an innovative and specialist educational consultancy service provider. In service of students since 2007, we specialize in educational counseling, recruitment and enrollment at overseas universities and colleges for more than 14 years. Adhering to the company’s policy of decentralization, NSEhas now expanded to a total number of 10 offices in Australia and Nepal.\r\n\r\nRepresenting over 100+ universities and colleges from various countries (Australia, New Zealand, USA, UK, Canada, Europe and more), we are fully prepared to serve our students with the best possible guidance for their education abroad.  In addition to the guidance and counseling, we have also been conducting preparation classes for IELTS, PTE, TOEFL and SAT, run by highly professional and experienced language instructors.\r\n\r\nNextStep Education consists of a dedicated team of professionals with many combined years of experience within education, training, consulting and management, believing in quality service and professional delivery. All of the Educational Counselors at NextStep Education Foundation hold professional certifications, and it is a pre-requisite for all our appointed counselors.', 'Who We Are', '', 'publish', 'closed', 'closed', '', 'who-we-are', '', '', '2021-07-10 16:04:59', '2021-07-10 10:19:59', '', 0, 'http://localhost/nextstep/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-07-07 10:37:03', '2021-07-07 10:37:03', '', 'who-we-are', '', 'inherit', 'open', 'closed', '', 'who-we-are', '', '', '2021-07-07 10:37:03', '2021-07-07 10:37:03', '', 15, 'http://localhost/nextstep/wp-content/uploads/2021/07/who-we-are.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-07-07 10:37:13', '2021-07-07 10:37:13', '<h3>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum, totam.</h3>\r\nLorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit ametLorem ipsum dolor sit amet consectetur adipisicing elit. Soluta sint iste aliquam veniam, illo sed optio consectetur adipisicing elit. Soluta sint iste aliquam veniam, illo sed optio adipisicing elit. Soluta sint iste aliquam veniam, illo sed optio placeat fuga delectus praesentium maiores, temporibus reprehenderit provident animi, sit repellat similique nihil nemo?', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-07-07 10:37:13', '2021-07-07 10:37:13', '', 15, 'http://localhost/nextstep/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-07-07 10:40:13', '2021-07-07 10:40:13', 'Lorem ipsum dolor sit amet consectetur adipisicingipsum dolor sit amet consectetur adipisicing elit. Facere id excepturi veniam rem quia modi dignissimos mollitia ullam! Molestias voluptates culpa dicta! Dolore quam eos, numquam suscipit reiciendis explicabo! Assumenda? elit. Facere id excepturi veniam rem quia modi dignissimos mollitia ullam! Molestias voluptates culpa dicta! Dolore quam eos,', 'Our Works', '', 'publish', 'closed', 'closed', '', 'our-works', '', '', '2021-07-07 10:54:59', '2021-07-07 10:54:59', '', 0, 'http://localhost/nextstep/?page_id=18', 0, 'page', '', 0),
(19, 1, '2021-07-07 10:40:13', '2021-07-07 10:40:13', 'Lorem ipsum dolor sit amet consectetur adipisicingipsum dolor sit amet consectetur adipisicing elit. Facere id excepturi veniam rem quia modi dignissimos mollitia ullam! Molestias voluptates culpa dicta! Dolore quam eos, numquam suscipit reiciendis explicabo! Assumenda? elit. Facere id excepturi veniam rem quia modi dignissimos mollitia ullam! Molestias voluptates culpa dicta! Dolore quam eos,', 'Our Works', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-07-07 10:40:13', '2021-07-07 10:40:13', '', 18, 'http://localhost/nextstep/?p=19', 0, 'revision', '', 0),
(21, 1, '2021-07-07 10:41:16', '2021-07-07 10:41:16', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/nextstep.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-07-07 10:41:16', '2021-07-07 10:41:16', '', 3, 'http://localhost/nextstep/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-07-07 10:41:16', '2021-07-07 10:41:16', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/nextstep/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-07-07 10:41:16', '2021-07-07 10:41:16', '', 2, 'http://localhost/nextstep/?p=22', 0, 'revision', '', 0),
(25, 1, '2021-07-09 02:05:42', '2021-07-09 02:05:42', '', 'Western University Sydney', '', 'publish', 'open', 'open', '', 'western-university-sydney', '', '', '2021-07-09 02:05:42', '2021-07-09 02:05:42', '', 0, 'http://localhost/nextstep/?post_type=university&#038;p=25', 0, 'university', '', 0),
(26, 1, '2021-07-09 01:54:31', '2021-07-09 01:54:31', '', 'canada', '', 'inherit', 'open', 'closed', '', 'canada', '', '', '2021-07-09 01:54:31', '2021-07-09 01:54:31', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/canada.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2021-07-09 01:54:32', '2021-07-09 01:54:32', '', 'japan', '', 'inherit', 'open', 'closed', '', 'japan', '', '', '2021-07-09 01:54:32', '2021-07-09 01:54:32', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/japan.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2021-07-09 01:54:32', '2021-07-09 01:54:32', '', 'uk', '', 'inherit', 'open', 'closed', '', 'uk', '', '', '2021-07-09 01:54:32', '2021-07-09 01:54:32', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/uk.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2021-07-09 01:54:33', '2021-07-09 01:54:33', '', 'uk', '', 'inherit', 'open', 'closed', '', 'uk-2', '', '', '2021-07-09 01:54:33', '2021-07-09 01:54:33', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/uk.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2021-07-09 01:54:33', '2021-07-09 01:54:33', '', 'uni1', '', 'inherit', 'open', 'closed', '', 'uni1', '', '', '2021-07-09 01:54:33', '2021-07-09 01:54:33', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/uni1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2021-07-09 01:54:34', '2021-07-09 01:54:34', '', 'uni2', '', 'inherit', 'open', 'closed', '', 'uni2', '', '', '2021-07-09 01:54:34', '2021-07-09 01:54:34', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/uni2.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2021-07-09 01:54:34', '2021-07-09 01:54:34', '', 'uni3', '', 'inherit', 'open', 'closed', '', 'uni3', '', '', '2021-07-09 01:54:34', '2021-07-09 01:54:34', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/uni3.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2021-07-09 01:54:35', '2021-07-09 01:54:35', '', 'uni4', '', 'inherit', 'open', 'closed', '', 'uni4', '', '', '2021-07-09 01:54:35', '2021-07-09 01:54:35', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/uni4.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2021-07-09 01:54:35', '2021-07-09 01:54:35', '', 'uni5', '', 'inherit', 'open', 'closed', '', 'uni5', '', '', '2021-07-09 01:54:35', '2021-07-09 01:54:35', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/uni5.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2021-07-09 01:54:36', '2021-07-09 01:54:36', '', 'uni6', '', 'inherit', 'open', 'closed', '', 'uni6', '', '', '2021-07-09 01:54:36', '2021-07-09 01:54:36', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/uni6.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2021-07-09 01:54:36', '2021-07-09 01:54:36', '', 'uni7', '', 'inherit', 'open', 'closed', '', 'uni7', '', '', '2021-07-09 01:54:36', '2021-07-09 01:54:36', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/uni7.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2021-07-09 01:54:37', '2021-07-09 01:54:37', '', 'usa', '', 'inherit', 'open', 'closed', '', 'usa', '', '', '2021-07-09 01:54:37', '2021-07-09 01:54:37', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/usa.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-07-09 01:54:37', '2021-07-09 01:54:37', '', 'usa', '', 'inherit', 'open', 'closed', '', 'usa-2', '', '', '2021-07-09 01:54:37', '2021-07-09 01:54:37', '', 25, 'http://localhost/nextstep/wp-content/uploads/2021/07/usa.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2021-07-09 02:05:42', '2021-07-09 02:05:42', '', 'Western University Sydney', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-07-09 02:05:42', '2021-07-09 02:05:42', '', 25, 'http://localhost/nextstep/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-07-09 02:10:36', '2021-07-09 02:10:36', '', 'Macquaire University', '', 'publish', 'open', 'open', '', 'macquaire-university', '', '', '2021-07-09 02:10:36', '2021-07-09 02:10:36', '', 0, 'http://localhost/nextstep/?post_type=university&#038;p=40', 0, 'university', '', 0),
(41, 1, '2021-07-09 02:10:32', '2021-07-09 02:10:32', '', 'maq', '', 'inherit', 'open', 'closed', '', 'maq', '', '', '2021-07-09 02:10:32', '2021-07-09 02:10:32', '', 40, 'http://localhost/nextstep/wp-content/uploads/2021/07/maq.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-07-09 02:10:36', '2021-07-09 02:10:36', '', 'Macquaire University', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-07-09 02:10:36', '2021-07-09 02:10:36', '', 40, 'http://localhost/nextstep/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-07-09 02:11:56', '2021-07-09 02:11:56', '', 'Charles Darwin University', '', 'publish', 'open', 'open', '', 'charles-darwin-university', '', '', '2021-07-09 02:11:56', '2021-07-09 02:11:56', '', 0, 'http://localhost/nextstep/?post_type=university&#038;p=43', 0, 'university', '', 0),
(44, 1, '2021-07-09 02:11:19', '2021-07-09 02:11:19', '', 'darwin', '', 'inherit', 'open', 'closed', '', 'darwin', '', '', '2021-07-09 02:11:19', '2021-07-09 02:11:19', '', 43, 'http://localhost/nextstep/wp-content/uploads/2021/07/darwin.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2021-07-09 02:11:56', '2021-07-09 02:11:56', '', 'Charles Darwin University', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-07-09 02:11:56', '2021-07-09 02:11:56', '', 43, 'http://localhost/nextstep/?p=45', 0, 'revision', '', 0),
(46, 1, '2021-07-09 02:19:31', '2021-07-09 02:19:31', '', 'La Trobe University', '', 'publish', 'open', 'open', '', 'la-trobe-university', '', '', '2021-07-09 02:19:31', '2021-07-09 02:19:31', '', 0, 'http://localhost/nextstep/?post_type=university&#038;p=46', 0, 'university', '', 0),
(47, 1, '2021-07-09 02:19:26', '2021-07-09 02:19:26', '', 'latobe', '', 'inherit', 'open', 'closed', '', 'latobe', '', '', '2021-07-09 02:19:26', '2021-07-09 02:19:26', '', 46, 'http://localhost/nextstep/wp-content/uploads/2021/07/latobe.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2021-07-09 02:19:31', '2021-07-09 02:19:31', '', 'La Trobe University', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2021-07-09 02:19:31', '2021-07-09 02:19:31', '', 46, 'http://localhost/nextstep/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-07-09 02:20:30', '2021-07-09 02:20:30', '', 'The University of Melbourne', '', 'publish', 'open', 'open', '', 'the-university-of-melbourne', '', '', '2021-07-09 02:20:30', '2021-07-09 02:20:30', '', 0, 'http://localhost/nextstep/?post_type=university&#038;p=49', 0, 'university', '', 0),
(50, 1, '2021-07-09 02:20:10', '2021-07-09 02:20:10', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2021-07-09 02:20:10', '2021-07-09 02:20:10', '', 49, 'http://localhost/nextstep/wp-content/uploads/2021/07/download.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2021-07-09 02:20:30', '2021-07-09 02:20:30', '', 'The University of Melbourne', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-07-09 02:20:30', '2021-07-09 02:20:30', '', 49, 'http://localhost/nextstep/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-07-09 03:15:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-07-09 03:15:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/nextstep/?post_type=gallary&p=52', 0, 'gallary', '', 0),
(53, 1, '2021-07-09 03:15:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-07-09 03:15:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/nextstep/?post_type=gallary&p=53', 0, 'gallary', '', 0),
(54, 1, '2021-07-09 04:25:19', '2021-07-09 04:25:19', '', 'Australian Webiminar', '', 'publish', 'open', 'open', '', 'australian-webiminar', '', '', '2021-07-09 04:25:19', '2021-07-09 04:25:19', '', 0, 'http://localhost/nextstep/?post_type=gallary&#038;p=54', 0, 'gallary', '', 0),
(55, 1, '2021-07-09 04:25:03', '2021-07-09 04:25:03', '', '6fdfbf12-7fea-4edc-b5f8-80462c8f7835_DSC_0886', '', 'inherit', 'open', 'closed', '', '6fdfbf12-7fea-4edc-b5f8-80462c8f7835_dsc_0886', '', '', '2021-07-09 04:25:03', '2021-07-09 04:25:03', '', 54, 'http://localhost/nextstep/wp-content/uploads/2021/07/6fdfbf12-7fea-4edc-b5f8-80462c8f7835_DSC_0886.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2021-07-09 04:25:08', '2021-07-09 04:25:08', '', '6d2b3492-5979-4781-ba84-ce82b0513832_DSC_0903', '', 'inherit', 'open', 'closed', '', '6d2b3492-5979-4781-ba84-ce82b0513832_dsc_0903', '', '', '2021-07-09 04:25:08', '2021-07-09 04:25:08', '', 54, 'http://localhost/nextstep/wp-content/uploads/2021/07/6d2b3492-5979-4781-ba84-ce82b0513832_DSC_0903.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2021-07-09 04:25:09', '2021-07-09 04:25:09', '', 'e0d1ebdd-f9d7-4e96-a7ed-1f234bec655c_DSC_0899', '', 'inherit', 'open', 'closed', '', 'e0d1ebdd-f9d7-4e96-a7ed-1f234bec655c_dsc_0899', '', '', '2021-07-09 04:25:09', '2021-07-09 04:25:09', '', 54, 'http://localhost/nextstep/wp-content/uploads/2021/07/e0d1ebdd-f9d7-4e96-a7ed-1f234bec655c_DSC_0899.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2021-07-09 04:25:10', '2021-07-09 04:25:10', '', '6fdfbf12-7fea-4edc-b5f8-80462c8f7835_DSC_0886', '', 'inherit', 'open', 'closed', '', '6fdfbf12-7fea-4edc-b5f8-80462c8f7835_dsc_0886-2', '', '', '2021-07-09 04:25:10', '2021-07-09 04:25:10', '', 54, 'http://localhost/nextstep/wp-content/uploads/2021/07/6fdfbf12-7fea-4edc-b5f8-80462c8f7835_DSC_0886-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2021-07-09 04:25:19', '2021-07-09 04:25:19', '', 'Australian Webiminar', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2021-07-09 04:25:19', '2021-07-09 04:25:19', '', 54, 'http://localhost/nextstep/?p=59', 0, 'revision', '', 0),
(60, 1, '2021-07-09 04:35:55', '2021-07-09 04:35:55', '', 'US fair', '', 'publish', 'open', 'open', '', 'us-fair', '', '', '2021-07-09 04:35:55', '2021-07-09 04:35:55', '', 0, 'http://localhost/nextstep/?post_type=gallary&#038;p=60', 0, 'gallary', '', 0),
(61, 1, '2021-07-09 04:33:13', '2021-07-09 04:33:13', '', 'us_fair_5', '', 'inherit', 'open', 'closed', '', 'us_fair_5', '', '', '2021-07-09 04:33:13', '2021-07-09 04:33:13', '', 60, 'http://localhost/nextstep/wp-content/uploads/2021/07/us_fair_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-07-09 04:33:14', '2021-07-09 04:33:14', '', 'us_fair_4', '', 'inherit', 'open', 'closed', '', 'us_fair_4', '', '', '2021-07-09 04:33:14', '2021-07-09 04:33:14', '', 60, 'http://localhost/nextstep/wp-content/uploads/2021/07/us_fair_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2021-07-09 04:33:15', '2021-07-09 04:33:15', '', 'us_fair_3', '', 'inherit', 'open', 'closed', '', 'us_fair_3', '', '', '2021-07-09 04:33:15', '2021-07-09 04:33:15', '', 60, 'http://localhost/nextstep/wp-content/uploads/2021/07/us_fair_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2021-07-09 04:33:16', '2021-07-09 04:33:16', '', 'us_fair_2', '', 'inherit', 'open', 'closed', '', 'us_fair_2', '', '', '2021-07-09 04:33:16', '2021-07-09 04:33:16', '', 60, 'http://localhost/nextstep/wp-content/uploads/2021/07/us_fair_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2021-07-09 04:33:17', '2021-07-09 04:33:17', '', 'us_fair', '', 'inherit', 'open', 'closed', '', 'us_fair', '', '', '2021-07-09 04:33:17', '2021-07-09 04:33:17', '', 60, 'http://localhost/nextstep/wp-content/uploads/2021/07/us_fair.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2021-07-09 04:35:48', '2021-07-09 04:35:48', '', 'eduusfair2', '', 'inherit', 'open', 'closed', '', 'eduusfair2', '', '', '2021-07-09 04:35:48', '2021-07-09 04:35:48', '', 60, 'http://localhost/nextstep/wp-content/uploads/2021/07/eduusfair2.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2021-07-09 04:35:55', '2021-07-09 04:35:55', '', 'US fair', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-07-09 04:35:55', '2021-07-09 04:35:55', '', 60, 'http://localhost/nextstep/?p=67', 0, 'revision', '', 0),
(68, 1, '2021-07-09 04:59:25', '2021-07-09 04:59:25', '', 'US Fair', '', 'publish', 'open', 'open', '', 'us-fair', '', '', '2021-07-09 04:59:47', '2021-07-09 04:59:47', '', 0, 'http://localhost/nextstep/?post_type=gallery&#038;p=68', 0, 'gallery', '', 0),
(69, 1, '2021-07-09 04:59:25', '2021-07-09 04:59:25', '', 'US Fair', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2021-07-09 04:59:25', '2021-07-09 04:59:25', '', 68, 'http://localhost/nextstep/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-07-09 05:00:32', '2021-07-09 05:00:32', '', 'Wednesday Webinar', '', 'publish', 'open', 'open', '', 'wednesday-webinar', '', '', '2021-07-09 05:00:32', '2021-07-09 05:00:32', '', 0, 'http://localhost/nextstep/?post_type=gallery&#038;p=70', 0, 'gallery', '', 0),
(71, 1, '2021-07-09 05:00:32', '2021-07-09 05:00:32', '', 'Wednesday Webinar', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2021-07-09 05:00:32', '2021-07-09 05:00:32', '', 70, 'http://localhost/nextstep/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-07-09 10:48:33', '2021-07-09 10:48:33', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-07-09 10:48:33', '2021-07-09 10:48:33', '', 1, 'http://localhost/nextstep/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-07-09 10:51:21', '2021-07-09 10:51:21', 'Good news for students planning to study in The UK.\r\nUK Visas and Immigration (UKVI) has announced Pearson Test of English Language (PTE-A) as provider for English Visa Test Whether you want to study, work or live in the UK, you can choose PTE-A. Alfa Beta is proud to be Pearson’s Top partner as well as Test Center in Nepal. So, if you are looking forward to register yourself for PTE-A Classes, Sign up at Alfa Beta TODAY!\r\n\r\nWhether you want to study, work or live in the UK, you can choose PTE-A. Alfa Beta is proud to be Pearson’s Top partner as well as Test Center in Nepal. So, if you are looking forward to register yourself for PTE-A Classes, Sign up at Alfa Beta TODAY!', 'PTE-A is now UKVI Approved', '', 'publish', 'open', 'open', '', 'pte-a-is-now-ukvi-approved', '', '', '2021-07-11 10:31:17', '2021-07-11 04:46:17', '', 0, 'http://localhost/nextstep/?p=73', 0, 'post', '', 0),
(74, 1, '2021-07-09 10:50:24', '2021-07-09 10:50:24', '', 'bb864e88-fbc3-45f2-b238-e2f4f7fd1781_pte-A2', '', 'inherit', 'open', 'closed', '', 'bb864e88-fbc3-45f2-b238-e2f4f7fd1781_pte-a2', '', '', '2021-07-09 10:50:24', '2021-07-09 10:50:24', '', 73, 'http://localhost/nextstep/wp-content/uploads/2021/07/bb864e88-fbc3-45f2-b238-e2f4f7fd1781_pte-A2.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2021-07-09 10:51:21', '2021-07-09 10:51:21', 'Good news for students planning to study in The UK.\r\nUK Visas and Immigration (UKVI) has announced Pearson Test of English Language (PTE-A) as provider for English Visa Test!\r\n\r\nWhether you want to study, work or live in the UK, you can choose PTE-A. Alfa Beta is proud to be Pearson’s Top partner as well as Test Center in Nepal. So, if you are looking forward to register yourself for PTE-A Classes, Sign up at Alfa Beta TODAY!', 'PTE-A is now UKVI Approved', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2021-07-09 10:51:21', '2021-07-09 10:51:21', '', 73, 'http://localhost/nextstep/?p=75', 0, 'revision', '', 0),
(76, 1, '2021-07-09 10:53:11', '2021-07-09 10:53:11', 'Next Step presents “US-Canada Education Fair 2019” happening on the 8th of September, where you can explore and get information about abroad study to academic and scholarship assessment and even career counseling from experts. Grab this chance to meet the representatives from top universities and colleges in USA and Canada and find out all about scholarship offers in these countries. Register for the event by following the link given below and through lucky draw you will be able to win exciting goodies! We hope to see you at the Fair!\r\n\r\nEvent Highlights include:\r\n• Spring and Fall 2020 Intake Application\r\n• Personal counselling from delegates of renowned universities\r\n• Career Counseling from Experts\r\n• On the Spot Admission Facility\r\n• Scholarship Eligibility Assessment\r\n\r\n&nbsp;', 'Canada Education Fair', '', 'publish', 'open', 'open', '', 'canada-education-fair-coming-up', '', '', '2021-07-11 10:28:05', '2021-07-11 04:43:05', '', 0, 'http://localhost/nextstep/?p=76', 0, 'post', '', 0),
(77, 1, '2021-07-09 10:53:04', '2021-07-09 10:53:04', '', 'canadaninan', '', 'inherit', 'open', 'closed', '', 'canadaninan', '', '', '2021-07-09 10:53:04', '2021-07-09 10:53:04', '', 76, 'http://localhost/nextstep/wp-content/uploads/2021/07/canadaninan.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2021-07-09 10:53:11', '2021-07-09 10:53:11', 'Next Step presents “US-Canada Education Fair 2019” happening on the 8th of September, where you can explore and get information about abroad study to academic and scholarship assessment and even career counseling from experts. Grab this chance to meet the representatives from top universities and colleges in USA and Canada and find out all about scholarship offers in these countries. Register for the event by following the link given below and through lucky draw you will be able to win exciting goodies! We hope to see you at the Fair!\r\n\r\nEvent Highlights include:\r\n• Spring and Fall 2020 Intake Application\r\n• Personal counselling from delegates of renowned universities\r\n• Career Counseling from Experts\r\n• On the Spot Admission Facility\r\n• Scholarship Eligibility Assessment\r\n\r\n&nbsp;', 'Canada Education Fair coming up', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2021-07-09 10:53:11', '2021-07-09 10:53:11', '', 76, 'http://localhost/nextstep/?p=78', 0, 'revision', '', 0),
(79, 1, '2021-07-09 10:57:59', '2021-07-09 10:57:59', 'Bridge Course Admission Open for SEE Appeared Students - A Platform for your Bright Future.\r\n\r\nSign up for Alfa Beta Bridge Course, your necessary armor to enter the new world of higher education. Our Bridge Course has been meticulously designed to help sharpen your skills and give you the confidence to tackle and solve any type of questions you might face in your entrance exam. The course will prepare you not only for your exams but for your new venture into higher education.\r\n\r\n<strong>Programs Offered</strong>\r\n<ol>\r\n 	<li>St. Xavier\'s Entrance Preparation Course</li>\r\n 	<li>A-Level Entrance Preparation Course</li>\r\n 	<li>Advanced Science Preparation Course</li>\r\n 	<li>Advanced Management Preparation Course</li>\r\n 	<li>Nursing Entrance Preparation Course</li>\r\n</ol>\r\n<strong>Features</strong>\r\n<ol>\r\n 	<li>Reputed domain experts as fulltime core faculty</li>\r\n 	<li>Toppers Choice</li>\r\n 	<li>Weekly tests on the sample questions based on the entrance test of various colleges</li>\r\n 	<li>Practical classes and visit to various reputed HSS/ Colleges</li>\r\n 	<li>Career Counseling and Assistance for students</li>\r\n 	<li>Different activities for personality development</li>\r\n</ol>\r\n<strong>Available Scholarship</strong>\r\n<ol>\r\n 	<li>Early bird discount</li>\r\n 	<li>Merits based scholarship</li>\r\n</ol>', 'Admission Open for Bridge Course 2021', '', 'publish', 'open', 'open', '', 'admission-open-for-bridge-course-2021', '', '', '2021-07-09 10:57:59', '2021-07-09 10:57:59', '', 0, 'http://localhost/nextstep/?p=79', 0, 'post', '', 0),
(80, 1, '2021-07-09 10:57:52', '2021-07-09 10:57:52', '', 'free_bridge', '', 'inherit', 'open', 'closed', '', 'free_bridge', '', '', '2021-07-09 10:57:52', '2021-07-09 10:57:52', '', 79, 'http://localhost/nextstep/wp-content/uploads/2021/07/free_bridge.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2021-07-09 10:57:59', '2021-07-09 10:57:59', 'Bridge Course Admission Open for SEE Appeared Students - A Platform for your Bright Future.\r\n\r\nSign up for Alfa Beta Bridge Course, your necessary armor to enter the new world of higher education. Our Bridge Course has been meticulously designed to help sharpen your skills and give you the confidence to tackle and solve any type of questions you might face in your entrance exam. The course will prepare you not only for your exams but for your new venture into higher education.\r\n\r\n<strong>Programs Offered</strong>\r\n<ol>\r\n 	<li>St. Xavier\'s Entrance Preparation Course</li>\r\n 	<li>A-Level Entrance Preparation Course</li>\r\n 	<li>Advanced Science Preparation Course</li>\r\n 	<li>Advanced Management Preparation Course</li>\r\n 	<li>Nursing Entrance Preparation Course</li>\r\n</ol>\r\n<strong>Features</strong>\r\n<ol>\r\n 	<li>Reputed domain experts as fulltime core faculty</li>\r\n 	<li>Toppers Choice</li>\r\n 	<li>Weekly tests on the sample questions based on the entrance test of various colleges</li>\r\n 	<li>Practical classes and visit to various reputed HSS/ Colleges</li>\r\n 	<li>Career Counseling and Assistance for students</li>\r\n 	<li>Different activities for personality development</li>\r\n</ol>\r\n<strong>Available Scholarship</strong>\r\n<ol>\r\n 	<li>Early bird discount</li>\r\n 	<li>Merits based scholarship</li>\r\n</ol>', 'Admission Open for Bridge Course 2021', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2021-07-09 10:57:59', '2021-07-09 10:57:59', '', 79, 'http://localhost/nextstep/?p=81', 0, 'revision', '', 0),
(82, 1, '2021-07-09 13:34:31', '2021-07-09 13:34:31', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2021-07-09 13:35:04', '2021-07-09 13:35:04', '', 0, 'http://localhost/nextstep/?page_id=82', 0, 'page', '', 0),
(83, 1, '2021-07-09 13:34:31', '2021-07-09 13:34:31', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2021-07-09 13:34:31', '2021-07-09 13:34:31', '', 82, 'http://localhost/nextstep/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-07-09 13:35:04', '2021-07-09 13:35:04', '', 'News', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2021-07-09 13:35:04', '2021-07-09 13:35:04', '', 82, 'http://localhost/nextstep/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-07-09 13:35:29', '2021-07-09 13:35:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-07-09 13:35:29', '2021-07-09 13:35:29', '', 0, 'http://localhost/nextstep/?page_id=85', 0, 'page', '', 0),
(86, 1, '2021-07-09 13:35:29', '2021-07-09 13:35:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2021-07-09 13:35:29', '2021-07-09 13:35:29', '', 85, 'http://localhost/nextstep/?p=86', 0, 'revision', '', 0),
(87, 1, '2021-07-09 21:10:40', '2021-07-09 15:25:40', 'If you have any queries feel free to contact us. We are always available on your support.', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-07-09 21:15:43', '2021-07-09 15:30:43', '', 0, 'http://localhost/nextstep/?page_id=87', 0, 'page', '', 0),
(88, 1, '2021-07-09 21:10:40', '2021-07-09 15:25:40', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2021-07-09 21:10:40', '2021-07-09 15:25:40', '', 87, 'http://localhost/nextstep/?p=88', 0, 'revision', '', 0),
(89, 1, '2021-07-09 21:13:47', '2021-07-09 15:28:47', '', 'office', '', 'inherit', 'open', 'closed', '', 'office', '', '', '2021-07-09 21:13:47', '2021-07-09 15:28:47', '', 87, 'http://localhost/nextstep/wp-content/uploads/2021/07/office.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2021-07-09 21:15:43', '2021-07-09 15:30:43', 'If you have any queries feel free to contact us. We are always available on your support.', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2021-07-09 21:15:43', '2021-07-09 15:30:43', '', 87, 'http://localhost/nextstep/?p=90', 0, 'revision', '', 0),
(91, 1, '2021-07-09 21:56:39', '2021-07-09 16:11:39', 'To lead the industry in terms of quality by investing on competent human resources, state of the art facilities and cutting edge technology.\r\n\r\nTo recruit, train and retain best talents providing career opportunities and financial rewards.\r\n\r\nTo provide every student with a life-changing educational experience and support their steps on that journey.\r\n\r\nTo operate the Company on a sound financial basis of profitable growth and increase value for our intellectual property.\r\n\r\nTo understand the social corporate responsibility and actively recognize the central role of Alfa Beta in the structure of society.\r\n\r\nTo diversify partner institutions\' sources of recruitment, thereby creating a more sustainable and resilient business model.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-07-09 22:42:35', '2021-07-09 16:57:35', '', 0, 'http://localhost/nextstep/?page_id=91', 0, 'page', '', 0),
(92, 1, '2021-07-09 21:56:39', '2021-07-09 16:11:39', '', 'About', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2021-07-09 21:56:39', '2021-07-09 16:11:39', '', 91, 'http://localhost/nextstep/?p=92', 0, 'revision', '', 0),
(93, 1, '2021-07-09 22:00:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-07-09 22:00:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/nextstep/?post_type=team&p=93', 0, 'team', '', 0),
(94, 1, '2021-07-09 22:01:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-07-09 22:01:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/nextstep/?post_type=team&p=94', 0, 'team', '', 0),
(95, 1, '2021-07-09 22:02:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-07-09 22:02:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/nextstep/?post_type=team&p=95', 0, 'team', '', 0),
(96, 1, '2021-07-09 22:03:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-07-09 22:03:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/nextstep/?post_type=team&p=96', 0, 'team', '', 0),
(97, 1, '2021-07-09 22:09:23', '2021-07-09 16:24:23', '', 'Desh Kartik', '', 'publish', 'open', 'open', '', 'desh-kartik', '', '', '2021-07-09 22:11:55', '2021-07-09 16:26:55', '', 0, 'http://localhost/nextstep/?post_type=team&#038;p=97', 0, 'team', '', 0),
(98, 1, '2021-07-09 22:09:23', '2021-07-09 16:24:23', '', 'Desh Kartik', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2021-07-09 22:09:23', '2021-07-09 16:24:23', '', 97, 'http://localhost/nextstep/?p=98', 0, 'revision', '', 0),
(99, 1, '2021-07-09 22:11:30', '2021-07-09 16:26:30', '', '4-42408_vector-art-design-men-fashion-vector-art-illustration', '', 'inherit', 'open', 'closed', '', '4-42408_vector-art-design-men-fashion-vector-art-illustration', '', '', '2021-07-09 22:11:30', '2021-07-09 16:26:30', '', 97, 'http://localhost/nextstep/wp-content/uploads/2021/07/4-42408_vector-art-design-men-fashion-vector-art-illustration.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2021-07-09 22:24:55', '2021-07-09 16:39:55', '', 'Bipin Karn', '', 'publish', 'open', 'open', '', 'bipin-karn', '', '', '2021-07-09 22:24:55', '2021-07-09 16:39:55', '', 0, 'http://localhost/nextstep/?post_type=team&#038;p=100', 0, 'team', '', 0),
(101, 1, '2021-07-09 22:24:26', '2021-07-09 16:39:26', '', 'noimage_testi', '', 'inherit', 'open', 'closed', '', 'noimage_testi', '', '', '2021-07-09 22:24:26', '2021-07-09 16:39:26', '', 100, 'http://localhost/nextstep/wp-content/uploads/2021/07/noimage_testi.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2021-07-09 22:24:55', '2021-07-09 16:39:55', '', 'Bipin Karn', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-07-09 22:24:55', '2021-07-09 16:39:55', '', 100, 'http://localhost/nextstep/?p=102', 0, 'revision', '', 0);
INSERT INTO `nse_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(103, 1, '2021-07-09 22:27:25', '2021-07-09 16:42:25', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus quisquam repudiandae incidunt corporis atque officiis neque impedit libero nemo, eaque architecto iusto ipsa, natus harum, aspernatur ipsam hic. Quos omnis sequi eveniet, corporis ipsum sunt fuga expedita iste voluptatibus nesciunt libero accusantium! Reiciendis a itaque excepturi quis. Numquam in rerum, illo asperiores animi perferendis voluptatibus similique eius quod nostrum laborum atque vel odit. Aut veniam, asperiores maiores velit porro aspernatur, culpa iste perferendis laborum eos illo dolorum repellendus vel neque omnis ea modi quas expedita esse rerum voluptatibus. Ex nostrum quod laboriosam a pariatur sit ipsa ipsum officiis eaque accusantium.\n\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Molestias officiis alias voluptatibus, veniam eius vel ipsam iusto aliquam labore fuga reprehenderit dicta ipsum quidem adipisci repudiandae? At non deserunt saepe. Temporibus inventore nihil beatae omnis? Pariatur maiores quo, amet magnam voluptates eveniet quaerat dolore, officia modi quidem libero qui sunt odio reprehenderit tempora iste delectus fugit, sed quia architecto cupiditate deserunt facere? Mollitia deserunt qui velit sequi ipsam accusantium dolorem, neque minima nisi rerum saepe porro atque molestiae ex distinctio id assumenda sapiente officiis fugiat asperiores culpa. Architecto fugiat inventore recusandae et. Dolor dolores porro, eveniet repellendus accusantium eius quo!', 'About', '', 'inherit', 'closed', 'closed', '', '91-autosave-v1', '', '', '2021-07-09 22:27:25', '2021-07-09 16:42:25', '', 91, 'http://localhost/nextstep/?p=103', 0, 'revision', '', 0),
(104, 1, '2021-07-09 22:27:28', '2021-07-09 16:42:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus quisquam repudiandae incidunt corporis atque officiis neque impedit libero nemo, eaque architecto iusto ipsa, natus harum, aspernatur ipsam hic. Quos omnis sequi eveniet, corporis ipsum sunt fuga expedita iste voluptatibus nesciunt libero accusantium! Reiciendis a itaque excepturi quis. Numquam in rerum, illo asperiores animi perferendis voluptatibus similique eius quod nostrum laborum atque vel odit. Aut veniam, asperiores maiores velit porro aspernatur, culpa iste perferendis laborum eos illo dolorum repellendus vel neque omnis ea modi quas expedita esse rerum voluptatibus. Ex nostrum quod laboriosam a pariatur sit ipsa ipsum officiis eaque accusantium.\r\n\r\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Molestias officiis alias voluptatibus, veniam eius vel ipsam iusto aliquam labore fuga reprehenderit dicta ipsum quidem adipisci repudiandae? At non deserunt saepe. Temporibus inventore nihil beatae omnis? Pariatur maiores quo, amet magnam voluptates eveniet quaerat dolore, officia modi quidem libero qui sunt odio reprehenderit tempora iste delectus fugit, sed quia architecto cupiditate deserunt facere? Mollitia deserunt qui velit sequi ipsam accusantium dolorem, neque minima nisi rerum saepe porro atque molestiae ex distinctio id assumenda sapiente officiis fugiat asperiores culpa. Architecto fugiat inventore recusandae et. Dolor dolores porro, eveniet repellendus accusantium eius quo!', 'About', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2021-07-09 22:27:28', '2021-07-09 16:42:28', '', 91, 'http://localhost/nextstep/?p=104', 0, 'revision', '', 0),
(105, 1, '2021-07-09 22:30:07', '2021-07-09 16:45:07', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Hic molestiae corporis, assumenda velit sunt nisi illo ex, dolore tempora impedit culpa qui labore adipisci magnam deleniti accusamus modi incidunt repellendus dolores, reiciendis corrupti consequuntur voluptate veniam non! Explicabo odit fugit amet saepe quae harum natus quidem soluta sunt officiis? Laudantium inventore perspiciatis voluptatibus! Architecto porro eos aut, ratione est nisi? Rem voluptas vero voluptate. Maiores aliquam accusamus ratione tenetur eligendi eum enim maxime sunt reprehenderit est placeat atque ab facere repellendus, suscipit temporibus ullam eveniet sapiente quo impedit soluta! Quasi voluptates amet aliquam reiciendis quos, harum necessitatibus ut suscipit sint?\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit facere, ratione sapiente nemo, quo blanditiis minima ex molestiae illo labore officia maxime, quos voluptatibus accusantium perferendis itaque ipsum sed! Necessitatibus voluptas architecto amet ratione facere sit ut voluptatem neque natus iure velit cumque, ex explicabo debitis autem vel magnam aspernatur temporibus qui possimus officia illo in quod! Minima culpa aspernatur exercitationem maiores incidunt repellat itaque, magnam libero ratione eveniet! Veniam odio repudiandae dolorum nam quasi aperiam quisquam mollitia dolore! Aperiam, laboriosam vel! Ipsam, quasi quidem fugiat earum maiores magnam corporis! Aliquid placeat maxime voluptates voluptate ipsam, asperiores a sed molestiae!', 'Chairman Message', '', 'publish', 'closed', 'closed', '', 'chairman-message', '', '', '2021-07-09 22:41:13', '2021-07-09 16:56:13', '', 0, 'http://localhost/nextstep/?page_id=105', 0, 'page', '', 0),
(106, 1, '2021-07-09 22:29:48', '2021-07-09 16:44:48', '', 'banner-thumb', '', 'inherit', 'open', 'closed', '', 'banner-thumb', '', '', '2021-07-09 22:29:48', '2021-07-09 16:44:48', '', 105, 'http://localhost/nextstep/wp-content/uploads/2021/07/banner-thumb.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2021-07-09 22:30:07', '2021-07-09 16:45:07', '<div class=\"about-title message-wrap\">\r\n\r\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Facere perspiciatis saepe inventore eligendi maxime accusamus modi veritatis ab dolores quibusdam nihil autem, ea delectus in tempora quia atque. Molestias, non?\r\n\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"chairmen-image\"></div>\r\n</div>\r\n<div class=\"col-md-8 col-sm-8\">\r\n<div class=\"chairmen-sms\">\r\n\r\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Hic molestiae corporis, assumenda velit sunt nisi illo ex, dolore tempora impedit culpa qui labore adipisci magnam deleniti accusamus modi incidunt repellendus dolores, reiciendis corrupti consequuntur voluptate veniam non! Explicabo odit fugit amet saepe quae harum natus quidem soluta sunt officiis? Laudantium inventore perspiciatis voluptatibus! Architecto porro eos aut, ratione est nisi? Rem voluptas vero voluptate. Maiores aliquam accusamus ratione tenetur eligendi eum enim maxime sunt reprehenderit est placeat atque ab facere repellendus, suscipit temporibus ullam eveniet sapiente quo impedit soluta! Quasi voluptates amet aliquam reiciendis quos, harum necessitatibus ut suscipit sint?\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit facere, ratione sapiente nemo, quo blanditiis minima ex molestiae illo labore officia maxime, quos voluptatibus accusantium perferendis itaque ipsum sed! Necessitatibus voluptas architecto amet ratione facere sit ut voluptatem neque natus iure velit cumque, ex explicabo debitis autem vel magnam aspernatur temporibus qui possimus officia illo in quod! Minima culpa aspernatur exercitationem maiores incidunt repellat itaque, magnam libero ratione eveniet! Veniam odio repudiandae dolorum nam quasi aperiam quisquam mollitia dolore! Aperiam, laboriosam vel! Ipsam, quasi quidem fugiat earum maiores magnam corporis! Aliquid placeat maxime voluptates voluptate ipsam, asperiores a sed molestiae!\r\n\r\n</div>\r\n</div>\r\n</div>', 'Chairman Message', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2021-07-09 22:30:07', '2021-07-09 16:45:07', '', 105, 'http://localhost/nextstep/?p=107', 0, 'revision', '', 0),
(108, 1, '2021-07-09 22:33:57', '2021-07-09 16:48:57', '<div class=\"about-title message-wrap\"></div>\r\n<div class=\"row\">\r\n<div class=\"col-md-8 col-sm-8\">\r\n<div class=\"chairmen-sms\">\r\n\r\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Hic molestiae corporis, assumenda velit sunt nisi illo ex, dolore tempora impedit culpa qui labore adipisci magnam deleniti accusamus modi incidunt repellendus dolores, reiciendis corrupti consequuntur voluptate veniam non! Explicabo odit fugit amet saepe quae harum natus quidem soluta sunt officiis? Laudantium inventore perspiciatis voluptatibus! Architecto porro eos aut, ratione est nisi? Rem voluptas vero voluptate. Maiores aliquam accusamus ratione tenetur eligendi eum enim maxime sunt reprehenderit est placeat atque ab facere repellendus, suscipit temporibus ullam eveniet sapiente quo impedit soluta! Quasi voluptates amet aliquam reiciendis quos, harum necessitatibus ut suscipit sint?\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit facere, ratione sapiente nemo, quo blanditiis minima ex molestiae illo labore officia maxime, quos voluptatibus accusantium perferendis itaque ipsum sed! Necessitatibus voluptas architecto amet ratione facere sit ut voluptatem neque natus iure velit cumque, ex explicabo debitis autem vel magnam aspernatur temporibus qui possimus officia illo in quod! Minima culpa aspernatur exercitationem maiores incidunt repellat itaque, magnam libero ratione eveniet! Veniam odio repudiandae dolorum nam quasi aperiam quisquam mollitia dolore! Aperiam, laboriosam vel! Ipsam, quasi quidem fugiat earum maiores magnam corporis! Aliquid placeat maxime voluptates voluptate ipsam, asperiores a sed molestiae!\r\n\r\n</div>\r\n</div>\r\n</div>', 'Chairman Message', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2021-07-09 22:33:57', '2021-07-09 16:48:57', '', 105, 'http://localhost/nextstep/?p=108', 0, 'revision', '', 0),
(109, 1, '2021-07-09 22:35:30', '2021-07-09 16:50:30', '', 'successful treatment', 'Medical theme: friendly female doctor in a hospital.', 'inherit', 'open', 'closed', '', 'successful-treatment', '', '', '2021-07-09 22:35:30', '2021-07-09 16:50:30', '', 105, 'http://localhost/nextstep/wp-content/uploads/2021/07/student1.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2021-07-09 22:40:35', '2021-07-09 16:55:35', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Hic molestiae corporis, assumenda velit sunt nisi illo ex, dolore tempora impedit culpa qui labore adipisci magnam deleniti accusamus modi incidunt repellendus dolores, reiciendis corrupti consequuntur voluptate veniam non! Explicabo odit fugit amet saepe quae harum natus quidem soluta sunt officiis? Laudantium inventore perspiciatis voluptatibus! Architecto porro eos aut, ratione est nisi? Rem voluptas vero voluptate. Maiores aliquam accusamus ratione tenetur eligendi eum enim maxime sunt reprehenderit est placeat atque ab facere repellendus, suscipit temporibus ullam eveniet sapiente quo impedit soluta! Quasi voluptates amet aliquam reiciendis quos, harum necessitatibus ut suscipit sint?\r\n\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit facere, ratione sapiente nemo, quo blanditiis minima ex molestiae illo labore officia maxime, quos voluptatibus accusantium perferendis itaque ipsum sed! Necessitatibus voluptas architecto amet ratione facere sit ut voluptatem neque natus iure velit cumque, ex explicabo debitis autem vel magnam aspernatur temporibus qui possimus officia illo in quod! Minima culpa aspernatur exercitationem maiores incidunt repellat itaque, magnam libero ratione eveniet! Veniam odio repudiandae dolorum nam quasi aperiam quisquam mollitia dolore! Aperiam, laboriosam vel! Ipsam, quasi quidem fugiat earum maiores magnam corporis! Aliquid placeat maxime voluptates voluptate ipsam, asperiores a sed molestiae!', 'Chairman Message', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2021-07-09 22:40:35', '2021-07-09 16:55:35', '', 105, 'http://localhost/nextstep/?p=110', 0, 'revision', '', 0),
(111, 1, '2021-07-09 22:42:35', '2021-07-09 16:57:35', 'To lead the industry in terms of quality by investing on competent human resources, state of the art facilities and cutting edge technology.\r\n\r\nTo recruit, train and retain best talents providing career opportunities and financial rewards.\r\n\r\nTo provide every student with a life-changing educational experience and support their steps on that journey.\r\n\r\nTo operate the Company on a sound financial basis of profitable growth and increase value for our intellectual property.\r\n\r\nTo understand the social corporate responsibility and actively recognize the central role of Alfa Beta in the structure of society.\r\n\r\nTo diversify partner institutions\' sources of recruitment, thereby creating a more sustainable and resilient business model.', 'About', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2021-07-09 22:42:35', '2021-07-09 16:57:35', '', 91, 'http://localhost/nextstep/?p=111', 0, 'revision', '', 0),
(112, 1, '2021-07-12 11:49:12', '2021-07-10 05:18:13', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2021-07-12 11:49:12', '2021-07-12 06:04:12', '', 0, 'http://localhost/nextstep/?p=112', 1, 'nav_menu_item', '', 0),
(113, 1, '2021-07-12 11:49:12', '2021-07-10 05:18:13', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2021-07-12 11:49:12', '2021-07-12 06:04:12', '', 0, 'http://localhost/nextstep/?p=113', 2, 'nav_menu_item', '', 0),
(114, 1, '2021-07-12 11:49:12', '2021-07-10 05:18:13', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2021-07-12 11:49:12', '2021-07-12 06:04:12', '', 0, 'http://localhost/nextstep/?p=114', 6, 'nav_menu_item', '', 0),
(116, 1, '2021-07-12 11:49:12', '2021-07-10 05:18:13', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2021-07-12 11:49:12', '2021-07-12 06:04:12', '', 0, 'http://localhost/nextstep/?p=116', 7, 'nav_menu_item', '', 0),
(119, 1, '2021-07-10 16:02:52', '2021-07-10 10:17:52', 'NextStep Education is an innovative and specialist educational consultancy service provider. In service of students since 2007, we specialize in educational counseling, recruitment and enrollment at overseas universities and colleges for more than 14 years. Adhering to the company’s policy of decentralization, KEF has now expanded to a total number of 10 offices in Australia and Nepal.\r\n\r\nRepresenting over 100+ universities and colleges from various countries (Australia, New Zealand, USA, UK, Canada, Europe and more), we are fully prepared to serve our students with the best possible guidance for their education abroad.  In addition to the guidance and counseling, we have also been conducting preparation classes for IELTS, PTE, TOEFL and SAT, run by highly professional and experienced language instructors.\r\n\r\nNextStep Education consists of a dedicated team of professionals with many combined years of experience within education, training, consulting and management, believing in quality service and professional delivery. All of the Educational Counselors at Kangaroo Education Foundation hold professional certifications, and it is a pre-requisite for all our appointed counselors.', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-07-10 16:02:52', '2021-07-10 10:17:52', '', 15, 'http://localhost/nextstep/?p=119', 0, 'revision', '', 0),
(120, 1, '2021-07-10 16:04:55', '2021-07-10 10:19:55', 'NextStep Education is an innovative and specialist educational consultancy service provider. In service of students since 2007, we specialize in educational counseling, recruitment and enrollment at overseas universities and colleges for more than 14 years. Adhering to the company’s policy of decentralization, NSEhas now expanded to a total number of 10 offices in Australia and Nepal.\n\nRepresenting over 100+ universities and colleges from various countries (Australia, New Zealand, USA, UK, Canada, Europe and more), we are fully prepared to serve our students with the best possible guidance for their education abroad.  In addition to the guidance and counseling, we have also been conducting preparation classes for IELTS, PTE, TOEFL and SAT, run by highly professional and experienced language instructors.\n\nNextStep Education consists of a dedicated team of professionals with many combined years of experience within education, training, consulting and management, believing in quality service and professional delivery. All of the Educational Counselors at NextStep Education Foundation hold professional certifications, and it is a pre-requisite for all our appointed counselors.', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2021-07-10 16:04:55', '2021-07-10 10:19:55', '', 15, 'http://localhost/nextstep/?p=120', 0, 'revision', '', 0),
(121, 1, '2021-07-10 16:04:59', '2021-07-10 10:19:59', 'NextStep Education is an innovative and specialist educational consultancy service provider. In service of students since 2007, we specialize in educational counseling, recruitment and enrollment at overseas universities and colleges for more than 14 years. Adhering to the company’s policy of decentralization, NSEhas now expanded to a total number of 10 offices in Australia and Nepal.\r\n\r\nRepresenting over 100+ universities and colleges from various countries (Australia, New Zealand, USA, UK, Canada, Europe and more), we are fully prepared to serve our students with the best possible guidance for their education abroad.  In addition to the guidance and counseling, we have also been conducting preparation classes for IELTS, PTE, TOEFL and SAT, run by highly professional and experienced language instructors.\r\n\r\nNextStep Education consists of a dedicated team of professionals with many combined years of experience within education, training, consulting and management, believing in quality service and professional delivery. All of the Educational Counselors at NextStep Education Foundation hold professional certifications, and it is a pre-requisite for all our appointed counselors.', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-07-10 16:04:59', '2021-07-10 10:19:59', '', 15, 'http://localhost/nextstep/?p=121', 0, 'revision', '', 0),
(122, 1, '2021-07-10 16:58:06', '2021-07-10 11:13:06', '', 'Education Fair', '', 'publish', 'open', 'open', '', 'education-fair', '', '', '2021-07-11 13:18:08', '2021-07-11 07:33:08', '', 0, 'http://localhost/nextstep/?post_type=video&#038;p=122', 0, 'video', '', 0),
(123, 1, '2021-07-10 16:58:06', '2021-07-10 11:13:06', 'https://youtu.be/2MPhNv777uc', 'Education Fair', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2021-07-10 16:58:06', '2021-07-10 11:13:06', '', 122, 'http://localhost/nextstep/?p=123', 0, 'revision', '', 0),
(124, 1, '2021-07-12 11:49:12', '2021-07-10 11:31:24', 'description', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2021-07-12 11:49:12', '2021-07-12 06:04:12', '', 0, 'http://localhost/nextstep/?p=124', 3, 'nav_menu_item', '', 0),
(125, 1, '2021-07-12 11:49:12', '2021-07-10 11:31:24', 'description', 'Video', '', 'publish', 'closed', 'closed', '', 'video', '', '', '2021-07-12 11:49:12', '2021-07-12 06:04:12', '', 0, 'http://localhost/nextstep/?p=125', 4, 'nav_menu_item', '', 0),
(126, 1, '2021-07-12 11:49:12', '2021-07-10 11:32:50', '', 'Our Company', '', 'publish', 'closed', 'closed', '', 'our-company', '', '', '2021-07-12 11:49:12', '2021-07-12 06:04:12', '', 0, 'http://localhost/nextstep/?p=126', 5, 'nav_menu_item', '', 0),
(127, 1, '2021-07-11 08:06:02', '2021-07-11 02:21:02', '', 'Education Fair', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2021-07-11 08:06:02', '2021-07-11 02:21:02', '', 122, 'http://localhost/nextstep/?p=127', 0, 'revision', '', 0),
(128, 1, '2021-07-11 08:08:27', '2021-07-11 02:23:27', '', 'NEW ZEALAND EDUCATION FAIR', '', 'publish', 'open', 'open', '', 'niec-australia-new-zealand-education-fair', '', '', '2021-07-11 13:08:56', '2021-07-11 07:23:56', '', 0, 'http://localhost/nextstep/?post_type=video&#038;p=128', 0, 'video', '', 0),
(129, 1, '2021-07-11 08:08:27', '2021-07-11 02:23:27', '', 'NIEC AUSTRALIA/ NEW ZEALAND EDUCATION FAIR', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2021-07-11 08:08:27', '2021-07-11 02:23:27', '', 128, 'http://localhost/nextstep/?p=129', 0, 'revision', '', 0),
(130, 1, '2021-07-11 08:42:17', '2021-07-11 02:57:17', '', 'India education fair Kathmandu', '', 'publish', 'open', 'open', '', 'india-education-fair-kathmandu', '', '', '2021-07-11 08:43:06', '2021-07-11 02:58:06', '', 0, 'http://localhost/nextstep/?post_type=video&#038;p=130', 0, 'video', '', 0),
(131, 1, '2021-07-11 08:42:17', '2021-07-11 02:57:17', '', 'India education fair Kathmandu', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2021-07-11 08:42:17', '2021-07-11 02:57:17', '', 130, 'http://localhost/nextstep/?p=131', 0, 'revision', '', 0),
(132, 1, '2021-07-11 08:43:03', '2021-07-11 02:58:03', '', 'india_education_fair', '', 'inherit', 'open', 'closed', '', 'india_education_fair', '', '', '2021-07-11 08:43:03', '2021-07-11 02:58:03', '', 130, 'http://localhost/nextstep/wp-content/uploads/2021/07/india_education_fair.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2021-07-11 09:14:42', '2021-07-11 03:29:42', '', 'NEW ZEALAND EDUCATION FAIR', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2021-07-11 09:14:42', '2021-07-11 03:29:42', '', 128, 'http://localhost/nextstep/?p=133', 0, 'revision', '', 0),
(134, 1, '2021-07-11 10:22:12', '2021-07-11 04:37:12', 'Next Step presents “US-Canada Education Fair 2019” happening on the 8th of September, where you can explore and get information about abroad study to academic and scholarship assessment and even career counseling from experts. Grab this chance to meet the representatives from top universities and colleges in USA and Canada and find out all about scholarship offers in these countries. Register for the event by following the link given below and through lucky draw you will be able to win exciting goodies! We hope to see you at the Fair!\r\n\r\nEvent Highlights include:\r\n• Spring and Fall 2020 Intake Application\r\n• Personal counselling from delegates of renowned universities\r\n• Career Counseling from Experts\r\n• On the Spot Admission Facility\r\n• Scholarship Eligibility Assessment\r\n\r\n&nbsp;', 'Canada Education Fair', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2021-07-11 10:22:12', '2021-07-11 04:37:12', '', 76, 'http://localhost/nextstep/?p=134', 0, 'revision', '', 0),
(135, 1, '2021-07-11 10:31:17', '2021-07-11 04:46:17', 'Good news for students planning to study in The UK.\r\nUK Visas and Immigration (UKVI) has announced Pearson Test of English Language (PTE-A) as provider for English Visa Test Whether you want to study, work or live in the UK, you can choose PTE-A. Alfa Beta is proud to be Pearson’s Top partner as well as Test Center in Nepal. So, if you are looking forward to register yourself for PTE-A Classes, Sign up at Alfa Beta TODAY!\r\n\r\nWhether you want to study, work or live in the UK, you can choose PTE-A. Alfa Beta is proud to be Pearson’s Top partner as well as Test Center in Nepal. So, if you are looking forward to register yourself for PTE-A Classes, Sign up at Alfa Beta TODAY!', 'PTE-A is now UKVI Approved', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2021-07-11 10:31:17', '2021-07-11 04:46:17', '', 73, 'http://localhost/nextstep/?p=135', 0, 'revision', '', 0),
(136, 1, '2021-07-11 10:39:15', '2021-07-11 04:54:15', 'Visa interview is an integral part for the final decision for visa approval for most countries .Your interview Presentation could affect your visa processing duration and sometimes unsatisfactory interview can lead to visa refusals. Therefore, it is very important that you should prepare for the interview and address all concerns of the visa officer.  Therefore, if you are prepared, you can enjoy this process and meeting with someone who opens the door of a new country for you\r\n\r\nThe interview is taken by the ambassador or visa officer who may ask you a range of questions mainly to ensure that your application case is genuine and your intentions align with what is being written in the application form and statement of purpose. Below shared some of the tips for visa interview:\r\n\r\n<strong>Here are few visa interview tips:</strong>\r\n<ul>\r\n 	<li>Prepare for the interview questions in advance.</li>\r\n 	<li>Get a copy of your all documents with you for the interview.</li>\r\n 	<li> Be on time for the interview.</li>\r\n 	<li>Be courteous, friendly and polite throughout the interview speak slowly and enunciate clearly.</li>\r\n 	<li>Don’t smoke, chew gum, eat, or drink in the course of interview.</li>\r\n 	<li>Be confident as you the best about yourself, where and why you have made applications.</li>\r\n 	<li>Give brief and clear answers. If not sure, then you can ask the question again. Be thoughtful in your answers.</li>\r\n 	<li>Go through the website and handbook of your university carefully.</li>\r\n 	<li>Know about your course contents thoroughly including course duration, fee, commencement &amp; end date, credits points etc.</li>\r\n 	<li>You should be clear about your future plans after completing the course.</li>\r\n 	<li>Be ready for any strange questions and don’t get nervous when you have them. They are meant to test your intentions, skills or IQ.</li>\r\n 	<li>Interview may take 20-30 minutes or more, so be comfortable with it.</li>\r\n 	<li>Enjoy the interview!</li>\r\n</ul>', 'Visa Interview Preparation Tips', '', 'publish', 'open', 'open', '', 'visa-interview-preparation-tips', '', '', '2021-07-11 10:39:15', '2021-07-11 04:54:15', '', 0, 'http://localhost/nextstep/?p=136', 0, 'post', '', 0),
(137, 1, '2021-07-11 10:39:00', '2021-07-11 04:54:00', '', 'start_img', '', 'inherit', 'open', 'closed', '', 'start_img', '', '', '2021-07-11 10:39:00', '2021-07-11 04:54:00', '', 136, 'http://localhost/nextstep/wp-content/uploads/2021/07/start_img.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2021-07-11 10:39:15', '2021-07-11 04:54:15', 'Visa interview is an integral part for the final decision for visa approval for most countries .Your interview Presentation could affect your visa processing duration and sometimes unsatisfactory interview can lead to visa refusals. Therefore, it is very important that you should prepare for the interview and address all concerns of the visa officer.  Therefore, if you are prepared, you can enjoy this process and meeting with someone who opens the door of a new country for you\r\n\r\nThe interview is taken by the ambassador or visa officer who may ask you a range of questions mainly to ensure that your application case is genuine and your intentions align with what is being written in the application form and statement of purpose. Below shared some of the tips for visa interview:\r\n\r\n<strong>Here are few visa interview tips:</strong>\r\n<ul>\r\n 	<li>Prepare for the interview questions in advance.</li>\r\n 	<li>Get a copy of your all documents with you for the interview.</li>\r\n 	<li> Be on time for the interview.</li>\r\n 	<li>Be courteous, friendly and polite throughout the interview speak slowly and enunciate clearly.</li>\r\n 	<li>Don’t smoke, chew gum, eat, or drink in the course of interview.</li>\r\n 	<li>Be confident as you the best about yourself, where and why you have made applications.</li>\r\n 	<li>Give brief and clear answers. If not sure, then you can ask the question again. Be thoughtful in your answers.</li>\r\n 	<li>Go through the website and handbook of your university carefully.</li>\r\n 	<li>Know about your course contents thoroughly including course duration, fee, commencement &amp; end date, credits points etc.</li>\r\n 	<li>You should be clear about your future plans after completing the course.</li>\r\n 	<li>Be ready for any strange questions and don’t get nervous when you have them. They are meant to test your intentions, skills or IQ.</li>\r\n 	<li>Interview may take 20-30 minutes or more, so be comfortable with it.</li>\r\n 	<li>Enjoy the interview!</li>\r\n</ul>', 'Visa Interview Preparation Tips', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2021-07-11 10:39:15', '2021-07-11 04:54:15', '', 136, 'http://localhost/nextstep/?p=138', 0, 'revision', '', 0),
(139, 1, '2021-07-11 10:41:31', '2021-07-11 04:56:31', 'The International English Language Testing System (IELTS) evaluates on basis of four language skills.\r\n<ol>\r\n 	<li><strong>Listening</strong></li>\r\n 	<li><strong>Reading</strong></li>\r\n 	<li><strong>Writing</strong></li>\r\n 	<li><strong>Speaking</strong><strong>\r\n</strong></li>\r\n</ol>\r\nThe total test time is 2 hours 44 minutes plus 10 minutes of transfer time. The test are taken in a serial manner first listening, second reading &amp; last one is writing without any break in-between. And for the Speaking, it depends upon the test center which may take up to 7 days after the above test is given.\r\n\r\nThere is no difference in the content, format or level of difficulty and scoring between the IELTS General Training and Academic examination. The listening and speaking tests remain the same for both versions.\r\n\r\n<img class=\"size-full wp-image-140 aligncenter\" src=\"http://localhost/nextstep/wp-content/uploads/2021/07/ielts.jpg\" alt=\"\" width=\"711\" height=\"562\" />', 'What is IELTS?', '', 'publish', 'open', 'open', '', 'what-is-ielts', '', '', '2021-07-11 10:41:31', '2021-07-11 04:56:31', '', 0, 'http://localhost/nextstep/?p=139', 0, 'post', '', 0),
(140, 1, '2021-07-11 10:40:38', '2021-07-11 04:55:38', '', 'ielts', '', 'inherit', 'open', 'closed', '', 'ielts', '', '', '2021-07-11 10:40:38', '2021-07-11 04:55:38', '', 139, 'http://localhost/nextstep/wp-content/uploads/2021/07/ielts.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2021-07-11 10:41:24', '2021-07-11 04:56:24', '', 'maxresdefault', '', 'inherit', 'open', 'closed', '', 'maxresdefault', '', '', '2021-07-11 10:41:24', '2021-07-11 04:56:24', '', 139, 'http://localhost/nextstep/wp-content/uploads/2021/07/maxresdefault.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2021-07-11 10:41:31', '2021-07-11 04:56:31', 'The International English Language Testing System (IELTS) evaluates on basis of four language skills.\r\n<ol>\r\n 	<li><strong>Listening</strong></li>\r\n 	<li><strong>Reading</strong></li>\r\n 	<li><strong>Writing</strong></li>\r\n 	<li><strong>Speaking</strong><strong>\r\n</strong></li>\r\n</ol>\r\nThe total test time is 2 hours 44 minutes plus 10 minutes of transfer time. The test are taken in a serial manner first listening, second reading &amp; last one is writing without any break in-between. And for the Speaking, it depends upon the test center which may take up to 7 days after the above test is given.\r\n\r\nThere is no difference in the content, format or level of difficulty and scoring between the IELTS General Training and Academic examination. The listening and speaking tests remain the same for both versions.\r\n\r\n<img class=\"size-full wp-image-140 aligncenter\" src=\"http://localhost/nextstep/wp-content/uploads/2021/07/ielts.jpg\" alt=\"\" width=\"711\" height=\"562\" />', 'What is IELTS?', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2021-07-11 10:41:31', '2021-07-11 04:56:31', '', 139, 'http://localhost/nextstep/?p=142', 0, 'revision', '', 0),
(143, 1, '2021-07-11 10:44:59', '2021-07-11 04:59:59', 'At the British Council, your health and safety comes first. We are closely following and implementing guidance from Nepal government to ensure the continued well-being of all of our community.\r\n\r\nIn light of the rapidly evolving coronavirus situation and the prevailing uncertainty, we would like to reassure you that our duty of care to you is of paramount importance to us. We have put in place relevant measures to protect all test-takers, which we would like to highlight to you. For Covid-19 Update please click here.\r\n\r\nHealth and safety measures at test venues for test-takers\r\n\r\nOn test days:\r\n\r\nWash your hands before you enter the exam premises.\r\nHand sanitizers are available at test venues.\r\nAll equipment, including computers, are cleaned between each test session.\r\nTest takers and venue staff must wear masks and gloves on the test day.\r\nA temperature check will be performed before you enter the exam premises.\r\nYour speaking examiner will be wearing a surgical mask.\r\nA test taker or examiner cannot insist to remove the facemask during the speaking test.\r\nTest takers may be requested to remove mask for identification and after any toilet breaks to confirm identity.\r\nDesignated bins for mask disposal will be available at all venues.\r\nTest-takers should take all used stationery at the end of the test.\r\nImportant Notes:\r\n\r\nWe request you not to come for the test if you are unwell or showing symptoms such as fever, cough, respiratory difficulty or other flu-like symptoms.\r\nTest-takers displaying the above symptoms will not be permitted to sit for any exams, in the interest of the safety of other test-takers and staff.\r\nTest-takers can request a free transfer or refund if they are feeling unwell.\r\nIf you do not feel comfortable with taking the exam in the current situation, you can request a free transfer or refund.\r\nWe will inform test-takers ahead of the test date via SMS and Email of any changes in their test schedule and/or test venue.\r\nWe are currently facing a large number of calls to our call centers and request you email us with your inquiry.\r\nPlease be advised that there is a delay in processing the following services and we will get back to test-takers as soon as possible:\r\n<ol>\r\n 	<li>EOR (Enquiry on Results)</li>\r\n 	<li>ATRF (Additional Test Report Form)</li>\r\n 	<li>Cancellation/Refunds</li>\r\n 	<li>Postponements</li>\r\n</ol>\r\nWe are monitoring the Covid-19 situation daily and are taking precautionary measures in line with the relevant authorities. Please be assured we will keep you updated on the latest developments at our end. If you require more information or assistance.\r\n\r\nWe seek your continued support and cooperation in fulfilling our responsibility of delivering examinations to the best of our ability, while prioritizing your welfare at all times.', 'Important Information on Covid-19 for IELTS Candidates', '', 'publish', 'open', 'open', '', 'important-information-on-covid-19-for-ielts-candidates', '', '', '2021-07-11 10:44:59', '2021-07-11 04:59:59', '', 0, 'http://localhost/nextstep/?p=143', 0, 'post', '', 0),
(144, 1, '2021-07-11 10:44:51', '2021-07-11 04:59:51', '', 'british', '', 'inherit', 'open', 'closed', '', 'british', '', '', '2021-07-11 10:44:51', '2021-07-11 04:59:51', '', 143, 'http://localhost/nextstep/wp-content/uploads/2021/07/british.png', 0, 'attachment', 'image/png', 0),
(145, 1, '2021-07-11 10:44:59', '2021-07-11 04:59:59', 'At the British Council, your health and safety comes first. We are closely following and implementing guidance from Nepal government to ensure the continued well-being of all of our community.\r\n\r\nIn light of the rapidly evolving coronavirus situation and the prevailing uncertainty, we would like to reassure you that our duty of care to you is of paramount importance to us. We have put in place relevant measures to protect all test-takers, which we would like to highlight to you. For Covid-19 Update please click here.\r\n\r\nHealth and safety measures at test venues for test-takers\r\n\r\nOn test days:\r\n\r\nWash your hands before you enter the exam premises.\r\nHand sanitizers are available at test venues.\r\nAll equipment, including computers, are cleaned between each test session.\r\nTest takers and venue staff must wear masks and gloves on the test day.\r\nA temperature check will be performed before you enter the exam premises.\r\nYour speaking examiner will be wearing a surgical mask.\r\nA test taker or examiner cannot insist to remove the facemask during the speaking test.\r\nTest takers may be requested to remove mask for identification and after any toilet breaks to confirm identity.\r\nDesignated bins for mask disposal will be available at all venues.\r\nTest-takers should take all used stationery at the end of the test.\r\nImportant Notes:\r\n\r\nWe request you not to come for the test if you are unwell or showing symptoms such as fever, cough, respiratory difficulty or other flu-like symptoms.\r\nTest-takers displaying the above symptoms will not be permitted to sit for any exams, in the interest of the safety of other test-takers and staff.\r\nTest-takers can request a free transfer or refund if they are feeling unwell.\r\nIf you do not feel comfortable with taking the exam in the current situation, you can request a free transfer or refund.\r\nWe will inform test-takers ahead of the test date via SMS and Email of any changes in their test schedule and/or test venue.\r\nWe are currently facing a large number of calls to our call centers and request you email us with your inquiry.\r\nPlease be advised that there is a delay in processing the following services and we will get back to test-takers as soon as possible:\r\n<ol>\r\n 	<li>EOR (Enquiry on Results)</li>\r\n 	<li>ATRF (Additional Test Report Form)</li>\r\n 	<li>Cancellation/Refunds</li>\r\n 	<li>Postponements</li>\r\n</ol>\r\nWe are monitoring the Covid-19 situation daily and are taking precautionary measures in line with the relevant authorities. Please be assured we will keep you updated on the latest developments at our end. If you require more information or assistance.\r\n\r\nWe seek your continued support and cooperation in fulfilling our responsibility of delivering examinations to the best of our ability, while prioritizing your welfare at all times.', 'Important Information on Covid-19 for IELTS Candidates', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2021-07-11 10:44:59', '2021-07-11 04:59:59', '', 143, 'http://localhost/nextstep/?p=145', 0, 'revision', '', 0),
(147, 1, '2021-07-11 14:09:47', '2021-07-11 08:24:47', '[text* your-name placeholder \"Your Name\"]\r\n[number* your-phone placeholder \"Your Phone Number\"]\r\n[email* your-email placeholder \"Your Email\"]\r\n[text* your-subject placeholder \"Your Subject\"]\r\n[textarea* your-message placeholder \"Your Message\"]\r\n[submit class:btn \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <tempnabeen1196@gmail.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <tempnabeen1196@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Form 2', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2021-07-11 14:30:25', '2021-07-11 08:45:25', '', 0, 'http://localhost/nextstep/?post_type=wpcf7_contact_form&#038;p=147', 0, 'wpcf7_contact_form', '', 0),
(148, 1, '2021-07-11 15:48:11', '2021-07-11 10:03:11', '', 'Our Branch', '', 'publish', 'open', 'open', '', 'our-branch', '', '', '2021-07-11 15:48:11', '2021-07-11 10:03:11', '', 0, 'http://localhost/nextstep/?post_type=companies&#038;p=148', 0, 'companies', '', 0),
(149, 1, '2021-07-11 15:48:11', '2021-07-11 10:03:11', '', 'Our Branch', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2021-07-11 15:48:11', '2021-07-11 10:03:11', '', 148, 'http://localhost/nextstep/?p=149', 0, 'revision', '', 0),
(150, 1, '2021-07-11 15:48:40', '2021-07-11 10:03:40', '', 'Baneshwor Branch', '', 'publish', 'open', 'open', '', 'baneshwor-branch', '', '', '2021-07-12 12:15:41', '2021-07-12 06:30:41', '', 0, 'http://localhost/nextstep/?post_type=companies&#038;p=150', 0, 'companies', '', 0),
(151, 1, '2021-07-11 15:48:40', '2021-07-11 10:03:40', '', 'Baneshwor Branch', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2021-07-11 15:48:40', '2021-07-11 10:03:40', '', 150, 'http://localhost/nextstep/?p=151', 0, 'revision', '', 0),
(152, 1, '2021-07-11 16:31:55', '2021-07-11 10:46:55', '', 'main-logo', '', 'inherit', 'open', 'closed', '', 'main-logo', '', '', '2021-07-11 16:31:55', '2021-07-11 10:46:55', '', 0, 'http://localhost/nextstep/wp-content/uploads/2021/07/main-logo.png', 0, 'attachment', 'image/png', 0),
(153, 1, '2021-07-11 16:32:10', '2021-07-11 10:47:10', '{\n    \"nextstep::header_image\": {\n        \"value\": \"http://localhost/nextstep/wp-content/uploads/2021/07/main-logo.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-11 10:47:10\"\n    },\n    \"nextstep::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/nextstep/wp-content/uploads/2021/07/main-logo.png\",\n            \"thumbnail_url\": \"http://localhost/nextstep/wp-content/uploads/2021/07/main-logo.png\",\n            \"timestamp\": 1626000419019,\n            \"attachment_id\": 152,\n            \"width\": 1000,\n            \"height\": 267\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-07-11 10:47:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '89ba4abe-620c-4dc7-9bad-e819b7c7e188', '', '', '2021-07-11 16:32:10', '2021-07-11 10:47:10', '', 0, 'http://localhost/nextstep/89ba4abe-620c-4dc7-9bad-e819b7c7e188/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nse_termmeta`
--

CREATE TABLE `nse_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nse_terms`
--

CREATE TABLE `nse_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nse_terms`
--

INSERT INTO `nse_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main_menu', 'main_menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nse_term_relationships`
--

CREATE TABLE `nse_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nse_term_relationships`
--

INSERT INTO `nse_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(73, 1, 0),
(76, 1, 0),
(79, 1, 0),
(112, 2, 0),
(113, 2, 0),
(114, 2, 0),
(116, 2, 0),
(124, 2, 0),
(125, 2, 0),
(126, 2, 0),
(136, 1, 0),
(139, 1, 0),
(143, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nse_term_taxonomy`
--

CREATE TABLE `nse_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nse_term_taxonomy`
--

INSERT INTO `nse_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `nse_usermeta`
--

CREATE TABLE `nse_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nse_usermeta`
--

INSERT INTO `nse_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nextstep'),
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
(12, 1, 'nse_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'nse_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"8ab3b43095101386d112ce56deb27217133daf804716dd5755c2475c55b35566\";a:4:{s:10:\"expiration\";i:1626846376;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36\";s:5:\"login\";i:1625636776;}s:64:\"b0067471519b85b07281f3a19e99cfa9a187059f9ac7d253cde784507c3a939c\";a:4:{s:10:\"expiration\";i:1626241778;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36\";s:5:\"login\";i:1626068978;}}'),
(17, 1, 'nse_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'nse_user-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'nse_user-settings-time', '1625849737'),
(20, 1, 'meta-box-order_university', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:71:\"welcome_id,postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'screen_layout_university', '2'),
(22, 1, 'meta-box-order_team', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:70:\"social_id,postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_team', '2'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:20:\"add-post-type-slider\";i:1;s:24:\"add-post-type-university\";i:2;s:18:\"add-post-type-team\";i:3;s:12:\"add-post_tag\";}'),
(26, 1, 'nav_menu_recently_edited', '2'),
(27, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(28, 1, 'meta-box-order_video', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:83:\"textbox_id,postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_video', '2'),
(30, 1, 'closedpostboxes_video', 'a:0:{}'),
(31, 1, 'metaboxhidden_video', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(32, 1, 'meta-box-order_companies', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:72:\"checkbox_id,postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(33, 1, 'screen_layout_companies', '2');

-- --------------------------------------------------------

--
-- Table structure for table `nse_users`
--

CREATE TABLE `nse_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nse_users`
--

INSERT INTO `nse_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nextstep', '$P$BCrmJWLadB7aWd.TszC8Zzta.mYbkc0', 'nextstep', 'tempnabeen1196@gmail.com', 'http://localhost/nextstep', '2021-07-07 05:46:03', '', 0, 'nextstep');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nse_commentmeta`
--
ALTER TABLE `nse_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `nse_comments`
--
ALTER TABLE `nse_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `nse_links`
--
ALTER TABLE `nse_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `nse_options`
--
ALTER TABLE `nse_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `nse_postmeta`
--
ALTER TABLE `nse_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `nse_posts`
--
ALTER TABLE `nse_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `nse_termmeta`
--
ALTER TABLE `nse_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `nse_terms`
--
ALTER TABLE `nse_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `nse_term_relationships`
--
ALTER TABLE `nse_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `nse_term_taxonomy`
--
ALTER TABLE `nse_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `nse_usermeta`
--
ALTER TABLE `nse_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `nse_users`
--
ALTER TABLE `nse_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nse_commentmeta`
--
ALTER TABLE `nse_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nse_comments`
--
ALTER TABLE `nse_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nse_links`
--
ALTER TABLE `nse_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nse_options`
--
ALTER TABLE `nse_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `nse_postmeta`
--
ALTER TABLE `nse_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `nse_posts`
--
ALTER TABLE `nse_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `nse_termmeta`
--
ALTER TABLE `nse_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nse_terms`
--
ALTER TABLE `nse_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nse_term_taxonomy`
--
ALTER TABLE `nse_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nse_usermeta`
--
ALTER TABLE `nse_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `nse_users`
--
ALTER TABLE `nse_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
