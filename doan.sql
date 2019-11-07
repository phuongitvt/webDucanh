
-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 28, 2019 lúc 02:20 PM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.0.31

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
('admin', '1', 1552291061),
('admin', '2', 1552293604);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
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
('/admin/user/delete', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/login', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/logout', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/signup', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/admin/user/view', 2, NULL, NULL, NULL, 1552291004, 1552291004),
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
('/site/*', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/site/error', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/site/index', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/site/login', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('/site/logout', 2, NULL, NULL, NULL, 1552291004, 1552291004),
('admin', 2, 'quan li admin', NULL, NULL, 1552291046, 1552291046);

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
('admin', '/*'),
('admin', '/admin/*'),
('admin', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('admin', '/admin/default/*'),
('admin', '/admin/default/index'),
('admin', '/admin/menu/*'),
('admin', '/admin/menu/create'),
('admin', '/admin/menu/delete'),
('admin', '/admin/menu/index'),
('admin', '/admin/menu/update'),
('admin', '/admin/menu/view'),
('admin', '/admin/permission/*'),
('admin', '/admin/permission/assign'),
('admin', '/admin/permission/create'),
('admin', '/admin/permission/delete'),
('admin', '/admin/permission/index'),
('admin', '/admin/permission/remove'),
('admin', '/admin/permission/update'),
('admin', '/admin/permission/view'),
('admin', '/admin/role/*'),
('admin', '/admin/role/assign'),
('admin', '/admin/role/create'),
('admin', '/admin/role/delete'),
('admin', '/admin/role/index'),
('admin', '/admin/role/remove'),
('admin', '/admin/role/update'),
('admin', '/admin/role/view'),
('admin', '/admin/route/*'),
('admin', '/admin/route/assign'),
('admin', '/admin/route/create'),
('admin', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('admin', '/admin/rule/*'),
('admin', '/admin/rule/create'),
('admin', '/admin/rule/delete'),
('admin', '/admin/rule/index'),
('admin', '/admin/rule/update'),
('admin', '/admin/rule/view'),
('admin', '/admin/user/*'),
('admin', '/admin/user/activate'),
('admin', '/admin/user/change-password'),
('admin', '/admin/user/delete'),
('admin', '/admin/user/index'),
('admin', '/admin/user/login'),
('admin', '/admin/user/logout'),
('admin', '/admin/user/request-password-reset'),
('admin', '/admin/user/reset-password'),
('admin', '/admin/user/signup'),
('admin', '/admin/user/view'),
('admin', '/debug/*'),
('admin', '/debug/default/*'),
('admin', '/debug/default/db-explain'),
('admin', '/debug/default/download-mail'),
('admin', '/debug/default/index'),
('admin', '/debug/default/toolbar'),
('admin', '/debug/default/view'),
('admin', '/debug/user/*'),
('admin', '/debug/user/reset-identity'),
('admin', '/debug/user/set-identity'),
('admin', '/gii/*'),
('admin', '/gii/default/*'),
('admin', '/gii/default/action'),
('admin', '/gii/default/diff'),
('admin', '/gii/default/index'),
('admin', '/gii/default/preview'),
('admin', '/gii/default/view'),
('admin', '/site/*'),
('admin', '/site/error'),
('admin', '/site/index'),
('admin', '/site/login'),
('admin', '/site/logout');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'phuong', 'lTC-jMWUvlSgSfjygYCvongWQ4fglp9p', '$2y$13$vg8n9qpGLms81O7O7nru5.JdNIf.oiqcNuDrGnIDJzszoLaRu20wS', NULL, 'phuongitvt@gmail.com', 10, 1552286551, 1552286551);

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
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'Backend', NULL, NULL, NULL, NULL),
(2, 'Admin', 1, '/admin/default/index', 1, NULL),
(3, 'Menus', 2, '/admin/menu/index', 1, NULL);

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
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

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
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
doan.sql
Đang hiển thị doan.sql.