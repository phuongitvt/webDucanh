-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 10, 2020 lúc 10:31 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

CREATE TABLE `article` (
  `id_article` int(11) NOT NULL,
  `type` char(5) DEFAULT NULL COMMENT 'loại của bài viết',
  `id_category` int(11) DEFAULT 0 COMMENT 'menu của bai viet',
  `name` varchar(200) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `full` longtext DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `SEO_title` varchar(100) DEFAULT NULL,
  `SEO_keyword` varchar(200) DEFAULT NULL,
  `SEO_description` varchar(200) DEFAULT NULL,
  `created_at` int(11) DEFAULT 0,
  `updated_at` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Người viết bài tin tức', '2', 1573311184),
('Quản trị cao nhất', '1', 1573311659);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1552295724, 1552295724),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/default/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/default/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/menu/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/menu/create', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/menu/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/menu/update', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/menu/view', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/permission/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/permission/create', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/permission/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/permission/update', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/permission/view', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/role/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/role/assign', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/role/create', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/role/delete', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/role/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/role/remove', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/role/update', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/role/view', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/route/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/route/assign', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/route/create', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/route/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/route/remove', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/rule/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/rule/create', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/rule/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/rule/update', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/rule/view', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/activate', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/change-password-new', 2, NULL, NULL, NULL, 1573398473, 1573398473),
('/admin/user/delete', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/login', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/logout', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/signup', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/view', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/article/*', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/article/create', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/article/delete', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/article/index', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/article/update', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/article/view', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/category/*', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/category/create', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/category/delete', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/category/index', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/category/update', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/category/view', 2, NULL, NULL, NULL, 1573296314, 1573296314),
('/debug/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/debug/default/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/debug/default/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/debug/default/view', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/debug/user/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/gii/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/gii/default/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/gii/default/action', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/gii/default/diff', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/gii/default/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/gii/default/preview', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/gii/default/view', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/partner/*', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/partner/create', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/partner/delete', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/partner/index', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/partner/update', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/partner/view', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/site/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/site/error', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/site/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/site/login', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/site/logout', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/slide/*', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/slide/create', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/slide/delete', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/slide/index', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/slide/update', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('/slide/view', 2, NULL, NULL, NULL, 1573297315, 1573297315),
('demo', 1, NULL, NULL, NULL, 1573396795, 1573396795),
('Full quyền', 2, 'chỉ có superadmin mới được dùng', NULL, NULL, 1552291046, 1573311499),
('Người viết bài tin tức', 1, NULL, NULL, NULL, 1573311042, 1573389717),
('Quản trị cao nhất', 1, NULL, NULL, NULL, 1573311587, 1573311587),
('Thêm tin tức', 2, 'Xem danh sách và thêm tin tức', NULL, NULL, 1573310977, 1573398493);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Full quyền', '/*'),
('Người viết bài tin tức', 'Thêm tin tức'),
('Quản trị cao nhất', 'Full quyền'),
('Thêm tin tức', '/article/*'),
('Thêm tin tức', '/article/create'),
('Thêm tin tức', '/article/index'),
('Thêm tin tức', '/category/*');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT 0 COMMENT 'menu đa cấp',
  `type` char(5) DEFAULT NULL COMMENT 'loại của menu',
  `name` varchar(200) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT 999 COMMENT 'vi trí sắp xếp',
  `status` tinyint(1) DEFAULT 1,
  `SEO_title` varchar(100) DEFAULT NULL,
  `SEO_keyword` varchar(200) DEFAULT NULL,
  `SEO_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id_category`, `id_parent`, `type`, `name`, `link`, `position`, `status`, `SEO_title`, `SEO_keyword`, `SEO_description`) VALUES
(1, NULL, 'new', 'new 1', NULL, 1, 10, 'sadf', 'sadf', 'ada,sadf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'phuong', 'lTC-jMWUvlSgSfjygYCvongWQ4fglp9p', '$2y$13$wsnfs8heBz3giazzM3E6Be8T.rqKCwlYaCdEXQn5xF5SEffu7hTZ6', NULL, 'phuongitvt@gmail.com', 10, 1552286551, 1552286551),
(2, 'hongloan', 'HPfOQ-Zj1Oq_sYpf2PtIjj834wN5mvs8', '$2y$13$Yt6nfTURjROleF3xOnstdud/lH6p4ABw6Pu4LGAOId.XtrJY.6via', NULL, 'hongloan@gmail.com', 10, 1552286551, 1573396640),
(3, 'phuong1', 'nIGz7oXHiODvk6Scb2Pi2UEAmX5R-HXy', '$2y$13$dLq3cFOvbRbIuZaRFoXW8.71HzFcscGvYWOgYs/4wJZdU4nZRaedm', NULL, 'asdf@gmail.com', 10, 1573393558, 1573393558),
(4, 'phuc', '3q-uUUVzo4rx5Q4_t0_f-ejtoWl09ifQ', '$2y$13$yMRxHUAqqogB8Y5Gl..J5.896FFtmYhUESF4mufzWwDn.EY/0JhYa', NULL, 'phuc@gmail.com', 10, 1573393905, 1573393905),
(5, 'honghoang', 'WcH1APSN6VSaOfzGJpTA-KtYOx9Kt0M5', '$2y$13$Wftz4NFplz0xJ.aMx7SHvOMVdjYBSQf9L14lSb0NkGdkki6TRBt5.', NULL, 'hoang@gmail.com', 10, 1573394019, 1573394019);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'SubperAdmin', NULL, NULL, NULL, NULL),
(3, 'Menus', 1, '/admin/menu/index', 6, NULL),
(4, 'route', 1, '/admin/route/index', 1, NULL),
(5, 'permission', 1, '/admin/permission/index', 3, NULL),
(6, 'role', 1, '/admin/role/index', 2, NULL),
(8, 'user', 1, '/admin/user/index', 4, NULL),
(9, 'Tin tức', NULL, '/article/index', 1, NULL),
(10, 'Chuyên mục', 9, '/category/index', 1, NULL),
(11, 'Bài viết', 9, '/article/index', 2, NULL),
(12, 'Quản lý chung', NULL, '/slide/index', 1, NULL),
(13, 'Slide trang chủ', 12, '/slide/index', 1, NULL),
(14, 'Đối tác', 12, '/partner/index', 2, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1552286502),
('m130524_201442_init', 1552286503),
('m140506_102106_rbac_init', 1552289481),
('m140602_111327_create_menu_table', 1552288148),
('m160312_050000_create_user', 1552288148),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1552289481),
('m180523_151638_rbac_updates_indexes_without_prefix', 1552289481),
('m190311_080939_create_employee', 1552291899);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id_partner` int(11) NOT NULL,
  `image` int(11) DEFAULT NULL,
  `link` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photo_article`
--

CREATE TABLE `photo_article` (
  `id_photo` int(11) NOT NULL,
  `id_article` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `info` longtext NOT NULL,
  `info_search` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'phuongdaica', 'jyx1GRLD8LJilIjSNMECDyXEOSMyYI5Q', '$2y$13$wsnfs8heBz3giazzM3E6Be8T.rqKCwlYaCdEXQn5xF5SEffu7hTZ6', NULL, 'a@gmail.com', 10, 1573139082, 1573139082);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`);

--
-- Chỉ mục cho bảng `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Chỉ mục cho bảng `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Chỉ mục cho bảng `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Chỉ mục cho bảng `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Chỉ mục cho bảng `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id_partner`);

--
-- Chỉ mục cho bảng `photo_article`
--
ALTER TABLE `photo_article`
  ADD PRIMARY KEY (`id_photo`);

--
-- Chỉ mục cho bảng `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id_partner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `photo_article`
--
ALTER TABLE `photo_article`
  MODIFY `id_photo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
