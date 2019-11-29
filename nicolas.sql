-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 29, 2019 at 08:44 PM
-- Server version: 5.7.26
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nicolas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `status`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'مدیر', 'admin@example.com', '$2y$10$J5WPbofkymO0y6fPphtAm.WDaXhXz09lHg8F678ARLWcJJln/utS2', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
CREATE TABLE IF NOT EXISTS `admin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_unique` tinyint(1) NOT NULL DEFAULT '0',
  `value_per_locale` tinyint(1) NOT NULL DEFAULT '0',
  `value_per_channel` tinyint(1) NOT NULL DEFAULT '0',
  `is_filterable` tinyint(1) NOT NULL DEFAULT '0',
  `is_configurable` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_on_front` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `swatch_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_in_flat` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `admin_name`, `type`, `validation`, `position`, `is_required`, `is_unique`, `value_per_locale`, `value_per_channel`, `is_filterable`, `is_configurable`, `is_user_defined`, `is_visible_on_front`, `created_at`, `updated_at`, `swatch_type`, `use_in_flat`) VALUES
(1, 'sku', 'SKU', 'text', NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(2, 'name', 'Name', 'text', NULL, 2, 1, 0, 1, 1, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(3, 'url_key', 'URL Key', 'text', NULL, 3, 1, 1, 0, 0, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(4, 'tax_category_id', 'Tax Category', 'select', NULL, 4, 0, 0, 0, 1, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(5, 'new', 'New', 'boolean', NULL, 5, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(6, 'featured', 'Featured', 'boolean', NULL, 6, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(7, 'visible_individually', 'Visible Individually', 'boolean', NULL, 7, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(8, 'status', 'Status', 'boolean', NULL, 8, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(9, 'short_description', 'Short Description', 'textarea', NULL, 9, 1, 0, 1, 1, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(10, 'description', 'Description', 'textarea', NULL, 10, 1, 0, 1, 1, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(11, 'price', 'Price', 'price', 'numeric', 11, 1, 0, 0, 0, 1, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-29 15:55:16', NULL, 1),
(12, 'cost', 'Cost', 'price', 'decimal', 12, 0, 0, 0, 1, 0, 0, 1, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(13, 'special_price', 'Special Price', 'price', 'decimal', 13, 0, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(14, 'special_price_from', 'Special Price From', 'date', NULL, 14, 0, 0, 0, 1, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(15, 'special_price_to', 'Special Price To', 'date', NULL, 15, 0, 0, 0, 1, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(16, 'meta_title', 'Meta Title', 'textarea', NULL, 16, 0, 0, 1, 1, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(17, 'meta_keywords', 'Meta Keywords', 'textarea', NULL, 17, 0, 0, 1, 1, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(18, 'meta_description', 'Meta Description', 'textarea', NULL, 18, 0, 0, 1, 1, 0, 0, 1, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(19, 'width', 'Width', 'text', 'decimal', 19, 0, 0, 0, 0, 0, 0, 1, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(20, 'height', 'Height', 'text', 'decimal', 20, 0, 0, 0, 0, 0, 0, 1, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(21, 'depth', 'Depth', 'text', 'decimal', 21, 0, 0, 0, 0, 0, 0, 1, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(22, 'weight', 'Weight', 'text', 'decimal', 22, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1),
(23, 'color', 'رنگ', 'select', '', 23, 0, 0, 0, 0, 1, 1, 1, 0, '2019-11-27 22:06:35', '2019-11-29 15:54:43', NULL, 1),
(24, 'size', 'سایز', 'select', '', 24, 0, 0, 0, 0, 1, 1, 1, 0, '2019-11-27 22:06:35', '2019-11-29 15:53:49', NULL, 1),
(25, 'brand', 'Brand', 'select', NULL, 25, 0, 0, 0, 0, 1, 0, 0, 1, '2019-11-27 22:06:35', '2019-11-27 22:06:35', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_families`
--

DROP TABLE IF EXISTS `attribute_families`;
CREATE TABLE IF NOT EXISTS `attribute_families` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_families`
--

INSERT INTO `attribute_families` (`id`, `code`, `name`, `status`, `is_user_defined`) VALUES
(1, 'default', 'Default', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_groups`
--

DROP TABLE IF EXISTS `attribute_groups`;
CREATE TABLE IF NOT EXISTS `attribute_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `attribute_family_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attribute_groups_attribute_family_id_name_unique` (`attribute_family_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_groups`
--

INSERT INTO `attribute_groups` (`id`, `name`, `position`, `is_user_defined`, `attribute_family_id`) VALUES
(1, 'General', 1, 0, 1),
(2, 'Description', 2, 0, 1),
(3, 'Meta Description', 3, 0, 1),
(4, 'Price', 4, 0, 1),
(5, 'Shipping', 5, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group_mappings`
--

DROP TABLE IF EXISTS `attribute_group_mappings`;
CREATE TABLE IF NOT EXISTS `attribute_group_mappings` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_group_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`attribute_id`,`attribute_group_id`),
  KEY `attribute_group_mappings_attribute_group_id_foreign` (`attribute_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_group_mappings`
--

INSERT INTO `attribute_group_mappings` (`attribute_id`, `attribute_group_id`, `position`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 1),
(10, 2, 2),
(11, 4, 1),
(12, 4, 2),
(13, 4, 3),
(14, 4, 4),
(15, 4, 5),
(16, 3, 1),
(17, 3, 2),
(18, 3, 3),
(19, 5, 1),
(20, 5, 2),
(21, 5, 3),
(22, 5, 4),
(23, 1, 9),
(24, 1, 10),
(25, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

DROP TABLE IF EXISTS `attribute_options`;
CREATE TABLE IF NOT EXISTS `attribute_options` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `swatch_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_options_attribute_id_foreign` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `admin_name`, `sort_order`, `attribute_id`, `swatch_value`) VALUES
(1, 'قرمز', 1, 23, NULL),
(4, 'مشکی', 4, 23, NULL),
(5, 'قهوه ای', 5, 23, NULL),
(6, 'S', 1, 24, NULL),
(7, 'M', 2, 24, NULL),
(8, 'L', 3, 24, NULL),
(9, 'XL', 4, 24, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_option_translations`
--

DROP TABLE IF EXISTS `attribute_option_translations`;
CREATE TABLE IF NOT EXISTS `attribute_option_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci,
  `attribute_option_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attribute_option_translations_attribute_option_id_locale_unique` (`attribute_option_id`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_option_translations`
--

INSERT INTO `attribute_option_translations` (`id`, `locale`, `label`, `attribute_option_id`) VALUES
(1, 'en', 'Red', 1),
(4, 'en', 'Black', 4),
(5, 'en', 'Brown', 5),
(6, 'en', 'S', 6),
(7, 'en', 'M', 7),
(8, 'en', 'L', 8),
(9, 'en', 'XL', 9);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

DROP TABLE IF EXISTS `attribute_translations`;
CREATE TABLE IF NOT EXISTS `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `locale`, `name`, `attribute_id`) VALUES
(1, 'en', 'SKU', 1),
(2, 'en', 'Name', 2),
(3, 'en', 'URL Key', 3),
(4, 'en', 'Tax Category', 4),
(5, 'en', 'New', 5),
(6, 'en', 'Featured', 6),
(7, 'en', 'Visible Individually', 7),
(8, 'en', 'Status', 8),
(9, 'en', 'Short Description', 9),
(10, 'en', 'Description', 10),
(11, 'en', 'Price', 11),
(12, 'en', 'Cost', 12),
(13, 'en', 'Special Price', 13),
(14, 'en', 'Special Price From', 14),
(15, 'en', 'Special Price To', 15),
(16, 'en', 'Meta Description', 16),
(17, 'en', 'Meta Keywords', 17),
(18, 'en', 'Meta Description', 18),
(19, 'en', 'Width', 19),
(20, 'en', 'Height', 20),
(21, 'en', 'Depth', 21),
(22, 'en', 'Weight', 22),
(23, 'en', 'Color', 23),
(24, 'en', 'Size', 24),
(25, 'en', 'Brand', 25);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT '0',
  `items_count` int(11) DEFAULT NULL,
  `items_qty` decimal(12,4) DEFAULT NULL,
  `exchange_rate` decimal(12,4) DEFAULT NULL,
  `global_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `tax_total` decimal(12,4) DEFAULT '0.0000',
  `base_tax_total` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `checkout_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `conversion_time` datetime DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_customer_id_foreign` (`customer_id`),
  KEY `cart_channel_id_foreign` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `coupon_code`, `is_gift`, `items_count`, `items_qty`, `exchange_rate`, `global_currency_code`, `base_currency_code`, `channel_currency_code`, `cart_currency_code`, `grand_total`, `base_grand_total`, `sub_total`, `base_sub_total`, `tax_total`, `base_tax_total`, `discount_amount`, `base_discount_amount`, `checkout_method`, `is_guest`, `is_active`, `conversion_time`, `customer_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'farshad.badiee@gmail.com', 'asd', 'asd', 'free_free', NULL, 0, 1, '1.0000', NULL, 'USD', 'USD', 'USD', 'USD', '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 0, NULL, NULL, 1, '2019-11-28 18:52:44', '2019-11-28 18:53:22'),
(2, 'farshad.badiee@gmail.com', 'asd', 'asd', 'free_free', NULL, 0, 1, '1.0000', NULL, 'USD', 'USD', 'ریال', 'ریال', '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 0, NULL, NULL, 1, '2019-11-29 12:28:41', '2019-11-29 12:29:20'),
(3, 'farshad.badiee@gmail.com', 'asd', 'asd', 'flatrate_flatrate', NULL, 0, 1, '1.0000', NULL, 'USD', 'USD', 'ریال', 'ریال', '232.0000', '232.0000', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 0, NULL, NULL, 1, '2019-11-29 12:30:51', '2019-11-29 12:31:14'),
(4, 'farshad.badiee@gmail.com', 'asd', 'asd', 'flatrate_flatrate', NULL, 0, 1, '3.0000', NULL, 'USD', 'USD', 'ریال', 'ریال', '160.0000', '160.0000', '150.0000', '150.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 1, NULL, NULL, 1, '2019-11-29 12:43:11', '2019-11-29 13:03:54'),
(5, 'farshad.badiee@gmail.com', 'asd', 'asd', 'free_free', NULL, 0, 1, '1.0000', NULL, 'USD', 'USD', 'IRL', 'IRL', '120.0000', '120.0000', '120.0000', '120.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 1, 1, NULL, NULL, 1, '2019-11-29 22:34:03', '2019-11-29 22:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `cart_address`
--

DROP TABLE IF EXISTS `cart_address`;
CREATE TABLE IF NOT EXISTS `cart_address` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_address_cart_id_foreign` (`cart_id`),
  KEY `cart_address_customer_id_foreign` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_address`
--

INSERT INTO `cart_address` (`id`, `first_name`, `last_name`, `email`, `address1`, `address2`, `country`, `state`, `city`, `postcode`, `phone`, `address_type`, `cart_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', '123', '09192244689', 'billing', 1, NULL, '2019-11-28 18:53:03', '2019-11-28 18:53:03'),
(2, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', '123', '09192244689', 'shipping', 1, NULL, '2019-11-28 18:53:03', '2019-11-28 18:53:03'),
(3, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', '123', '09192244689', 'billing', 2, NULL, '2019-11-29 12:28:59', '2019-11-29 12:28:59'),
(4, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', '123', '09192244689', 'shipping', 2, NULL, '2019-11-29 12:28:59', '2019-11-29 12:28:59'),
(5, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', '123', '7', 'billing', 3, NULL, '2019-11-29 12:31:05', '2019-11-29 12:31:05'),
(6, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', '123', '7', 'shipping', 3, NULL, '2019-11-29 12:31:05', '2019-11-29 12:31:05'),
(7, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', '123', '123', 'billing', 4, NULL, '2019-11-29 12:59:24', '2019-11-29 13:03:38'),
(8, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', '123', '123', 'shipping', 4, NULL, '2019-11-29 12:59:24', '2019-11-29 13:03:38'),
(9, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd', NULL, 'AF', 'asd', 'ad', '123', '8456', 'billing', 5, NULL, '2019-11-29 22:34:16', '2019-11-29 22:34:16'),
(10, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd', NULL, 'AF', 'asd', 'ad', '123', '8456', 'shipping', 5, NULL, '2019-11-29 22:34:16', '2019-11-29 22:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE IF NOT EXISTS `cart_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(12,4) NOT NULL DEFAULT '1.0000',
  `total_weight` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_weight` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `price` decimal(12,4) NOT NULL DEFAULT '1.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `additional` json DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_price` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_items_product_id_foreign` (`product_id`),
  KEY `cart_items_cart_id_foreign` (`cart_id`),
  KEY `cart_items_tax_category_id_foreign` (`tax_category_id`),
  KEY `cart_items_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `quantity`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `base_total_weight`, `price`, `base_price`, `total`, `base_total`, `tax_percent`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `additional`, `parent_id`, `product_id`, `cart_id`, `tax_category_id`, `created_at`, `updated_at`, `custom_price`) VALUES
(5, 1, '2', 'simple', 'کفش مردانه مدل چرم', NULL, '12.0000', '12.0000', '12.0000', '120.0000', '120.0000', '120.0000', '120.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '{\"product\": \"34\", \"quantity\": 1, \"is_configurable\": false}', NULL, 34, 5, NULL, '2019-11-29 22:34:03', '2019-11-29 22:34:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item_inventories`
--

DROP TABLE IF EXISTS `cart_item_inventories`;
CREATE TABLE IF NOT EXISTS `cart_item_inventories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `qty` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_item_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_payment`
--

DROP TABLE IF EXISTS `cart_payment`;
CREATE TABLE IF NOT EXISTS `cart_payment` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_payment_cart_id_foreign` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_payment`
--

INSERT INTO `cart_payment` (`id`, `method`, `method_title`, `cart_id`, `created_at`, `updated_at`) VALUES
(1, 'cashondelivery', NULL, 1, '2019-11-28 18:53:12', '2019-11-28 18:53:12'),
(2, 'cashondelivery', NULL, 2, '2019-11-29 12:29:08', '2019-11-29 12:29:08'),
(3, 'cashondelivery', NULL, 3, '2019-11-29 12:31:09', '2019-11-29 12:31:09'),
(6, 'cashondelivery', NULL, 4, '2019-11-29 13:03:42', '2019-11-29 13:03:42'),
(7, 'cashondelivery', NULL, 5, '2019-11-29 22:34:25', '2019-11-29 22:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `cart_rules`
--

DROP TABLE IF EXISTS `cart_rules`;
CREATE TABLE IF NOT EXISTS `cart_rules` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `per_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `use_coupon` tinyint(1) NOT NULL DEFAULT '0',
  `usage_limit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `conditions` json DEFAULT NULL,
  `actions` json DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uses_attribute_conditions` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` longtext COLLATE utf8mb4_unicode_ci,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disc_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `disc_quantity` decimal(12,4) NOT NULL DEFAULT '1.0000',
  `disc_threshold` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `coupon_type` int(11) NOT NULL DEFAULT '1',
  `auto_generation` tinyint(1) NOT NULL DEFAULT '0',
  `apply_to_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `products_selection` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_cart`
--

DROP TABLE IF EXISTS `cart_rule_cart`;
CREATE TABLE IF NOT EXISTS `cart_rule_cart` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_rule_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_rule_cart_cart_rule_id_foreign` (`cart_rule_id`),
  KEY `cart_rule_cart_cart_id_foreign` (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_channels`
--

DROP TABLE IF EXISTS `cart_rule_channels`;
CREATE TABLE IF NOT EXISTS `cart_rule_channels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_rule_channels_cart_rule_id_foreign` (`cart_rule_id`),
  KEY `cart_rule_channels_channel_id_foreign` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupons`
--

DROP TABLE IF EXISTS `cart_rule_coupons`;
CREATE TABLE IF NOT EXISTS `cart_rule_coupons` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suffix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage_limit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `usage_per_customer` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `usage_throttle` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_rule_coupons_cart_rule_id_foreign` (`cart_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupons_usage`
--

DROP TABLE IF EXISTS `cart_rule_coupons_usage`;
CREATE TABLE IF NOT EXISTS `cart_rule_coupons_usage` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `usage` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `expired_on` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_rule_coupons_usage_coupon_id_foreign` (`coupon_id`),
  KEY `cart_rule_coupons_usage_channel_id_foreign` (`channel_id`),
  KEY `cart_rule_coupons_usage_customer_id_foreign` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customers`
--

DROP TABLE IF EXISTS `cart_rule_customers`;
CREATE TABLE IF NOT EXISTS `cart_rule_customers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `usage_throttle` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_rule_customers_cart_rule_id_foreign` (`cart_rule_id`),
  KEY `cart_rule_customers_customer_id_foreign` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customer_groups`
--

DROP TABLE IF EXISTS `cart_rule_customer_groups`;
CREATE TABLE IF NOT EXISTS `cart_rule_customer_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_rule_customer_groups_cart_rule_id_foreign` (`cart_rule_id`),
  KEY `cart_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_labels`
--

DROP TABLE IF EXISTS `cart_rule_labels`;
CREATE TABLE IF NOT EXISTS `cart_rule_labels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `locale_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED DEFAULT NULL,
  `label` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_rule_labels_channel_id_foreign` (`channel_id`),
  KEY `cart_rule_labels_locale_id_foreign` (`locale_id`),
  KEY `cart_rule_labels_cart_rule_id_foreign` (`cart_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_shipping_rates`
--

DROP TABLE IF EXISTS `cart_shipping_rates`;
CREATE TABLE IF NOT EXISTS `cart_shipping_rates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `carrier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT '0',
  `base_price` double DEFAULT '0',
  `cart_address_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_shipping_rates_cart_address_id_foreign` (`cart_address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_shipping_rates`
--

INSERT INTO `cart_shipping_rates` (`id`, `carrier`, `carrier_title`, `method`, `method_title`, `method_description`, `price`, `base_price`, `cart_address_id`, `created_at`, `updated_at`) VALUES
(1, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, 2, '2019-11-28 18:53:03', '2019-11-28 18:53:03'),
(2, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 2, '2019-11-28 18:53:03', '2019-11-28 18:53:03'),
(3, 'flatrate', 'نرخ ثابت', 'flatrate_flatrate', 'نرخ ثابت', 'نرخ ثابت', 10, 10, 4, '2019-11-29 12:28:59', '2019-11-29 12:28:59'),
(4, 'free', 'ارسال رایگان', 'free_free', 'ارسال رایگان', 'ارسال رایگان', 0, 0, 4, '2019-11-29 12:28:59', '2019-11-29 12:28:59'),
(5, 'flatrate', 'نرخ ثابت', 'flatrate_flatrate', 'نرخ ثابت', 'نرخ ثابت', 10, 10, 6, '2019-11-29 12:31:05', '2019-11-29 12:31:05'),
(6, 'free', 'ارسال رایگان', 'free_free', 'ارسال رایگان', 'ارسال رایگان', 0, 0, 6, '2019-11-29 12:31:05', '2019-11-29 12:31:05'),
(11, 'flatrate', 'نرخ ثابت', 'flatrate_flatrate', 'نرخ ثابت', 'نرخ ثابت', 10, 10, 8, '2019-11-29 13:03:38', '2019-11-29 13:03:38'),
(12, 'free', 'ارسال رایگان', 'free_free', 'ارسال رایگان', 'ارسال رایگان', 0, 0, 8, '2019-11-29 13:03:38', '2019-11-29 13:03:38'),
(13, 'flatrate', 'نرخ ثابت', 'flatrate_flatrate', 'نرخ ثابت', 'نرخ ثابت', 10, 10, 10, '2019-11-29 22:34:16', '2019-11-29 22:34:16'),
(14, 'free', 'ارسال رایگان', 'free_free', 'ارسال رایگان', 'ارسال رایگان', 0, 0, 10, '2019-11-29 22:34:16', '2019-11-29 22:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rules`
--

DROP TABLE IF EXISTS `catalog_rules`;
CREATE TABLE IF NOT EXISTS `catalog_rules` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `conditions` json DEFAULT NULL,
  `actions` json DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT '0',
  `action_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_channels`
--

DROP TABLE IF EXISTS `catalog_rule_channels`;
CREATE TABLE IF NOT EXISTS `catalog_rule_channels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_rule_channels_channel_id_foreign` (`channel_id`),
  KEY `catalog_rule_channels_catalog_rule_id_foreign` (`catalog_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_customer_groups`
--

DROP TABLE IF EXISTS `catalog_rule_customer_groups`;
CREATE TABLE IF NOT EXISTS `catalog_rule_customer_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`),
  KEY `catalog_rule_customer_groups_catalog_rule_id_foreign` (`catalog_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_products`
--

DROP TABLE IF EXISTS `catalog_rule_products`;
CREATE TABLE IF NOT EXISTS `catalog_rule_products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `action_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_rule_products_catalog_rule_id_foreign` (`catalog_rule_id`),
  KEY `catalog_rule_products_customer_group_id_foreign` (`customer_group_id`),
  KEY `catalog_rule_products_channel_id_foreign` (`channel_id`),
  KEY `catalog_rule_products_product_id_foreign` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_products_price`
--

DROP TABLE IF EXISTS `catalog_rule_products_price`;
CREATE TABLE IF NOT EXISTS `catalog_rule_products_price` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `rule_price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_rule_products_price_channel_id_foreign` (`channel_id`),
  KEY `catalog_rule_products_price_customer_group_id_foreign` (`customer_group_id`),
  KEY `catalog_rule_products_price_product_id_foreign` (`product_id`),
  KEY `catalog_rule_products_price_catalog_rule_id_foreign` (`catalog_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `display_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'products_and_description',
  PRIMARY KEY (`id`),
  KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `position`, `image`, `status`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`, `display_mode`) VALUES
(1, 1, NULL, 1, 1, 18, NULL, '2019-11-27 22:06:34', '2019-11-27 22:06:34', 'products_and_description'),
(2, 2, 'category/2/UscQL51BaPxDo12mh64a4U1RhHHWaaJhNnrtwK4a.jpeg', 1, 14, 15, 1, '2019-11-29 15:21:27', '2019-11-29 16:28:28', 'products_and_description'),
(3, 3, 'category/3/43D32S7c0n9zVkHbPSFnHj2YNqLtuV3pdlkMiR6f.jpeg', 1, 16, 17, 1, '2019-11-29 15:52:02', '2019-11-29 15:52:02', 'products_and_description');

-- --------------------------------------------------------

--
-- Table structure for table `category_filterable_attributes`
--

DROP TABLE IF EXISTS `category_filterable_attributes`;
CREATE TABLE IF NOT EXISTS `category_filterable_attributes` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  KEY `category_filterable_attributes_category_id_foreign` (`category_id`),
  KEY `category_filterable_attributes_attribute_id_foreign` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category_filterable_attributes`
--

INSERT INTO `category_filterable_attributes` (`category_id`, `attribute_id`) VALUES
(2, 23),
(2, 24),
(1, 24),
(3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
CREATE TABLE IF NOT EXISTS `category_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_translations_category_id_slug_locale_unique` (`category_id`,`slug`,`locale`),
  KEY `category_translations_locale_id_foreign` (`locale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `category_id`, `locale`, `locale_id`) VALUES
(1, 'دسته اصلی', 'root', '<p>Root</p>', 'asd', '', '', 1, 'fa', NULL),
(2, 'آقایان', 'men', '<p>پوشاک مردانه</p>', 'asd', '', '', 2, 'fa', 6),
(3, 'tt', 'asd', '<p>asd</p>', '', '', '', 3, 'fa', 6),
(4, 'men', 'men-en', '<p>asd</p>', '', '', '', 2, 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
CREATE TABLE IF NOT EXISTS `channels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page_content` text COLLATE utf8mb4_unicode_ci,
  `footer_content` text COLLATE utf8mb4_unicode_ci,
  `default_locale_id` int(10) UNSIGNED NOT NULL,
  `base_currency_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `root_category_id` int(10) UNSIGNED DEFAULT NULL,
  `home_seo` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `channels_default_locale_id_foreign` (`default_locale_id`),
  KEY `channels_base_currency_id_foreign` (`base_currency_id`),
  KEY `channels_root_category_id_foreign` (`root_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `code`, `name`, `description`, `timezone`, `theme`, `hostname`, `logo`, `favicon`, `home_page_content`, `footer_content`, `default_locale_id`, `base_currency_id`, `created_at`, `updated_at`, `root_category_id`, `home_seo`) VALUES
(1, 'default', 'Default', '', NULL, 'nicolas', '', NULL, NULL, '<p>@include(\"shop::home.slider\") @include(\"shop::home.featured-products\") @include(\"shop::home.new-products\")</p>\r\n<div class=\"banner-container\">\r\n<div class=\"left-banner\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/cdn.uvdesk.com/website/1/201902045c581f9494b8a1.png\" /></div>\r\n<div class=\"right-banner\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/cdn.uvdesk.com/website/1/201902045c581fb045cf02.png\" /> <img src=\"https://s3-ap-southeast-1.amazonaws.com/cdn.uvdesk.com/website/1/201902045c581fc352d803.png\" /></div>\r\n</div>', '<div class=\"list-container\"><span class=\"list-heading\">دسترسی سریع</span>\r\n<ul class=\"list-group\">\r\n<li><a href=\"@php echo route(\" shop=\"\" cms=\"\" page=\"\" about-us=\"\" endphp=\"\">درباره ما</a></li>\r\n<li><a href=\"@php echo route(\" shop=\"\" cms=\"\" page=\"\" return-policy=\"\" endphp=\"\">قوانین گارانتی</a></li>\r\n<li><a href=\"@php echo route(\" shop=\"\" cms=\"\" page=\"\" terms-conditions=\"\" endphp=\"\">قوانین و مقررات</a></li>\r\n<li><a href=\"@php echo route(\" shop=\"\" cms=\"\" page=\"\" contact-us=\"\" endphp=\"\">تماس با ما</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"list-container\"><span class=\"list-heading\">شبکه های اجتمای</span>\r\n<ul class=\"list-group\">\r\n<li><a href=\"#\"><span class=\"icon icon-facebook\"></span>فیس بوک</a></li>\r\n<li><a href=\"#\"><span class=\"icon icon-twitter\"></span>تویتر </a></li>\r\n<li><a href=\"#\"><span class=\"icon icon-instagram\"></span>ایسنتاگرام </a></li>\r\n<li><a href=\"#\"> <span class=\"icon icon-linkedin\"></span>لیکدین</a></li>\r\n</ul>\r\n</div>', 7, 2, NULL, '2019-11-29 13:09:51', 1, '{\"meta_title\": \"سخت است\", \"meta_keywords\": \"سخت است\", \"meta_description\": \"سخت است\"}');

-- --------------------------------------------------------

--
-- Table structure for table `channel_currencies`
--

DROP TABLE IF EXISTS `channel_currencies`;
CREATE TABLE IF NOT EXISTS `channel_currencies` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `channel_currencies_currency_id_foreign` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_currencies`
--

INSERT INTO `channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `channel_inventory_sources`
--

DROP TABLE IF EXISTS `channel_inventory_sources`;
CREATE TABLE IF NOT EXISTS `channel_inventory_sources` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `inventory_source_id` int(10) UNSIGNED NOT NULL,
  UNIQUE KEY `channel_inventory_sources_channel_id_inventory_source_id_unique` (`channel_id`,`inventory_source_id`),
  KEY `channel_inventory_sources_inventory_source_id_foreign` (`inventory_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_inventory_sources`
--

INSERT INTO `channel_inventory_sources` (`channel_id`, `inventory_source_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_locales`
--

DROP TABLE IF EXISTS `channel_locales`;
CREATE TABLE IF NOT EXISTS `channel_locales` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `channel_locales_locale_id_foreign` (`locale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_locales`
--

INSERT INTO `channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

DROP TABLE IF EXISTS `cms_pages`;
CREATE TABLE IF NOT EXISTS `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `content` json DEFAULT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pages_channel_id_foreign` (`channel_id`),
  KEY `cms_pages_locale_id_foreign` (`locale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `url_key`, `html_content`, `page_title`, `meta_title`, `meta_description`, `meta_keywords`, `content`, `layout`, `channel_id`, `locale_id`, `created_at`, `updated_at`) VALUES
(7, 'as', '<p>asd</p>', 'تماس با ما', 'asd', 'asd', 'asd', '{\"html\": \"<p>asd</p>\", \"meta_title\": \"asd\", \"page_title\": \"تماس با ما\", \"meta_keywords\": \"asd\", \"meta_description\": \"asd\"}', NULL, 1, 7, '2019-11-29 15:28:50', '2019-11-29 15:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `core_config`
--

DROP TABLE IF EXISTS `core_config`;
CREATE TABLE IF NOT EXISTS `core_config` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_config_channel_id_foreign` (`channel_code`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `core_config`
--

INSERT INTO `core_config` (`id`, `code`, `value`, `channel_code`, `locale_code`, `created_at`, `updated_at`) VALUES
(1, 'sales.carriers.free.title', 'ارسال رایگان', NULL, 'fa', '2019-11-29 10:11:28', '2019-11-29 10:11:28'),
(2, 'sales.carriers.free.description', 'ارسال رایگان', NULL, 'fa', '2019-11-29 10:11:28', '2019-11-29 10:11:28'),
(3, 'sales.carriers.free.active', '1', NULL, 'fa', '2019-11-29 10:11:28', '2019-11-29 10:11:28'),
(4, 'sales.carriers.flatrate.title', 'نرخ ثابت', 'default', 'fa', '2019-11-29 10:11:28', '2019-11-29 10:11:28'),
(5, 'sales.carriers.flatrate.description', 'نرخ ثابت', 'default', NULL, '2019-11-29 10:11:28', '2019-11-29 10:11:28'),
(6, 'sales.carriers.flatrate.default_rate', '10', 'default', NULL, '2019-11-29 10:11:28', '2019-11-29 10:11:28'),
(7, 'sales.carriers.flatrate.type', 'per_order', NULL, NULL, '2019-11-29 10:11:28', '2019-11-29 10:11:28'),
(8, 'sales.carriers.flatrate.active', '1', NULL, 'fa', '2019-11-29 10:11:28', '2019-11-29 10:11:28'),
(9, 'sales.paymentmethods.cashondelivery.title', 'پرداخت در محل', NULL, 'fa', '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(10, 'sales.paymentmethods.cashondelivery.description', 'shop::app.checkout.onepage.cash-desc', NULL, 'fa', '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(11, 'sales.paymentmethods.cashondelivery.active', '1', NULL, 'fa', '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(12, 'sales.paymentmethods.cashondelivery.sort', '1', NULL, NULL, '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(13, 'sales.paymentmethods.moneytransfer.title', 'Money Transfer', NULL, 'fa', '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(14, 'sales.paymentmethods.moneytransfer.description', 'shop::app.checkout.onepage.money-desc', NULL, 'fa', '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(15, 'sales.paymentmethods.moneytransfer.active', '0', NULL, 'fa', '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(16, 'sales.paymentmethods.moneytransfer.sort', '2', NULL, NULL, '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(17, 'sales.paymentmethods.paypal_standard.title', 'Paypal Standard', NULL, 'fa', '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(18, 'sales.paymentmethods.paypal_standard.description', 'shop::app.checkout.onepage.paypal-desc', NULL, 'fa', '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(19, 'sales.paymentmethods.paypal_standard.business_account', 'test@webkul.com', NULL, NULL, '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(20, 'sales.paymentmethods.paypal_standard.active', '0', NULL, 'fa', '2019-11-29 10:11:52', '2019-11-29 10:11:52'),
(21, 'sales.paymentmethods.paypal_standard.sort', '3', NULL, NULL, '2019-11-29 10:11:52', '2019-11-29 10:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AX', 'Åland Islands'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American Samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua & Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AC', 'Ascension Island'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia & Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British Indian Ocean Territory'),
(33, 'VG', 'British Virgin Islands'),
(34, 'BN', 'Brunei'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CA', 'Canada'),
(41, 'IC', 'Canary Islands'),
(42, 'CV', 'Cape Verde'),
(43, 'BQ', 'Caribbean Netherlands'),
(44, 'KY', 'Cayman Islands'),
(45, 'CF', 'Central African Republic'),
(46, 'EA', 'Ceuta & Melilla'),
(47, 'TD', 'Chad'),
(48, 'CL', 'Chile'),
(49, 'CN', 'China'),
(50, 'CX', 'Christmas Island'),
(51, 'CC', 'Cocos (Keeling) Islands'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoros'),
(54, 'CG', 'Congo - Brazzaville'),
(55, 'CD', 'Congo - Kinshasa'),
(56, 'CK', 'Cook Islands'),
(57, 'CR', 'Costa Rica'),
(58, 'CI', 'Côte d’Ivoire'),
(59, 'HR', 'Croatia'),
(60, 'CU', 'Cuba'),
(61, 'CW', 'Curaçao'),
(62, 'CY', 'Cyprus'),
(63, 'CZ', 'Czechia'),
(64, 'DK', 'Denmark'),
(65, 'DG', 'Diego Garcia'),
(66, 'DJ', 'Djibouti'),
(67, 'DM', 'Dominica'),
(68, 'DO', 'Dominican Republic'),
(69, 'EC', 'Ecuador'),
(70, 'EG', 'Egypt'),
(71, 'SV', 'El Salvador'),
(72, 'GQ', 'Equatorial Guinea'),
(73, 'ER', 'Eritrea'),
(74, 'EE', 'Estonia'),
(75, 'ET', 'Ethiopia'),
(76, 'EZ', 'Eurozone'),
(77, 'FK', 'Falkland Islands'),
(78, 'FO', 'Faroe Islands'),
(79, 'FJ', 'Fiji'),
(80, 'FI', 'Finland'),
(81, 'FR', 'France'),
(82, 'GF', 'French Guiana'),
(83, 'PF', 'French Polynesia'),
(84, 'TF', 'French Southern Territories'),
(85, 'GA', 'Gabon'),
(86, 'GM', 'Gambia'),
(87, 'GE', 'Georgia'),
(88, 'DE', 'Germany'),
(89, 'GH', 'Ghana'),
(90, 'GI', 'Gibraltar'),
(91, 'GR', 'Greece'),
(92, 'GL', 'Greenland'),
(93, 'GD', 'Grenada'),
(94, 'GP', 'Guadeloupe'),
(95, 'GU', 'Guam'),
(96, 'GT', 'Guatemala'),
(97, 'GG', 'Guernsey'),
(98, 'GN', 'Guinea'),
(99, 'GW', 'Guinea-Bissau'),
(100, 'GY', 'Guyana'),
(101, 'HT', 'Haiti'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong SAR China'),
(104, 'HU', 'Hungary'),
(105, 'IS', 'Iceland'),
(106, 'IN', 'India'),
(107, 'ID', 'Indonesia'),
(108, 'IR', 'Iran'),
(109, 'IQ', 'Iraq'),
(110, 'IE', 'Ireland'),
(111, 'IM', 'Isle of Man'),
(112, 'IL', 'Israel'),
(113, 'IT', 'Italy'),
(114, 'JM', 'Jamaica'),
(115, 'JP', 'Japan'),
(116, 'JE', 'Jersey'),
(117, 'JO', 'Jordan'),
(118, 'KZ', 'Kazakhstan'),
(119, 'KE', 'Kenya'),
(120, 'KI', 'Kiribati'),
(121, 'XK', 'Kosovo'),
(122, 'KW', 'Kuwait'),
(123, 'KG', 'Kyrgyzstan'),
(124, 'LA', 'Laos'),
(125, 'LV', 'Latvia'),
(126, 'LB', 'Lebanon'),
(127, 'LS', 'Lesotho'),
(128, 'LR', 'Liberia'),
(129, 'LY', 'Libya'),
(130, 'LI', 'Liechtenstein'),
(131, 'LT', 'Lithuania'),
(132, 'LU', 'Luxembourg'),
(133, 'MO', 'Macau SAR China'),
(134, 'MK', 'Macedonia'),
(135, 'MG', 'Madagascar'),
(136, 'MW', 'Malawi'),
(137, 'MY', 'Malaysia'),
(138, 'MV', 'Maldives'),
(139, 'ML', 'Mali'),
(140, 'MT', 'Malta'),
(141, 'MH', 'Marshall Islands'),
(142, 'MQ', 'Martinique'),
(143, 'MR', 'Mauritania'),
(144, 'MU', 'Mauritius'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'Mexico'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldova'),
(149, 'MC', 'Monaco'),
(150, 'MN', 'Mongolia'),
(151, 'ME', 'Montenegro'),
(152, 'MS', 'Montserrat'),
(153, 'MA', 'Morocco'),
(154, 'MZ', 'Mozambique'),
(155, 'MM', 'Myanmar (Burma)'),
(156, 'NA', 'Namibia'),
(157, 'NR', 'Nauru'),
(158, 'NP', 'Nepal'),
(159, 'NL', 'Netherlands'),
(160, 'NC', 'New Caledonia'),
(161, 'NZ', 'New Zealand'),
(162, 'NI', 'Nicaragua'),
(163, 'NE', 'Niger'),
(164, 'NG', 'Nigeria'),
(165, 'NU', 'Niue'),
(166, 'NF', 'Norfolk Island'),
(167, 'KP', 'North Korea'),
(168, 'MP', 'Northern Mariana Islands'),
(169, 'NO', 'Norway'),
(170, 'OM', 'Oman'),
(171, 'PK', 'Pakistan'),
(172, 'PW', 'Palau'),
(173, 'PS', 'Palestinian Territories'),
(174, 'PA', 'Panama'),
(175, 'PG', 'Papua New Guinea'),
(176, 'PY', 'Paraguay'),
(177, 'PE', 'Peru'),
(178, 'PH', 'Philippines'),
(179, 'PN', 'Pitcairn Islands'),
(180, 'PL', 'Poland'),
(181, 'PT', 'Portugal'),
(182, 'PR', 'Puerto Rico'),
(183, 'QA', 'Qatar'),
(184, 'RE', 'Réunion'),
(185, 'RO', 'Romania'),
(186, 'RU', 'Russia'),
(187, 'RW', 'Rwanda'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'São Tomé & Príncipe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SX', 'Sint Maarten'),
(198, 'SK', 'Slovakia'),
(199, 'SI', 'Slovenia'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia & South Sandwich Islands'),
(204, 'KR', 'South Korea'),
(205, 'SS', 'South Sudan'),
(206, 'ES', 'Spain'),
(207, 'LK', 'Sri Lanka'),
(208, 'BL', 'St. Barthélemy'),
(209, 'SH', 'St. Helena'),
(210, 'KN', 'St. Kitts & Nevis'),
(211, 'LC', 'St. Lucia'),
(212, 'MF', 'St. Martin'),
(213, 'PM', 'St. Pierre & Miquelon'),
(214, 'VC', 'St. Vincent & Grenadines'),
(215, 'SD', 'Sudan'),
(216, 'SR', 'Suriname'),
(217, 'SJ', 'Svalbard & Jan Mayen'),
(218, 'SZ', 'Swaziland'),
(219, 'SE', 'Sweden'),
(220, 'CH', 'Switzerland'),
(221, 'SY', 'Syria'),
(222, 'TW', 'Taiwan'),
(223, 'TJ', 'Tajikistan'),
(224, 'TZ', 'Tanzania'),
(225, 'TH', 'Thailand'),
(226, 'TL', 'Timor-Leste'),
(227, 'TG', 'Togo'),
(228, 'TK', 'Tokelau'),
(229, 'TO', 'Tonga'),
(230, 'TT', 'Trinidad & Tobago'),
(231, 'TA', 'Tristan da Cunha'),
(232, 'TN', 'Tunisia'),
(233, 'TR', 'Turkey'),
(234, 'TM', 'Turkmenistan'),
(235, 'TC', 'Turks & Caicos Islands'),
(236, 'TV', 'Tuvalu'),
(237, 'UM', 'U.S. Outlying Islands'),
(238, 'VI', 'U.S. Virgin Islands'),
(239, 'UG', 'Uganda'),
(240, 'UA', 'Ukraine'),
(241, 'AE', 'United Arab Emirates'),
(242, 'GB', 'United Kingdom'),
(243, 'UN', 'United Nations'),
(244, 'US', 'United States'),
(245, 'UY', 'Uruguay'),
(246, 'UZ', 'Uzbekistan'),
(247, 'VU', 'Vanuatu'),
(248, 'VA', 'Vatican City'),
(249, 'VE', 'Venezuela'),
(250, 'VN', 'Vietnam'),
(251, 'WF', 'Wallis & Futuna'),
(252, 'EH', 'Western Sahara'),
(253, 'YE', 'Yemen'),
(254, 'ZM', 'Zambia'),
(255, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

DROP TABLE IF EXISTS `country_states`;
CREATE TABLE IF NOT EXISTS `country_states` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_states_country_id_foreign` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_code`, `code`, `default_name`, `country_id`) VALUES
(1, 'US', 'AL', 'Alabama', 244),
(2, 'US', 'AK', 'Alaska', 244),
(3, 'US', 'AS', 'American Samoa', 244),
(4, 'US', 'AZ', 'Arizona', 244),
(5, 'US', 'AR', 'Arkansas', 244),
(6, 'US', 'AE', 'Armed Forces Africa', 244),
(7, 'US', 'AA', 'Armed Forces Americas', 244),
(8, 'US', 'AE', 'Armed Forces Canada', 244),
(9, 'US', 'AE', 'Armed Forces Europe', 244),
(10, 'US', 'AE', 'Armed Forces Middle East', 244),
(11, 'US', 'AP', 'Armed Forces Pacific', 244),
(12, 'US', 'CA', 'California', 244),
(13, 'US', 'CO', 'Colorado', 244),
(14, 'US', 'CT', 'Connecticut', 244),
(15, 'US', 'DE', 'Delaware', 244),
(16, 'US', 'DC', 'District of Columbia', 244),
(17, 'US', 'FM', 'Federated States Of Micronesia', 244),
(18, 'US', 'FL', 'Florida', 244),
(19, 'US', 'GA', 'Georgia', 244),
(20, 'US', 'GU', 'Guam', 244),
(21, 'US', 'HI', 'Hawaii', 244),
(22, 'US', 'ID', 'Idaho', 244),
(23, 'US', 'IL', 'Illinois', 244),
(24, 'US', 'IN', 'Indiana', 244),
(25, 'US', 'IA', 'Iowa', 244),
(26, 'US', 'KS', 'Kansas', 244),
(27, 'US', 'KY', 'Kentucky', 244),
(28, 'US', 'LA', 'Louisiana', 244),
(29, 'US', 'ME', 'Maine', 244),
(30, 'US', 'MH', 'Marshall Islands', 244),
(31, 'US', 'MD', 'Maryland', 244),
(32, 'US', 'MA', 'Massachusetts', 244),
(33, 'US', 'MI', 'Michigan', 244),
(34, 'US', 'MN', 'Minnesota', 244),
(35, 'US', 'MS', 'Mississippi', 244),
(36, 'US', 'MO', 'Missouri', 244),
(37, 'US', 'MT', 'Montana', 244),
(38, 'US', 'NE', 'Nebraska', 244),
(39, 'US', 'NV', 'Nevada', 244),
(40, 'US', 'NH', 'New Hampshire', 244),
(41, 'US', 'NJ', 'New Jersey', 244),
(42, 'US', 'NM', 'New Mexico', 244),
(43, 'US', 'NY', 'New York', 244),
(44, 'US', 'NC', 'North Carolina', 244),
(45, 'US', 'ND', 'North Dakota', 244),
(46, 'US', 'MP', 'Northern Mariana Islands', 244),
(47, 'US', 'OH', 'Ohio', 244),
(48, 'US', 'OK', 'Oklahoma', 244),
(49, 'US', 'OR', 'Oregon', 244),
(50, 'US', 'PW', 'Palau', 244),
(51, 'US', 'PA', 'Pennsylvania', 244),
(52, 'US', 'PR', 'Puerto Rico', 244),
(53, 'US', 'RI', 'Rhode Island', 244),
(54, 'US', 'SC', 'South Carolina', 244),
(55, 'US', 'SD', 'South Dakota', 244),
(56, 'US', 'TN', 'Tennessee', 244),
(57, 'US', 'TX', 'Texas', 244),
(58, 'US', 'UT', 'Utah', 244),
(59, 'US', 'VT', 'Vermont', 244),
(60, 'US', 'VI', 'Virgin Islands', 244),
(61, 'US', 'VA', 'Virginia', 244),
(62, 'US', 'WA', 'Washington', 244),
(63, 'US', 'WV', 'West Virginia', 244),
(64, 'US', 'WI', 'Wisconsin', 244),
(65, 'US', 'WY', 'Wyoming', 244),
(66, 'CA', 'AB', 'Alberta', 40),
(67, 'CA', 'BC', 'British Columbia', 40),
(68, 'CA', 'MB', 'Manitoba', 40),
(69, 'CA', 'NL', 'Newfoundland and Labrador', 40),
(70, 'CA', 'NB', 'New Brunswick', 40),
(71, 'CA', 'NS', 'Nova Scotia', 40),
(72, 'CA', 'NT', 'Northwest Territories', 40),
(73, 'CA', 'NU', 'Nunavut', 40),
(74, 'CA', 'ON', 'Ontario', 40),
(75, 'CA', 'PE', 'Prince Edward Island', 40),
(76, 'CA', 'QC', 'Quebec', 40),
(77, 'CA', 'SK', 'Saskatchewan', 40),
(78, 'CA', 'YT', 'Yukon Territory', 40),
(79, 'DE', 'NDS', 'Niedersachsen', 88),
(80, 'DE', 'BAW', 'Baden-Württemberg', 88),
(81, 'DE', 'BAY', 'Bayern', 88),
(82, 'DE', 'BER', 'Berlin', 88),
(83, 'DE', 'BRG', 'Brandenburg', 88),
(84, 'DE', 'BRE', 'Bremen', 88),
(85, 'DE', 'HAM', 'Hamburg', 88),
(86, 'DE', 'HES', 'Hessen', 88),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern', 88),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen', 88),
(89, 'DE', 'RHE', 'Rheinland-Pfalz', 88),
(90, 'DE', 'SAR', 'Saarland', 88),
(91, 'DE', 'SAS', 'Sachsen', 88),
(92, 'DE', 'SAC', 'Sachsen-Anhalt', 88),
(93, 'DE', 'SCN', 'Schleswig-Holstein', 88),
(94, 'DE', 'THE', 'Thüringen', 88),
(95, 'AT', 'WI', 'Wien', 16),
(96, 'AT', 'NO', 'Niederösterreich', 16),
(97, 'AT', 'OO', 'Oberösterreich', 16),
(98, 'AT', 'SB', 'Salzburg', 16),
(99, 'AT', 'KN', 'Kärnten', 16),
(100, 'AT', 'ST', 'Steiermark', 16),
(101, 'AT', 'TI', 'Tirol', 16),
(102, 'AT', 'BL', 'Burgenland', 16),
(103, 'AT', 'VB', 'Vorarlberg', 16),
(104, 'CH', 'AG', 'Aargau', 220),
(105, 'CH', 'AI', 'Appenzell Innerrhoden', 220),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden', 220),
(107, 'CH', 'BE', 'Bern', 220),
(108, 'CH', 'BL', 'Basel-Landschaft', 220),
(109, 'CH', 'BS', 'Basel-Stadt', 220),
(110, 'CH', 'FR', 'Freiburg', 220),
(111, 'CH', 'GE', 'Genf', 220),
(112, 'CH', 'GL', 'Glarus', 220),
(113, 'CH', 'GR', 'Graubünden', 220),
(114, 'CH', 'JU', 'Jura', 220),
(115, 'CH', 'LU', 'Luzern', 220),
(116, 'CH', 'NE', 'Neuenburg', 220),
(117, 'CH', 'NW', 'Nidwalden', 220),
(118, 'CH', 'OW', 'Obwalden', 220),
(119, 'CH', 'SG', 'St. Gallen', 220),
(120, 'CH', 'SH', 'Schaffhausen', 220),
(121, 'CH', 'SO', 'Solothurn', 220),
(122, 'CH', 'SZ', 'Schwyz', 220),
(123, 'CH', 'TG', 'Thurgau', 220),
(124, 'CH', 'TI', 'Tessin', 220),
(125, 'CH', 'UR', 'Uri', 220),
(126, 'CH', 'VD', 'Waadt', 220),
(127, 'CH', 'VS', 'Wallis', 220),
(128, 'CH', 'ZG', 'Zug', 220),
(129, 'CH', 'ZH', 'Zürich', 220),
(130, 'ES', 'A Coruсa', 'A Coruña', 206),
(131, 'ES', 'Alava', 'Alava', 206),
(132, 'ES', 'Albacete', 'Albacete', 206),
(133, 'ES', 'Alicante', 'Alicante', 206),
(134, 'ES', 'Almeria', 'Almeria', 206),
(135, 'ES', 'Asturias', 'Asturias', 206),
(136, 'ES', 'Avila', 'Avila', 206),
(137, 'ES', 'Badajoz', 'Badajoz', 206),
(138, 'ES', 'Baleares', 'Baleares', 206),
(139, 'ES', 'Barcelona', 'Barcelona', 206),
(140, 'ES', 'Burgos', 'Burgos', 206),
(141, 'ES', 'Caceres', 'Caceres', 206),
(142, 'ES', 'Cadiz', 'Cadiz', 206),
(143, 'ES', 'Cantabria', 'Cantabria', 206),
(144, 'ES', 'Castellon', 'Castellon', 206),
(145, 'ES', 'Ceuta', 'Ceuta', 206),
(146, 'ES', 'Ciudad Real', 'Ciudad Real', 206),
(147, 'ES', 'Cordoba', 'Cordoba', 206),
(148, 'ES', 'Cuenca', 'Cuenca', 206),
(149, 'ES', 'Girona', 'Girona', 206),
(150, 'ES', 'Granada', 'Granada', 206),
(151, 'ES', 'Guadalajara', 'Guadalajara', 206),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa', 206),
(153, 'ES', 'Huelva', 'Huelva', 206),
(154, 'ES', 'Huesca', 'Huesca', 206),
(155, 'ES', 'Jaen', 'Jaen', 206),
(156, 'ES', 'La Rioja', 'La Rioja', 206),
(157, 'ES', 'Las Palmas', 'Las Palmas', 206),
(158, 'ES', 'Leon', 'Leon', 206),
(159, 'ES', 'Lleida', 'Lleida', 206),
(160, 'ES', 'Lugo', 'Lugo', 206),
(161, 'ES', 'Madrid', 'Madrid', 206),
(162, 'ES', 'Malaga', 'Malaga', 206),
(163, 'ES', 'Melilla', 'Melilla', 206),
(164, 'ES', 'Murcia', 'Murcia', 206),
(165, 'ES', 'Navarra', 'Navarra', 206),
(166, 'ES', 'Ourense', 'Ourense', 206),
(167, 'ES', 'Palencia', 'Palencia', 206),
(168, 'ES', 'Pontevedra', 'Pontevedra', 206),
(169, 'ES', 'Salamanca', 'Salamanca', 206),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife', 206),
(171, 'ES', 'Segovia', 'Segovia', 206),
(172, 'ES', 'Sevilla', 'Sevilla', 206),
(173, 'ES', 'Soria', 'Soria', 206),
(174, 'ES', 'Tarragona', 'Tarragona', 206),
(175, 'ES', 'Teruel', 'Teruel', 206),
(176, 'ES', 'Toledo', 'Toledo', 206),
(177, 'ES', 'Valencia', 'Valencia', 206),
(178, 'ES', 'Valladolid', 'Valladolid', 206),
(179, 'ES', 'Vizcaya', 'Vizcaya', 206),
(180, 'ES', 'Zamora', 'Zamora', 206),
(181, 'ES', 'Zaragoza', 'Zaragoza', 206),
(182, 'FR', '1', 'Ain', 81),
(183, 'FR', '2', 'Aisne', 81),
(184, 'FR', '3', 'Allier', 81),
(185, 'FR', '4', 'Alpes-de-Haute-Provence', 81),
(186, 'FR', '5', 'Hautes-Alpes', 81),
(187, 'FR', '6', 'Alpes-Maritimes', 81),
(188, 'FR', '7', 'Ardèche', 81),
(189, 'FR', '8', 'Ardennes', 81),
(190, 'FR', '9', 'Ariège', 81),
(191, 'FR', '10', 'Aube', 81),
(192, 'FR', '11', 'Aude', 81),
(193, 'FR', '12', 'Aveyron', 81),
(194, 'FR', '13', 'Bouches-du-Rhône', 81),
(195, 'FR', '14', 'Calvados', 81),
(196, 'FR', '15', 'Cantal', 81),
(197, 'FR', '16', 'Charente', 81),
(198, 'FR', '17', 'Charente-Maritime', 81),
(199, 'FR', '18', 'Cher', 81),
(200, 'FR', '19', 'Corrèze', 81),
(201, 'FR', '2A', 'Corse-du-Sud', 81),
(202, 'FR', '2B', 'Haute-Corse', 81),
(203, 'FR', '21', 'Côte-d\'Or', 81),
(204, 'FR', '22', 'Côtes-d\'Armor', 81),
(205, 'FR', '23', 'Creuse', 81),
(206, 'FR', '24', 'Dordogne', 81),
(207, 'FR', '25', 'Doubs', 81),
(208, 'FR', '26', 'Drôme', 81),
(209, 'FR', '27', 'Eure', 81),
(210, 'FR', '28', 'Eure-et-Loir', 81),
(211, 'FR', '29', 'Finistère', 81),
(212, 'FR', '30', 'Gard', 81),
(213, 'FR', '31', 'Haute-Garonne', 81),
(214, 'FR', '32', 'Gers', 81),
(215, 'FR', '33', 'Gironde', 81),
(216, 'FR', '34', 'Hérault', 81),
(217, 'FR', '35', 'Ille-et-Vilaine', 81),
(218, 'FR', '36', 'Indre', 81),
(219, 'FR', '37', 'Indre-et-Loire', 81),
(220, 'FR', '38', 'Isère', 81),
(221, 'FR', '39', 'Jura', 81),
(222, 'FR', '40', 'Landes', 81),
(223, 'FR', '41', 'Loir-et-Cher', 81),
(224, 'FR', '42', 'Loire', 81),
(225, 'FR', '43', 'Haute-Loire', 81),
(226, 'FR', '44', 'Loire-Atlantique', 81),
(227, 'FR', '45', 'Loiret', 81),
(228, 'FR', '46', 'Lot', 81),
(229, 'FR', '47', 'Lot-et-Garonne', 81),
(230, 'FR', '48', 'Lozère', 81),
(231, 'FR', '49', 'Maine-et-Loire', 81),
(232, 'FR', '50', 'Manche', 81),
(233, 'FR', '51', 'Marne', 81),
(234, 'FR', '52', 'Haute-Marne', 81),
(235, 'FR', '53', 'Mayenne', 81),
(236, 'FR', '54', 'Meurthe-et-Moselle', 81),
(237, 'FR', '55', 'Meuse', 81),
(238, 'FR', '56', 'Morbihan', 81),
(239, 'FR', '57', 'Moselle', 81),
(240, 'FR', '58', 'Nièvre', 81),
(241, 'FR', '59', 'Nord', 81),
(242, 'FR', '60', 'Oise', 81),
(243, 'FR', '61', 'Orne', 81),
(244, 'FR', '62', 'Pas-de-Calais', 81),
(245, 'FR', '63', 'Puy-de-Dôme', 81),
(246, 'FR', '64', 'Pyrénées-Atlantiques', 81),
(247, 'FR', '65', 'Hautes-Pyrénées', 81),
(248, 'FR', '66', 'Pyrénées-Orientales', 81),
(249, 'FR', '67', 'Bas-Rhin', 81),
(250, 'FR', '68', 'Haut-Rhin', 81),
(251, 'FR', '69', 'Rhône', 81),
(252, 'FR', '70', 'Haute-Saône', 81),
(253, 'FR', '71', 'Saône-et-Loire', 81),
(254, 'FR', '72', 'Sarthe', 81),
(255, 'FR', '73', 'Savoie', 81),
(256, 'FR', '74', 'Haute-Savoie', 81),
(257, 'FR', '75', 'Paris', 81),
(258, 'FR', '76', 'Seine-Maritime', 81),
(259, 'FR', '77', 'Seine-et-Marne', 81),
(260, 'FR', '78', 'Yvelines', 81),
(261, 'FR', '79', 'Deux-Sèvres', 81),
(262, 'FR', '80', 'Somme', 81),
(263, 'FR', '81', 'Tarn', 81),
(264, 'FR', '82', 'Tarn-et-Garonne', 81),
(265, 'FR', '83', 'Var', 81),
(266, 'FR', '84', 'Vaucluse', 81),
(267, 'FR', '85', 'Vendée', 81),
(268, 'FR', '86', 'Vienne', 81),
(269, 'FR', '87', 'Haute-Vienne', 81),
(270, 'FR', '88', 'Vosges', 81),
(271, 'FR', '89', 'Yonne', 81),
(272, 'FR', '90', 'Territoire-de-Belfort', 81),
(273, 'FR', '91', 'Essonne', 81),
(274, 'FR', '92', 'Hauts-de-Seine', 81),
(275, 'FR', '93', 'Seine-Saint-Denis', 81),
(276, 'FR', '94', 'Val-de-Marne', 81),
(277, 'FR', '95', 'Val-d\'Oise', 81),
(278, 'RO', 'AB', 'Alba', 185),
(279, 'RO', 'AR', 'Arad', 185),
(280, 'RO', 'AG', 'Argeş', 185),
(281, 'RO', 'BC', 'Bacău', 185),
(282, 'RO', 'BH', 'Bihor', 185),
(283, 'RO', 'BN', 'Bistriţa-Năsăud', 185),
(284, 'RO', 'BT', 'Botoşani', 185),
(285, 'RO', 'BV', 'Braşov', 185),
(286, 'RO', 'BR', 'Brăila', 185),
(287, 'RO', 'B', 'Bucureşti', 185),
(288, 'RO', 'BZ', 'Buzău', 185),
(289, 'RO', 'CS', 'Caraş-Severin', 185),
(290, 'RO', 'CL', 'Călăraşi', 185),
(291, 'RO', 'CJ', 'Cluj', 185),
(292, 'RO', 'CT', 'Constanţa', 185),
(293, 'RO', 'CV', 'Covasna', 185),
(294, 'RO', 'DB', 'Dâmboviţa', 185),
(295, 'RO', 'DJ', 'Dolj', 185),
(296, 'RO', 'GL', 'Galaţi', 185),
(297, 'RO', 'GR', 'Giurgiu', 185),
(298, 'RO', 'GJ', 'Gorj', 185),
(299, 'RO', 'HR', 'Harghita', 185),
(300, 'RO', 'HD', 'Hunedoara', 185),
(301, 'RO', 'IL', 'Ialomiţa', 185),
(302, 'RO', 'IS', 'Iaşi', 185),
(303, 'RO', 'IF', 'Ilfov', 185),
(304, 'RO', 'MM', 'Maramureş', 185),
(305, 'RO', 'MH', 'Mehedinţi', 185),
(306, 'RO', 'MS', 'Mureş', 185),
(307, 'RO', 'NT', 'Neamţ', 185),
(308, 'RO', 'OT', 'Olt', 185),
(309, 'RO', 'PH', 'Prahova', 185),
(310, 'RO', 'SM', 'Satu-Mare', 185),
(311, 'RO', 'SJ', 'Sălaj', 185),
(312, 'RO', 'SB', 'Sibiu', 185),
(313, 'RO', 'SV', 'Suceava', 185),
(314, 'RO', 'TR', 'Teleorman', 185),
(315, 'RO', 'TM', 'Timiş', 185),
(316, 'RO', 'TL', 'Tulcea', 185),
(317, 'RO', 'VS', 'Vaslui', 185),
(318, 'RO', 'VL', 'Vâlcea', 185),
(319, 'RO', 'VN', 'Vrancea', 185),
(320, 'FI', 'Lappi', 'Lappi', 80),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa', 80),
(322, 'FI', 'Kainuu', 'Kainuu', 80),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala', 80),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo', 80),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo', 80),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa', 80),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa', 80),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa', 80),
(329, 'FI', 'Satakunta', 'Satakunta', 80),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa', 80),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi', 80),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi', 80),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala', 80),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme', 80),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme', 80),
(336, 'FI', 'Uusimaa', 'Uusimaa', 80),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa', 80),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso', 80),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa', 80),
(340, 'EE', 'EE-37', 'Harjumaa', 74),
(341, 'EE', 'EE-39', 'Hiiumaa', 74),
(342, 'EE', 'EE-44', 'Ida-Virumaa', 74),
(343, 'EE', 'EE-49', 'Jõgevamaa', 74),
(344, 'EE', 'EE-51', 'Järvamaa', 74),
(345, 'EE', 'EE-57', 'Läänemaa', 74),
(346, 'EE', 'EE-59', 'Lääne-Virumaa', 74),
(347, 'EE', 'EE-65', 'Põlvamaa', 74),
(348, 'EE', 'EE-67', 'Pärnumaa', 74),
(349, 'EE', 'EE-70', 'Raplamaa', 74),
(350, 'EE', 'EE-74', 'Saaremaa', 74),
(351, 'EE', 'EE-78', 'Tartumaa', 74),
(352, 'EE', 'EE-82', 'Valgamaa', 74),
(353, 'EE', 'EE-84', 'Viljandimaa', 74),
(354, 'EE', 'EE-86', 'Võrumaa', 74),
(355, 'LV', 'LV-DGV', 'Daugavpils', 125),
(356, 'LV', 'LV-JEL', 'Jelgava', 125),
(357, 'LV', 'Jēkabpils', 'Jēkabpils', 125),
(358, 'LV', 'LV-JUR', 'Jūrmala', 125),
(359, 'LV', 'LV-LPX', 'Liepāja', 125),
(360, 'LV', 'LV-LE', 'Liepājas novads', 125),
(361, 'LV', 'LV-REZ', 'Rēzekne', 125),
(362, 'LV', 'LV-RIX', 'Rīga', 125),
(363, 'LV', 'LV-RI', 'Rīgas novads', 125),
(364, 'LV', 'Valmiera', 'Valmiera', 125),
(365, 'LV', 'LV-VEN', 'Ventspils', 125),
(366, 'LV', 'Aglonas novads', 'Aglonas novads', 125),
(367, 'LV', 'LV-AI', 'Aizkraukles novads', 125),
(368, 'LV', 'Aizputes novads', 'Aizputes novads', 125),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads', 125),
(370, 'LV', 'Alojas novads', 'Alojas novads', 125),
(371, 'LV', 'Alsungas novads', 'Alsungas novads', 125),
(372, 'LV', 'LV-AL', 'Alūksnes novads', 125),
(373, 'LV', 'Amatas novads', 'Amatas novads', 125),
(374, 'LV', 'Apes novads', 'Apes novads', 125),
(375, 'LV', 'Auces novads', 'Auces novads', 125),
(376, 'LV', 'Babītes novads', 'Babītes novads', 125),
(377, 'LV', 'Baldones novads', 'Baldones novads', 125),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads', 125),
(379, 'LV', 'LV-BL', 'Balvu novads', 125),
(380, 'LV', 'LV-BU', 'Bauskas novads', 125),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads', 125),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads', 125),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads', 125),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads', 125),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads', 125),
(386, 'LV', 'Ciblas novads', 'Ciblas novads', 125),
(387, 'LV', 'LV-CE', 'Cēsu novads', 125),
(388, 'LV', 'Dagdas novads', 'Dagdas novads', 125),
(389, 'LV', 'LV-DA', 'Daugavpils novads', 125),
(390, 'LV', 'LV-DO', 'Dobeles novads', 125),
(391, 'LV', 'Dundagas novads', 'Dundagas novads', 125),
(392, 'LV', 'Durbes novads', 'Durbes novads', 125),
(393, 'LV', 'Engures novads', 'Engures novads', 125),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads', 125),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads', 125),
(396, 'LV', 'LV-GU', 'Gulbenes novads', 125),
(397, 'LV', 'Iecavas novads', 'Iecavas novads', 125),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads', 125),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads', 125),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads', 125),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads', 125),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads', 125),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads', 125),
(404, 'LV', 'LV-JL', 'Jelgavas novads', 125),
(405, 'LV', 'LV-JK', 'Jēkabpils novads', 125),
(406, 'LV', 'Kandavas novads', 'Kandavas novads', 125),
(407, 'LV', 'Kokneses novads', 'Kokneses novads', 125),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads', 125),
(409, 'LV', 'Krustpils novads', 'Krustpils novads', 125),
(410, 'LV', 'LV-KR', 'Krāslavas novads', 125),
(411, 'LV', 'LV-KU', 'Kuldīgas novads', 125),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads', 125),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads', 125),
(414, 'LV', 'LV-LM', 'Limbažu novads', 125),
(415, 'LV', 'Lubānas novads', 'Lubānas novads', 125),
(416, 'LV', 'LV-LU', 'Ludzas novads', 125),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads', 125),
(418, 'LV', 'Līvānu novads', 'Līvānu novads', 125),
(419, 'LV', 'LV-MA', 'Madonas novads', 125),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads', 125),
(421, 'LV', 'Mālpils novads', 'Mālpils novads', 125),
(422, 'LV', 'Mārupes novads', 'Mārupes novads', 125),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads', 125),
(424, 'LV', 'Neretas novads', 'Neretas novads', 125),
(425, 'LV', 'Nīcas novads', 'Nīcas novads', 125),
(426, 'LV', 'LV-OG', 'Ogres novads', 125),
(427, 'LV', 'Olaines novads', 'Olaines novads', 125),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads', 125),
(429, 'LV', 'LV-PR', 'Preiļu novads', 125),
(430, 'LV', 'Priekules novads', 'Priekules novads', 125),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads', 125),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads', 125),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads', 125),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads', 125),
(435, 'LV', 'Raunas novads', 'Raunas novads', 125),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads', 125),
(437, 'LV', 'Rojas novads', 'Rojas novads', 125),
(438, 'LV', 'Ropažu novads', 'Ropažu novads', 125),
(439, 'LV', 'Rucavas novads', 'Rucavas novads', 125),
(440, 'LV', 'Rugāju novads', 'Rugāju novads', 125),
(441, 'LV', 'Rundāles novads', 'Rundāles novads', 125),
(442, 'LV', 'LV-RE', 'Rēzeknes novads', 125),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads', 125),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads', 125),
(445, 'LV', 'Salas novads', 'Salas novads', 125),
(446, 'LV', 'Salaspils novads', 'Salaspils novads', 125),
(447, 'LV', 'LV-SA', 'Saldus novads', 125),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads', 125),
(449, 'LV', 'Siguldas novads', 'Siguldas novads', 125),
(450, 'LV', 'Skrundas novads', 'Skrundas novads', 125),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads', 125),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads', 125),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads', 125),
(454, 'LV', 'Strenču novads', 'Strenču novads', 125),
(455, 'LV', 'Sējas novads', 'Sējas novads', 125),
(456, 'LV', 'LV-TA', 'Talsu novads', 125),
(457, 'LV', 'LV-TU', 'Tukuma novads', 125),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads', 125),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads', 125),
(460, 'LV', 'LV-VK', 'Valkas novads', 125),
(461, 'LV', 'LV-VM', 'Valmieras novads', 125),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads', 125),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads', 125),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads', 125),
(465, 'LV', 'LV-VE', 'Ventspils novads', 125),
(466, 'LV', 'Viesītes novads', 'Viesītes novads', 125),
(467, 'LV', 'Viļakas novads', 'Viļakas novads', 125),
(468, 'LV', 'Viļānu novads', 'Viļānu novads', 125),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads', 125),
(470, 'LV', 'Zilupes novads', 'Zilupes novads', 125),
(471, 'LV', 'Ādažu novads', 'Ādažu novads', 125),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads', 125),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads', 125),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads', 125),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis', 131),
(476, 'LT', 'LT-KU', 'Kauno Apskritis', 131),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis', 131),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis', 131),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis', 131),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis', 131),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis', 131),
(482, 'LT', 'LT-TE', 'Telšių Apskritis', 131),
(483, 'LT', 'LT-UT', 'Utenos Apskritis', 131),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis', 131),
(485, 'BR', 'AC', 'Acre', 31),
(486, 'BR', 'AL', 'Alagoas', 31),
(487, 'BR', 'AP', 'Amapá', 31),
(488, 'BR', 'AM', 'Amazonas', 31),
(489, 'BR', 'BA', 'Bahia', 31),
(490, 'BR', 'CE', 'Ceará', 31),
(491, 'BR', 'ES', 'Espírito Santo', 31),
(492, 'BR', 'GO', 'Goiás', 31),
(493, 'BR', 'MA', 'Maranhão', 31),
(494, 'BR', 'MT', 'Mato Grosso', 31),
(495, 'BR', 'MS', 'Mato Grosso do Sul', 31),
(496, 'BR', 'MG', 'Minas Gerais', 31),
(497, 'BR', 'PA', 'Pará', 31),
(498, 'BR', 'PB', 'Paraíba', 31),
(499, 'BR', 'PR', 'Paraná', 31),
(500, 'BR', 'PE', 'Pernambuco', 31),
(501, 'BR', 'PI', 'Piauí', 31),
(502, 'BR', 'RJ', 'Rio de Janeiro', 31),
(503, 'BR', 'RN', 'Rio Grande do Norte', 31),
(504, 'BR', 'RS', 'Rio Grande do Sul', 31),
(505, 'BR', 'RO', 'Rondônia', 31),
(506, 'BR', 'RR', 'Roraima', 31),
(507, 'BR', 'SC', 'Santa Catarina', 31),
(508, 'BR', 'SP', 'São Paulo', 31),
(509, 'BR', 'SE', 'Sergipe', 31),
(510, 'BR', 'TO', 'Tocantins', 31),
(511, 'BR', 'DF', 'Distrito Federal', 31),
(512, 'HR', 'HR-01', 'Zagrebačka županija', 59),
(513, 'HR', 'HR-02', 'Krapinsko-zagorska županija', 59),
(514, 'HR', 'HR-03', 'Sisačko-moslavačka županija', 59),
(515, 'HR', 'HR-04', 'Karlovačka županija', 59),
(516, 'HR', 'HR-05', 'Varaždinska županija', 59),
(517, 'HR', 'HR-06', 'Koprivničko-križevačka županija', 59),
(518, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija', 59),
(519, 'HR', 'HR-08', 'Primorsko-goranska županija', 59),
(520, 'HR', 'HR-09', 'Ličko-senjska županija', 59),
(521, 'HR', 'HR-10', 'Virovitičko-podravska županija', 59),
(522, 'HR', 'HR-11', 'Požeško-slavonska županija', 59),
(523, 'HR', 'HR-12', 'Brodsko-posavska županija', 59),
(524, 'HR', 'HR-13', 'Zadarska županija', 59),
(525, 'HR', 'HR-14', 'Osječko-baranjska županija', 59),
(526, 'HR', 'HR-15', 'Šibensko-kninska županija', 59),
(527, 'HR', 'HR-16', 'Vukovarsko-srijemska županija', 59),
(528, 'HR', 'HR-17', 'Splitsko-dalmatinska županija', 59),
(529, 'HR', 'HR-18', 'Istarska županija', 59),
(530, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija', 59),
(531, 'HR', 'HR-20', 'Međimurska županija', 59),
(532, 'HR', 'HR-21', 'Grad Zagreb', 59),
(533, 'IN', 'AN', 'Andaman and Nicobar Islands', 106),
(534, 'IN', 'AP', 'Andhra Pradesh', 106),
(535, 'IN', 'AR', 'Arunachal Pradesh', 106),
(536, 'IN', 'AS', 'Assam', 106),
(537, 'IN', 'BR', 'Bihar', 106),
(538, 'IN', 'CH', 'Chandigarh', 106),
(539, 'IN', 'CT', 'Chhattisgarh', 106),
(540, 'IN', 'DN', 'Dadra and Nagar Haveli', 106),
(541, 'IN', 'DD', 'Daman and Diu', 106),
(542, 'IN', 'DL', 'Delhi', 106),
(543, 'IN', 'GA', 'Goa', 106),
(544, 'IN', 'GJ', 'Gujarat', 106),
(545, 'IN', 'HR', 'Haryana', 106),
(546, 'IN', 'HP', 'Himachal Pradesh', 106),
(547, 'IN', 'JK', 'Jammu and Kashmir', 106),
(548, 'IN', 'JH', 'Jharkhand', 106),
(549, 'IN', 'KA', 'Karnataka', 106),
(550, 'IN', 'KL', 'Kerala', 106),
(551, 'IN', 'LD', 'Lakshadweep', 106),
(552, 'IN', 'MP', 'Madhya Pradesh', 106),
(553, 'IN', 'MH', 'Maharashtra', 106),
(554, 'IN', 'MN', 'Manipur', 106),
(555, 'IN', 'ML', 'Meghalaya', 106),
(556, 'IN', 'MZ', 'Mizoram', 106),
(557, 'IN', 'NL', 'Nagaland', 106),
(558, 'IN', 'OR', 'Odisha', 106),
(559, 'IN', 'PY', 'Puducherry', 106),
(560, 'IN', 'PB', 'Punjab', 106),
(561, 'IN', 'RJ', 'Rajasthan', 106),
(562, 'IN', 'SK', 'Sikkim', 106),
(563, 'IN', 'TN', 'Tamil Nadu', 106),
(564, 'IN', 'TG', 'Telangana', 106),
(565, 'IN', 'TR', 'Tripura', 106),
(566, 'IN', 'UP', 'Uttar Pradesh', 106),
(567, 'IN', 'UT', 'Uttarakhand', 106),
(568, 'IN', 'WB', 'West Bengal', 106);

-- --------------------------------------------------------

--
-- Table structure for table `country_state_translations`
--

DROP TABLE IF EXISTS `country_state_translations`;
CREATE TABLE IF NOT EXISTS `country_state_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `country_state_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_state_translations_country_state_id_foreign` (`country_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

DROP TABLE IF EXISTS `country_translations`;
CREATE TABLE IF NOT EXISTS `country_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `country_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_translations_country_id_foreign` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'USD', 'US Dollar', NULL, NULL),
(2, 'IRL', 'ریال', '2019-11-28 23:05:27', '2019-11-28 23:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `currency_exchange_rates`
--

DROP TABLE IF EXISTS `currency_exchange_rates`;
CREATE TABLE IF NOT EXISTS `currency_exchange_rates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rate` decimal(24,12) NOT NULL,
  `target_currency` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_exchange_rates_target_currency_unique` (`target_currency`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `currency_exchange_rates`
--

INSERT INTO `currency_exchange_rates` (`id`, `rate`, `target_currency`, `created_at`, `updated_at`) VALUES
(1, '0.000000000000', 1, '2019-11-29 15:55:45', '2019-11-29 21:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribed_to_news_letter` tinyint(1) NOT NULL DEFAULT '0',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`),
  KEY `customers_customer_group_id_foreign` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

DROP TABLE IF EXISTS `customer_addresses`;
CREATE TABLE IF NOT EXISTS `customer_addresses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` int(11) NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_address` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_addresses_customer_id_foreign` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
CREATE TABLE IF NOT EXISTS `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_groups_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `is_user_defined`, `created_at`, `updated_at`, `code`) VALUES
(1, 'Guest', 0, NULL, NULL, 'guest'),
(2, 'General', 0, NULL, NULL, 'general'),
(3, 'Wholesale', 0, NULL, NULL, 'wholesale');

-- --------------------------------------------------------

--
-- Table structure for table `customer_password_resets`
--

DROP TABLE IF EXISTS `customer_password_resets`;
CREATE TABLE IF NOT EXISTS `customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `customer_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_sources`
--

DROP TABLE IF EXISTS `inventory_sources`;
CREATE TABLE IF NOT EXISTS `inventory_sources` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `latitude` decimal(10,5) DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_sources_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `inventory_sources`
--

INSERT INTO `inventory_sources` (`id`, `code`, `name`, `description`, `contact_name`, `contact_email`, `contact_number`, `contact_fax`, `country`, `state`, `city`, `street`, `postcode`, `priority`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'انبار مرکزی', 'انبار مرکزی', 'انبار مرکزی', 'nicolas@gmail.com', '09192244689', '', 'IR', 'Tehran', 'Tehran', 'Baharestan', '48127', 0, '0.00000', '0.00000', 1, NULL, '2019-11-29 15:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT '0',
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `order_address_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_order_id_foreign` (`order_id`),
  KEY `invoices_order_address_id_foreign` (`order_address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `increment_id`, `state`, `email_sent`, `total_qty`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `sub_total`, `base_sub_total`, `grand_total`, `base_grand_total`, `shipping_amount`, `base_shipping_amount`, `tax_amount`, `base_tax_amount`, `discount_amount`, `base_discount_amount`, `order_id`, `order_address_id`, `created_at`, `updated_at`, `transaction_id`) VALUES
(1, '1', NULL, 1, 1, '1', '1', '1', '1.0000', '1.0000', '1.0000', '1.0000', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, 1, NULL, NULL, '1'),
(2, NULL, 'paid', 0, 1, 'USD', 'ریال', 'ریال', '222.0000', '222.0000', '232.0000', '232.0000', '10.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', 3, 6, '2019-11-29 16:09:42', '2019-11-29 16:09:42', NULL),
(3, NULL, 'paid', 0, 1, 'USD', 'ریال', 'ریال', '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 2, 4, '2019-11-29 16:10:34', '2019-11-29 16:10:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
CREATE TABLE IF NOT EXISTS `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  KEY `invoice_items_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `name`, `description`, `sku`, `qty`, `price`, `base_price`, `total`, `base_total`, `tax_amount`, `base_tax_amount`, `product_id`, `product_type`, `order_item_id`, `invoice_id`, `parent_id`, `additional`, `created_at`, `updated_at`, `discount_percent`, `discount_amount`, `base_discount_amount`) VALUES
(1, 'تست', NULL, 'yyy', 1, '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', 4, 'Webkul\\Product\\Models\\Product', 3, 2, NULL, '{\"product\": \"4\", \"quantity\": \"1\", \"is_configurable\": \"false\"}', '2019-11-29 16:09:42', '2019-11-29 16:09:42', '0.0000', '0.0000', '0.0000'),
(2, 'تست', NULL, 'yyy', 1, '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', 4, 'Webkul\\Product\\Models\\Product', 2, 3, NULL, '{\"product\": \"4\", \"quantity\": \"1\", \"is_configurable\": \"false\"}', '2019-11-29 16:10:34', '2019-11-29 16:10:34', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
CREATE TABLE IF NOT EXISTS `locales` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `direction` enum('ltr','rtl') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  PRIMARY KEY (`id`),
  UNIQUE KEY `locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `locales`
--

INSERT INTO `locales` (`id`, `code`, `name`, `created_at`, `updated_at`, `direction`) VALUES
(6, 'en', 'Enlish\r\n', '2019-11-27 22:56:39', '2019-11-27 22:56:39', 'ltr'),
(7, 'fa', 'Farsi', '2019-11-28 18:46:53', '2019-11-28 18:46:53', 'rtl');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_admin_password_resets_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_06_12_111907_create_admins_table', 1),
(5, '2018_06_13_055341_create_roles_table', 1),
(6, '2018_07_05_130148_create_attributes_table', 1),
(7, '2018_07_05_132854_create_attribute_translations_table', 1),
(8, '2018_07_05_135150_create_attribute_families_table', 1),
(9, '2018_07_05_135152_create_attribute_groups_table', 1),
(10, '2018_07_05_140832_create_attribute_options_table', 1),
(11, '2018_07_05_140856_create_attribute_option_translations_table', 1),
(12, '2018_07_05_142820_create_categories_table', 1),
(13, '2018_07_10_055143_create_locales_table', 1),
(14, '2018_07_20_054426_create_countries_table', 1),
(15, '2018_07_20_054502_create_currencies_table', 1),
(16, '2018_07_20_054542_create_currency_exchange_rates_table', 1),
(17, '2018_07_20_064849_create_channels_table', 1),
(18, '2018_07_21_142836_create_category_translations_table', 1),
(19, '2018_07_23_110040_create_inventory_sources_table', 1),
(20, '2018_07_24_082635_create_customer_groups_table', 1),
(21, '2018_07_24_082930_create_customers_table', 1),
(22, '2018_07_24_083025_create_customer_addresses_table', 1),
(23, '2018_07_27_065727_create_products_table', 1),
(24, '2018_07_27_070011_create_product_attribute_values_table', 1),
(25, '2018_07_27_092623_create_product_reviews_table', 1),
(26, '2018_07_27_113941_create_product_images_table', 1),
(27, '2018_07_27_113956_create_product_inventories_table', 1),
(28, '2018_08_03_114203_create_sliders_table', 1),
(29, '2018_08_30_064755_create_tax_categories_table', 1),
(30, '2018_08_30_065042_create_tax_rates_table', 1),
(31, '2018_08_30_065840_create_tax_mappings_table', 1),
(32, '2018_09_05_150444_create_cart_table', 1),
(33, '2018_09_05_150915_create_cart_items_table', 1),
(34, '2018_09_11_064045_customer_password_resets', 1),
(35, '2018_09_19_092845_create_cart_address', 1),
(36, '2018_09_19_093453_create_cart_payment', 1),
(37, '2018_09_19_093508_create_cart_shipping_rates_table', 1),
(38, '2018_09_20_060658_create_core_config_table', 1),
(39, '2018_09_27_113154_create_orders_table', 1),
(40, '2018_09_27_113207_create_order_items_table', 1),
(41, '2018_09_27_113405_create_order_address_table', 1),
(42, '2018_09_27_115022_create_shipments_table', 1),
(43, '2018_09_27_115029_create_shipment_items_table', 1),
(44, '2018_09_27_115135_create_invoices_table', 1),
(45, '2018_09_27_115144_create_invoice_items_table', 1),
(46, '2018_10_01_095504_create_order_payment_table', 1),
(47, '2018_10_03_025230_create_wishlist_table', 1),
(48, '2018_10_12_101803_create_country_translations_table', 1),
(49, '2018_10_12_101913_create_country_states_table', 1),
(50, '2018_10_12_101923_create_country_state_translations_table', 1),
(51, '2018_11_15_153257_alter_order_table', 1),
(52, '2018_11_15_163729_alter_invoice_table', 1),
(53, '2018_11_16_173504_create_subscribers_list_table', 1),
(54, '2018_11_17_165758_add_is_verified_column_in_customers_table', 1),
(55, '2018_11_21_144411_create_cart_item_inventories_table', 1),
(56, '2018_11_26_110500_change_gender_column_in_customers_table', 1),
(57, '2018_11_27_174449_change_content_column_in_sliders_table', 1),
(58, '2018_12_05_132625_drop_foreign_key_core_config_table', 1),
(59, '2018_12_05_132629_alter_core_config_table', 1),
(60, '2018_12_06_185202_create_product_flat_table', 1),
(61, '2018_12_21_101307_alter_channels_table', 1),
(62, '2018_12_24_123812_create_channel_inventory_sources_table', 1),
(63, '2018_12_24_184402_alter_shipments_table', 1),
(64, '2018_12_26_165327_create_product_ordered_inventories_table', 1),
(65, '2018_12_31_161114_alter_channels_category_table', 1),
(66, '2019_01_11_122452_add_vendor_id_column_in_product_inventories_table', 1),
(67, '2019_01_25_124522_add_updated_at_column_in_product_flat_table', 1),
(68, '2019_01_29_123053_add_min_price_and_max_price_column_in_product_flat_table', 1),
(69, '2019_01_31_164117_update_value_column_type_to_text_in_core_config_table', 1),
(70, '2019_02_21_145238_alter_product_reviews_table', 1),
(71, '2019_02_21_152709_add_swatch_type_column_in_attributes_table', 1),
(72, '2019_02_21_153035_alter_customer_id_in_product_reviews_table', 1),
(73, '2019_02_21_153851_add_swatch_value_columns_in_attribute_options_table', 1),
(74, '2019_03_15_123337_add_display_mode_column_in_categories_table', 1),
(75, '2019_03_28_103658_add_notes_column_in_customers_table', 1),
(76, '2019_04_24_155820_alter_product_flat_table', 1),
(77, '2019_05_13_024326_create_cart_rule_table', 1),
(78, '2019_05_13_024340_create_cart_rule_channels_table', 1),
(79, '2019_05_13_024419_create_cart_rule_customer_groups_table', 1),
(80, '2019_05_16_094238_create_cart_rule_labels_table', 1),
(81, '2019_05_22_165833_update_zipcode_column_type_to_varchar_in_cart_address_table', 1),
(82, '2019_05_23_113407_add_remaining_column_in_product_flat_table', 1),
(83, '2019_05_23_155520_add_discount_columns_in_invoice_items_table', 1),
(84, '2019_05_23_175727_create_cart_rule_customers_table', 1),
(85, '2019_05_23_180457_create_cart_rule_coupons_table', 1),
(86, '2019_05_23_184029_rename_discount_columns_in_cart_table', 1),
(87, '2019_05_24_113949_create_cart_rule_coupons_usage_table', 1),
(88, '2019_05_30_141207_create_cart_rule_cart_table', 1),
(89, '2019_06_04_114009_add_phone_column_in_customers_table', 1),
(90, '2019_06_06_195905_update_custom_price_to_nullable_in_cart_items', 1),
(91, '2019_06_15_183412_add_code_column_in_customer_groups_table', 1),
(92, '2019_06_19_162817_remove_unique_in_phone_column_in_customers_table', 1),
(93, '2019_06_25_110122_remove_is_guest_from_cart_rules_table', 1),
(94, '2019_07_11_151210_add_locale_id_in_category_translations', 1),
(95, '2019_07_14_070809_add_products_selection_column_in_cart_rules_table', 1),
(96, '2019_07_23_033128_alter_locales_table', 1),
(97, '2019_07_29_142734_add_use_in_flat_column_in_attributes_table', 1),
(98, '2019_07_30_153530_create_cms_pages_table', 1),
(99, '2019_07_31_143339_create_category_filterable_attributes_table', 1),
(100, '2019_08_08_130433_create_catalog_rules_table', 1),
(101, '2019_08_08_130451_create_catalog_rule_customer_groups_table', 1),
(102, '2019_08_08_130458_create_catalog_rule_channels_table', 1),
(103, '2019_08_08_130550_create_catalog_rule_products_table', 1),
(104, '2019_08_08_130583_create_catalog_rule_products_price_table', 1),
(105, '2019_08_21_123707_add_seo_column_in_channels_table', 1),
(106, '2019_09_11_184511_create_refunds_table', 1),
(107, '2019_09_11_184519_create_refund_items_table', 1),
(108, '2019_09_26_163950_remove_channel_id_from_customers_table', 1),
(109, '2019_10_03_105451_change_rate_column_in_currency_exchange_rates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT '0',
  `total_item_count` int(11) DEFAULT NULL,
  `total_qty_ordered` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `grand_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `grand_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `sub_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total_invoiced` decimal(12,4) DEFAULT '0.0000',
  `sub_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total_refunded` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `shipping_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_invoiced` decimal(12,4) DEFAULT '0.0000',
  `shipping_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_refunded` decimal(12,4) DEFAULT '0.0000',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_customer_id_foreign` (`customer_id`),
  KEY `orders_channel_id_foreign` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `increment_id`, `status`, `channel_name`, `is_guest`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `shipping_title`, `shipping_description`, `coupon_code`, `is_gift`, `total_item_count`, `total_qty_ordered`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `grand_total`, `base_grand_total`, `grand_total_invoiced`, `base_grand_total_invoiced`, `grand_total_refunded`, `base_grand_total_refunded`, `sub_total`, `base_sub_total`, `sub_total_invoiced`, `base_sub_total_invoiced`, `sub_total_refunded`, `base_sub_total_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `shipping_amount`, `base_shipping_amount`, `shipping_invoiced`, `base_shipping_invoiced`, `shipping_refunded`, `base_shipping_refunded`, `customer_id`, `customer_type`, `channel_id`, `channel_type`, `created_at`, `updated_at`, `cart_id`) VALUES
(1, '1', 'pending', 'Default', 1, 'farshad.badiee@gmail.com', 'asd', 'asd', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'USD', 'USD', 'USD', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', '2019-11-28 18:53:21', '2019-11-28 18:53:21', 1),
(2, '2', 'completed', 'Default', 1, 'farshad.badiee@gmail.com', 'asd', 'asd', 'free_free', 'ارسال رایگان - ارسال رایگان', 'ارسال رایگان', NULL, 0, 1, 1, 'USD', 'ریال', 'ریال', '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', '2019-11-29 12:29:18', '2019-11-29 16:10:50', 2),
(3, '3', 'completed', 'Default', 1, 'farshad.badiee@gmail.com', 'asd', 'asd', 'flatrate_flatrate', 'نرخ ثابت - نرخ ثابت', 'نرخ ثابت', NULL, 0, 1, 1, 'USD', 'ریال', 'ریال', '232.0000', '232.0000', '232.0000', '232.0000', '0.0000', '0.0000', '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '10.0000', '10.0000', '10.0000', '0.0000', '0.0000', NULL, NULL, 1, 'Webkul\\Core\\Models\\Channel', '2019-11-29 12:31:14', '2019-11-29 16:10:13', 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_address`
--

DROP TABLE IF EXISTS `order_address`;
CREATE TABLE IF NOT EXISTS `order_address` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` int(11) NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_address_order_id_foreign` (`order_id`),
  KEY `order_address_customer_id_foreign` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_address`
--

INSERT INTO `order_address` (`id`, `first_name`, `last_name`, `email`, `address1`, `address2`, `country`, `state`, `city`, `postcode`, `phone`, `address_type`, `order_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', 123, '09192244689', 'shipping', 1, NULL, '2019-11-28 18:53:21', '2019-11-28 18:53:21'),
(2, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', 123, '09192244689', 'billing', 1, NULL, '2019-11-28 18:53:21', '2019-11-28 18:53:21'),
(3, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', 123, '09192244689', 'shipping', 2, NULL, '2019-11-29 12:29:18', '2019-11-29 12:29:18'),
(4, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', 123, '09192244689', 'billing', 2, NULL, '2019-11-29 12:29:18', '2019-11-29 12:29:18'),
(5, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', 123, '7', 'shipping', 3, NULL, '2019-11-29 12:31:14', '2019-11-29 12:31:14'),
(6, 'asd', 'asd', 'farshad.badiee@gmail.com', 'asd, asd', NULL, 'AF', 'asd', 'ad', 123, '7', 'billing', 3, NULL, '2019-11-29 12:31:14', '2019-11-29 12:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT '0.0000',
  `total_weight` decimal(12,4) DEFAULT '0.0000',
  `qty_ordered` int(11) DEFAULT '0',
  `qty_shipped` int(11) DEFAULT '0',
  `qty_invoiced` int(11) DEFAULT '0',
  `qty_canceled` int(11) DEFAULT '0',
  `qty_refunded` int(11) DEFAULT '0',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `amount_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_amount_refunded` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_discount_refunded` decimal(12,4) DEFAULT '0.0000',
  `tax_percent` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT '0.0000',
  `tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount_refunded` decimal(12,4) DEFAULT '0.0000',
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `qty_ordered`, `qty_shipped`, `qty_invoiced`, `qty_canceled`, `qty_refunded`, `price`, `base_price`, `total`, `base_total`, `total_invoiced`, `base_total_invoiced`, `amount_refunded`, `base_amount_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `product_id`, `product_type`, `order_id`, `parent_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'yyy', 'simple', 'تست', NULL, '22.0000', '22.0000', 1, 0, 0, 0, 0, '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 4, 'Webkul\\Product\\Models\\Product', 1, NULL, '{\"product\": \"4\", \"quantity\": 1, \"is_configurable\": false}', '2019-11-28 18:53:21', '2019-11-28 18:53:21'),
(2, 'yyy', 'simple', 'تست', NULL, '22.0000', '22.0000', 1, 1, 1, 0, 0, '222.0000', '222.0000', '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 4, 'Webkul\\Product\\Models\\Product', 2, NULL, '{\"product\": \"4\", \"quantity\": \"1\", \"is_configurable\": \"false\"}', '2019-11-29 12:29:18', '2019-11-29 16:10:50'),
(3, 'yyy', 'simple', 'تست', NULL, '22.0000', '22.0000', 1, 1, 1, 0, 0, '222.0000', '222.0000', '222.0000', '222.0000', '222.0000', '222.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 4, 'Webkul\\Product\\Models\\Product', 3, NULL, '{\"product\": \"4\", \"quantity\": \"1\", \"is_configurable\": \"false\"}', '2019-11-29 12:31:14', '2019-11-29 16:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

DROP TABLE IF EXISTS `order_payment`;
CREATE TABLE IF NOT EXISTS `order_payment` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_payment_order_id_foreign` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`id`, `method`, `method_title`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'cashondelivery', NULL, 1, '2019-11-28 18:53:21', '2019-11-28 18:53:21'),
(2, 'cashondelivery', NULL, 2, '2019-11-29 12:29:18', '2019-11-29 12:29:18'),
(3, 'cashondelivery', NULL, 3, '2019-11-29 12:31:14', '2019-11-29 12:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_sku_unique` (`sku`),
  KEY `products_attribute_family_id_foreign` (`attribute_family_id`),
  KEY `products_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `type`, `created_at`, `updated_at`, `parent_id`, `attribute_family_id`) VALUES
(3, 'fasas', 'simple', '2019-11-27 22:32:41', '2019-11-27 22:32:41', NULL, 1),
(33, 'a', 'simple', '2019-11-29 21:05:36', '2019-11-29 21:05:36', NULL, 1),
(34, '2', 'simple', '2019-11-29 21:32:02', '2019-11-29 21:32:02', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

DROP TABLE IF EXISTS `product_attribute_values`;
CREATE TABLE IF NOT EXISTS `product_attribute_values` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` json DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanel_locale_attribute_value_index_unique` (`channel`,`locale`,`attribute_id`,`product_id`),
  KEY `product_attribute_values_product_id_foreign` (`product_id`),
  KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=439 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`) VALUES
(393, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 8),
(394, 'fa', 'default', '<p>کفش مردانه نیکولاس با بهترین کیفیت</p>', NULL, NULL, NULL, NULL, NULL, NULL, 33, 9),
(395, 'fa', 'default', '<p>کفش مردانه نیکولاس با بهترین کیفیت</p>', NULL, NULL, NULL, NULL, NULL, NULL, 33, 10),
(396, NULL, NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL, 33, 1),
(397, 'fa', 'default', 'کفش مردانه', NULL, NULL, NULL, NULL, NULL, NULL, 33, 2),
(398, NULL, NULL, 'shoe', NULL, NULL, NULL, NULL, NULL, NULL, 33, 3),
(399, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 33, 4),
(400, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 33, 5),
(401, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 6),
(402, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 7),
(403, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 33, 23),
(404, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 33, 24),
(405, 'fa', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 16),
(406, 'fa', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 17),
(407, 'fa', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 18),
(408, NULL, NULL, NULL, NULL, NULL, 12000, NULL, NULL, NULL, 33, 11),
(409, NULL, 'default', NULL, NULL, NULL, 0, NULL, NULL, NULL, 33, 12),
(410, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 33, 13),
(411, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 19),
(412, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 20),
(413, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 21),
(414, NULL, NULL, '120', NULL, NULL, NULL, NULL, NULL, NULL, 33, 22),
(415, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 8),
(416, 'fa', 'default', '<p>کفش چرم مردانه</p>', NULL, NULL, NULL, NULL, NULL, NULL, 34, 9),
(417, 'fa', 'default', '<p>کفش چرم مردانه</p>', NULL, NULL, NULL, NULL, NULL, NULL, 34, 10),
(418, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, 34, 1),
(419, 'fa', 'default', 'کفش مردانه مدل چرم', NULL, NULL, NULL, NULL, NULL, NULL, 34, 2),
(420, NULL, NULL, 'd', NULL, NULL, NULL, NULL, NULL, NULL, 34, 3),
(421, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 34, 4),
(422, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 34, 5),
(423, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 6),
(424, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 7),
(425, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, 34, 23),
(426, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 34, 24),
(427, 'fa', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 16),
(428, 'fa', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 17),
(429, 'fa', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 18),
(430, NULL, NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, 34, 11),
(431, NULL, 'default', NULL, NULL, NULL, 124, NULL, NULL, NULL, 34, 12),
(432, NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, 34, 13),
(433, NULL, 'default', NULL, NULL, NULL, NULL, NULL, '2019-11-26', NULL, 34, 14),
(434, NULL, 'default', NULL, NULL, NULL, NULL, NULL, '2019-11-30', NULL, 34, 15),
(435, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 19),
(436, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 20),
(437, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 21),
(438, NULL, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 34, 22);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  KEY `product_categories_product_id_foreign` (`product_id`),
  KEY `product_categories_category_id_foreign` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(33, 1),
(33, 2),
(34, 1),
(34, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_cross_sells`
--

DROP TABLE IF EXISTS `product_cross_sells`;
CREATE TABLE IF NOT EXISTS `product_cross_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL,
  KEY `product_cross_sells_parent_id_foreign` (`parent_id`),
  KEY `product_cross_sells_child_id_foreign` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_flat`
--

DROP TABLE IF EXISTS `product_flat`;
CREATE TABLE IF NOT EXISTS `product_flat` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,0) DEFAULT NULL,
  `cost` decimal(12,0) DEFAULT NULL,
  `special_price` decimal(12,0) DEFAULT NULL,
  `special_price_from` date DEFAULT NULL,
  `special_price_to` date DEFAULT NULL,
  `weight` decimal(12,0) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `color_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `size_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `visible_individually` tinyint(1) DEFAULT NULL,
  `min_price` decimal(12,0) DEFAULT NULL,
  `max_price` decimal(12,0) DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `width` decimal(12,4) DEFAULT NULL,
  `height` decimal(12,4) DEFAULT NULL,
  `depth` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_flat_unique_index` (`product_id`,`channel`,`locale`),
  KEY `product_flat_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_flat`
--

INSERT INTO `product_flat` (`id`, `sku`, `name`, `description`, `url_key`, `new`, `featured`, `status`, `thumbnail`, `price`, `cost`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `color`, `color_label`, `size`, `size_label`, `created_at`, `locale`, `channel`, `product_id`, `updated_at`, `parent_id`, `visible_individually`, `min_price`, `max_price`, `short_description`, `meta_title`, `meta_keywords`, `meta_description`, `width`, `height`, `depth`) VALUES
(32, 'a', 'کفش مردانه', '<p>کفش مردانه نیکولاس با بهترین کیفیت</p>', 'shoe', 0, 1, 1, NULL, '12000', '0', '0', NULL, NULL, '120', 1, 'قرمز', 6, 'S', '2019-11-30 00:35:36', 'fa', 'default', 33, '2019-11-30 00:35:36', NULL, 1, NULL, NULL, '<p>کفش مردانه نیکولاس با بهترین کیفیت</p>', '', '', '', '0.0000', '0.0000', '0.0000'),
(33, '2', 'کفش مردانه مدل چرم', '<p>کفش چرم مردانه</p>', 'd', 0, 1, 1, NULL, '122', '124', '120', '2019-11-26', '2019-11-30', '12', 5, 'قهوه ای', 9, 'XL', '2019-11-30 01:02:02', 'fa', 'default', 34, '2019-11-30 01:02:02', NULL, 1, NULL, NULL, '<p>کفش چرم مردانه</p>', '', '', '', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_foreign` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `type`, `path`, `product_id`) VALUES
(9, NULL, 'product/33/HMTQTSmFm9iCAEacvt1zXRBhH7bJ7vruWlOKv5W3.jpeg', 33),
(10, NULL, 'product/34/ALT9fOLliUBZDYINr0fuLBUB6M68QoRiuv5IX4ck.jpeg', 34);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventories`
--

DROP TABLE IF EXISTS `product_inventories`;
CREATE TABLE IF NOT EXISTS `product_inventories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `qty` int(11) NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `inventory_source_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_source_vendor_index_unique` (`product_id`,`inventory_source_id`,`vendor_id`),
  KEY `product_inventories_inventory_source_id_foreign` (`inventory_source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `qty`, `product_id`, `inventory_source_id`, `vendor_id`) VALUES
(12, 120, 33, 1, 0),
(13, 41, 34, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_ordered_inventories`
--

DROP TABLE IF EXISTS `product_ordered_inventories`;
CREATE TABLE IF NOT EXISTS `product_ordered_inventories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `qty` int(11) NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_ordered_inventories_product_id_channel_id_unique` (`product_id`,`channel_id`),
  KEY `product_ordered_inventories_channel_id_foreign` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_relations`
--

DROP TABLE IF EXISTS `product_relations`;
CREATE TABLE IF NOT EXISTS `product_relations` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL,
  KEY `product_relations_parent_id_foreign` (`parent_id`),
  KEY `product_relations_child_id_foreign` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
CREATE TABLE IF NOT EXISTS `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `product_reviews_product_id_foreign` (`product_id`),
  KEY `product_reviews_customer_id_foreign` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_super_attributes`
--

DROP TABLE IF EXISTS `product_super_attributes`;
CREATE TABLE IF NOT EXISTS `product_super_attributes` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  KEY `product_super_attributes_product_id_foreign` (`product_id`),
  KEY `product_super_attributes_attribute_id_foreign` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_up_sells`
--

DROP TABLE IF EXISTS `product_up_sells`;
CREATE TABLE IF NOT EXISTS `product_up_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL,
  KEY `product_up_sells_parent_id_foreign` (`parent_id`),
  KEY `product_up_sells_child_id_foreign` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

DROP TABLE IF EXISTS `refunds`;
CREATE TABLE IF NOT EXISTS `refunds` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT '0',
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_refund` decimal(12,4) DEFAULT '0.0000',
  `base_adjustment_refund` decimal(12,4) DEFAULT '0.0000',
  `adjustment_fee` decimal(12,4) DEFAULT '0.0000',
  `base_adjustment_fee` decimal(12,4) DEFAULT '0.0000',
  `sub_total` decimal(12,4) DEFAULT '0.0000',
  `base_sub_total` decimal(12,4) DEFAULT '0.0000',
  `grand_total` decimal(12,4) DEFAULT '0.0000',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000',
  `shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `base_shipping_amount` decimal(12,4) DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `refunds_order_id_foreign` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `refund_items`
--

DROP TABLE IF EXISTS `refund_items`;
CREATE TABLE IF NOT EXISTS `refund_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `base_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `tax_amount` decimal(12,4) DEFAULT '0.0000',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000',
  `discount_percent` decimal(12,4) DEFAULT '0.0000',
  `discount_amount` decimal(12,4) DEFAULT '0.0000',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000',
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `refund_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_items_order_item_id_foreign` (`order_item_id`),
  KEY `refund_items_refund_id_foreign` (`refund_id`),
  KEY `refund_items_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator rolem', 'all', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
CREATE TABLE IF NOT EXISTS `shipments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `carrier_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track_number` text COLLATE utf8mb4_unicode_ci,
  `email_sent` tinyint(1) NOT NULL DEFAULT '0',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_address_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shipments_order_id_foreign` (`order_id`),
  KEY `shipments_order_address_id_foreign` (`order_address_id`),
  KEY `shipments_inventory_source_id_foreign` (`inventory_source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `status`, `total_qty`, `total_weight`, `carrier_code`, `carrier_title`, `track_number`, `email_sent`, `customer_id`, `customer_type`, `order_id`, `order_address_id`, `created_at`, `updated_at`, `inventory_source_id`) VALUES
(1, NULL, 1, NULL, NULL, 'asd', '123', 0, NULL, NULL, 3, 5, '2019-11-29 16:10:13', '2019-11-29 16:10:13', 1),
(2, NULL, 1, NULL, NULL, 'asd', '1123', 0, NULL, NULL, 2, 3, '2019-11-29 16:10:50', '2019-11-29 16:10:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipment_items`
--

DROP TABLE IF EXISTS `shipment_items`;
CREATE TABLE IF NOT EXISTS `shipment_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT '0.0000',
  `base_price` decimal(12,4) DEFAULT '0.0000',
  `total` decimal(12,4) DEFAULT '0.0000',
  `base_total` decimal(12,4) DEFAULT '0.0000',
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `additional` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shipment_items_shipment_id_foreign` (`shipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shipment_items`
--

INSERT INTO `shipment_items` (`id`, `name`, `description`, `sku`, `qty`, `weight`, `price`, `base_price`, `total`, `base_total`, `product_id`, `product_type`, `order_item_id`, `shipment_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'تست', NULL, 'yyy', 1, 22, '222.0000', '222.0000', '222.0000', '222.0000', 4, 'Webkul\\Product\\Models\\Product', 3, 1, '{\"product\": \"4\", \"quantity\": \"1\", \"is_configurable\": \"false\"}', '2019-11-29 16:10:13', '2019-11-29 16:10:13'),
(2, 'تست', NULL, 'yyy', 1, 22, '222.0000', '222.0000', '222.0000', '222.0000', 4, 'Webkul\\Product\\Models\\Product', 2, 2, '{\"product\": \"4\", \"quantity\": \"1\", \"is_configurable\": \"false\"}', '2019-11-29 16:10:50', '2019-11-29 16:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sliders_channel_id_foreign` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `path`, `content`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'خرید آسان', 'slider_images/Default/RGMsaPfMJJdnwZ2YoEr0vkXCW0G7HckGEGhE03MV.jpeg', '', 1, '2019-11-29 10:14:30', '2019-11-29 10:14:59'),
(2, 'holiday', 'slider_images/Default/s6ag0LseuCkxjy7yy2820Uh2EdfKArisWJZt4Wsf.jpeg', '<p>as</p>', 1, '2019-11-29 14:56:15', '2019-11-29 14:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_list`
--

DROP TABLE IF EXISTS `subscribers_list`;
CREATE TABLE IF NOT EXISTS `subscribers_list` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscribers_list_channel_id_foreign` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories`
--

DROP TABLE IF EXISTS `tax_categories`;
CREATE TABLE IF NOT EXISTS `tax_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tax_categories_code_unique` (`code`),
  UNIQUE KEY `tax_categories_name_unique` (`name`),
  KEY `tax_categories_channel_id_foreign` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories_tax_rates`
--

DROP TABLE IF EXISTS `tax_categories_tax_rates`;
CREATE TABLE IF NOT EXISTS `tax_categories_tax_rates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tax_category_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tax_map_index_unique` (`tax_category_id`,`tax_rate_id`),
  KEY `tax_categories_tax_rates_tax_rate_id_foreign` (`tax_rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
CREATE TABLE IF NOT EXISTS `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_zip` tinyint(1) NOT NULL DEFAULT '0',
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` decimal(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tax_rates_identifier_unique` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `item_options` json DEFAULT NULL,
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `time_of_moving` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_channel_id_foreign` (`channel_id`),
  KEY `wishlist_product_id_foreign` (`product_id`),
  KEY `wishlist_customer_id_foreign` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD CONSTRAINT `attribute_groups_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD CONSTRAINT `attribute_group_mappings_attribute_group_id_foreign` FOREIGN KEY (`attribute_group_id`) REFERENCES `attribute_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_group_mappings_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD CONSTRAINT `attribute_option_translations_attribute_option_id_foreign` FOREIGN KEY (`attribute_option_id`) REFERENCES `attribute_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_address`
--
ALTER TABLE `cart_address`
  ADD CONSTRAINT `cart_address_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_address_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `cart_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Constraints for table `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD CONSTRAINT `cart_payment_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_cart`
--
ALTER TABLE `cart_rule_cart`
  ADD CONSTRAINT `cart_rule_cart_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_cart_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD CONSTRAINT `cart_rule_channels_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD CONSTRAINT `cart_rule_coupons_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_coupons_usage`
--
ALTER TABLE `cart_rule_coupons_usage`
  ADD CONSTRAINT `cart_rule_coupons_usage_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_coupons_usage_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_coupons_usage_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD CONSTRAINT `cart_rule_customers_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD CONSTRAINT `cart_rule_customer_groups_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_labels`
--
ALTER TABLE `cart_rule_labels`
  ADD CONSTRAINT `cart_rule_labels_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_labels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_labels_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD CONSTRAINT `cart_shipping_rates_cart_address_id_foreign` FOREIGN KEY (`cart_address_id`) REFERENCES `cart_address` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD CONSTRAINT `catalog_rule_channels_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD CONSTRAINT `catalog_rule_customer_groups_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD CONSTRAINT `catalog_rule_products_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_products_price`
--
ALTER TABLE `catalog_rule_products_price`
  ADD CONSTRAINT `catalog_rule_products_price_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_price_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_price_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_price_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD CONSTRAINT `category_filterable_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_filterable_attributes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_translations_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channels`
--
ALTER TABLE `channels`
  ADD CONSTRAINT `channels_base_currency_id_foreign` FOREIGN KEY (`base_currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `channels_default_locale_id_foreign` FOREIGN KEY (`default_locale_id`) REFERENCES `locales` (`id`),
  ADD CONSTRAINT `channels_root_category_id_foreign` FOREIGN KEY (`root_category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD CONSTRAINT `channel_currencies_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_currencies_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD CONSTRAINT `channel_inventory_sources_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_inventory_sources_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD CONSTRAINT `channel_locales_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_locales_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD CONSTRAINT `cms_pages_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cms_pages_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_states`
--
ALTER TABLE `country_states`
  ADD CONSTRAINT `country_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD CONSTRAINT `country_state_translations_country_state_id_foreign` FOREIGN KEY (`country_state_id`) REFERENCES `country_states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD CONSTRAINT `country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD CONSTRAINT `currency_exchange_rates_target_currency_foreign` FOREIGN KEY (`target_currency`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_order_address_id_foreign` FOREIGN KEY (`order_address_id`) REFERENCES `order_address` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_address`
--
ALTER TABLE `order_address`
  ADD CONSTRAINT `order_address_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_address_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD CONSTRAINT `order_payment_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`),
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD CONSTRAINT `product_cross_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_cross_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_flat`
--
ALTER TABLE `product_flat`
  ADD CONSTRAINT `product_flat_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_flat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_flat_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD CONSTRAINT `product_inventories_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD CONSTRAINT `product_ordered_inventories_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ordered_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_relations`
--
ALTER TABLE `product_relations`
  ADD CONSTRAINT `product_relations_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_relations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD CONSTRAINT `product_super_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_super_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD CONSTRAINT `product_up_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_up_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refund_items`
--
ALTER TABLE `refund_items`
  ADD CONSTRAINT `refund_items_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `refund_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_refund_id_foreign` FOREIGN KEY (`refund_id`) REFERENCES `refunds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_order_address_id_foreign` FOREIGN KEY (`order_address_id`) REFERENCES `order_address` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD CONSTRAINT `shipment_items_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD CONSTRAINT `subscribers_list_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_categories`
--
ALTER TABLE `tax_categories`
  ADD CONSTRAINT `tax_categories_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD CONSTRAINT `tax_categories_tax_rates_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tax_categories_tax_rates_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
