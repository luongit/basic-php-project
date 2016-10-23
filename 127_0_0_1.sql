-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2016 at 11:11 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basic_php`
--
CREATE DATABASE IF NOT EXISTS `basic_php` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `basic_php`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `actived` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent`, `actived`) VALUES
(1, 'Sách học HTML 5', 'sach-hoc-html5', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `cate` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `actived` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `cate`, `title`, `slug`, `image`, `content`, `actived`) VALUES
(5, 2, 'Sách học thiết kế web với HTML 6', 'sach-hoc-thiet-ke-web-voi-html-6', '1.jpg', 'This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.', 1),
(8, 2, 'Tài liệu học css 3', 'tai-lieu-hoc-css-3', '2.jpg', 'This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details', 1),
(13, 2, 'Tài liệu học jQuery', 'tai-lieu-hoc-jquery', '3.jpg', 'This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details', 0),
(14, 2, 'Tài liệu hco html 6', 'tai-lieu-hco-html-6', '4.jpg', 'sasas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `actived` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `actived`) VALUES
(1, 'admin', 'admin@gmail.com', '111111', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `demo_cart`
--
CREATE DATABASE IF NOT EXISTS `demo_cart` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `demo_cart`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(1, 'Sna pham 1', 100000),
(2, 'Sna pham 2', 150000),
(3, 'Sna pham 1', 100000),
(4, 'Sna pham 3', 120000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `itvnsoft`
--
CREATE DATABASE IF NOT EXISTS `itvnsoft` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `itvnsoft`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Administrator', '1', 1476006317);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/*', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/assignment/*', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/assignment/assign', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/assignment/captcha', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/assignment/error', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/assignment/index', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/assignment/revoke', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/assignment/view', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/default/*', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/default/captcha', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/default/error', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/default/index', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/menu/*', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/menu/captcha', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/menu/create', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/menu/delete', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/menu/error', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/menu/index', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/menu/update', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/menu/view', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/permission/*', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/permission/assign', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/permission/captcha', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/permission/create', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/permission/delete', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/permission/error', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/permission/index', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/account/permission/remove', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/permission/update', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/permission/view', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/role/*', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/role/assign', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/role/captcha', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/role/create', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/role/delete', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/role/error', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/role/index', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/role/remove', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/role/update', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/role/view', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/route/*', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/route/assign', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/route/captcha', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/route/create', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/route/error', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/route/index', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/route/refresh', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/route/remove', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/rule/*', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/rule/captcha', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/rule/create', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/rule/delete', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/rule/error', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/rule/index', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/rule/update', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/rule/view', 2, NULL, NULL, NULL, 1476089511, 1476089511),
('/account/user/*', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/activate', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/captcha', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/change-password', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/delete', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/error', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/index', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/login', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/logout', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/request-password-reset', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/reset-password', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/signup', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/account/user/view', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/cms/*', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/cms/category/*', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/category/bulk-action', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/category/captcha', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/category/create', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/category/delete', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/category/error', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/category/index', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/category/status', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/category/update', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/category/view', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/default/*', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/default/captcha', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/default/error', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/default/index', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/post/*', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/cms/post/captcha', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/post/create', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/cms/post/draft', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/cms/post/error', 2, NULL, NULL, NULL, 1476089509, 1476089509),
('/cms/post/index', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/cms/post/slug', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/cms/post/update', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/cms/post/view', 2, NULL, NULL, NULL, 1476089510, 1476089510),
('/media/*', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/media/default/*', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/media/default/captcha', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/media/default/error', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/media/default/index', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/site/*', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/site/error', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/site/index', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/site/login', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('/site/logout', 2, NULL, NULL, NULL, 1476089512, 1476089512),
('Account', 2, 'Quản lý tài khoản và phân quyền', 'RouteRule', NULL, 1476005728, 1476005728),
('Administrator', 1, 'Quản trị hệ thống', 'RouteRule', NULL, 1476006263, 1476006263),
('CMS', 2, 'Quản lý bài viết', 'RouteRule', NULL, 1476004778, 1476004778),
('Dashboard', 2, 'Quản lý trang chủ admin', 'RouteRule', NULL, 1476004156, 1476004156),
('Media', 2, 'Quản lý ảnh', 'RouteRule', NULL, 1476006196, 1476006196);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Account', '/account/*'),
('Account', '/account/assignment/*'),
('Account', '/account/assignment/assign'),
('Account', '/account/assignment/captcha'),
('Account', '/account/assignment/error'),
('Account', '/account/assignment/index'),
('Account', '/account/assignment/revoke'),
('Account', '/account/assignment/view'),
('Account', '/account/default/*'),
('Account', '/account/default/captcha'),
('Account', '/account/default/error'),
('Account', '/account/default/index'),
('Account', '/account/menu/*'),
('Account', '/account/menu/captcha'),
('Account', '/account/menu/create'),
('Account', '/account/menu/delete'),
('Account', '/account/menu/error'),
('Account', '/account/menu/index'),
('Account', '/account/menu/update'),
('Account', '/account/menu/view'),
('Account', '/account/permission/*'),
('Account', '/account/permission/assign'),
('Account', '/account/permission/captcha'),
('Account', '/account/permission/create'),
('Account', '/account/permission/delete'),
('Account', '/account/permission/error'),
('Account', '/account/permission/index'),
('Account', '/account/permission/remove'),
('Account', '/account/permission/update'),
('Account', '/account/permission/view'),
('Account', '/account/role/*'),
('Account', '/account/role/assign'),
('Account', '/account/role/captcha'),
('Account', '/account/role/create'),
('Account', '/account/role/delete'),
('Account', '/account/role/error'),
('Account', '/account/role/index'),
('Account', '/account/role/remove'),
('Account', '/account/role/update'),
('Account', '/account/role/view'),
('Account', '/account/route/*'),
('Account', '/account/route/assign'),
('Account', '/account/route/captcha'),
('Account', '/account/route/create'),
('Account', '/account/route/error'),
('Account', '/account/route/index'),
('Account', '/account/route/refresh'),
('Account', '/account/route/remove'),
('Account', '/account/rule/*'),
('Account', '/account/rule/captcha'),
('Account', '/account/rule/create'),
('Account', '/account/rule/delete'),
('Account', '/account/rule/error'),
('Account', '/account/rule/index'),
('Account', '/account/rule/update'),
('Account', '/account/rule/view'),
('Account', '/account/user/*'),
('Account', '/account/user/activate'),
('Account', '/account/user/captcha'),
('Account', '/account/user/change-password'),
('Account', '/account/user/delete'),
('Account', '/account/user/error'),
('Account', '/account/user/index'),
('Account', '/account/user/login'),
('Account', '/account/user/logout'),
('Account', '/account/user/request-password-reset'),
('Account', '/account/user/reset-password'),
('Account', '/account/user/signup'),
('Account', '/account/user/view'),
('Administrator', 'Account'),
('Administrator', 'CMS'),
('Administrator', 'Dashboard'),
('Administrator', 'Media'),
('CMS', '/cms/*'),
('CMS', '/cms/category/*'),
('CMS', '/cms/category/bulk-action'),
('CMS', '/cms/category/captcha'),
('CMS', '/cms/category/create'),
('CMS', '/cms/category/delete'),
('CMS', '/cms/category/error'),
('CMS', '/cms/category/index'),
('CMS', '/cms/category/status'),
('CMS', '/cms/category/update'),
('CMS', '/cms/category/view'),
('CMS', '/cms/default/*'),
('CMS', '/cms/default/captcha'),
('CMS', '/cms/default/error'),
('CMS', '/cms/default/index'),
('CMS', '/cms/post/*'),
('CMS', '/cms/post/captcha'),
('CMS', '/cms/post/create'),
('CMS', '/cms/post/draft'),
('CMS', '/cms/post/error'),
('CMS', '/cms/post/index'),
('CMS', '/cms/post/slug'),
('CMS', '/cms/post/update'),
('CMS', '/cms/post/view'),
('Dashboard', '/site/*'),
('Dashboard', '/site/error'),
('Dashboard', '/site/index'),
('Dashboard', '/site/login'),
('Dashboard', '/site/logout'),
('Media', '/media/*'),
('Media', '/media/default/*'),
('Media', '/media/default/captcha'),
('Media', '/media/default/error'),
('Media', '/media/default/index');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_rule`
--

INSERT INTO `auth_rule` (`name`, `data`, `created_at`, `updated_at`) VALUES
('GuestRule', 'O:41:"backend\\modules\\rbac\\components\\GuestRule":3:{s:4:"name";s:9:"GuestRule";s:9:"createdAt";i:1476004085;s:9:"updatedAt";i:1476004085;}', 1476004085, 1476004085),
('RouteRule', 'O:41:"backend\\modules\\rbac\\components\\RouteRule":3:{s:4:"name";s:9:"RouteRule";s:9:"createdAt";i:1476004105;s:9:"updatedAt";i:1476004105;}', 1476004105, 1476004105);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` char(128) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`id`, `expire`, `data`) VALUES
('0c8ea61faf25f40df74af36f04de52f5', 1476843690, 0x613a323a7b693a303b613a353a7b693a303b613a333a7b733a353a226c6162656c223b733a32323a2242e1baa36e6720c49169e1bb8175206b6869e1bb836e223b733a343a2269636f6e223b733a32353a226163652d69636f6e2066612066612d746163686f6d65746572223b733a333a2275726c223b613a313a7b693a303b733a31313a222f736974652f696e646578223b7d7d693a313b613a343a7b733a353a226c6162656c223b733a31313a2242c3a069207669e1babf74223b733a343a2269636f6e223b733a33333a226163652d69636f6e20676c79706869636f6e20676c79706869636f6e2d66696c65223b733a333a2275726c223b613a313a7b693a303b733a31383a222f636d732f64656661756c742f696e646578223b7d733a353a226974656d73223b613a333a7b693a303b613a333a7b733a353a226c6162656c223b733a32323a2244616e682073c3a163682062c3a069207669e1babf74223b733a343a2269636f6e223b733a33333a226163652d69636f6e20676c79706869636f6e20676c79706869636f6e2d66696c65223b733a333a2275726c223b613a313a7b693a303b733a31353a222f636d732f706f73742f696e646578223b7d7d693a313b613a333a7b733a353a226c6162656c223b733a32333a225468c3aa6d206de1bb9b692062c3a069207669e1babf74223b733a343a2269636f6e223b733a33333a226163652d69636f6e20676c79706869636f6e20676c79706869636f6e2d706c7573223b733a333a2275726c223b613a313a7b693a303b733a31363a222f636d732f706f73742f637265617465223b7d7d693a323b613a333a7b733a353a226c6162656c223b733a32323a2244616e68206de1bba5632062c3a069207669e1babf74223b733a343a2269636f6e223b733a34323a226163652d69636f6e20676c79706869636f6e20676c79706869636f6e2d616c69676e2d6a757374696679223b733a333a2275726c223b613a313a7b693a303b733a31393a222f636d732f63617465676f72792f696e646578223b7d7d7d7d693a323b613a333a7b733a353a226c6162656c223b733a31363a225175e1baa36e206cc3bd20e1baa36e68223b733a343a2269636f6e223b733a33363a226163652d69636f6e20676c79706869636f6e20676c79706869636f6e2d70696374757265223b733a333a2275726c223b613a313a7b693a303b733a32303a222f6d656469612f64656661756c742f696e646578223b7d7d693a333b613a343a7b733a353a226c6162656c223b733a32353a225175e1baa36e206cc3bd206e67c6b0e1bb9d692064c3b96e67223b733a343a2269636f6e223b733a32303a226163652d69636f6e2066612066612d7573657273223b733a333a2275726c223b613a313a7b693a303b733a31393a222f6163636f756e742f757365722f696e646578223b7d733a353a226974656d73223b613a333a7b693a303b613a333a7b733a353a226c6162656c223b733a31333a224e68c3b36d20517579e1bb816e223b733a343a2269636f6e223b733a303a22223b733a333a2275726c223b613a313a7b693a303b733a31393a222f6163636f756e742f726f6c652f696e646578223b7d7d693a313b613a333a7b733a353a226c6162656c223b733a31323a2254c3ac61206b686fe1baa36e223b733a343a2269636f6e223b733a32303a226163652d69636f6e2066612066612d7573657273223b733a333a2275726c223b613a313a7b693a303b733a31393a222f6163636f756e742f757365722f696e646578223b7d7d693a323b613a333a7b733a353a226c6162656c223b733a373a22517579e1bb816e223b733a343a2269636f6e223b733a303a22223b733a333a2275726c223b613a313a7b693a303b733a32353a222f6163636f756e742f7065726d697373696f6e2f696e646578223b7d7d7d7d693a343b613a333a7b733a353a226c6162656c223b733a31353a225175e1baa36e206cc3bd206d656e75223b733a343a2269636f6e223b733a33313a226163652d69636f6e20676c79706869636f6e20676c79706869636f6e2d7468223b733a333a2275726c223b613a313a7b693a303b733a31393a222f6163636f756e742f6d656e752f696e646578223b7d7d7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a393a226d646d2e61646d696e223b733a343a2264617461223b613a313a7b733a33323a226639306162316465396265663534653461386334626439626465363166303932223b733a32313a22302e30343735353730302031343736343138373833223b7d733a383a227265757361626c65223b623a303b7d7d),
('654e51e05cbb0a20e359bb3aebb08879', 1476843690, 0x613a323a7b693a303b613a31313a7b693a303b733a313a2237223b693a313b733a313a2238223b693a323b733a313a2239223b693a333b733a323a223130223b693a343b733a323a223131223b693a353b733a313a2232223b693a363b733a313a2233223b693a373b733a313a2234223b693a383b733a313a2235223b693a393b733a313a2236223b693a31303b733a313a2231223b7d693a313b4f3a32353a227969695c63616368696e675c546167446570656e64656e6379223a333a7b733a343a2274616773223b733a393a226d646d2e61646d696e223b733a343a2264617461223b613a313a7b733a33323a226639306162316465396265663534653461386334626439626465363166303932223b733a32313a22302e30343735353730302031343736343138373833223b7d733a383a227265757361626c65223b623a303b7d7d),
('963454f612a8b5fb4a63ba1e97f028a1', 0, 0x613a323a7b693a303b613a323a7b693a303b613a393a7b693a303b4f3a31353a227969695c7765625c55726c52756c65223a31343a7b733a343a226e616d65223b733a303a22223b733a373a227061747465726e223b733a353a22235e242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a31303a22736974652f696e646578223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31353a22002a00706c616365686f6c64657273223b613a303a7b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a303a22223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a313b4f3a31353a227969695c7765625c55726c52756c65223a31343a7b733a343a226e616d65223b733a31303a2267696f692d7468696575223b733a373a227061747465726e223b733a31353a22235e67696f692d7468696575242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a31303a22736974652f61626f7574223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31353a22002a00706c616365686f6c64657273223b613a303a7b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a31323a222f67696f692d74686965752f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a323b4f3a31353a227969695c7765625c55726c52756c65223a31343a7b733a343a226e616d65223b733a393a2264616e672d6e686170223b733a373a227061747465726e223b733a31343a22235e64616e672d6e686170242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a31303a22736974652f6c6f67696e223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31353a22002a00706c616365686f6c64657273223b613a303a7b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a31313a222f64616e672d6e6861702f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a333b4f3a31353a227969695c7765625c55726c52756c65223a31343a7b733a343a226e616d65223b733a353a2274686f6174223b733a373a227061747465726e223b733a31303a22235e74686f6174242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a31313a22736974652f6c6f676f7574223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31353a22002a00706c616365686f6c64657273223b613a303a7b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a373a222f74686f61742f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a343b4f3a31353a227969695c7765625c55726c52756c65223a31343a7b733a343a226e616d65223b733a373a226c69656e2d6865223b733a373a227061747465726e223b733a31323a22235e6c69656e2d6865242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a31323a22736974652f636f6e74616374223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31353a22002a00706c616365686f6c64657273223b613a303a7b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a393a222f6c69656e2d68652f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a353b4f3a31353a227969695c7765625c55726c52756c65223a31343a7b733a343a226e616d65223b733a373a2264616e672d6b79223b733a373a227061747465726e223b733a31323a22235e64616e672d6b79242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a31313a22736974652f7369676e7570223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31353a22002a00706c616365686f6c64657273223b613a303a7b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a393a222f64616e672d6b792f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a363b4f3a31353a227969695c7765625c55726c52756c65223a31343a7b733a343a226e616d65223b733a343a2266656564223b733a373a227061747465726e223b733a393a22235e66656564242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a393a22736974652f66656564223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31353a22002a00706c616365686f6c64657273223b613a303a7b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a363a222f666565642f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a373b4f3a31353a227969695c7765625c55726c52756c65223a31343a7b733a343a226e616d65223b733a373a22736974656d6170223b733a373a227061747465726e223b733a31323a22235e736974656d6170242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a31323a22736974652f736974656d6170223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31353a22002a00706c616365686f6c64657273223b613a303a7b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a393a222f736974656d61702f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a303a7b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d693a383b4f3a31353a227969695c7765625c55726c52756c65223a31343a7b733a343a226e616d65223b733a363a223c736c75673e223b733a373a227061747465726e223b733a32363a22235e283f503c6139383964396236323e5b5e5c2f5d2b29242375223b733a343a22686f7374223b4e3b733a353a22726f757465223b733a393a22706f73742f76696577223b733a383a2264656661756c7473223b613a303a7b7d733a363a22737566666978223b4e3b733a343a2276657262223b4e3b733a343a226d6f6465223b4e3b733a31323a22656e636f6465506172616d73223b623a313b733a31353a22002a00706c616365686f6c64657273223b613a313a7b733a393a22613938396439623632223b733a343a22736c7567223b7d733a32363a22007969695c7765625c55726c52756c65005f74656d706c617465223b733a383a222f3c736c75673e2f223b733a32373a22007969695c7765625c55726c52756c65005f726f75746552756c65223b4e3b733a32383a22007969695c7765625c55726c52756c65005f706172616d52756c6573223b613a313a7b733a343a22736c7567223b733a303a22223b7d733a32393a22007969695c7765625c55726c52756c65005f726f757465506172616d73223b613a303a7b7d7d7d693a313b733a33323a223330336263363665306236313061636335356665616531353934303665303730223b7d693a313b4e3b7d),
('f90ab1de9bef54e4a8c4bd9bde61f092', 0, 0x613a323a7b693a303b733a32313a22302e30343735353730302031343736343138373833223b693a313b4e3b7d);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `content` text,
  `status` int(1) DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `parent`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, ' Vì vậy để học tốt môn lập trình web PHP thì sau khi có cơ bản, các bạn hãy nghi ngay đến một framework nào đó và hày tự mày mò cách sử dụng nó, các bạn sẽ có kinh nghieej từ chính nhưng framework này ', 1, 1, 1476116514, 1476116514),
(2, 4, NULL, 'Khi chúng ta làm việc với nhiều framework khác nhau, cộng với thời gian làm việc =. chúng ta sẽ có kinh nghieeeemk từ các framework này, chúng ta hiểu sâu về mô hình, cách viết, cách sắp xếp thư mục…cuối cùng chúng ta có thể tự nghiên cứa ra các framework của chính mình', 1, 1, 1476116529, 1476116529),
(3, 4, NULL, 'Nhiều bạn thắc mắc, chưa rõ framework là gì, tại sao phải sử dụng nó khi làm website, các bạn muốn ự mình code để cho hiểu nhiều hơn về ngôn ngữ PHP', 1, 1, 1476265252, 1476265252),
(4, 4, NULL, 'Tất cả các công ty tuyển dụng hiện nay đều sử dụng it nhất một framework để phục vụ khách hàng', 1, 1, 1476265262, 1476265262),
(5, 4, NULL, 'Khi chúng ta làm việc với nhiều framework khác nhau, cộng với thời gian làm việc =. chúng ta sẽ có kinh nghieeeemk từ các framework này, chúng ta hiểu sâu về mô hình, cách viết, cách sắp xếp thư mục…cuối cùng chúng ta có thể tự nghiên cứa ra các framework của chính mình\r\nTất cả các công ty tuyển dụng hiện nay đều sử dụng it nhất một framework để phục vụ khách hàng', 1, 1, 1476265291, 1476265291);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  `icon` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`, `icon`) VALUES
(1, 'Bảng điều khiển', NULL, '/site/index', 0, NULL, 'ace-icon fa fa-tachometer'),
(2, 'Bài viết', NULL, '/cms/default/index', 1, NULL, 'ace-icon glyphicon glyphicon-file'),
(3, 'Danh sách bài viết', 2, '/cms/post/index', 0, NULL, 'ace-icon glyphicon glyphicon-file'),
(4, 'Thêm mới bài viết', 2, '/cms/post/create', 1, NULL, 'ace-icon glyphicon glyphicon-plus'),
(5, 'Danh mục bài viết', 2, '/cms/category/index', 2, NULL, 'ace-icon glyphicon glyphicon-align-justify'),
(6, 'Quản lý ảnh', NULL, '/media/default/index', 2, NULL, 'ace-icon glyphicon glyphicon-picture'),
(7, 'Quản lý menu', NULL, '/account/menu/index', 100, NULL, 'ace-icon glyphicon glyphicon-th'),
(8, 'Quản lý người dùng', NULL, '/account/user/index', 3, NULL, 'ace-icon fa fa-users'),
(9, 'Tìa khoản', 8, '/account/user/index', 0, NULL, 'ace-icon fa fa-users'),
(10, 'Quyền', 8, '/account/permission/index', 1, NULL, ''),
(11, 'Nhóm Quyền', 8, '/account/role/index', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1476000980),
('m130524_201442_init', 1476000983),
('m140506_102106_rbac_init', 1476001064),
('m140602_111327_create_menu_table', 1476003198),
('m160621_042029_create_term', 1476001368),
('m160621_043923_create_post', 1476003227),
('m160722_082444_create_term_relation', 1476003227),
('m161010_143417_create_comment', 1476110326),
('m161011_075601_creat_cache', 1476172867);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `youtubeVideoId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `status` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `slug`, `desc`, `content`, `image`, `youtubeVideoId`, `type`, `meta_title`, `meta_desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Học Html bài 1 – cơ bản về html', 'hoc-html-bai-1-co-ban-ve-html', '<p>Việc học html hiện nay kh&ocirc;ng phải l&agrave; qu&aacute; kh&oacute; cho c&aacute;c bạn biết chịu kh&oacute; t&igrave;m t&ograve;i t&agrave;i liệu tr&ecirc;n mạng, tuy nhi&ecirc;n c&aacute;c bạn thường kh&ocirc;ng biết bắt đ&agrave;u từ đau v&agrave; học những g&igrave;</p>', '<div class="b-bottom">\r\n<p>Việc học html hiện nay kh&ocirc;ng phải l&agrave; qu&aacute; kh&oacute; cho c&aacute;c bạn biết chịu kh&oacute; t&igrave;m t&ograve;i t&agrave;i liệu tr&ecirc;n mạng, tuy nhi&ecirc;n c&aacute;c bạn thường kh&ocirc;ng biết bắt đ&agrave;u từ đau v&agrave; học những g&igrave;</p>\r\n<p>Video n&agrave;y t&ocirc;i sẽ hưỡng dẫn c&aacute;c bạn chỉ cần nhớ mấy vấn đề cơ bản như sau</p>\r\n<p>Cấu tr&uacute;c của t&agrave;i liệu Html</p>\r\n<p>Cấu tr&uacute;c html5</p>\r\n<p>Mốt ố thể cơ bản l&agrave;m vốn th&ocirc;i, kh&ocirc;ng cần học hết vừa m&aacute;t thời gian, lại kh&ocirc;ng thể nhớ hết, sau n&agrave;y l&agrave;m nheeiuf tự nhi&ecirc;n vốn kiến thức sẽ bổ t&uacute;c sau</p>\r\n</div>', 'http://localhost/itvnsoft/uploads/images/html-css.jpg', 'trnBJAx6h-s', 'post', '', '', 0x31, 1476014100, 1476090609),
(2, 'Học Html bài 2 – cơ bản về css', 'hoc-html-bai-2-co-ban-ve-css', '<p>Việc học css hiện nay kh&ocirc;ng phải l&agrave; qu&aacute; kh&oacute; cho c&aacute;c bạn biết chịu kh&oacute; t&igrave;m t&ograve;i t&agrave;i liệu tr&ecirc;n mạng, tuy nhi&ecirc;n c&aacute;c bạn thường kh&ocirc;ng biết bắt đ&agrave;u từ đau v&agrave; học những g&igrave;</p>', '<div class="b-bottom">\r\n<div class="b-bottom">\r\n<p>Việc học css hiện nay kh&ocirc;ng phải l&agrave; qu&aacute; kh&oacute; cho c&aacute;c bạn biết chịu kh&oacute; t&igrave;m t&ograve;i t&agrave;i liệu tr&ecirc;n mạng, tuy nhi&ecirc;n c&aacute;c bạn thường kh&ocirc;ng biết bắt đ&agrave;u từ đau v&agrave; học những g&igrave;</p>\r\n<p>Video n&agrave;y t&ocirc;i sẽ hưỡng dẫn c&aacute;c bạn chỉ cần nhớ mấy vấn đề cơ bản như sau</p>\r\n<p>Cấu tr&uacute;c của t&agrave;i liệu Css</p>\r\n<p>c&acirc;u lệnh cơ bản nhất css, Css3</p>\r\n<p>C&aacute;c bạn chỉ cần nắm vững một số module sau</p>\r\n<p><strong>module color</strong>&ndash; chuy&ecirc;n style về m&agrave;u sắc cho nội dung text</p>\r\n<p><strong>module: backgound</strong> &ndash; chuy&ecirc;n style về m&agrave;u nền cho đ&oacute;i tượng</p>\r\n<p><strong>Module: width</strong> &ndash; quy định chiều rộng của đối tượng</p>\r\n<p><strong>module: height</strong> &ndash; quy định chiều cao của đối tượng</p>\r\n<p><strong>module float</strong> &ndash; quy định vị tr&iacute; hiển thị của đ&oacute;i tượng</p>\r\n<p><strong>module display</strong> &ndash; quy&nbsp; định c&aacute;ch hiển thị của đối tượng</p>\r\n</div>\r\n</div>', 'http://localhost/itvnsoft/uploads/images/html-css.jpg', 'GU30J0tOGZQ', 'post', '', '', 0x31, 1476090032, 1476090619),
(3, 'Học Html bài 3 – bố cục layout cơ bản', 'hoc-html-bai-3-bo-cuc-layout-co-ban', '<p>Kết hợp b&agrave;i 1 v&agrave; b&agrave;i 2 để c&oacute; thể dựng một layout cơ bản</p>\r\n<p>C&aacute;c bạn chỉ cần nắm vững c&aacute;c vấn đề sau</p>', '<div class="b-bottom">\r\n<p>Kết hợp b&agrave;i 1 v&agrave; b&agrave;i 2 để c&oacute; thể dựng một layout cơ bản</p>\r\n<p>C&aacute;c bạn chỉ cần nắm vững c&aacute;c vấn đề sau</p>\r\n<p>Bố cục layout ( bố cục giao diện website ) lu&ocirc;n lu&ocirc;n bao gồm 2 phần</p>\r\n<p>1 l&agrave; cấu tr&uacute;c html</p>\r\n<p>2 l&agrave; style css</p>\r\n<p>C&aacute; bạn nắm vững c&aacute;c thẻ html cơ bản, v&agrave; c&aacute;c module css cần thiết</p>\r\n<p>Kết hợ với ch&aacute;ch sử dụng scc để style cho c&aacute;c thẻ trong html =&gt; layout</p>\r\n</div>', 'http://localhost/itvnsoft/uploads/images/html-css.jpg', 'son4JTKm3xE', 'post', '', '', 0x31, 1476090171, 1476090626),
(4, 'Tại sao chúng ta nên sử dụng framework để tạo website', 'tai-sao-chung-ta-nen-su-dung-framework-de-tao-website', '<p>Nhiều bạn thắc mắc, chưa r&otilde; framework l&agrave; g&igrave;, tại sao phải sử dụng n&oacute; khi l&agrave;m website, c&aacute;c bạn muốn ự m&igrave;nh code để cho hiểu nhiều hơn về ng&ocirc;n ngữ PHP</p>', '<div class="b-bottom">\r\n<p>Nhiều bạn thắc mắc, chưa r&otilde; framework l&agrave; g&igrave;, tại sao phải sử dụng n&oacute; khi l&agrave;m website, c&aacute;c bạn muốn ự m&igrave;nh code để cho hiểu nhiều hơn về ng&ocirc;n ngữ PHP</p>\r\n<p>Theo kinh nghiệm của t&ocirc;i để học m&ocirc;n ng&ocirc;n ngũ n&agrave;o đ&oacute; thật tốt ngo&agrave;i việc chăm chỉ y&ecirc;u th&iacute;ch n&oacute; th&igrave; điều quan trọng l&agrave; phải biết c&aacute;ch suy luận logic tư duy t&ocirc;t mới được</p>\r\n<p>Trong buổi đầu học v&agrave; l&agrave;m quen ng&ocirc;n ngữ lập tr&igrave;nh n&agrave;o đ&oacute; c&aacute;c bạn thường c&oacute; suy nghĩ tự l&agrave;m để hiểu hơn về n&oacute;</p>\r\n<p>Điều đ&oacute; l&agrave; ho&agrave;n to&agrave;n đ&uacute;ng nhưng chưa đủ để c&aacute;c bạn dạt tới cảnh giới tư duy cao như những code chuy&ecirc;n nghiệp c&oacute;</p>\r\n<p>Điều c&aacute;c bạn n&ecirc;n l&agrave;m tiếp theo sau khi c&oacute; kiến thức cơ bản l&agrave; h&agrave;y t&igrave;m hiểu xem c&aacute;c framework nổ tiếng người ta tư duy như thế n&agrave;o, ch&iacute;nh điều n&agrave;y l&agrave; nơi m&agrave; c&aacute;c bạn học được tư duy của c&aacute;c chuy&ecirc;n gia</p>\r\n<p><strong>C&aacute;c framework n&agrave;y c&oacute; đặc điểm chung</strong></p>\r\n<ol>\r\n<li>Ph&acirc;n chia code theo m&ocirc; h&igrave;nh MVC n&ecirc;n việc quản l&yacute; v&agrave; n&acirc;ng cấp sẽ dễ d&agrave;ng hơn, trong qu&aacute; tr&igrave;nh viết code kh&ocirc;ng bị lẫn lộn giữa c&aacute;c file chức năng v&agrave; file hiển thị</li>\r\n<li>Tương t&aacute;c database tốt, bảo mật hơn</li>\r\n<li>Cộng đồng hỗ trợ nhiều, phất triển v&agrave; v&aacute; lỗi li&ecirc;n tục theo c&aacute;c phi&ecirc;n bản PHP</li>\r\n<li>Tốc độ website v&agrave; t&iacute;nh ổn định , chắc chắn hơn</li>\r\n<li>Quan trọng l&agrave; ch&uacute;ng ta sẽ đỡ mất thời gian x&acirc;y dựng bộ core rắc rối m&agrave; c&oacute; khi học cả đời cũng chưa m&ograve; ra =&gt; giảm thời gian l&agrave;m việc</li>\r\n<li>Khi ch&uacute;ng ta l&agrave;m việc với nhiều framework kh&aacute;c nhau, cộng với thời gian l&agrave;m việc =. ch&uacute;ng ta sẽ c&oacute; kinh nghieeeemk từ c&aacute;c framework n&agrave;y, ch&uacute;ng ta hiểu s&acirc;u về m&ocirc; h&igrave;nh, c&aacute;ch viết, c&aacute;ch sắp xếp thư mục&hellip;cuối c&ugrave;ng ch&uacute;ng ta c&oacute; thể tự nghi&ecirc;n cứa ra c&aacute;c framework của ch&iacute;nh m&igrave;nh</li>\r\n<li>Tất cả c&aacute;c c&ocirc;ng ty tuyển dụng hiện nay đều sử dụng it nhất một framework để phục vụ kh&aacute;ch h&agrave;ng</li>\r\n</ol>\r\n<p>Quay lại vấn đề, nếu ch&uacute;ng ta cả đời cứ theo suy nghĩ tự code của ri&ecirc;ng m&igrave;nh =&gt; Chỉ c&oacute; kinh nghiệm xoay quanh vấn đề nhỏ sẽ kh&ocirc;ng tiếp x&uacute;c được c&aacute;c tư duy ti&ecirc;n tiến của cộng đồng mạng thế giới</p>\r\n<p>V&igrave; vậy để học tốt m&ocirc;n lập tr&igrave;nh web PHP th&igrave; sau khi c&oacute; cơ bản, c&aacute;c bạn h&atilde;y nghi ngay đến một framework n&agrave;o đ&oacute; v&agrave; h&agrave;y tự m&agrave;y m&ograve; c&aacute;ch sử dụng n&oacute;, c&aacute;c bạn sẽ c&oacute; kinh nghieej từ ch&iacute;nh nhưng framework n&agrave;y</p>\r\n<p>Mong răng c&aacute;c bạn sữ hiểu v&agrave; nắm bắt thời cơ tốt cho c&ocirc;ng việc</p>\r\n<p>Hiện tại PHP c&oacute; rất nhiều framework viết theo m&ocirc; h&igrave;nh MVC như:</p>\r\n<p><strong>Yii 2 frameowrk, Laravel, Cacke PHP, Codeigniter, Parado, Zend Framewok&hellip;</strong></p>\r\n<p>Ch&uacute;c c&aacute;c bạn học tập, nghi&ecirc;n cứa v&agrave; l&agrave;m việc th&agrave;nh c&ocirc;ng</p>\r\n</div>', 'http://localhost/itvnsoft/uploads/images/web2.jpg', '', 'post', '', '', 0x31, 1476090767, 1476090843),
(5, 'Hàm tự định nghìa trong PHP', 'ham-tu-dinh-nghia-trong-php', '<p>Sử dụng h&agrave;m trong PHP l&agrave; một c&aacute;ch để tăng t&iacute;nh tương t&aacute;c code , chương tr&igrave;nh tốt hơn, c&oacute; khả năng t&aacute;i sử dụng code, v&agrave; giảm thời gian code rất nhiều</p>', '<h2>H&agrave;m trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Trong php c&oacute; 2 loại h&agrave;m:</p>\r\n<p>h&agrave;m c&oacute; sẵn do PHP cung cấp ch&uacute;ng ta chỉ việc học cấu tr&uacute;c v&agrave; sử dụng</p>\r\n<p>H&agrave;m do người d&ugrave;ng tự định nghĩa l&agrave; c&aacute;c h&agrave;m do ch&uacute;ng ta tự khai b&aacute;o rất linh động v&agrave; theo mục d&iacute;ch ri&ecirc;ng của ch&uacute;ng ta</p>\r\n<ul type="1">\r\n<li><a href="http://itvnsoft.com/ham-tu-dinh-nghia-trong-php/#tu-dinh-nghia">H&agrave;m tự định nghĩa </a></li>\r\n<li><a href="http://itvnsoft.com/ham-tu-dinh-nghia-trong-php/#co-san">H&agrave;m c&oacute; sắn </a></li>\r\n</ul>\r\n<div id="tu-dinh-nghia">\r\n<p>&nbsp;</p>\r\n<h3>H&agrave;m tự định nghĩa kh&ocirc;ng c&oacute; tham s&oacute;</h3>\r\n<p>&nbsp;</p>\r\n<p>C&uacute; ph&aacute;p: bắt đầu bằng <kbd>function</kbd> <kbd>ten_ham</kbd> dấu ngoặc tr&ograve;n <kbd>()</kbd> v&agrave; dấu ngoặc nhọn<kbd>{}</kbd></p>\r\n<p>Quy tắc đặt t&ecirc;n h&agrave;m cũng giống như quy tắc đặt t&ecirc;n biến</p>\r\n<p>&nbsp;</p>\r\n<p>Nọi dung của h&agrave;m sẽ đặt trong dấu ngoặc nhọn <kbd>{}</kbd></p>\r\n<p>&nbsp;</p>\r\n<p>C&aacute;c comment ch&uacute; th&iacute;ch trong h&agrave;m cũng tu&acirc;n thủ quy tắc chung của PHP</p>\r\n<p><strong>V&iacute; dụ:</strong></p>\r\n<p>&nbsp;</p>\r\n<pre>function ten_ham(){\r\n\r\n	echo "ph&agrave;n th&acirc;n h&agrave;m";\r\n}\r\n\r\n</pre>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h3>Gọi lại h&agrave;m vừa định nghĩa</h3>\r\n<p>&nbsp;</p>\r\n<p><strong>V&iacute; dụ:</strong></p>\r\n<pre>ten_ham();\r\n</pre>\r\n<p><strong>Kết Quả:</strong></p>\r\n<p>d&ograve;ng chữ <kbd>ph&agrave;n th&acirc;n h&agrave;m</kbd> trong th&acirc;n h&agrave;m hiển thị tr&ecirc;n tr&igrave;nh duyệt</p>\r\n<p>&nbsp;</p>\r\n<h3>H&agrave;m tự định nghĩa c&oacute; tham s&oacute;</h3>\r\n<p>&nbsp;</p>\r\n<p>L&agrave; h&agrave;m m&agrave; khi gọi h&agrave;m cần truyền một tham số trong dấu ngoặc tr&ograve;n <kbd>ham_co_tham_so(''tham số'')</kbd></p>\r\n<p>Mỗi một h&agrave;m c&oacute; thể c&oacute; nhiều tham số</p>\r\n<p>C&oacute; nhưng tham số được g&aacute;n gi&aacute; trị mạc định</p>\r\n<p>Tham số truyền v&agrave;o c&oacute; thể l&agrave; một trong c&aacute;c kiểu dữ liệu của PHP</p>\r\n<p><strong>V&iacute; dụ:</strong></p>\r\n<p>&nbsp;</p>\r\n<pre>function ham_mot_tham_so($tham_so){\r\n\r\n	echo $tham_so;\r\n}\r\n\r\nfunction ham_hai_tham_so($tham_so1, $tham_so_2){\r\n\r\n	echo $tham_so.''<br />'';\r\n}\r\n\r\n</pre>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h3>Gọi lại h&agrave;m c&oacute; tham số vừa định nghĩa</h3>\r\n<p>&nbsp;</p>\r\n<p><strong>V&iacute; dụ:</strong></p>\r\n<pre>ham_mot_tham_so(''Ch&agrave;o mừng đến với ng&ocirc;n ngữ lập tr&igrave;nh PHP'');\r\n</pre>\r\n<p><strong>Kết Quả:</strong></p>\r\n<p>d&ograve;ng chữ <kbd>Ch&agrave;o mừng đến với ng&ocirc;n ngữ lập tr&igrave;nh PHP</kbd> trong th&acirc;n h&agrave;m hiển thị tr&ecirc;n tr&igrave;nh duyệt</p>\r\n<p>&nbsp;</p>\r\n<h3>H&agrave;m c&oacute; tham số mạc định</h3>\r\n<p>&nbsp;</p>\r\n<p>L&agrave; h&agrave;m m&agrave; khi khai b&aacute;o tham số đ&atilde; g&aacute;n gi&aacute; trị mạc định cho n&oacute;</p>\r\n<p>Khi gọi h&agrave;m th&igrave; c&aacute;c tham số mạc định nếu kh&ocirc;ng được truyền tham số sẽ tự động lấy gi&aacute; trị mạc định</p>\r\n<p>Nếu kh&ocirc;ng muốn truyền tham số cho c&aacute;c tham số mạc định th&igrave; c&oacute; thể để rỗng <kbd> '''' </kbd></p>\r\n<p><strong>V&iacute; dụ:</strong></p>\r\n<pre>function so_sanh($a,$b=75,$c){\r\n	if ($a &gt; $b &amp;&amp; $a &gt; $c) {\r\n		echo ''So lon nhat la ''.$a;\r\n	}elseif($b &gt; $a &amp;&amp; $b &gt; $c){\r\n		echo ''So lon nhat la ''.$b;\r\n	}else{\r\n		echo ''So lon nhat la ''.$c;\r\n	}\r\n}\r\n</pre>\r\n<p><strong>Gọi h&agrave;m kh&ocirc;ng cần truyền tham s&oacute; đ&atilde; g&aacute;n mạc định:</strong></p>\r\n<p>C&uacute; ph&aacute;p <kbd>so_sanh(50,'''',15);</kbd></p>\r\n<p><strong>Kết Quả:</strong></p>\r\n<p>M&agrave;n h&igrave;nh xuất hiện <kbd>So lon nhat la 70</kbd>mạc d&ugrave; kh&ocirc;ng cần truyền <kbd>số 70</kbd></p>\r\n<p><strong>Gọi h&agrave;m c&oacute; truyền tham s&oacute; đ&atilde; g&aacute;n mạc định:</strong></p>\r\n<p>khi đ&oacute; tham s&oacute; sẽ được &aacute;p dụng l&agrave; tham số mới truyền v&agrave;o</p>\r\n<pre>so_sanh(50,30,15);	\r\n</pre>\r\n<p><strong>Kết Quả:</strong></p>\r\n<p>M&agrave;n h&igrave;nh xuất hiện <kbd>So lon nhat la 50</kbd> mặc d&ugrave; tham số mạc định l&agrave;<kbd>số 70</kbd> nhưng khi gọi h&agrave;m đ&atilde; truyền v&aacute;o <kbd>số 30</kbd> n&ecirc;n sẽ &aacute;p dụng tham s&oacute; mới<kbd>số 30</kbd></p>\r\n<p>&nbsp;</p>\r\n<h3>Khai b&aacute;o h&agrave;m c&oacute; tham số truyền v&agrave;o l&agrave; một mảng:</h3>\r\n<p>&nbsp;</p>\r\n<pre>function getArray($args = array()){\r\n	# kiểm tra tham s&oacute; truyền v&agrave;o c&oacute; phải l&agrave; mảng hay kh&ocirc;ng\r\n	# neus tham số truyền v&agrave;o l&agrave; mảng th&igrave; sẽ duyệt mảng v&agrave; in ra m&agrave;n h&igrave;nh\r\n	if (is_array($args)) {\r\n		foreach ($args as $key =&gt; $value) {\r\n			echo ''</pre>\r\n<p>''.$key.'': ''.$value.''</p>\r\n<p>''; } } # nếu tham số truyền v&agrave;o kh&ocirc;ng phải l&agrave; một mảng th&igrave; in ra th&ocirc;ng b&aacute;o lỗi else{ echo ''</p>\r\n<p>Tham so truyen vao khong phai la mot mang array()</p>\r\n<pre>'';\r\n	}\r\n\r\n}\r\n</pre>\r\n<p><strong>Gọi h&agrave;m :</strong></p>\r\n<p><strong>Nếu như gọi h&agrave;m m&agrave; tham số truyền v&agrave;o kh&ocirc;ng phải l&agrave; mảng</strong></p>\r\n<pre>getArray(''sdsd'');\r\n</pre>\r\n<p><strong>Kết Quả:</strong></p>\r\n<p>Th&ocirc;ng b&aacute;o <kbd>Tham so truyen vao khong phai la mot mang array()</kbd></p>\r\n<p><strong>Nếu như gọi h&agrave;m m&agrave; tham số truyền v&agrave;o l&agrave; mảng</strong></p>\r\n<pre>getArray(array(''luongit'',''itvnsoft.com'',''luongitvnsoft@gmail.com'',''0986421127''));\r\n</pre>\r\n<p><strong>Kết Quả:</strong></p>\r\n<pre>0: luongit\r\n1: itvnsoft.com\r\n2: luongitvnsoft@gmail.com\r\n3: 0986421127\r\n</pre>\r\n<p><strong>Hoặc:</strong></p>\r\n<pre>getArray(array(''name''=&gt;''luongit'',''website''=&gt;''itvnsoft.com'',''email''=&gt;''luongitvnsoft@gmail.com'',''phone''=&gt;''0986421127''));\r\n</pre>\r\n<p><strong>Kết Quả:</strong></p>\r\n<pre>name: luongit\r\nwebsite: itvnsoft.com\r\nemail: luongitvnsoft@gmail.com\r\nphone: 0986421127\r\n</pre>\r\n</div>', 'http://localhost/itvnsoft/uploads/images/ngon-ngu-lap-trinh2.jpg', '', 'post', '', '', 0x31, 1476091063, NULL),
(6, '8 Regular Expressions bạn đã biết chưa', '8-regular-expressions-ban-da-biet-chua', '<p>Regular expressions l&agrave; c&aacute;ch thức so s&aacute;nh c&aacute;c dữ liệu đầu v&agrave;o theo một quy tắc do ch&uacute;ng ta định nghĩa. H&ocirc;m nay t&ocirc;i sẽ giới thiệu t&aacute;m biểu thức th&ocirc;ng dụng m&agrave; bạn n&ecirc;n biết cho dự &aacute;n của bạn.</p>', '<p>Regular expressions l&agrave; c&aacute;ch thức so s&aacute;nh c&aacute;c dữ liệu đầu v&agrave;o theo một quy tắc do ch&uacute;ng ta định nghĩa. H&ocirc;m nay t&ocirc;i sẽ giới thiệu t&aacute;m biểu thức th&ocirc;ng dụng m&agrave; bạn n&ecirc;n biết cho dự &aacute;n của bạn.</p>\r\n<p>Bạn c&oacute; thể tr&iacute;ch xuất c&aacute;c email, proxy, số điện thoại, địa chỉ, thẻ HTML, URL, li&ecirc;n kết, ng&agrave;y th&aacute;ng, vv Chỉ cần ch&egrave;n một hoặc nhiều biểu thức</p>\r\n<p>Tất cả trong một c&uacute; ph&aacute;p PHP. C&oacute; thể l&agrave; c&uacute; ph&aacute;p đơn giản hoặc phức tạp t&ugrave;y v&agrave;o mục đ&iacute;ch của c&aacute;c bạn</p>\r\n<p><strong>1. Matching a Username</strong>:</p>\r\n<p><strong>Pattern</strong>:</p>\r\n<pre> 	/^[a-z0-9_-]{3,16}$/\r\n </pre>\r\n<p><strong>M&ocirc; tả như sau:</strong>:</p>\r\n<p>Ch&uacute;ng ta bắt đầu bằng c&aacute;ch ph&acirc;n t&iacute;ch c&uacute; ph&aacute;p bắt đầu của chuỗi l&agrave; <kbd>(^)</kbd>, tiếp theo l&agrave; bất kỳ chữ c&aacute;i thường <kbd>(a-z)</kbd>, số <kbd>(0-9)</kbd>, <kbd>một gạch dưới</kbd>, hay một <kbd>dấu gạch ngang</kbd>. Tiếp theo, <kbd>{3,16}</kbd> &iacute;t nhất 3, nhưng kh&ocirc;ng qu&aacute; 16. Cuối c&ugrave;ng, ch&uacute;ng ta muốn kết th&uacute;c chuỗi ($).</p>\r\n<p>Kết quả chuỗi nhập v&agrave;o ph&ugrave; hợp l&agrave; <kbd>my-us3r_n4m3</kbd> v&agrave; chuỗi kh&ocirc;ng ph&ugrave; hợp c&oacute; dạng <kbd>th1s1s-wayt00_l0ngt0beausername (too long)</kbd></p>\r\n<p><strong> 2. Matching a Password</strong></p>\r\n<p><strong>Pattern</strong>:</p>\r\n<pre>	/^[a-z0-9_-]{6,18}$/\r\n</pre>\r\n<p><strong>M&ocirc; tả như sau:</strong></p>\r\n<p>Giống như c&uacute; ph&aacute;p kiểm tra người d&ugrave;ng th&igrave; chỉ kh&aacute;c một ch&uacute;t lsf số k&yacute; tự nhập v&agrave;o l&agrave; khoagr ({6,18}).</p>\r\n<p><strong> 3. Matching a Hex Value</strong></p>\r\n<pre>	/^#?([a-f0-9]{6}|[a-f0-9]{3})$/\r\n</pre>\r\n<p><strong>M&ocirc; tả như sau</strong></p>\r\n<p>Ch&uacute;ng ta khởi đầu của chuỗi l&agrave; (^). Tiếp theo l&agrave; dấu # n&oacute; được theo sau l&agrave; một dấu hỏi. Dấu hỏi cho biết rằng sau dấu # l&agrave; c&aacute;c k&yacute; tự tiếp theo &ndash; trong trường hợp n&agrave;y l&agrave; một dấu hiệu số &ndash; l&agrave; t&ugrave;y chọn, nhưng để được &ldquo;tham lam&rdquo; v&agrave; nắm bắt n&oacute; khi n&oacute; ở đ&oacute;. Tiếp theo, b&ecirc;n trong nh&oacute;m đầu ti&ecirc;n (nh&oacute;m đầu ti&ecirc;n của dấu ngoặc đơn), ch&uacute;ng ta c&oacute; thể c&oacute; hai t&igrave;nh huống kh&aacute;c nhau. Việc đầu ti&ecirc;n l&agrave; bất kỳ chữ c&aacute;i thường giữa a v&agrave; f 0 v&agrave; 9 v&agrave; c&oacute; 6 k&yacute; tự. Hoặc nh&oacute;m thứ 2 l&agrave; c&oacute; thể c&oacute; a-f 0-9 v&agrave; c&oacute; 3 k&yacute; tự. Cuối c&ugrave;ng, ch&uacute;ng ta muốn kết th&uacute;c chuỗi ($).</p>\r\n<p>L&yacute; do m&agrave; t&ocirc;i đặt 6 k&yacute; tự ở trước khi l&agrave; ph&acirc;n t&iacute;ch c&uacute; ph&aacute;p sẽ được một gi&aacute; trị hex như <kbd>#FFFFFF</kbd>. Nếu t&ocirc;i đảo ngược n&oacute; để ba k&yacute; tự trước, ph&acirc;n t&iacute;ch c&uacute; ph&aacute;p sẽ chỉ nhận <kbd>#fff</kbd> v&agrave; sẽ kh&ocirc;ng ph&ugrave; hợp trong trường hợp ch&uacute;ng ta cần c&oacute; 6 k&yacute; tự cho m&atilde; hax</p>\r\n<p><strong> 4. Matching a Slug</strong></p>\r\n<p><strong>Pattern</strong>:</p>\r\n<pre>	/^[a-z0-9-]+$/\r\n</pre>\r\n<p><strong>M&ocirc; tả như sau:</strong></p>\r\n<p>Bạn sẽ sử dụng regex n&agrave;y nếu bạn đ&atilde; phải l&agrave;m việc với <kbd>mod_rewrite của URL</kbd>. Ch&uacute;ng ta bắt đầu bằng c&aacute;ch n&oacute;i với c&aacute;c Regular bắt đầu của chuỗi l&agrave; <kbd>(^)</kbd>, theo sau l&agrave; một hoặc nhiều (dấu cộng) chữ c&aacute;i, số, hoặc dấu gạch nối. Cuối c&ugrave;ng, ch&uacute;ng ta muốn kết th&uacute;c chuỗi ($).</p>\r\n<p><strong> 5. Matching an Email</strong></p>\r\n<p><strong>Pattern</strong></p>\r\n<pre>	/^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$/\r\n</pre>\r\n<p><strong>M&ocirc; tả như sau:</strong></p>\r\n<p>Ch&uacute;ng ta bắt đầu bằng c&aacute;ch n&oacute;i với c&aacute;c Regular bắt đầu của chuỗi l&agrave; <kbd>(^)</kbd>. B&ecirc;n trong nh&oacute;m đầu ti&ecirc;n l&agrave; một hoặc nhiều chữ thường, số, gạch dưới, dấu chấm, hoặc dấu gạch nối. Ngay sau đ&oacute;, c&oacute; phải l&agrave; một dấu <kbd>@</kbd>. Tiếp theo l&agrave; t&ecirc;n miền cần phải c&oacute;: một hoặc nhiều chữ thường, số, gạch dưới, dấu chấm, hoặc dấu gạch nối. Sau đ&oacute;, một dấu chấm, với phần mở rộng l&agrave; 2-6 k&yacute; tự hoặc dấu chấm. Ta c&oacute; 2-6 v&igrave; TLD cụ thể của quốc gia (.ny.us hoặc .com). Cuối c&ugrave;ng, ch&uacute;ng ta muốn kết th&uacute;c chuỗi ($).</p>\r\n<p>Kết quả c&uacute; ph&aacute;p đ&uacute;ng l&agrave; <kbd> luongitvnsoft@gmail.com </kbd></p>\r\n<p><strong> 6. Matching a URL</strong></p>\r\n<p><strong>Pattrn:</strong></p>\r\n<pre>	/^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$/\r\n</pre>\r\n<p><strong>M&ocirc; tả như sau: </strong></p>\r\n<p>C&aacute;c nh&oacute;m đầu ti&ecirc;n l&agrave; tất cả c&aacute;c t&ugrave;y chọn. N&oacute; cho ph&eacute;p c&aacute;c URL bắt đầu với &ldquo;http: //&rdquo;, &ldquo;https: //&rdquo;. Ta c&oacute; một dấu hỏi sau khi s để cho ph&eacute;p địa chỉ web m&agrave; c&oacute; http hoặc https</p>\r\n<p>Tiếp theo l&agrave; t&ecirc;n miền: một hoặc nhiều số, chữ c&aacute;i, dấu chấm, hoặc hypens tiếp theo l&agrave; một dấu chấm sau đ&oacute; 2-6 chữ hoặc dấu chấm.</p>\r\n<p>Phần sau l&agrave; c&aacute;c tập tin t&ugrave;y chọn v&agrave; thư mục. B&ecirc;n trong nh&oacute;m, ch&uacute;ng ta muốn ph&ugrave; hợp với bất kỳ số lượng dấu gạch ch&eacute;o, chữ c&aacute;i, số, gạch dưới, khoảng c&aacute;ch, dấu chấm, hoặc dấu gạch nối.</p>\r\n<p>Sau đ&oacute;, ch&uacute;ng ta n&oacute;i rằng nh&oacute;m n&agrave;y c&oacute; thể được xuất hiện nhiều lần như ch&uacute;ng ta muốn. Kh&aacute; nhiều điều n&agrave;y cho ph&eacute;p nhiều thư mục để được xuất hiện c&ugrave;ng với một tập tin ở cuối.</p>\r\n<p>T&ocirc;i đ&atilde; sử dụng <kbd>*</kbd> thay v&igrave; <kbd>?</kbd> v&igrave; <kbd>*</kbd> n&oacute;i kh&ocirc;ng hoặc nhiều hơn, kh&ocirc;ng phải kh&ocirc;ng hay một. Nếu một dấu hỏi đ&atilde; được sử dụng ở đ&oacute;, chỉ c&oacute; một tập tin / thư mục</p>\r\n<p>Sau đ&oacute;, một dấu gạch ch&eacute;o. Cuối c&ugrave;ng ch&uacute;ng ta kết th&uacute;c với sự kết th&uacute;c của d&ograve;ng.</p>\r\n<p>V&agrave; kết quả c&uacute; ph&aacute;p đ&uacute;ng l&agrave; <kbd>http://itvnsoft.com</kbd> c&uacute; ph&aacute;p sai l&agrave; <kbd> http://google.com/some/file!.html</kbd></p>\r\n<p><strong> 7. Matching an IP Address</strong></p>\r\n<p><strong>Pattern</strong></p>\r\n<pre>	/^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/\r\n</pre>\r\n<p>Kết quả c&uacute; ph&aacute;p đ&uacute;ng phải l&agrave; <kbd>3.60.124.136</kbd> v&agrave; c&uacute; ph&aacute;p kh&ocirc;ng ph&ugrave; hợ như <kbd>256.60.124.136</kbd></p>\r\n<p><strong> 8. Matching an HTML Tag:</strong></p>\r\n<p><strong>Pattern</strong></p>\r\n<pre>	/^&lt;([a-z]+)([^&lt;]+)*(?:&gt;(.*)&lt;\\/\\1&gt;|\\s+\\/&gt;)$/\r\n</pre>', 'http://localhost/itvnsoft/uploads/images/ngon-ngu-lap-trinh2.jpg', '', 'post', '', '', 0x31, 1476091141, NULL),
(7, 'Tìm hiểu về Cookie trong PHP', 'tim-hieu-ve-cookie-trong-php', '<p>Cookie thường được sử dụng để x&aacute;c định th&ocirc;ng tin của một người d&ugrave;ng. Cookie l&agrave; một file nhỏ m&agrave; c&aacute;c m&aacute;y chủ nh&uacute;ng tr&ecirc;n m&aacute;y t&iacute;nh của người d&ugrave;ng. Mỗi lần c&ugrave;ng một m&aacute;y t&iacute;nh y&ecirc;u cầu một trang với một tr&igrave;nh duyệt, n&oacute; sẽ gửi cookie. Với PHP, bạn c&oacute; thể tạo v&agrave; lấy gi&aacute; trị cookie.</p>', '<h2>Cookie trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Cookie thường được sử dụng để x&aacute;c định th&ocirc;ng tin của một người d&ugrave;ng. Cookie l&agrave; một file nhỏ m&agrave; c&aacute;c m&aacute;y chủ nh&uacute;ng tr&ecirc;n m&aacute;y t&iacute;nh của người d&ugrave;ng. Mỗi lần c&ugrave;ng một m&aacute;y t&iacute;nh y&ecirc;u cầu một trang với một tr&igrave;nh duyệt, n&oacute; sẽ gửi cookie. Với PHP, bạn c&oacute; thể tạo v&agrave; lấy gi&aacute; trị cookie.</p>\r\n<p>&nbsp;</p>\r\n<h2>Ứng dụng Cookie trong lập tr&igrave;nh web PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Cookie thường được sử dụng nhiều trong kỹ thuật tạo login form, khi đ&oacute; th&ocirc;ng ti t&agrave;i khoản người đăng nhập sẽ được lưu trư tr&ecirc;n mấy t&iacute;nh, lần sau gh&eacute; thăm website th&igrave; n&oacute; sẽ tự đăng nhập</p>\r\n<p>&nbsp;</p>\r\n<h2>Tạo Cookie trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>C&uacute; ph&aacute;p <kbd> setcookie(name, value, expire, path, domain, secure, httponly); </kbd></p>\r\n<p>Chỉ c&oacute; c&aacute;c tham số <kbd>name</kbd> l&agrave; bắt buộc. Tất cả c&aacute;c th&ocirc;ng số kh&aacute;c l&agrave; t&ugrave;y chọn.</p>\r\n<p>V&iacute; dụ sau tạo một cookie được đặt t&ecirc;n &ldquo;user&rdquo; với gi&aacute; trị &ldquo;itvnsoft.com&rdquo;. C&aacute;c cookie sẽ hết hiệu lực sau 30 ng&agrave;y (86.400 * 30). C&aacute;c &ldquo;/&rdquo; c&oacute; nghĩa l&agrave; cookie c&oacute; sẵn trong to&agrave;n bộ trang web (nếu kh&ocirc;ng, chọn thư mục m&agrave; bạn th&iacute;ch).</p>\r\n<p>Sau đ&oacute; lấy gi&aacute; trị của cookie &ldquo;user&rdquo; <kbd>(sử dụng biến $ _COOKIE to&agrave;n cầu)</kbd>. Ch&uacute;ng ta cũng sử dụng <kbd>isset ()</kbd> để kiểm tra xem c&aacute;c cookie được thiết lập hay chưa:</p>\r\n<p><strong>V&iacute; dụ:</strong></p>\r\n<p>&nbsp;</p>\r\n<pre>&lt;?php\r\n$cookie_name = "user";\r\n$cookie_value = "John Doe";\r\nsetcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day\r\n?&gt;\r\n\r\nlấy cookie\r\n\r\n&lt;?php\r\nif(!isset($_COOKIE[$cookie_name])) {\r\n    echo "Cookie named ''" . $cookie_name . "'' is not set!";\r\n} else {\r\n    echo "Cookie ''" . $cookie_name . "'' is set!<br />";\r\n    echo "Value is: " . $_COOKIE[$cookie_name];\r\n}\r\n?&gt;\r\n</pre>\r\n<p>&nbsp;</p>\r\n<p><strong>Ch&uacute; &yacute;: </strong><kbd>setcookie ()</kbd> phải đặt trước thẻ <kbd>&lt;html&gt;</kbd>.</p>\r\n<p>&nbsp;</p>\r\n<h2>Thay đổi gi&aacute; trị của Cookie trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Để sửa đổi gi&aacute; trị của một <kbd>cookie</kbd>, chỉ cần set lại gi&aacute; trị cho <kbd>cookie</kbd> bằng c&aacute;ch sử dụng <kbd>setcookie ()</kbd></p>\r\n<p>&nbsp;</p>\r\n<h2>X&oacute;a Cookie trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Để x&oacute;a một cookie, sử dụng <kbd>setcookie ()</kbd> với ng&agrave;y hết hạn:</p>\r\n<p><strong>V&iacute; dụ:</strong></p>\r\n<p>&nbsp;</p>\r\n<pre>&lt;?php\r\n// set the expiration date to one hour ago\r\nsetcookie("user", "", time() - 3600);\r\n?&gt;\r\n</pre>', 'http://localhost/itvnsoft/uploads/images/cookie-session-php.jpg', '', 'post', '', '', 0x31, 1476420017, NULL),
(8, 'Tìm hiểu Sessions trong PHP', 'tim-hieu-sessions-trong-php', '<p>M&aacute;y t&iacute;nh sẽ biết bạn l&agrave; ai. N&oacute; biết khi bạn khởi động ứng dụng v&agrave; khi bạn kết th&uacute;c. Nhưng tr&ecirc;n mạng Internet c&oacute; một vấn đề: c&aacute;c m&aacute;y chủ web kh&ocirc;ng biết bạn l&agrave; ai hay bạn l&agrave;m g&igrave;, bởi v&igrave; địa chỉ HTTP kh&ocirc;ng duy tr&igrave; trạng th&aacute;i.</p>', '<h2>Sessions trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Sessions l&agrave; một c&aacute;ch để lưu trữ th&ocirc;ng tin (biến) để được sử dụng tr&ecirc;n nhiều trang.</p>\r\n<p>Kh&ocirc;ng giống như một cookie, th&ocirc;ng tin Sessions kh&ocirc;ng được lưu trữ tr&ecirc;n m&aacute;y t&iacute;nh của người sử dụng. m&atilde; được lưu trữ theo một phi&ecirc;n l&agrave;m việc của tr&igrave;nh duyệt</p>\r\n<p>&nbsp;</p>\r\n<h2>Session l&agrave; g&igrave;</h2>\r\n<p>&nbsp;</p>\r\n<p>Khi bạn l&agrave;m việc với một ứng dụng, bạn mở n&oacute;, l&agrave;m một số thay đổi, v&agrave; sau đ&oacute; bạn đ&oacute;ng n&oacute;. Đ&acirc;y l&agrave; giống như một phi&ecirc;n.</p>\r\n<p>M&aacute;y t&iacute;nh sẽ biết bạn l&agrave; ai. N&oacute; biết khi bạn khởi động ứng dụng v&agrave; khi bạn kết th&uacute;c. Nhưng tr&ecirc;n mạng Internet c&oacute; một vấn đề: c&aacute;c m&aacute;y chủ web kh&ocirc;ng biết bạn l&agrave; ai hay bạn l&agrave;m g&igrave;, bởi v&igrave; địa chỉ HTTP kh&ocirc;ng duy tr&igrave; trạng th&aacute;i.</p>\r\n<p>biến Session giải quyết vấn đề n&agrave;y bằng c&aacute;ch lưu trữ th&ocirc;ng tin người d&ugrave;ng sẽ được sử dụng tr&ecirc;n nhiều trang (v&iacute; dụ t&ecirc;n, m&agrave;u sắc y&ecirc;u th&iacute;ch, vv). Theo mặc định, c&aacute;c biến phi&ecirc;n k&eacute;o d&agrave;i cho đến khi người d&ugrave;ng đ&oacute;ng tr&igrave;nh duyệt.</p>\r\n<p>V&igrave; thế; biến Session giữ th&ocirc;ng tin về người d&ugrave;ng, v&agrave; c&oacute; sẵn cho tất cả c&aacute;c trang trong một ứng dụng.</p>\r\n<p><strong>Mẹo:</strong> Nếu bạn cần một lưu trữ vĩnh viễn, bạn c&oacute; thể muốn để lưu trữ dữ liệu trong một cơ sở dữ liệu.</p>\r\n<p>&nbsp;</p>\r\n<h2>Ứng dụng Sessions trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Sessions thường được sử dụng trong kỹ thuật đăng nhập để lưu th&ocirc;ng tin người d&ugrave;ng qua một phi&ecirc;n l&agrave;m việc nhất định</p>\r\n<p>Sessions c&ograve;n được sử dụng trong c&aacute;c trang web b&aacute;n h&agrave;ng, để tạo giỏ h&agrave;ng khi kh&aacute;ch h&agrave;ng click v&agrave;o n&uacute;t th&ecirc;m v&agrave;o giỏ</p>\r\n<p>&nbsp;</p>\r\n<h2>Tạo Session trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Một <kbd>Session</kbd> được bắt đầu với <kbd>session_start ()</kbd>.</p>\r\n<p>Để tạo một Session c&uacute; ph&aacute;p <kbd>$_SESSION["favcolor"] = ''Gi&aacute; trị của n&oacute;''</kbd></p>\r\n<p><strong>V&iacute; dụ:</strong></p>\r\n<p>&nbsp;</p>\r\n<pre>&lt;?php\r\n// Start the session\r\nsession_start();\r\n?&gt;\r\n\r\n&lt;?php\r\n//Tạo gi&aacute; trị của session\r\n$_SESSION["favcolor"] = "green";\r\n$_SESSION["favanimal"] = "cat";\r\necho "Session variables are set.";\r\n?&gt;\r\n</pre>\r\n<p>&nbsp;</p>\r\n<p><strong>Lưu &yacute;: session_start () phải khai b&aacute;o đầu ti&ecirc;n trong t&agrave;i liệu của bạn. Trước khi bất kỳ thẻ HTML n&agrave;o được khai b&aacute;o.</strong></p>\r\n<p>&nbsp;</p>\r\n<h2>Lấy gi&aacute; trị của Session trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Một <kbd>Session</kbd> được bắt đầu với <kbd>session_start ()</kbd>.</p>\r\n<p>Để lấy gi&aacute; trị một Session c&uacute; ph&aacute;p <kbd>&lt;?php echo $_SESSION["favcolor"]; ?&gt;</kbd></p>\r\n<p><strong>V&iacute; dụ:</strong></p>\r\n<p>&nbsp;</p>\r\n<pre>&lt;?php\r\n// Start the session\r\nsession_start();\r\necho $_SESSION["id_sesion"];\r\n?&gt;\r\n</pre>\r\n<p>&nbsp;</p>\r\n<h2>Thay đổi gi&aacute; trị của Session trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Để thay đỏi gi&aacute; trị một Session c&uacute; ph&aacute;p <kbd>$_SESSION["favcolor"] = ''Gi&aacute; trị mới của n&oacute;''</kbd></p>\r\n<p>&nbsp;</p>\r\n<h2>Kiểm tra đang tồn tại bao nhi&ecirc;u Session</h2>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<pre>&lt;?php\r\nsession_start();\r\n\r\nprint_r($_SESSION);\r\n\r\n?&gt;\r\n</pre>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>X&oacute;a một Session trong PHP</h2>\r\n<p>&nbsp;</p>\r\n<p>Để loại bỏ tất cả c&aacute;c biến Session to&agrave;n cục v&agrave; x&oacute;a c&aacute;c Session , sử dụng s<kbd>ession_unset ()</kbd> v&agrave; <kbd>session_destroy ()</kbd>:</p>\r\n<p><strong>V&iacute; dụ</strong></p>\r\n<p>&nbsp;</p>\r\n<pre>&lt;?php\r\nsession_start();\r\n\r\n// remove all session variables\r\nsession_unset();\r\n\r\n// destroy the session\r\nsession_destroy();\r\n?&gt;\r\n</pre>', 'http://localhost/itvnsoft/uploads/images/cookie-session-php.jpg', '', 'post', '', '', 0x31, 1476420303, NULL),
(9, 'PHP hướng đối tượng phần 1', 'php-huong-doi-tuong-phan-1', '<div class="b-bottom">\r\n<p>Trong b&agrave;i đầu ti&ecirc;n n&agrave;y m&igrave;nh sẽ hướng dẫn cơ bản về đối tượng trong PHP,</p>\r\n<p>Sau khi c&aacute;c bạn học cơ bản về ng&ocirc;n ngữ PHP v&agrave; nắm chắc c&aacute;c phần co bản đ&oacute; th&igrave; vấn đ&egrave; tiếp theo n&ecirc;n hướng tới l&agrave; php hướng đ&oacute;i tượng</p>\r\n</div>', '<div class="b-bottom">\r\n<p>Trong b&agrave;i đầu ti&ecirc;n n&agrave;y m&igrave;nh sẽ hướng dẫn cơ bản về đối tượng trong PHP,</p>\r\n<p>Sau khi c&aacute;c bạn học cơ bản về ng&ocirc;n ngữ PHP v&agrave; nắm chắc c&aacute;c phần co bản đ&oacute; th&igrave; vấn đ&egrave; tiếp theo n&ecirc;n hướng tới l&agrave; php hướng đ&oacute;i tượng</p>\r\n<p>Bởi v&igrave; hướng đ&oacute;i tượng l&agrave; một phần kh&ocirc;ng thể thiếu trong lập tr&igrave;nh web hiện ddaaij n&oacute;i ri&ecirc;ng, v&agrave; c&aacute;c ng&ocirc;n ngữ l&acirc;p tr&igrave;nh n&oacute;i chung</p>\r\n<p>V&agrave; khi c&aacute;c bạn nắm vứng hướng đ&oacute;i tượng th&igrave; việc tiếp theo sẽ l&agrave; PHP MVC</p>\r\n</div>', 'http://localhost/itvnsoft/uploads/images/php-opp-logo.png', 'Z1P4xZqxksc', 'post', '', '', 0x31, 1476420727, NULL),
(10, 'Giới thiệu về wordpress', 'gioi-thieu-ve-wordpress', '<p>WordPress l&agrave; một hệ thống CML&agrave; một m&atilde; nguồn mở miễn ph&iacute; nhưng rất ổn định v&agrave; phổ biến nhất tr&ecirc;n thế giới. Hiện nay ở Việt Nam cũng như tr&ecirc;n to&agrave;n thế giới rất nhiều C&ocirc;ng ty, Doanh nghiệp v&agrave; c&aacute; nh&acirc;n đang sử dụng để ph&aacute;t triển website cho kh&aacute;ch h&agrave;ng của m&igrave;nh:S viết bằng ng&ocirc;n ngữ lập tr&igrave;nh PHP v&agrave; sử dụng MySQL database (cơ sở dữ liệu MySQL)</p>', '<p>WordPress l&agrave; một hệ thống CMS viết bằng ng&ocirc;n ngữ lập tr&igrave;nh PHP v&agrave; sử dụng MySQL database (cơ sở dữ liệu MySQL)<br />L&agrave; một m&atilde; nguồn mở miễn ph&iacute; nhưng rất ổn định v&agrave; phổ biến nhất tr&ecirc;n thế giới. Hiện nay ở Việt Nam cũng như tr&ecirc;n to&agrave;n thế giới rất nhiều C&ocirc;ng ty, Doanh nghiệp v&agrave; c&aacute; nh&acirc;n đang sử dụng để ph&aacute;t triển website cho kh&aacute;ch h&agrave;ng của m&igrave;nh:<br /><br />Thống k&ecirc; năm 2013 c&oacute; tới gần 20% trong top 1o triệu website sử dụng m&atilde; nguồn WordPress. V&agrave; hiện nay WordPress l&agrave; một CMS miễn ph&iacute;, dễ sử dụng v&agrave; quan trọng hơn n&oacute; dễ SEO với c&aacute;c website dạng Blog hoặc tin tức.<br /><br /><strong>Lch sử</strong><br /><br />B2/cafelog l&agrave; tiền th&acirc;n của WordPress, đ&atilde; c&oacute; khoảng 2000 blog được tạo ra trong th&aacute;ng 5 năm 2003. L&uacute;c đ&oacute; B2 được viết bằng PHP &amp; MySQL bởi&nbsp; Michel Valdrighi nh&agrave; ph&aacute;t triển ch&iacute;nh của WordPress hiện nay.<br /><br />+ Năm 2007, WordPress gi&agrave;nh giải thưởng Packt Open Source CMS.<br />+ Năm 2009. WordPress dẫn đầu về m&atilde; nguồn CMS tốt nhất thế giới.<br /><br /><strong>N&eacute;t nổi bật</strong><br /><br />Hệ thống Plugin phong ph&uacute; v&agrave; kh&ocirc;ng ngừng cập nhật, ngo&agrave;i ra người d&ugrave;ng c&oacute; thể viết Plugin hoặc t&iacute;ch hợp code v&agrave;o WordPress.<br />Được ph&aacute;t triển bằng nhiều ng&ocirc;n ngữ (hỗ trợ tiếng việt).<br /><br />Cập nhật phi&ecirc;n bản li&ecirc;n tục, cộng đồng hỗ trợ lớn.<br /><br />C&oacute; hệ thống Theme đồ sộ, nhiều theme chuy&ecirc;n nghiệp c&oacute; khả năng SEO tốt.<br /><br />Việc quản l&yacute; blog, quản l&yacute; c&aacute;c b&agrave;i viết rất thuận tiện<br /><br />Thể hiện c&aacute;c tệp PDF, DOC, Powerpoint ngay tr&ecirc;n nội dung b&agrave;i viết. Đặc biệt t&iacute;ch hợp sẵn Latex &ndash; c&ocirc;ng cụ soạn thảo c&ocirc;ng thức to&aacute;n học, gi&uacute;p người sử dụng c&oacute; thể viết c&ocirc;ng thức to&aacute;n học ngay tr&ecirc;n blog.<br /><br />WordPress c&oacute; hỗ trợ sẵn 1 số Widget (ứng dụng tạo th&ecirc;m) như Thống k&ecirc; C&aacute;c b&agrave;i mới nhất, C&aacute;c b&agrave;i viết nổi bật nhất, C&aacute;c comment mới nhất, Liệt k&ecirc; c&aacute;c chuy&ecirc;n mục, Liệt k&ecirc; c&aacute;c Trang, Danh s&aacute;ch c&aacute;c li&ecirc;n kết, Liệt k&ecirc; số b&agrave;i viết trong từng th&aacute;ng&hellip; C&oacute; 79 theme để người d&ugrave;ng lựa chọn.<br /><br />Ngo&agrave;i việc được &aacute;p dụng để x&acirc;y dựng c&aacute;c Website dạng trang tin tức v&agrave; Blog, WordPress c&ograve;n được sử dụng để x&acirc;y dựng n&ecirc;n c&aacute;c Website thương mại điện tử với mục đ&iacute;ch ch&iacute;nh l&agrave; b&aacute;n h&agrave;ng Online.<br /><br />C&aacute;c comment c&oacute; thể duyệt rồi mới cho đăng, comment n&agrave;o c&oacute; nội dung kh&ocirc;ng ph&ugrave; hợp c&oacute; thể x&oacute;a, nếu cho l&agrave; spam th&igrave; sau n&agrave;y IP đ&oacute; kh&ocirc;ng c&oacute; thể gửi comment v&agrave;o blog được nữa.<br /><br />Admin (chủ blog) c&oacute; thể cho cộng t&aacute;c vi&ecirc;n gửi b&agrave;i v&agrave;o blog, c&oacute; thể ph&acirc;n quyền cho c&aacute;c cộng t&aacute;c vi&ecirc;n theo c&aacute;c cấp độ kh&aacute;c nhau. Lưu giữ danh s&aacute;ch th&agrave;nh vi&ecirc;n đ&atilde; gh&eacute; thăm trang blog.<br /><br />Admin cũng c&oacute; thể cho bất kỳ ai đăng b&agrave;i qua email v&agrave;o blog miễn l&agrave; admin cho họ một địa chỉ email b&iacute; mật của blog (địa chỉ n&agrave;y c&oacute; thể thay đổi bất kỳ l&uacute;c n&agrave;o).<br /><br />Sao lưu dữ liệu nhằm kh&ocirc;i phục nội dung blog một c&aacute;ch dễ d&agrave;ng nếu chẳng may blog bị hack, v&agrave; cung cấp c&ocirc;ng cụ chuyển nh&agrave; từ c&aacute;c blog kh&aacute;c sang blog WordPress.</p>', 'http://localhost/itvnsoft/uploads/images/wordpress-la-gi.jpg', '', 'post', '', '', 0x31, 1476420924, 1476421143),
(11, 'Tại sao nên dùng WordPress để làm Website?', 'tai-sao-nen-dung-wordpress-de-lam-website', '<p>WordPress l&agrave; một m&atilde; nguồn mở ho&agrave;n to&agrave;n miễn ph&iacute; v&agrave; rất dễ l&agrave;m SEO. V&igrave; WordPress c&oacute; nhiều Plugin hỗ trợ như kiểm tra xem b&agrave;i viết đ&atilde; chuẩn seo chưa, b&agrave;i viết c&oacute; bị tr&ugrave;ng lặp kh&ocirc;ng, ti&ecirc;u đề của bạn c&oacute; bị tr&ugrave;ng kh&ocirc;ng, th&ecirc;m website v&agrave;o c&aacute;c bộ m&aacute;y t&igrave;m kiếm&hellip;</p>', '<p><br /><br />WordPress c&oacute; g&igrave; nổi bật khiến người d&ugrave;ng hứng th&uacute; với n&oacute; vậy ? H&atilde;y t&igrave;m hiểu 9 ưu điểm &ldquo;vượt trội&rdquo; của WordPress m&agrave; thế giới IT đang đi&ecirc;n đảo v&igrave; n&oacute;:<br /><br />1. WordPress ho&agrave;n to&agrave;n miễn ph&iacute;<br /><br />WordPress l&agrave; một m&atilde; nguồn mở viết bằng ng&ocirc;n ngữ PHP để hỗ trợ tạo blog c&aacute; nh&acirc;n, website giới thiệu, website tin tức, website b&aacute;n h&agrave;ng,&hellip;N&oacute; t&iacute;ch hợp nhiều t&iacute;nh năng hữu &iacute;ch được ph&aacute;t triển bởi cộng đồng tr&ecirc;n to&agrave;n thế giới vậy n&ecirc;n n&oacute; kh&ocirc;ng thuộc bản quyền d&agrave;nh ri&ecirc;ng cho ai cả, bạn c&oacute; thể sử dụng giao diện miễn ph&iacute; từ những bản tải về v&agrave; WordPress c&oacute; thể hỗ trợ rất tốt để l&agrave;m seo điều m&agrave; bạn rất cần cho website của m&igrave;nh.<br /><br />2. Dễ c&agrave;i đặt<br /><br />Tại sao n&oacute; dễ c&agrave;i đặt? Bởi v&igrave; WordPress được ph&aacute;t triển v&agrave; đ&oacute;ng g&oacute;i, n&ecirc;n bạn chỉ cần thực hiện c&agrave;i đặt qua v&agrave;i bước,<br /><br />3. Nhiều mẫu giao diện đẹp<br /><br />Theme (l&agrave; c&aacute;c mẫu giao diện) c&oacute; sẵn&nbsp; tr&ecirc;n thư viện WordPress.org. Hiện nay đ&atilde; c&oacute; hơn 2700 themes kh&aacute;c nhau ho&agrave;n to&agrave;n miễn ph&iacute; gi&uacute;p bạn c&oacute; thể truy cập v&agrave; lựa chọn giao diện đẹp mắt theo trực quan của ch&iacute;nh bạn. Bạn muốn website của m&igrave;nh chuy&ecirc;n nghiệp v&agrave; đẹp hơn bạn c&oacute; thể mua những bản theme trả ph&iacute; để c&agrave;i v&agrave;o website. Tuy nhi&ecirc;n với người mới l&agrave;m quen với WordPress bạn sử dụng bản free sẽ dễ d&agrave;ng hơn.<br /><br />4. Dễ d&agrave;ng sử dụng<br /><br />WordPress được ph&aacute;t triển nhằm phục vụ đối tượng phổ th&ocirc;ng hợp với những bạn kh&ocirc;ng c&oacute; nhiều kiến thức về lập tr&igrave;nh website n&acirc;ng cao v&agrave; l&agrave; một m&atilde; nguồn CMS mở phổ biến nhất thế giới. Đến với WordPress bạn sẽ được cộng đồng người d&ugrave;ng hỗ trợ những kh&oacute; khăn khi bạn gặp phải trong qu&aacute; tr&igrave;nh sử dụng n&oacute;. V&agrave; nếu khả năng tiếng Anh của bạn tốt bạn chỉ cần v&agrave;i từ kh&oacute;a t&igrave;m kiếm l&agrave; bạn đ&atilde; c&oacute; thể dễ d&agrave;ng t&igrave;m được đ&aacute;p &aacute;n cho những vấn đề bạn đang gặp phải.<br /><br />5. WordPress gi&uacute;p bạn &iacute;t phải lập tr&igrave;nh v&agrave; dễ ph&aacute;t triển lập tr&igrave;nh<br /><br />V&igrave; mục ti&ecirc;u l&agrave; hướng tới những đối tượng phổ th&ocirc;ng n&ecirc;n những thiết kế bằng WordPress&nbsp; gi&uacute;p bạn lựa chọn sẽ đơn giản v&agrave; dễ d&agrave;ng hơn với người d&ugrave;ng.<br /><br />Khi bạn am hiểu v&agrave; th&agrave;nh thạo HTML, CSS, PHP th&igrave; bạn c&oacute; thể dễ d&agrave;ng mở rộng website&nbsp; WordPress với nhiều t&iacute;nh năng hữu &iacute;ch v&agrave; ph&aacute;t triển th&ecirc;m c&aacute;c t&iacute;nh năng.Khi phi&ecirc;n bản WordPress 4.0 n&oacute; đạt hơn 10 triệu lượt tải chỉ sau khoảng 2 th&aacute;ng.<br />6. Tốc độ truy cập nhanh<br /><br />Bạn c&oacute; thể kiểm chứng tốc độ truy cập khi bạn v&agrave;o trang tutorial.bkasoft.net của m&igrave;nh bạn c&oacute; thể thấy được tốc độ kh&aacute; nhanh v&agrave; truy cập ổn định.<br /><br />7. Dễ SEO với mọi lĩnh vực<br /><br />WordPress l&agrave; một m&atilde; nguồn mở ho&agrave;n to&agrave;n miễn ph&iacute; v&agrave; rất dễ l&agrave;m SEO. V&igrave; WordPress c&oacute; nhiều Plugin hỗ trợ như kiểm tra xem b&agrave;i viết đ&atilde; chuẩn seo chưa, b&agrave;i viết c&oacute; bị tr&ugrave;ng lặp kh&ocirc;ng, ti&ecirc;u đề của bạn c&oacute; bị tr&ugrave;ng kh&ocirc;ng, th&ecirc;m website v&agrave;o c&aacute;c bộ m&aacute;y t&igrave;m kiếm&hellip;<br /><br />8. T&iacute;nh bảo mật cao với nhiều Plugin hỗ trợ<br /><br />Khi sử dụng bất kỳ một m&atilde; nguồn mở n&agrave;o th&igrave;&nbsp; vấn đề bảo mật đều được đặt l&ecirc;n h&agrave;ng đầu với người d&ugrave;ng. WordPress Plugin l&agrave; lựa chọn h&agrave;ng đầu gi&uacute;p bạn bảo mật tốt nhất khi bạn sử dụng. Bạn c&oacute; thể lựa chọn một số WordPress Plugin như : iThemes Security, Wordfence&nbsp; Security,&hellip; để check lỗi bảo mật, virut&hellip;<br /><br />Plugin l&agrave; một tr&igrave;nh cắm th&ecirc;m v&agrave;o website để bổ sung c&aacute;c chức năng m&agrave; bạn cần. V&iacute; dụ mặc định sau khi c&agrave;i website WordPress&nbsp; bạn kh&ocirc;ng c&oacute; chức năng hiển thị c&aacute;c b&agrave;i viết li&ecirc;n quan ở dưới mỗi b&agrave;i viết, nhưng với nhiều plugin miễn ph&iacute; hỗ trợ th&igrave; bạn c&oacute; thể dễ d&agrave;ng c&agrave;i th&ecirc;m một plugin miễn ph&iacute; để website m&igrave;nh c&oacute; chức năng đ&oacute;. Tương tự với theme, cũng c&oacute; rất nhiều plugin trả ph&iacute; mang những t&iacute;nh năng rất độc đ&aacute;o v&agrave; c&oacute; &iacute;ch v&agrave;o website v&agrave; n&oacute; sẽ c&oacute; gi&aacute; khoảng từ $10 đến $80 t&ugrave;y theo độ phức tạp.<br /><br />9. Lời kết<br /><br />Hiện nay trong 100 website lớn nhất thế giới, c&oacute; tới khoảng 25% website sử dựng m&atilde; nguồn WordPress. V&iacute; dụ, tạp ch&iacute; TeachCrunch, Masable, CNN, BBC America, Variety, Sony Music, MTV News, Bata,Quart,&hellip;<br /><br />Đến đ&acirc;y bạn đ&atilde; thấy sự tuyệt&nbsp; vời của WordPress, đ&acirc;y cũng ch&iacute;nh l&agrave; l&yacute; do tại sao rất nhiều người sử dụng WordPress tại Việt Nam cũng như tr&ecirc;n thế giới. Nếu bạn cảm thấy hứng th&uacute; v&agrave; thấy sự tiện &iacute;ch trong n&oacute; h&atilde;y trỏ qua xem c&aacute;c b&agrave;i viết phần tiếp theo, bạn sẽ hiểu hơn về b&agrave;i hướng dẫn sử dụng WordPress to&agrave;n tập để c&oacute; thể phục vụ tốt cho c&ocirc;ng việc.<br /><br />Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng khi bắt tay v&agrave;o x&acirc;y dựng WordPress !</p>', 'http://localhost/itvnsoft/uploads/images/wordpress-la-gi.jpg', '', 'post', '', '', 0x31, 1476421046, NULL),
(12, 'Cần chuẩn bị gì khi học WordPress', 'can-chuan-bi-gi-khi-hoc-wordpress', '<p>+ Chọn mua t&ecirc;n miền: Theo m&igrave;nh th&igrave; bạn n&ecirc;n mua t&ecirc;n miền tại matbao.net hoặc datacloud.vn v&igrave; gi&aacute; th&agrave;nh mua t&ecirc;n miền kh&ocirc;ng ch&ecirc;nh lệch nhiều nhưng DNS nhanh v&agrave; ổn định hơn c&aacute;c nh&agrave; cung cấp lẻ kh&aacute;c.</p>', '<p><br /><br />Chuẩn bị h&agrave;nh trang cần thiết trước khi học WordPress, h&atilde;y tham khảo hướng dẫn của m&igrave;nh tại đ&acirc;y!<br /><br />Trước khi ch&uacute;ng ta l&agrave;m một việc g&igrave; ch&uacute;ng ta đều phải chuẩn bị trước h&agrave;nh trang cần thiết cho n&oacute;, m&igrave;nh sẽ y&ecirc;u cầu c&aacute;c bạn cần chuẩn bị c&aacute;c phần mềm v&agrave; t&agrave;i liệu cần thiết sau:<br /><br />Nếu bạn học v&agrave; thực h&agrave;nh tr&ecirc;n m&aacute;y t&iacute;nh của bạn, h&atilde;y Download một số phần mềm:<br /><br />Download m&atilde; nguồn Tiếng Anh WordPress tr&ecirc;n website wordpress.org tại đ&acirc;y hoặc tải về m&atilde; nguồn Tiếng Việt WordPress tr&ecirc;n website vi.wordpress.org tại đ&acirc;y<br />Download phần mềm tạo server ảo:<br /><br />Phần mềm Xamp<br /><br />Download Phần mềm soạn thảo Code sublime text 3.<br /><br />Nếu bạn học v&agrave; thực h&agrave;nh WordPress tr&ecirc;n Hosting/Server<br /><br />Bạn cũng phải chuẩn bị c&aacute;c phần mềm như thực h&agrave;nh tr&ecirc;n m&aacute;y t&iacute;nh ở tr&ecirc;n nhưng bạn cần phải thực hiện th&ecirc;m c&aacute;c c&ocirc;ng việc:<br /><br />Mua t&ecirc;n miền (v&iacute; dụ itvnsoft.com)<br /><br />+ Chọn mua t&ecirc;n miền: Theo m&igrave;nh th&igrave; bạn n&ecirc;n mua t&ecirc;n miền tại matbao.net hoặc datacloud.vn v&igrave; gi&aacute; th&agrave;nh mua t&ecirc;n miền kh&ocirc;ng ch&ecirc;nh lệch nhiều nhưng DNS nhanh v&agrave; ổn định hơn c&aacute;c nh&agrave; cung cấp lẻ kh&aacute;c.<br />+ Để mua t&ecirc;n miền: th&igrave; bạn n&ecirc;n mua t&ecirc;n miền quốc tế (.net, .com, info&hellip;) v&igrave; gi&aacute; th&agrave;nh rẻ (khoảng 24ok/1 năm) c&ograve;n t&ecirc;n miền Việt Nam (.vn, .com.vn, .edu.vn, .net.vn&hellip;) thường đắt khoảng 400-800k/1 năm<br />+ Thủ tục mua t&ecirc;n miền: bạn cần Chụp hoặc Scan CMND v&agrave; gửi qua mail cho nh&agrave; cung cấp t&ecirc;n miền l&agrave; OK.<br />+ Trỏ t&ecirc;n miền: Sau khi mua t&ecirc;n miền Nh&agrave; cung cấp t&ecirc;n miền sẽ cấp cho bạn 1 t&agrave;i khoản quản l&yacute; t&ecirc;n miền, bạn sẽ đăng nhập v&agrave;o đ&oacute; v&agrave; thực hiện trỏ bằng c&aacute;ch tạo ra 3 Record (bản ghi) như sau:<br /><br />T&Ecirc;N GI&Aacute; TRỊ<br />@ IP (v&iacute; dụ: 127.0.0.1)<br />www IP (v&iacute; dụ: 127.0.0.1)<br /><br />IP sẽ được nh&agrave; cung cấp Hosting cấp cho bạn khi bạn đăng k&yacute; (tham khảo phần tiếp theo).<br />Mua Hosting hoặc VPS<br /><br />(để upload code, n&ecirc;n mua Hosting để chi ph&iacute; rẻ ph&ugrave; hợp với bạn)<br />+ Chọn 1 nh&agrave; cung cấp Hosting<br />+ Cung cấp cho họ T&ecirc;n miền: Để nh&agrave; cung cấp dịch vụ khởi tạo lu&ocirc;n host theo t&ecirc;n miền<br />+ Chọn hosting ph&ugrave; hợp: N&ecirc;n chọn host gi&aacute; khoảng 800k &ndash; 1tr200k (l&agrave; ổn)<br />+ Upload code l&ecirc;n Host: Sau khi mua host bạn sẽ nhận được 1 t&agrave;i khoản Cpanel để quản l&yacute; Hosting hoặc VPS (với VPS bạn sẽ c&oacute; th&ecirc;m t&agrave;i khoản root để quản l&yacute; server). Bạn h&atilde;y Download phần mềm Filzilla hoặc một số phần mềm kh&aacute;c để Upload code l&ecirc;n host. (C&aacute;ch upload v&agrave; cấu h&igrave;nh website m&igrave;nh sẽ hướng dẫn trong b&agrave;i tiếp theo)</p>', 'http://localhost/itvnsoft/uploads/images/wordpress-la-gi.jpg', '', 'post', '', '', 0x31, 1476421238, 1476421389),
(13, 'Hưỡng dẫn cài đặt wordpress trên localhost', 'huong-dan-cai-dat-wordpress-tren-localhost', '<div class="b-bottom">\r\n<p>Video n&agrave;y hướng dẫn c&agrave;i đặt wordpress cho c&aacute;c bạn mới t&igrave;m hiểu lần đầu, trong visdeo t&ocirc;i cũng giới thiệu sơ qua một số cức năng của wordpress</p>\r\n<p>Nếu bạn đang chưa biết wordpress l&agrave; g&igrave; vui l&ograve;ng xem lại b&agrave;i <a href="http://itvnsoft.com/gioi-thieu-ve-wordpress/" target="_blank">giưới thiệu wordpress</a></p>\r\n</div>', '<div class="b-bottom">\r\n<p>Video n&agrave;y hướng dẫn c&agrave;i đặt wordpress cho c&aacute;c bạn mới t&igrave;m hiểu lần đầu, trong visdeo t&ocirc;i cũng giới thiệu sơ qua một số cức năng của wordpress</p>\r\n<p>Nếu bạn đang chưa biết wordpress l&agrave; g&igrave; vui l&ograve;ng xem lại b&agrave;i <a href="http://itvnsoft.com/gioi-thieu-ve-wordpress/" target="_blank">giưới thiệu wordpress</a></p>\r\n</div>', 'http://localhost/itvnsoft/uploads/images/wordpress-la-gi.jpg', 'SYY8tI1mlGE', 'post', '', '', 0x31, 1476421356, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'category',
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`id`, `name`, `slug`, `seo_title`, `seo_desc`, `parent`, `type`, `status`) VALUES
(1, 'HTML 5', 'html-5', 'Các kiến thức về html5', 'Danh mục chia sẻ kiến thức html 5 từ cơ bản đến nâng cao', 0, 'post-cat', 1),
(2, 'CSS 3', 'css-3', 'Kiến thức css 3', 'Danh mcuj chia sẻ kiến thức học css 3 từ cơ bản đến nâng cao', 0, 'post-cat', 1),
(3, 'Javascript & jQuery', 'javascript-jquery', 'Kiến thức Javascript & jQuery', 'Danh mục chia sẻ kiến thức Kiến thức Javascript & jQuery từ cơ bản đến nâng cao', 0, 'post-cat', 1),
(4, 'PHP cơ bản', 'php-co-ban', 'Học php cơ bản cho người mới học', 'Danh mcuj chia sẻ kiến thức php cơ bản nhất và dễ hiểu nhất', 0, 'post-cat', 1),
(5, 'PHP OOP', 'php-oop', 'học php hướng đối tượng', 'Danh mục chia sẻ kiến thức lập trình php theo hướng đối tượng, dễ học dễ hiểu', 0, 'post-cat', 1),
(6, 'PHP MVC', 'php-mvc', 'Học php mô hình MVC chuyên nghiệp', 'Danh mục chia sẻ các kiến thức học php theo mô hình hướng đối tượng MVC chuyên nghiệp nhất', 0, 'post-cat', 1),
(7, 'Yii 2 Framework', 'yii-2-framework', 'Học Yii 2 Framework từ cơ bản đến nâng cao', 'Danh mcuj chia sẻ các kiến thức về Yii 2 Framework từ cơ bản đến nâng cao cho các bạn mới tiếp xúc', 0, 'post-cat', 1),
(8, 'WordPress', 'wordpress', 'Học lập trình wwebsite với WordPress CMS', 'Danh mục chia sẻ Học lập trình wwebsite với WordPress CMS từ cơ bản đến nâng cao', 0, 'post-cat', 1),
(9, 'Sublime Text', 'sublime-text', 'Hướng dẫn sử dụng Sublime Text', 'Các kiến thức hướng dẫn sử dụng phần mềm soạn thảo code Sublime Text', 0, 'post-cat', 1),
(10, 'Blog', 'blog', 'Blog chia sẻ kiến thức lập trình', 'Blog chia sẻ kiến thức lập trình', 0, 'post-cat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `term_relation`
--

CREATE TABLE `term_relation` (
  `objID` int(11) DEFAULT NULL,
  `objType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `termID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `term_relation`
--

INSERT INTO `term_relation` (`objID`, `objType`, `termID`) VALUES
(1, 'post-cat', 1),
(1, 'post-cat', 2),
(2, 'post-cat', 1),
(2, 'post-cat', 2),
(3, 'post-cat', 1),
(3, 'post-cat', 2),
(4, 'post-cat', 10),
(5, 'post-cat', 4),
(6, 'post-cat', 4),
(7, 'post-cat', 4),
(8, 'post-cat', 4),
(9, 'post-cat', 4),
(9, 'post-cat', 5),
(11, 'post-cat', 8),
(10, 'post-cat', 8),
(13, 'post-cat', 8),
(12, 'post-cat', 8),
(12, 'post-cat', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `display_name`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `phone`, `facebook`, `skype`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Nguyễn Anh Lương', '0a_6RZW4F76mdjG614nPO17HOu9wffln', '$2y$13$kImqt9WUGRBpUHOngAL.a.Nl97LUnRypMzLTHl7KdjPVnqLWGEYxW', NULL, 'luongitvnsoft@gmail.com', 0, NULL, NULL, 10, 1476001397, 1476001397);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"snap_to_grid":"off","relation_lines":"true","angular_direct":"direct"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"basic_php","table":"user"},{"db":"basic_php","table":"category"},{"db":"basic_php","table":"post"},{"db":"itvnsoft","table":"term_relation"},{"db":"itvnsoft","table":"term"},{"db":"itvnsoft","table":"user"},{"db":"itvnsoft","table":"cache"},{"db":"demo_cart","table":"product"},{"db":"yiidemo","table":"post"},{"db":"itvnsoft","table":"comment"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-10-11 13:03:58', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `rss_feed`
--
CREATE DATABASE IF NOT EXISTS `rss_feed` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rss_feed`;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `link`, `description`) VALUES
(1, 'Installing and configuring a web environment for PHP/MySQL', 'http://www.bewebdeveloper.com/tutorial-about-installing-and-configuring-a-web-environment-for-php-mysql', 'Hi, I am Ali Aboussebaba, Web and Mobile Engineer. Having worked with various technologies ranging from web to mobile. In this first tutorial, i’ll show you how to install and configure a web environment using WampSerer.'),
(2, 'Using Ajax with native JavaScript', 'http://www.bewebdeveloper.com/tutorial-about-using-ajax-with-native-javascript', 'In this tutorial, I’ll show you how to execute PHP scripts in the web server using Ajax with native JavaScript.'),
(3, 'Using Ajax with PHP/MySQL', 'http://www.bewebdeveloper.com/tutorial-about-using-ajax-with-phpmysql', 'Hi guys, in this tutorial, w’ll use Ajax with PHP/MySQL. A small administration page, with listing, adding and deleting members using Ajax with PHP/MySQL.'),
(4, 'Autocomplete using PHP/MySQL and jQuery', 'http://www.bewebdeveloper.com/tutorial-about-autocomplete-using-php-mysql-and-jquery', 'Hi, a new tutorial explain how to impliment an autocomplete using PHP/MySQL and jQuery is available. In this tutorial w’ll focus on the autocomplete functionality using a single table in the database and a single input text in the web page. When we type a letter, a list of proposition containning the keyword will be displayed with the keyword in bold.'),
(5, 'Crop photo using PHP and jQuery', 'http://www.bewebdeveloper.com/tutorial-about-crop-photo-using-php-and-jquery', 'Give the possibility for users to upload photos dynamically is good, but users upload photos with different sizes, and usually that cause problem in the website design. So in this tutorial I’ll show you how to crop photo using PHP and jQuery. Don’t worry, it’s simple, just follow the tutorial step by step.'),
(6, 'Dynamic Drag and Drop with jQuery and PHP', 'http://www.bewebdeveloper.com/tutorial-about-dynamic-drag-and-drop-with-jquery-and-php', 'A new tutorial about Dynamic Drag and Drop With jQuery and PHP is available. Need to order your items quickly and easily ? so read this tutorial step by step. A basic knowledge about PHP and jQuery is required.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `yii_cms`
--
CREATE DATABASE IF NOT EXISTS `yii_cms` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `yii_cms`;

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1475284413),
('m130524_201442_init', 1475284451),
('m160621_042029_create_term', 1475284452),
('m160621_043923_create_post', 1475284454),
('m160722_082444_create_term_relation', 1475284456),
('m160725_100300_create_option', 1475284460),
('m160801_012655_create_attribute', 1475284498),
('m160801_015347_create_product', 1475284500),
('m160801_022101_create_shipping', 1475284501),
('m160801_022754_create_payment', 1475284501),
('m160801_023815_create_order', 1475284508),
('m160801_024545_create_order_detail', 1475284511),
('m161001_043608_create_widget', 1475296765);

-- --------------------------------------------------------

--
-- Table structure for table `option`
--

CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `screen` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'general'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `custommer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `total` int(11) DEFAULT '0',
  `pay_method` int(11) DEFAULT NULL,
  `ship_method` int(11) DEFAULT NULL,
  `discount_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_expired` datetime DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `orderID` int(11) NOT NULL DEFAULT '0',
  `priductID` datetime DEFAULT NULL,
  `singular_price` int(11) DEFAULT '0',
  `sale_price` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `actived` varchar(3) COLLATE utf8_unicode_ci DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'publish'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `singular_price` int(11) DEFAULT '0',
  `sale_price` int(11) DEFAULT '0',
  `quantity` int(11) DEFAULT '0',
  `attribute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8_unicode_ci,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'instock',
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'publish'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'category',
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `term_relation`
--

CREATE TABLE `term_relation` (
  `id` int(11) NOT NULL,
  `objID` int(11) DEFAULT NULL,
  `catID` int(11) DEFAULT NULL,
  `objType` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
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

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `actived` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `label` (`label`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `term_relation`
--
ALTER TABLE `term_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `option`
--
ALTER TABLE `option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `term_relation`
--
ALTER TABLE `term_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `yiidemo`
--
CREATE DATABASE IF NOT EXISTS `yiidemo` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `yiidemo`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1475825431);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 1, NULL, NULL, NULL, 1475825430, 1475825430),
('create-book', 2, 'Them moi book', NULL, NULL, 1475825430, 1475825430),
('delete-book', 2, 'Them moi book', NULL, NULL, 1475825430, 1475825430),
('index-book', 2, 'Xem danh sach book', NULL, NULL, 1475825429, 1475825429),
('manager-book', 1, NULL, NULL, NULL, 1475825430, 1475825430),
('update-book', 2, 'Them moi book', NULL, NULL, 1475825430, 1475825430),
('view-book', 2, 'Them moi book', NULL, NULL, 1475825430, 1475825430);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', 'manager-book'),
('manager-book', 'create-book'),
('manager-book', 'delete-book'),
('manager-book', 'index-book'),
('manager-book', 'update-book'),
('manager-book', 'view-book');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `author` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `publish_at` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `cate`, `slug`, `image`, `desc`, `content`, `price`, `quantity`, `author`, `page`, `status`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 'Học lạp trình PHP', 0, 'hoc-lap-trinh-php', 'http://localhost/yiidemo/uploads/images/bookstore8.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 10000, 12, 'Luingit', 100, 1, 1245678899, 1475827516, 1476362237),
(2, 'Học css cơ bản', 0, 'hoc-css-co-ban', 'http://localhost/yiidemo/uploads/images/bookstore9.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 100000, 12, 'Luingit', 100, 1, 1245678899, 1475827607, 1476362261),
(3, 'Học jQuery ', 0, 'hoc-jquery', 'http://localhost/yiidemo/uploads/images/bookstore8.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 123000, 12, 'luongit', 120, 1, 2147483647, 1476362412, 1476362981),
(4, 'Học Asp.net MVC 5', 0, 'hoc-asp-mvc5', 'http://localhost/yiidemo/uploads/images/bookstore6.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea </p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 123000, 12, 'luongit', 120, 1, 2147483647, 1476362505, 1476362505);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1475584978),
('m130524_201442_init', 1475584981),
('m140506_102106_rbac_init', 1475825172),
('m160909_020406_category', 1475584982),
('m160909_025126_contact', 1475584982),
('m160912_084318_book', 1475584983),
('m160913_120622_post', 1475584983),
('m160913_121213_comment', 1475584984),
('m160913_121213_order', 1475584984),
('m160913_121213_order_item', 1475584984),
('m160913_121213_product', 1475584985);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_note` text COLLATE utf8_unicode_ci,
  `amount` int(11) DEFAULT '0',
  `shipping_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `quantity` int(11) DEFAULT '0',
  `return_status` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `cate` int(11) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `desc` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `quantity` int(11) DEFAULT '0',
  `price` int(11) DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'o48rKoItuU17xnO_vGWql6DUZsYkiNgq', '$2y$13$R/1W5TAxWJL1J4Vegioc0.NDzpaLU0Nn3vCkkaAnUB1bYk6K7KFEK', NULL, 'dovancong.tha@gmail.com', 10, 1475585014, 1475585014);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
