-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2021 at 02:36 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dep_nova`
--

-- --------------------------------------------------------

--
-- Table structure for table `common_address`
--

CREATE TABLE `common_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `line_1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `line_2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `context` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_asset`
--

CREATE TABLE `common_asset` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(11) UNSIGNED DEFAULT NULL,
  `brand_id` int(11) UNSIGNED DEFAULT NULL,
  `model_id` int(11) UNSIGNED DEFAULT NULL,
  `type_code` smallint(2) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_date` bigint(20) DEFAULT NULL,
  `purchase_price` decimal(16,2) DEFAULT NULL,
  `sale_date` bigint(20) DEFAULT NULL,
  `sale_price` decimal(16,2) DEFAULT NULL,
  `quantity` int(11) UNSIGNED DEFAULT NULL,
  `context` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(2) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_bank`
--

CREATE TABLE `common_bank` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `swift_code` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_branch_inventory_item`
--

CREATE TABLE `common_branch_inventory_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(11) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `min_quantity` int(11) DEFAULT '0',
  `max_quantity` int(11) DEFAULT '0',
  `last_count_date` bigint(20) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_brand`
--

CREATE TABLE `common_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'system',
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_brand_model`
--

CREATE TABLE `common_brand_model` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'system',
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_calendar`
--

CREATE TABLE `common_calendar` (
  `dt` date NOT NULL,
  `y` smallint(6) DEFAULT NULL,
  `q` smallint(4) DEFAULT NULL,
  `m` smallint(4) DEFAULT NULL,
  `d` smallint(4) DEFAULT NULL,
  `dw` smallint(4) DEFAULT NULL,
  `month_name` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `day_name` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `w` smallint(4) DEFAULT NULL,
  `is_weekday` tinyint(1) DEFAULT '0',
  `is_holiday` tinyint(1) DEFAULT '0',
  `holiday_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_payday` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_client`
--

CREATE TABLE `common_client` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `industry` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_reg_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_address_id` int(11) UNSIGNED DEFAULT NULL,
  `shipping_address_id` int(11) UNSIGNED DEFAULT NULL,
  `billing_address_id` int(11) UNSIGNED DEFAULT NULL,
  `is_individual` tinyint(1) DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_client_industry`
--

CREATE TABLE `common_client_industry` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_client_type`
--

CREATE TABLE `common_client_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_company_branch`
--

CREATE TABLE `common_company_branch` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `supervisor_id` int(11) UNSIGNED DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vrn` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tin` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physical_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_country`
--

CREATE TABLE `common_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `official_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `iso_3` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_numeric` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calling_code` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_tld` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statoid` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demonym` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seal` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_currency`
--

CREATE TABLE `common_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thousands_separator` char(1) COLLATE utf8_unicode_ci DEFAULT ',',
  `decimal_places` smallint(1) DEFAULT '2',
  `decimal_separator` char(1) COLLATE utf8_unicode_ci DEFAULT '.',
  `current_rate` decimal(16,8) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_inventory_item`
--

CREATE TABLE `common_inventory_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(11) UNSIGNED DEFAULT NULL,
  `brand_id` int(11) UNSIGNED DEFAULT NULL,
  `model_id` int(11) UNSIGNED DEFAULT NULL,
  `reference` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcategory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_unit_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_unit_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `min_quantity` int(11) DEFAULT '0',
  `max_quantity` int(11) DEFAULT '0',
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shelf_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` decimal(12,2) DEFAULT '0.00',
  `weight` decimal(12,2) DEFAULT '0.00',
  `width` decimal(12,2) DEFAULT '0.00',
  `volume` decimal(12,2) DEFAULT '0.00',
  `height` decimal(12,2) DEFAULT '0.00',
  `last_count_date` bigint(20) DEFAULT NULL,
  `prevent_negative` tinyint(1) DEFAULT '0',
  `status` smallint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_inventory_transaction`
--

CREATE TABLE `common_inventory_transaction` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `branch_id` int(11) UNSIGNED DEFAULT NULL,
  `vendor_id` int(11) UNSIGNED DEFAULT NULL,
  `source_branch_id` int(11) UNSIGNED DEFAULT NULL,
  `transaction_date` bigint(20) DEFAULT NULL,
  `type_code` smallint(2) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `summary` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(2) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_location`
--

CREATE TABLE `common_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_organisation`
--

CREATE TABLE `common_organisation` (
  `id` int(10) UNSIGNED NOT NULL,
  `address_id` int(11) UNSIGNED DEFAULT NULL,
  `account_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `official_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_count` smallint(6) DEFAULT '0',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ownership` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_staff`
--

CREATE TABLE `common_staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` bigint(20) DEFAULT NULL,
  `marital_status` smallint(2) DEFAULT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` bigint(20) DEFAULT NULL,
  `end_date` bigint(20) DEFAULT NULL,
  `basic_salary` decimal(16,2) DEFAULT NULL,
  `office_phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_fax` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physical_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_statoid`
--

CREATE TABLE `common_statoid` (
  `id` int(10) UNSIGNED NOT NULL,
  `iso_code` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `parent_code` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `official_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` smallint(1) UNSIGNED DEFAULT '1',
  `timezone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `flag` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seal` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `common_unit`
--

CREATE TABLE `common_unit` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_app`
--

CREATE TABLE `system_app` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'default',
  `class` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'novawebApplication',
  `module` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'system',
  `base_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto_login` tinyint(1) DEFAULT '0',
  `login_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'site/login',
  `identity_cookie` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_language` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'en',
  `default_timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'UTC',
  `theme_id` int(11) UNSIGNED DEFAULT NULL,
  `address_id` int(11) UNSIGNED DEFAULT NULL,
  `mail_account_id` int(11) UNSIGNED DEFAULT NULL,
  `db_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'default',
  `db_host` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_port` int(11) DEFAULT NULL,
  `db_username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_charset` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'utf8',
  `user_class` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatter_class` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_class` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_system_mailer` tinyint(1) DEFAULT '1',
  `use_system_db` tinyint(1) DEFAULT '1',
  `use_system_filesystem` tinyint(1) DEFAULT '1',
  `default_route` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'site',
  `error_handler` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'site/error',
  `show_script` tinyint(1) DEFAULT NULL,
  `pretty_url` tinyint(1) DEFAULT NULL,
  `status` smallint(6) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_approval_entry`
--

CREATE TABLE `system_approval_entry` (
  `id` int(11) NOT NULL,
  `table_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(11) NOT NULL,
  `sequence_no` smallint(6) NOT NULL,
  `pending_approval` smallint(6) DEFAULT NULL,
  `request_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approval_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT '0',
  `approved_at` bigint(20) DEFAULT NULL,
  `approver_id` int(11) UNSIGNED NOT NULL,
  `due_date` bigint(20) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_approval_hierarchy`
--

CREATE TABLE `system_approval_hierarchy` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `alt_user_id` int(11) UNSIGNED DEFAULT NULL,
  `role_id` int(11) UNSIGNED DEFAULT NULL,
  `alt_role_id` int(11) UNSIGNED DEFAULT NULL,
  `level` smallint(6) NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_bootstrap`
--

CREATE TABLE `system_bootstrap` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_code_unit`
--

CREATE TABLE `system_code_unit` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `trusted` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_component`
--

CREATE TABLE `system_component` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_custom_message`
--

CREATE TABLE `system_custom_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `volatile` tinyint(1) DEFAULT '0',
  `source` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'system',
  `type` smallint(1) DEFAULT '1',
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `dismiss_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_directory`
--

CREATE TABLE `system_directory` (
  `id` int(11) NOT NULL,
  `mft_id` int(11) NOT NULL,
  `dir_no` int(11) UNSIGNED DEFAULT '0',
  `file_no` int(11) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event`
--

CREATE TABLE `system_event` (
  `id` int(10) UNSIGNED NOT NULL,
  `code_unit_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `readonly` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_subscriber`
--

CREATE TABLE `system_event_subscriber` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `code_unit_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `table_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_file`
--

CREATE TABLE `system_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `mft_id` int(11) UNSIGNED NOT NULL,
  `content` longblob,
  `type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_file_attachment`
--

CREATE TABLE `system_file_attachment` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` int(11) UNSIGNED DEFAULT NULL,
  `context` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'system',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_global_message`
--

CREATE TABLE `system_global_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(100) DEFAULT 'system',
  `type` smallint(1) DEFAULT '1',
  `content` varchar(500) NOT NULL,
  `link` varchar(250) DEFAULT NULL,
  `status` smallint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `dismiss_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `action` varchar(100) NOT NULL,
  `old_value` longtext,
  `new_value` longtext,
  `result` varchar(45) DEFAULT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail`
--

CREATE TABLE `system_mail` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sender_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `recipient_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_to` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_to_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `priority` smallint(6) DEFAULT '1',
  `attached` tinyint(1) DEFAULT '0',
  `signed` tinyint(1) DEFAULT '0',
  `sent` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `sent_at` bigint(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_account`
--

CREATE TABLE `system_mail_account` (
  `id` int(10) UNSIGNED NOT NULL,
  `host` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `port` smallint(6) NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `encryption` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'tls',
  `password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `require_auth` tinyint(1) DEFAULT '0',
  `use_ssl` tinyint(1) DEFAULT NULL,
  `ssl_self_signed` tinyint(1) DEFAULT NULL,
  `ssl_verify_peer` tinyint(1) DEFAULT NULL,
  `ssl_verify_peer_name` tinyint(1) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_template`
--

CREATE TABLE `system_mail_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  `content` text COLLATE utf8_unicode_ci,
  `active` smallint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_master_file`
--

CREATE TABLE `system_master_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `checksum` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `virtual_path` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_path` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `directory` smallint(6) DEFAULT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `hidden` smallint(6) DEFAULT '0',
  `read_only` smallint(6) DEFAULT '0',
  `system` smallint(6) DEFAULT '0',
  `encrypted` smallint(6) DEFAULT '0',
  `archive` smallint(6) DEFAULT '0',
  `active` smallint(6) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL,
  `deleted` tinyint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_menu`
--

CREATE TABLE `system_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  `version` smallint(6) UNSIGNED DEFAULT '1',
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_menu`
--

INSERT INTO `system_menu` (`id`, `code`, `name`, `module`, `version`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'system.menu.admin', 'System Administration Menu', 'system', 1, NULL, 1, 1614611070, 1614611070),
(2, 'system.menu.home', 'Home Menu', 'system', 1, NULL, 1, 1614611180, 1614611180);

-- --------------------------------------------------------

--
-- Table structure for table `system_menu_item`
--

CREATE TABLE `system_menu_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `index_no` int(9) UNSIGNED DEFAULT '1',
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_static` tinyint(1) DEFAULT '1',
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_menu_item`
--

INSERT INTO `system_menu_item` (`id`, `menu_id`, `parent_id`, `code`, `name`, `index_no`, `url`, `icon`, `image`, `is_static`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'system.menu.admin.dashboard', 'Dashboard', 0, '/app/default/index', 'home', NULL, 1, 1, 1614611179, 1614611179),
(2, 1, NULL, 'system.menu.admin.users', 'Users', 1, NULL, 'users', NULL, 1, 1, 1614611179, 1614611179),
(3, 1, 2, 'system.menu.admin.users.add', 'Add', 0, '/app/user/create', 'plus', NULL, 1, 1, 1614611179, 1614611179),
(4, 1, 2, 'system.menu.admin.users.manage', 'Manage', 1, '/app/user/index', 'wrench', NULL, 1, 1, 1614611179, 1614611179),
(5, 1, NULL, 'system.menu.admin.roles', 'Roles', 2, NULL, 'asterisk', NULL, 1, 1, 1614611179, 1614611179),
(6, 1, 5, 'system.menu.admin.roles.add', 'Add', 0, '/app/role/create', 'plus', NULL, 1, 1, 1614611179, 1614611179),
(7, 1, 5, 'system.menu.admin.roles.manage', 'Manage', 1, '/app/role/index', 'wrench', NULL, 1, 1, 1614611179, 1614611179),
(8, 1, NULL, 'system.menu.admin.modules', 'Modules', 3, NULL, 'cubes', NULL, 1, 1, 1614611179, 1614611179),
(9, 1, 8, 'system.menu.admin.modules.add', 'Add', 0, '/app/module/create', 'plus', NULL, 1, 1, 1614611179, 1614611179),
(10, 1, 8, 'system.menu.admin.modules.manage', 'Manage', 1, '/app/module/index', 'wrench', NULL, 1, 1, 1614611179, 1614611179),
(11, 1, NULL, 'system.menu.admin.approvals', 'Approvals', 4, NULL, 'thumbs-o-up', NULL, 1, 1, 1614611179, 1614611179),
(12, 1, 11, 'system.menu.admin.approvals.add', 'Add', 0, '/app/record-approval/create', 'plus', NULL, 1, 1, 1614611179, 1614611179),
(13, 1, 11, 'system.menu.admin.approvals.manage', 'Manage', 1, '/app/record-approval/index', 'wrench', NULL, 1, 1, 1614611179, 1614611179),
(14, 1, NULL, 'system.menu.admin.logs', 'Logs', 5, NULL, 'server', NULL, 1, 1, 1614611179, 1614611179),
(15, 1, 14, 'system.menu.admin.logs.system', 'System', 0, '/app/log/index', 'barcode', NULL, 1, 1, 1614611180, 1614611180),
(16, 1, 14, 'system.menu.admin.logs.login', 'Login', 1, '/app/user-login/index', 'exchange', NULL, 1, 1, 1614611180, 1614611180),
(17, 1, NULL, 'system.menu.admin.settings', 'Settings', 6, NULL, 'cogs', NULL, 1, 1, 1614611180, 1614611180),
(18, 1, 17, 'system.menu.admin.settings.branches', 'Branches', 0, '/app/company-branch/index', 'sitemap', NULL, 1, 1, 1614611180, 1614611180),
(19, 1, 17, 'system.menu.admin.settings.configuration', 'Configuration', 1, '/app/setting/index', 'tasks', NULL, 1, 1, 1614611180, 1614611180),
(20, 1, 17, 'system.menu.admin.settings.currency', 'Currency', 2, '/app/currency/index', 'money', NULL, 1, 1, 1614611180, 1614611180),
(21, 1, 17, 'system.menu.admin.settings.notifications', 'Notifications', 3, '/app/notification/index', 'bell-o', NULL, 1, 1, 1614611180, 1614611180),
(22, 1, 17, 'system.menu.admin.settings.periods', 'Periods', 4, '/app/period/index', 'refresh', NULL, 1, 1, 1614611180, 1614611180),
(23, 1, 17, 'system.menu.admin.settings.themes', 'Themes', 5, '/app/theme/index', 'paint-brush', NULL, 1, 1, 1614611180, 1614611180),
(24, 2, NULL, 'system.menu.home.home', 'Home', 0, '/site/index', 'home', NULL, 1, 1, 1614611180, 1614611180),
(25, 2, NULL, 'system.menu.home.workspace', 'Workspace', 1, '/workspace/index', 'laptop', NULL, 1, 1, 1614611180, 1614611180),
(26, 2, NULL, 'system.menu.home.profile', 'Profile', 2, '/site/profile', 'user', NULL, 1, 1, 1614611180, 1614611180),
(27, 2, NULL, 'system.menu.home.settings', 'Settings', 3, NULL, 'cog', NULL, 1, 1, 1614611180, 1614611180),
(28, 2, 27, 'system.menu.home.settings.workspace', 'Workspace', 0, '/workspace/update', 'object-group', NULL, 1, 1, 1614611180, 1614611180);

-- --------------------------------------------------------

--
-- Table structure for table `system_message`
--

CREATE TABLE `system_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_model`
--

CREATE TABLE `system_model` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'system',
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_module`
--

CREATE TABLE `system_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `namespace` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_index` smallint(3) DEFAULT '5',
  `nav_visible` tinyint(1) DEFAULT '1',
  `has_rest` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_module`
--

INSERT INTO `system_module` (`id`, `unique_id`, `parent_id`, `name`, `description`, `class`, `namespace`, `path`, `code`, `version`, `category`, `vendor`, `owner`, `sort_index`, `nav_visible`, `has_rest`, `active`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, 'wakala', NULL, 'Wakala', NULL, 'nova\\modules\\wakala\\WakalaModule', 'nova\\modules\\wakala', NULL, 'nova.modules.wakala.wakalamodule', NULL, NULL, NULL, NULL, 5, 1, 0, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_module_installation`
--

CREATE TABLE `system_module_installation` (
  `id` int(10) UNSIGNED NOT NULL,
  `temp_id` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `module_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_error` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_signed` tinyint(1) DEFAULT '0',
  `verified` tinyint(1) DEFAULT '0',
  `status` smallint(6) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_namespace`
--

CREATE TABLE `system_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'system',
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_notification`
--

CREATE TABLE `system_notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(2) UNSIGNED NOT NULL,
  `context` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_level` smallint(2) DEFAULT '1',
  `send_mail` tinyint(1) DEFAULT '1',
  `send_sms` tinyint(1) DEFAULT '0',
  `system_view` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_view` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_view` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_period`
--

CREATE TABLE `system_period` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `duration` smallint(6) NOT NULL,
  `duration_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` smallint(2) NOT NULL,
  `start_month` smallint(2) NOT NULL,
  `current_period` smallint(6) DEFAULT '0',
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_period_instance`
--

CREATE TABLE `system_period_instance` (
  `id` int(10) UNSIGNED NOT NULL,
  `period_id` int(11) UNSIGNED NOT NULL,
  `period_no` smallint(6) NOT NULL,
  `start_date` bigint(20) NOT NULL,
  `end_date` bigint(20) NOT NULL,
  `comments` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(2) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_provider`
--

CREATE TABLE `system_provider` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_provider_param`
--

CREATE TABLE `system_provider_param` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `encrypt` tinyint(1) DEFAULT '0',
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_record_approver`
--

CREATE TABLE `system_record_approver` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `role_id` int(11) UNSIGNED DEFAULT NULL,
  `step` smallint(6) NOT NULL,
  `use_role` tinyint(1) DEFAULT '0',
  `alert_all` tinyint(1) DEFAULT '0',
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_resource`
--

CREATE TABLE `system_resource` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_level` smallint(2) DEFAULT '1',
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `role_id` int(11) UNSIGNED DEFAULT NULL,
  `user_permission` smallint(1) UNSIGNED DEFAULT '0',
  `role_permission` smallint(1) UNSIGNED DEFAULT '0',
  `world_permission` smallint(1) UNSIGNED DEFAULT '7'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_resource`
--

INSERT INTO `system_resource` (`id`, `name`, `type`, `context`, `access_level`, `user_id`, `role_id`, `user_permission`, `role_permission`, `world_permission`) VALUES
(1, 'system.menu.admin', 'menu', 'system', 1, NULL, NULL, 0, 0, 7),
(2, 'system.menu.admin.dashboard', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(3, 'system.menu.admin.users', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(4, 'system.menu.admin.users.add', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(5, 'system.menu.admin.users.manage', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(6, 'system.menu.admin.roles', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(7, 'system.menu.admin.roles.add', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(8, 'system.menu.admin.roles.manage', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(9, 'system.menu.admin.modules', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(10, 'system.menu.admin.modules.add', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(11, 'system.menu.admin.modules.manage', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(12, 'system.menu.admin.approvals', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(13, 'system.menu.admin.approvals.add', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(14, 'system.menu.admin.approvals.manage', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(15, 'system.menu.admin.logs', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(16, 'system.menu.admin.logs.system', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(17, 'system.menu.admin.logs.login', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(18, 'system.menu.admin.settings', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(19, 'system.menu.admin.settings.branches', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(20, 'system.menu.admin.settings.configuration', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(21, 'system.menu.admin.settings.currency', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(22, 'system.menu.admin.settings.notifications', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(23, 'system.menu.admin.settings.periods', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(24, 'system.menu.admin.settings.themes', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(25, 'system.menu.home', 'menu', 'system', 1, NULL, NULL, 0, 0, 7),
(26, 'system.menu.home.home', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(27, 'system.menu.home.workspace', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(28, 'system.menu.home.profile', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(29, 'system.menu.home.settings', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(30, 'system.menu.home.settings.workspace', 'menuitem', 'system', 1, NULL, NULL, 0, 0, 7),
(31, 'app.modules.app.controllers.defaultcontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(32, 'app.modules.app.controllers.settingcontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(33, 'app.modules.app.controllers.modulecontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(34, 'app.modules.app.controllers.usercontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(35, 'app.modules.app.controllers.usercontroller.create', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(36, 'app.modules.app.controllers.usercontroller.view', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(37, 'app.modules.app.controllers.currencycontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(38, 'app.modules.app.controllers.themecontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(39, 'app.modules.app.controllers.logcontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(40, 'app.modules.app.controllers.userlogincontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(41, 'app.modules.app.controllers.companybranchcontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(42, 'app.modules.app.controllers.modulecontroller.install', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(43, 'nova.modules.rabies.rabiesmodule', 'module', 'system', 1, NULL, NULL, 0, 0, 7),
(44, 'app.modules.app.controllers.modulecontroller.info', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(45, 'app.modules.app.controllers.usercontroller.update', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(46, 'app.modules.app.controllers.rolecontroller.create', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(47, 'app.modules.app.controllers.rolecontroller.view', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(48, 'app.modules.app.controllers.rolecontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(49, 'app.modules.app.controllers.userlogincontroller.view', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(50, 'app.modules.app.controllers.rolecontroller.update', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(51, 'app.modules.app.controllers.recordapprovalcontroller.create', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(52, 'app.modules.app.controllers.recordapprovalcontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(53, 'app.modules.app.controllers.notificationcontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(54, 'app.modules.app.controllers.periodcontroller.index', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(56, 'nova.modules.app.controllers.rolecontroller.create', 'action', 'system', 1, NULL, NULL, 0, 0, 7),
(151, 'nova.modules.app.controllers.defaultcontroller.index', 'action', 'system', 2, NULL, NULL, 0, 0, 7),
(152, 'nova.modules.wakala.wakalamodule', 'module', 'system', 1, NULL, NULL, 0, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `system_response`
--

CREATE TABLE `system_response` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `parent_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_unit` text COLLATE utf8_unicode_ci,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `readonly` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_role`
--

CREATE TABLE `system_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(11) UNSIGNED DEFAULT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_level` smallint(2) DEFAULT '0',
  `is_temp` tinyint(1) UNSIGNED DEFAULT '0',
  `start_date` bigint(20) DEFAULT NULL,
  `end_date` bigint(20) DEFAULT NULL,
  `context` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_role_message`
--

CREATE TABLE `system_role_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) UNSIGNED DEFAULT NULL,
  `message_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_role_notification`
--

CREATE TABLE `system_role_notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL,
  `send_mail` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_role_resource`
--

CREATE TABLE `system_role_resource` (
  `id` int(11) NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL,
  `resource_id` int(11) NOT NULL,
  `can_create` tinyint(1) DEFAULT NULL,
  `can_update` tinyint(1) DEFAULT NULL,
  `can_delete` tinyint(1) DEFAULT NULL,
  `can_read` tinyint(1) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_setting`
--

CREATE TABLE `system_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `system_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `main_logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT '@web/images/logo.png',
  `login_logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT '@web/images/logo.png',
  `user_avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(200) COLLATE utf8_unicode_ci DEFAULT '@web/images/favicon.png',
  `base_currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_zone` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'Africa/Dar_es_Salaam',
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'en',
  `default_password` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'password',
  `default_route` varchar(100) COLLATE utf8_unicode_ci DEFAULT '/site/index',
  `default_theme` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'novacore	hemeTheme',
  `log_events` smallint(1) DEFAULT '1',
  `decimal_separator` varchar(1) COLLATE utf8_unicode_ci DEFAULT '.',
  `number_separator` varchar(1) COLLATE utf8_unicode_ci DEFAULT ',',
  `company_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_fax` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_vrn` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_tin` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_motto` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_postal_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_physical_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_country_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fiscal_start` smallint(6) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_setting`
--

INSERT INTO `system_setting` (`id`, `system_name`, `company_name`, `main_logo`, `login_logo`, `user_avatar`, `favicon`, `base_currency`, `time_zone`, `language`, `default_password`, `default_route`, `default_theme`, `log_events`, `decimal_separator`, `number_separator`, `company_email`, `company_website`, `company_phone`, `company_fax`, `company_vrn`, `company_tin`, `company_motto`, `company_postal_address`, `company_physical_address`, `company_country_code`, `fiscal_start`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, 'Wakala', '', '@web/images/logo.png', '@web/images/logo.png', NULL, '@web/images/favicon.png', NULL, 'Africa/Dar_es_Salaam', 'en', 'password', '/site/index', 'themes\\remark\\Theme', 1, '.', ',', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_sms`
--

CREATE TABLE `system_sms` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `recipient` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'system',
  `is_sent` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `sent_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_task`
--

CREATE TABLE `system_task` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `guid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `code_unit_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_running` tinyint(1) DEFAULT '0',
  `last_run` bigint(20) DEFAULT NULL,
  `last_exit_code` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `readonly` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_task_schedule`
--

CREATE TABLE `system_task_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_guid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `modifier` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `day` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` bigint(20) DEFAULT NULL,
  `end_date` bigint(20) DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posted` tinyint(1) DEFAULT '0',
  `status` smallint(6) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_theme`
--

CREATE TABLE `system_theme` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT '@web/images/noimage.png',
  `active` tinyint(1) DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_translation`
--

CREATE TABLE `system_translation` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'app',
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source` text COLLATE utf8_unicode_ci,
  `language` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_user`
--

CREATE TABLE `system_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(11) UNSIGNED DEFAULT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_route` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_online` smallint(1) DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_user`
--

INSERT INTO `system_user` (`id`, `entity_id`, `username`, `first_name`, `last_name`, `email`, `mobile_no`, `type`, `avatar`, `default_module`, `default_route`, `auth_key`, `access_token`, `password_hash`, `password_reset_token`, `is_online`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(608, NULL, 'admin', 'Admin', 'istrator', NULL, NULL, 'Admin', NULL, NULL, NULL, 'YibJ51mcrqfj4iB0MMJq0ZnIVUZent76', NULL, '$2y$13$VbOp1lOOToIPUTjZSi9siuOKfYFYwBzSj4HozKYnyA918BMSCEm6y', NULL, 1, 1, NULL, NULL, 1629111757, 608);

-- --------------------------------------------------------

--
-- Table structure for table `system_user_login`
--

CREATE TABLE `system_user_login` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `os_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_arch` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_user_login`
--

INSERT INTO `system_user_login` (`id`, `user_id`, `ip_address`, `user_agent`, `os_name`, `system_arch`, `username`, `password`, `created_at`) VALUES
(1365, 608, '169.255.185.222', 'Chrome', 'Windows 10', '64', 'admin', NULL, 1629111756),
(1366, 608, '169.255.185.222', 'Chrome', 'Windows 10', '64', 'admin', NULL, 1629112563);

-- --------------------------------------------------------

--
-- Table structure for table `system_user_message`
--

CREATE TABLE `system_user_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` smallint(1) DEFAULT '1',
  `source` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'system',
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `read_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_user_notification`
--

CREATE TABLE `system_user_notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `send_mail` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_user_role`
--

CREATE TABLE `system_user_role` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_view`
--

CREATE TABLE `system_view` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `app_id` int(11) UNSIGNED DEFAULT NULL,
  `module_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'en',
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `meta_charset` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'UTF-8',
  `meta_description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_path` tinyint(1) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `stylesheet` longtext COLLATE utf8_unicode_ci,
  `javascript` longtext COLLATE utf8_unicode_ci,
  `status` smallint(2) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_widget`
--

CREATE TABLE `system_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code_unit_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_workflow`
--

CREATE TABLE `system_workflow` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_workflow_category`
--

CREATE TABLE `system_workflow_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_workflow_event`
--

CREATE TABLE `system_workflow_event` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_workflow_rule`
--

CREATE TABLE `system_workflow_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `step_id` int(11) UNSIGNED DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `table_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `operator` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `operand` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_workflow_step`
--

CREATE TABLE `system_workflow_step` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_id` int(11) UNSIGNED NOT NULL,
  `event_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sequence_no` smallint(6) NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_workspace_menu`
--

CREATE TABLE `system_workspace_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `menu_id` int(11) UNSIGNED NOT NULL,
  `order_no` smallint(6) DEFAULT '5',
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_workspace_widget`
--

CREATE TABLE `system_workspace_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `widget_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `x_pos` smallint(6) DEFAULT '0',
  `y_pos` smallint(6) DEFAULT '0',
  `width` smallint(6) DEFAULT '4',
  `height` smallint(6) DEFAULT '4',
  `min_height` smallint(6) DEFAULT NULL,
  `min_width` smallint(6) DEFAULT NULL,
  `max_height` smallint(6) DEFAULT NULL,
  `max_width` smallint(6) DEFAULT NULL,
  `no_resize` tinyint(1) DEFAULT '0',
  `no_move` tinyint(1) DEFAULT '0',
  `is_locked` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_agent`
--

CREATE TABLE `wakala_agent` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fcm_access_token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `business_tin` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `location_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_agent_log`
--

CREATE TABLE `wakala_agent_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(11) UNSIGNED NOT NULL,
  `agent_id` int(11) UNSIGNED NOT NULL,
  `service_date` bigint(20) NOT NULL,
  `client_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_agent_rating`
--

CREATE TABLE `wakala_agent_rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `agent_id` int(11) UNSIGNED NOT NULL,
  `client_id` int(11) UNSIGNED NOT NULL,
  `value` decimal(2,1) DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_agent_service`
--

CREATE TABLE `wakala_agent_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `agent_id` int(11) UNSIGNED NOT NULL,
  `service_id` int(11) UNSIGNED NOT NULL,
  `agent_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_agent_sms`
--

CREATE TABLE `wakala_agent_sms` (
  `id` int(10) UNSIGNED NOT NULL,
  `agent_id` int(11) UNSIGNED NOT NULL,
  `recipient` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sent` smallint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `sent_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_client`
--

CREATE TABLE `wakala_client` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fcm_access_token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_latitude` decimal(9,6) DEFAULT NULL,
  `last_longitude` decimal(9,6) DEFAULT NULL,
  `status` smallint(6) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_client_notification`
--

CREATE TABLE `wakala_client_notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) UNSIGNED NOT NULL,
  `request_id` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pushed` smallint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_client_sms`
--

CREATE TABLE `wakala_client_sms` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) UNSIGNED NOT NULL,
  `recipient` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sent` smallint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `sent_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_provider_service`
--

CREATE TABLE `wakala_provider_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) UNSIGNED NOT NULL,
  `service_id` int(11) UNSIGNED NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_request_notification`
--

CREATE TABLE `wakala_request_notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) UNSIGNED NOT NULL,
  `agent_id` int(11) UNSIGNED NOT NULL,
  `status` smallint(6) DEFAULT '0',
  `pushed` smallint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_service`
--

CREATE TABLE `wakala_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_service_provider`
--

CREATE TABLE `wakala_service_provider` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_service_request`
--

CREATE TABLE `wakala_service_request` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) UNSIGNED NOT NULL,
  `service_id` int(11) UNSIGNED NOT NULL,
  `agent_id` int(11) UNSIGNED DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT '0.00',
  `comment` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_setting`
--

CREATE TABLE `wakala_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `default_radius` decimal(6,2) DEFAULT '1.00',
  `validate_agent` tinyint(1) DEFAULT '0',
  `validate_client` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wakala_tos`
--

CREATE TABLE `wakala_tos` (
  `id` int(10) UNSIGNED NOT NULL,
  `last_update` bigint(20) DEFAULT NULL,
  `en_content` text COLLATE utf8_unicode_ci NOT NULL,
  `sw_content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `common_address`
--
ALTER TABLE `common_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_common_address_created_by` (`created_by`),
  ADD KEY `fk_common_address_updated_by` (`updated_by`);

--
-- Indexes for table `common_asset`
--
ALTER TABLE `common_asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`),
  ADD KEY `fk_common_asset_branch_id` (`branch_id`),
  ADD KEY `fk_common_asset_brand_id` (`brand_id`),
  ADD KEY `fk_common_asset_model_id` (`model_id`);

--
-- Indexes for table `common_bank`
--
ALTER TABLE `common_bank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_common_bank_created_by` (`created_by`),
  ADD KEY `fk_common_bank_updated_by` (`updated_by`),
  ADD KEY `fk_common_bank_location_id` (`location_id`);

--
-- Indexes for table `common_branch_inventory_item`
--
ALTER TABLE `common_branch_inventory_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_common_branch_inventory_item_created_by` (`created_by`),
  ADD KEY `fk_common_branch_inventory_item_updated_by` (`updated_by`),
  ADD KEY `fk_common_branch_inventory_item_branch_id` (`branch_id`),
  ADD KEY `fk_common_branch_inventory_item_item_id` (`item_id`);

--
-- Indexes for table `common_brand`
--
ALTER TABLE `common_brand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_common_brand_created_by` (`created_by`),
  ADD KEY `fk_common_brand_updated_by` (`updated_by`);

--
-- Indexes for table `common_brand_model`
--
ALTER TABLE `common_brand_model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_common_brand_model_created_by` (`created_by`),
  ADD KEY `fk_common_brand_model_updated_by` (`updated_by`),
  ADD KEY `fk_common_brand_model_brand_id` (`brand_id`);

--
-- Indexes for table `common_calendar`
--
ALTER TABLE `common_calendar`
  ADD PRIMARY KEY (`dt`);

--
-- Indexes for table `common_client`
--
ALTER TABLE `common_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_common_client_created_by` (`created_by`),
  ADD KEY `fk_common_client_updated_by` (`updated_by`),
  ADD KEY `fk_common_client_parent_id` (`parent_id`),
  ADD KEY `fk_common_client_currency_code` (`currency_code`),
  ADD KEY `fk_common_client_contact_address_id` (`contact_address_id`),
  ADD KEY `fk_common_client_shipping_address_id` (`shipping_address_id`),
  ADD KEY `fk_common_client_billing_address_id` (`billing_address_id`);

--
-- Indexes for table `common_client_industry`
--
ALTER TABLE `common_client_industry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `common_client_type`
--
ALTER TABLE `common_client_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `common_company_branch`
--
ALTER TABLE `common_company_branch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_common_company_branch_created_by` (`created_by`),
  ADD KEY `fk_common_company_branch_updated_by` (`updated_by`),
  ADD KEY `fk_common_company_branch_parent_id` (`parent_id`),
  ADD KEY `fk_common_company_branch_supervisor_id` (`supervisor_id`),
  ADD KEY `fk_common_company_branch_base_currency` (`base_currency`);

--
-- Indexes for table `common_country`
--
ALTER TABLE `common_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iso_2` (`iso_2`),
  ADD UNIQUE KEY `iso_3` (`iso_3`),
  ADD UNIQUE KEY `iso_numeric` (`iso_numeric`);

--
-- Indexes for table `common_currency`
--
ALTER TABLE `common_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `symbol` (`symbol`),
  ADD KEY `fk_common_currency_created_by` (`created_by`),
  ADD KEY `fk_common_currency_updated_by` (`updated_by`);

--
-- Indexes for table `common_inventory_item`
--
ALTER TABLE `common_inventory_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `fk_common_inventory_item_created_by` (`created_by`),
  ADD KEY `fk_common_inventory_item_updated_by` (`updated_by`),
  ADD KEY `fk_common_inventory_item_branch_id` (`branch_id`),
  ADD KEY `fk_common_inventory_item_brand_id` (`brand_id`),
  ADD KEY `fk_common_inventory_item_model_id` (`model_id`);

--
-- Indexes for table `common_inventory_transaction`
--
ALTER TABLE `common_inventory_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_common_inventory_transaction_created_by` (`created_by`),
  ADD KEY `fk_common_inventory_transaction_updated_by` (`updated_by`),
  ADD KEY `fk_common_inventory_transaction_branch_id` (`branch_id`),
  ADD KEY `fk_common_inventory_transaction_vendor_id` (`vendor_id`),
  ADD KEY `fk_common_inventory_transaction_item_id` (`item_id`),
  ADD KEY `fk_common_inventory_transaction_source_branch_id` (`source_branch_id`);

--
-- Indexes for table `common_location`
--
ALTER TABLE `common_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_common_location_created_by` (`created_by`),
  ADD KEY `fk_common_location_updated_by` (`updated_by`);

--
-- Indexes for table `common_organisation`
--
ALTER TABLE `common_organisation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_common_organisation_created_by` (`created_by`),
  ADD KEY `fk_common_organisation_updated_by` (`updated_by`),
  ADD KEY `fk_common_organisation_address_id` (`address_id`),
  ADD KEY `fk_common_organisation_account_id` (`account_id`);

--
-- Indexes for table `common_staff`
--
ALTER TABLE `common_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`),
  ADD KEY `fk_common_staff_created_by` (`created_by`),
  ADD KEY `fk_common_staff_updated_by` (`updated_by`),
  ADD KEY `fk_common_staff_branch_id` (`branch_id`);

--
-- Indexes for table `common_statoid`
--
ALTER TABLE `common_statoid`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iso_code` (`iso_code`),
  ADD KEY `fk_common_statoid_parent_code` (`parent_code`),
  ADD KEY `fk_common_statoid_country_code` (`country_code`),
  ADD KEY `fk_common_statoid_parent_id` (`parent_id`);

--
-- Indexes for table `common_unit`
--
ALTER TABLE `common_unit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_common_unit_created_by` (`created_by`),
  ADD KEY `fk_common_unit_updated_by` (`updated_by`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `system_app`
--
ALTER TABLE `system_app`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `fk_system_app_created_by` (`created_by`),
  ADD KEY `fk_system_app_updated_by` (`updated_by`),
  ADD KEY `fk_system_app_theme_id` (`theme_id`),
  ADD KEY `fk_system_app_address_id` (`address_id`),
  ADD KEY `fk_system_app_account_id` (`mail_account_id`);

--
-- Indexes for table `system_approval_entry`
--
ALTER TABLE `system_approval_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_approval_entry_created_by` (`created_by`),
  ADD KEY `fk_system_approval_entry_updated_by` (`updated_by`),
  ADD KEY `fk_system_approval_entry_approver_id` (`approver_id`);

--
-- Indexes for table `system_approval_hierarchy`
--
ALTER TABLE `system_approval_hierarchy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_approval_hierarchy_created_by` (`created_by`),
  ADD KEY `fk_system_approval_hierarchy_updated_by` (`updated_by`),
  ADD KEY `fk_system_approval_hierarchy_user_id` (`user_id`),
  ADD KEY `fk_system_approval_hierarchy_alt_user_id` (`alt_user_id`),
  ADD KEY `fk_system_approval_hierarchy_role_id` (`role_id`),
  ADD KEY `fk_system_approval_hierarchy_alt_role_id` (`alt_role_id`);

--
-- Indexes for table `system_bootstrap`
--
ALTER TABLE `system_bootstrap`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `fk_system_bootstrap_module_id` (`module_id`),
  ADD KEY `fk_system_bootstrap_created_by` (`created_by`),
  ADD KEY `fk_system_bootstrap_updated_by` (`updated_by`);

--
-- Indexes for table `system_code_unit`
--
ALTER TABLE `system_code_unit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_system_code_unit_created_by` (`created_by`),
  ADD KEY `fk_system_code_unit_updated_by` (`updated_by`);

--
-- Indexes for table `system_component`
--
ALTER TABLE `system_component`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `class` (`class`);

--
-- Indexes for table `system_custom_message`
--
ALTER TABLE `system_custom_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_custom_message_message_code` (`code`);

--
-- Indexes for table `system_directory`
--
ALTER TABLE `system_directory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_event`
--
ALTER TABLE `system_event`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_unit_code` (`code_unit_code`);

--
-- Indexes for table `system_event_subscriber`
--
ALTER TABLE `system_event_subscriber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_event_subscriber_code_unit_code` (`code_unit_code`);

--
-- Indexes for table `system_file`
--
ALTER TABLE `system_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_file_mft_id` (`mft_id`);

--
-- Indexes for table `system_file_attachment`
--
ALTER TABLE `system_file_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_file_attachment_created_by` (`created_by`),
  ADD KEY `fk_system_file_attachment_updated_by` (`updated_by`);

--
-- Indexes for table `system_global_message`
--
ALTER TABLE `system_global_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_log_user_id` (`user_id`);

--
-- Indexes for table `system_mail`
--
ALTER TABLE `system_mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_account`
--
ALTER TABLE `system_mail_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_mail_account_updated_by` (`updated_by`);

--
-- Indexes for table `system_mail_template`
--
ALTER TABLE `system_mail_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_system_mail_template_created_by` (`created_by`),
  ADD KEY `fk_system_mail_template_updated_by` (`updated_by`),
  ADD KEY `fk_system_mail_template_layout` (`layout`);

--
-- Indexes for table `system_master_file`
--
ALTER TABLE `system_master_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_master_file_parent_id` (`parent_id`);

--
-- Indexes for table `system_menu`
--
ALTER TABLE `system_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `system_menu_item`
--
ALTER TABLE `system_menu_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_system_menu_item_menu_id` (`menu_id`),
  ADD KEY `fk_system_menu_item_parent_id` (`parent_id`);

--
-- Indexes for table `system_message`
--
ALTER TABLE `system_message`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `system_model`
--
ALTER TABLE `system_model`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_system_model_created_by` (`created_by`),
  ADD KEY `fk_system_model_updated_by` (`updated_by`);

--
-- Indexes for table `system_module`
--
ALTER TABLE `system_module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD KEY `fk_system_module_parent_id` (`parent_id`),
  ADD KEY `fk_system_module_created_by` (`created_by`),
  ADD KEY `fk_system_module_updated_by` (`updated_by`);

--
-- Indexes for table `system_module_installation`
--
ALTER TABLE `system_module_installation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_namespace`
--
ALTER TABLE `system_namespace`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `namespace` (`namespace`);

--
-- Indexes for table `system_notification`
--
ALTER TABLE `system_notification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_system_notification_created_by` (`created_by`),
  ADD KEY `fk_system_notification_updated_by` (`updated_by`);

--
-- Indexes for table `system_period`
--
ALTER TABLE `system_period`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_period_created_by` (`created_by`),
  ADD KEY `fk_system_period_updated_by` (`updated_by`),
  ADD KEY `fk_system_period_entity_id` (`entity_id`);

--
-- Indexes for table `system_period_instance`
--
ALTER TABLE `system_period_instance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_period_instance_created_by` (`created_by`),
  ADD KEY `fk_system_period_instance_updated_by` (`updated_by`),
  ADD KEY `fk_system_period_instance_period_id` (`period_id`);

--
-- Indexes for table `system_provider`
--
ALTER TABLE `system_provider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `unit_code` (`unit_code`);

--
-- Indexes for table `system_provider_param`
--
ALTER TABLE `system_provider_param`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_provider_param_provider_id` (`provider_id`);

--
-- Indexes for table `system_record_approver`
--
ALTER TABLE `system_record_approver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_record_approver_created_by` (`created_by`),
  ADD KEY `fk_system_record_approver_updated_by` (`updated_by`),
  ADD KEY `fk_system_record_approver_user_id` (`user_id`),
  ADD KEY `fk_system_record_approver_role_id` (`role_id`);

--
-- Indexes for table `system_resource`
--
ALTER TABLE `system_resource`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `system_response`
--
ALTER TABLE `system_response`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_system_response_parent_code` (`parent_code`);

--
-- Indexes for table `system_role`
--
ALTER TABLE `system_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_role_created_by` (`created_by`),
  ADD KEY `fk_role_updated_by` (`updated_by`),
  ADD KEY `fk_system_role_entity_id` (`entity_id`);

--
-- Indexes for table `system_role_message`
--
ALTER TABLE `system_role_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_role_message_created_by` (`created_by`),
  ADD KEY `fk_system_role_message_updated_by` (`updated_by`),
  ADD KEY `fk_system_role_message_role_id` (`role_id`),
  ADD KEY `fk_system_role_message_message_code` (`message_code`);

--
-- Indexes for table `system_role_notification`
--
ALTER TABLE `system_role_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_role_notification_created_by` (`created_by`),
  ADD KEY `fk_system_role_notification_updated_by` (`updated_by`),
  ADD KEY `fk_system_role_notification_notification_id` (`notification_id`),
  ADD KEY `fk_system_role_notification_role_id` (`role_id`);

--
-- Indexes for table `system_role_resource`
--
ALTER TABLE `system_role_resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_role_resource_created_by` (`created_by`),
  ADD KEY `fk_role_resource_updated_by` (`updated_by`),
  ADD KEY `fk_role_resource_role_id` (`role_id`),
  ADD KEY `fk_role_resource_resource_id` (`resource_id`);

--
-- Indexes for table `system_setting`
--
ALTER TABLE `system_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_setting_created_by` (`created_by`),
  ADD KEY `fk_system_setting_updated_by` (`updated_by`),
  ADD KEY `fk_system_setting_base_currency` (`base_currency`);

--
-- Indexes for table `system_sms`
--
ALTER TABLE `system_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_task`
--
ALTER TABLE `system_task`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guid` (`guid`),
  ADD KEY `fk_system_task_created_by` (`created_by`),
  ADD KEY `fk_system_task_updated_by` (`updated_by`),
  ADD KEY `fk_system_task_code_unit_code` (`code_unit_code`);

--
-- Indexes for table `system_task_schedule`
--
ALTER TABLE `system_task_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_task_schedule_created_by` (`created_by`),
  ADD KEY `fk_system_task_schedule_updated_by` (`updated_by`),
  ADD KEY `fk_system_task_schedule_task_guid` (`task_guid`);

--
-- Indexes for table `system_theme`
--
ALTER TABLE `system_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `system_translation`
--
ALTER TABLE `system_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `system_user`
--
ALTER TABLE `system_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`),
  ADD KEY `fk_system_user_created_by` (`created_by`),
  ADD KEY `fk_system_user_updated_by` (`updated_by`),
  ADD KEY `fk_system_user_entity_id` (`entity_id`);

--
-- Indexes for table `system_user_login`
--
ALTER TABLE `system_user_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_user_login_user_id` (`user_id`);

--
-- Indexes for table `system_user_message`
--
ALTER TABLE `system_user_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_user_notification`
--
ALTER TABLE `system_user_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_user_notification_created_by` (`created_by`),
  ADD KEY `fk_system_user_notification_updated_by` (`updated_by`),
  ADD KEY `fk_system_user_notification_notification_id` (`notification_id`),
  ADD KEY `fk_system_user_notification_user_id` (`user_id`);

--
-- Indexes for table `system_user_role`
--
ALTER TABLE `system_user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_role_user_id` (`user_id`),
  ADD KEY `fk_user_role_created_by` (`created_by`),
  ADD KEY `fk_user_role_updated_by` (`updated_by`);

--
-- Indexes for table `system_view`
--
ALTER TABLE `system_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_view_created_by` (`created_by`),
  ADD KEY `fk_system_view_updated_by` (`updated_by`),
  ADD KEY `fk_system_view_app_id` (`app_id`),
  ADD KEY `fk_system_view_module_id` (`module_id`);

--
-- Indexes for table `system_widget`
--
ALTER TABLE `system_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_widget_code_unit_code` (`code_unit_code`),
  ADD KEY `fk_system_widget_entity_id` (`entity_id`);

--
-- Indexes for table `system_workflow`
--
ALTER TABLE `system_workflow`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_system_workflow_created_by` (`created_by`),
  ADD KEY `fk_system_workflow_updated_by` (`updated_by`),
  ADD KEY `fk_system_workflow_category_id` (`category_id`);

--
-- Indexes for table `system_workflow_category`
--
ALTER TABLE `system_workflow_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_system_workflow_category_created_by` (`created_by`),
  ADD KEY `fk_system_workflow_category_updated_by` (`updated_by`);

--
-- Indexes for table `system_workflow_event`
--
ALTER TABLE `system_workflow_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_workflow_event_code` (`event_code`);

--
-- Indexes for table `system_workflow_rule`
--
ALTER TABLE `system_workflow_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_workflow_rule_created_by` (`created_by`),
  ADD KEY `fk_system_workflow_rule_updated_by` (`updated_by`),
  ADD KEY `fk_system_workflow_rule_step_id` (`step_id`);

--
-- Indexes for table `system_workflow_step`
--
ALTER TABLE `system_workflow_step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_workflow_step_created_by` (`created_by`),
  ADD KEY `fk_system_workflow_step_updated_by` (`updated_by`),
  ADD KEY `fk_system_workflow_step_workflow_id` (`workflow_id`),
  ADD KEY `fk_system_workflow_step_event_code` (`event_code`);

--
-- Indexes for table `system_workspace_menu`
--
ALTER TABLE `system_workspace_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_workspace_menu_created_by` (`created_by`),
  ADD KEY `fk_system_workspace_menu_updated_by` (`updated_by`),
  ADD KEY `fk_system_workspace_menu_user_id` (`user_id`),
  ADD KEY `fk_system_workspace_menu_menu_id` (`menu_id`);

--
-- Indexes for table `system_workspace_widget`
--
ALTER TABLE `system_workspace_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_system_workspace_widget_created_by` (`created_by`),
  ADD KEY `fk_system_workspace_widget_updated_by` (`updated_by`),
  ADD KEY `fk_system_workspace_widget_user_id` (`user_id`),
  ADD KEY `fk_system_workspace_widget_widget_code` (`widget_code`);

--
-- Indexes for table `wakala_agent`
--
ALTER TABLE `wakala_agent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_wakala_agent_created_by` (`created_by`),
  ADD KEY `fk_wakala_agent_updated_by` (`updated_by`),
  ADD KEY `fk_wakala_agent_user_id` (`user_id`);

--
-- Indexes for table `wakala_agent_log`
--
ALTER TABLE `wakala_agent_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_agent_log_service_id` (`service_id`),
  ADD KEY `fk_wakala_agent_log_agent_id` (`agent_id`);

--
-- Indexes for table `wakala_agent_rating`
--
ALTER TABLE `wakala_agent_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_agent_rating_agent_id` (`agent_id`),
  ADD KEY `fk_wakala_agent_rating_client_id` (`client_id`);

--
-- Indexes for table `wakala_agent_service`
--
ALTER TABLE `wakala_agent_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_agent_service_created_by` (`created_by`),
  ADD KEY `fk_wakala_agent_service_updated_by` (`updated_by`),
  ADD KEY `fk_wakala_agent_service_service_id` (`service_id`),
  ADD KEY `fk_wakala_agent_service_agent_id` (`agent_id`);

--
-- Indexes for table `wakala_agent_sms`
--
ALTER TABLE `wakala_agent_sms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_client_sms_agent_id` (`agent_id`);

--
-- Indexes for table `wakala_client`
--
ALTER TABLE `wakala_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `wakala_client_notification`
--
ALTER TABLE `wakala_client_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_client_notification_client_id` (`client_id`),
  ADD KEY `fk_wakala_client_notification_request_id` (`request_id`);

--
-- Indexes for table `wakala_client_sms`
--
ALTER TABLE `wakala_client_sms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_client_sms_client_id` (`client_id`);

--
-- Indexes for table `wakala_provider_service`
--
ALTER TABLE `wakala_provider_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_provider_service_created_by` (`created_by`),
  ADD KEY `fk_wakala_provider_service_updated_by` (`updated_by`),
  ADD KEY `fk_wakala_provider_service_provider_id` (`provider_id`),
  ADD KEY `fk_wakala_provider_service_service_id` (`service_id`);

--
-- Indexes for table `wakala_request_notification`
--
ALTER TABLE `wakala_request_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_request_notification_created_by` (`created_by`),
  ADD KEY `fk_wakala_request_notification_updated_by` (`updated_by`),
  ADD KEY `fk_wakala_request_notification_request_id` (`request_id`),
  ADD KEY `fk_wakala_request_notification_agent_id` (`agent_id`);

--
-- Indexes for table `wakala_service`
--
ALTER TABLE `wakala_service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_wakala_service_created_by` (`created_by`),
  ADD KEY `fk_wakala_service_updated_by` (`updated_by`);

--
-- Indexes for table `wakala_service_provider`
--
ALTER TABLE `wakala_service_provider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_wakala_service_provider_created_by` (`created_by`),
  ADD KEY `fk_wakala_service_provider_updated_by` (`updated_by`);

--
-- Indexes for table `wakala_service_request`
--
ALTER TABLE `wakala_service_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_service_request_client_id` (`client_id`),
  ADD KEY `fk_wakala_service_request_agent_id` (`agent_id`),
  ADD KEY `fk_wakala_service_request_service_id` (`service_id`);

--
-- Indexes for table `wakala_setting`
--
ALTER TABLE `wakala_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_setting_created_by` (`created_by`),
  ADD KEY `fk_wakala_setting_updated_by` (`updated_by`);

--
-- Indexes for table `wakala_tos`
--
ALTER TABLE `wakala_tos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wakala_tos_created_by` (`created_by`),
  ADD KEY `fk_wakala_tos_updated_by` (`updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `common_address`
--
ALTER TABLE `common_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `common_asset`
--
ALTER TABLE `common_asset`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_bank`
--
ALTER TABLE `common_bank`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_branch_inventory_item`
--
ALTER TABLE `common_branch_inventory_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_brand`
--
ALTER TABLE `common_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_brand_model`
--
ALTER TABLE `common_brand_model`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_client`
--
ALTER TABLE `common_client`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_client_industry`
--
ALTER TABLE `common_client_industry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_client_type`
--
ALTER TABLE `common_client_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_company_branch`
--
ALTER TABLE `common_company_branch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_country`
--
ALTER TABLE `common_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `common_currency`
--
ALTER TABLE `common_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_inventory_item`
--
ALTER TABLE `common_inventory_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_inventory_transaction`
--
ALTER TABLE `common_inventory_transaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_location`
--
ALTER TABLE `common_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_organisation`
--
ALTER TABLE `common_organisation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_staff`
--
ALTER TABLE `common_staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_statoid`
--
ALTER TABLE `common_statoid`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43668;

--
-- AUTO_INCREMENT for table `common_unit`
--
ALTER TABLE `common_unit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_app`
--
ALTER TABLE `system_app`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_approval_entry`
--
ALTER TABLE `system_approval_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_approval_hierarchy`
--
ALTER TABLE `system_approval_hierarchy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_bootstrap`
--
ALTER TABLE `system_bootstrap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_code_unit`
--
ALTER TABLE `system_code_unit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_component`
--
ALTER TABLE `system_component`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_custom_message`
--
ALTER TABLE `system_custom_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_directory`
--
ALTER TABLE `system_directory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_event`
--
ALTER TABLE `system_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_event_subscriber`
--
ALTER TABLE `system_event_subscriber`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_file`
--
ALTER TABLE `system_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_file_attachment`
--
ALTER TABLE `system_file_attachment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_global_message`
--
ALTER TABLE `system_global_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395767;

--
-- AUTO_INCREMENT for table `system_mail`
--
ALTER TABLE `system_mail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_mail_account`
--
ALTER TABLE `system_mail_account`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_mail_template`
--
ALTER TABLE `system_mail_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_master_file`
--
ALTER TABLE `system_master_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_menu`
--
ALTER TABLE `system_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_menu_item`
--
ALTER TABLE `system_menu_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `system_message`
--
ALTER TABLE `system_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_model`
--
ALTER TABLE `system_model`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `system_module`
--
ALTER TABLE `system_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_module_installation`
--
ALTER TABLE `system_module_installation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_namespace`
--
ALTER TABLE `system_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_notification`
--
ALTER TABLE `system_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_period`
--
ALTER TABLE `system_period`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_period_instance`
--
ALTER TABLE `system_period_instance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_provider`
--
ALTER TABLE `system_provider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_provider_param`
--
ALTER TABLE `system_provider_param`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_record_approver`
--
ALTER TABLE `system_record_approver`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_resource`
--
ALTER TABLE `system_resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `system_response`
--
ALTER TABLE `system_response`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_role`
--
ALTER TABLE `system_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_role_message`
--
ALTER TABLE `system_role_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_role_notification`
--
ALTER TABLE `system_role_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_role_resource`
--
ALTER TABLE `system_role_resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_setting`
--
ALTER TABLE `system_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_sms`
--
ALTER TABLE `system_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_task`
--
ALTER TABLE `system_task`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_task_schedule`
--
ALTER TABLE `system_task_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_theme`
--
ALTER TABLE `system_theme`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_translation`
--
ALTER TABLE `system_translation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_user`
--
ALTER TABLE `system_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;

--
-- AUTO_INCREMENT for table `system_user_login`
--
ALTER TABLE `system_user_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1367;

--
-- AUTO_INCREMENT for table `system_user_message`
--
ALTER TABLE `system_user_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_user_notification`
--
ALTER TABLE `system_user_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_user_role`
--
ALTER TABLE `system_user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `system_view`
--
ALTER TABLE `system_view`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_widget`
--
ALTER TABLE `system_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_workflow`
--
ALTER TABLE `system_workflow`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_workflow_category`
--
ALTER TABLE `system_workflow_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_workflow_event`
--
ALTER TABLE `system_workflow_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_workflow_rule`
--
ALTER TABLE `system_workflow_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_workflow_step`
--
ALTER TABLE `system_workflow_step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_workspace_menu`
--
ALTER TABLE `system_workspace_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_workspace_widget`
--
ALTER TABLE `system_workspace_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_agent`
--
ALTER TABLE `wakala_agent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_agent_log`
--
ALTER TABLE `wakala_agent_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_agent_rating`
--
ALTER TABLE `wakala_agent_rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_agent_service`
--
ALTER TABLE `wakala_agent_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_agent_sms`
--
ALTER TABLE `wakala_agent_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_client`
--
ALTER TABLE `wakala_client`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_client_notification`
--
ALTER TABLE `wakala_client_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_client_sms`
--
ALTER TABLE `wakala_client_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_provider_service`
--
ALTER TABLE `wakala_provider_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_request_notification`
--
ALTER TABLE `wakala_request_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_service`
--
ALTER TABLE `wakala_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_service_provider`
--
ALTER TABLE `wakala_service_provider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_service_request`
--
ALTER TABLE `wakala_service_request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_setting`
--
ALTER TABLE `wakala_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wakala_tos`
--
ALTER TABLE `wakala_tos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `common_address`
--
ALTER TABLE `common_address`
  ADD CONSTRAINT `fk_common_address_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_address_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_asset`
--
ALTER TABLE `common_asset`
  ADD CONSTRAINT `fk_common_asset_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `common_company_branch` (`id`),
  ADD CONSTRAINT `fk_common_asset_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `common_brand` (`id`),
  ADD CONSTRAINT `fk_common_asset_model_id` FOREIGN KEY (`model_id`) REFERENCES `common_brand_model` (`id`);

--
-- Constraints for table `common_bank`
--
ALTER TABLE `common_bank`
  ADD CONSTRAINT `fk_common_bank_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_bank_location_id` FOREIGN KEY (`location_id`) REFERENCES `common_location` (`id`),
  ADD CONSTRAINT `fk_common_bank_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_branch_inventory_item`
--
ALTER TABLE `common_branch_inventory_item`
  ADD CONSTRAINT `fk_common_branch_inventory_item_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `common_company_branch` (`id`),
  ADD CONSTRAINT `fk_common_branch_inventory_item_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_branch_inventory_item_item_id` FOREIGN KEY (`item_id`) REFERENCES `common_inventory_item` (`id`),
  ADD CONSTRAINT `fk_common_branch_inventory_item_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_brand`
--
ALTER TABLE `common_brand`
  ADD CONSTRAINT `fk_common_brand_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_brand_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_brand_model`
--
ALTER TABLE `common_brand_model`
  ADD CONSTRAINT `fk_common_brand_model_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `common_brand` (`id`),
  ADD CONSTRAINT `fk_common_brand_model_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_brand_model_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_client`
--
ALTER TABLE `common_client`
  ADD CONSTRAINT `fk_common_client_billing_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `common_address` (`id`),
  ADD CONSTRAINT `fk_common_client_contact_address_id` FOREIGN KEY (`contact_address_id`) REFERENCES `common_address` (`id`),
  ADD CONSTRAINT `fk_common_client_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_client_currency_code` FOREIGN KEY (`currency_code`) REFERENCES `common_currency` (`code`),
  ADD CONSTRAINT `fk_common_client_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `common_client` (`id`),
  ADD CONSTRAINT `fk_common_client_shipping_address_id` FOREIGN KEY (`shipping_address_id`) REFERENCES `common_address` (`id`),
  ADD CONSTRAINT `fk_common_client_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_company_branch`
--
ALTER TABLE `common_company_branch`
  ADD CONSTRAINT `fk_common_company_branch_base_currency` FOREIGN KEY (`base_currency`) REFERENCES `common_currency` (`code`),
  ADD CONSTRAINT `fk_common_company_branch_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_company_branch_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `common_company_branch` (`id`),
  ADD CONSTRAINT `fk_common_company_branch_supervisor_id` FOREIGN KEY (`supervisor_id`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_company_branch_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_currency`
--
ALTER TABLE `common_currency`
  ADD CONSTRAINT `fk_common_currency_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_currency_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_inventory_item`
--
ALTER TABLE `common_inventory_item`
  ADD CONSTRAINT `fk_common_inventory_item_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `common_company_branch` (`id`),
  ADD CONSTRAINT `fk_common_inventory_item_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `common_brand` (`id`),
  ADD CONSTRAINT `fk_common_inventory_item_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_inventory_item_model_id` FOREIGN KEY (`model_id`) REFERENCES `common_brand_model` (`id`),
  ADD CONSTRAINT `fk_common_inventory_item_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_inventory_transaction`
--
ALTER TABLE `common_inventory_transaction`
  ADD CONSTRAINT `fk_common_inventory_transaction_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `common_company_branch` (`id`),
  ADD CONSTRAINT `fk_common_inventory_transaction_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_inventory_transaction_item_id` FOREIGN KEY (`item_id`) REFERENCES `common_inventory_item` (`id`),
  ADD CONSTRAINT `fk_common_inventory_transaction_source_branch_id` FOREIGN KEY (`source_branch_id`) REFERENCES `common_company_branch` (`id`),
  ADD CONSTRAINT `fk_common_inventory_transaction_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_inventory_transaction_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `common_client` (`id`);

--
-- Constraints for table `common_location`
--
ALTER TABLE `common_location`
  ADD CONSTRAINT `fk_common_location_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_location_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_organisation`
--
ALTER TABLE `common_organisation`
  ADD CONSTRAINT `fk_common_organisation_account_id` FOREIGN KEY (`account_id`) REFERENCES `common_client` (`id`),
  ADD CONSTRAINT `fk_common_organisation_address_id` FOREIGN KEY (`address_id`) REFERENCES `common_address` (`id`),
  ADD CONSTRAINT `fk_common_organisation_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_organisation_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_staff`
--
ALTER TABLE `common_staff`
  ADD CONSTRAINT `fk_common_staff_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `common_company_branch` (`id`),
  ADD CONSTRAINT `fk_common_staff_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_staff_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `common_statoid`
--
ALTER TABLE `common_statoid`
  ADD CONSTRAINT `fk_common_statoid_country_code` FOREIGN KEY (`country_code`) REFERENCES `common_country` (`iso_2`),
  ADD CONSTRAINT `fk_common_statoid_parent_code` FOREIGN KEY (`parent_code`) REFERENCES `common_statoid` (`iso_code`),
  ADD CONSTRAINT `fk_common_statoid_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `common_statoid` (`id`);

--
-- Constraints for table `common_unit`
--
ALTER TABLE `common_unit`
  ADD CONSTRAINT `fk_common_unit_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_common_unit_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_app`
--
ALTER TABLE `system_app`
  ADD CONSTRAINT `fk_system_app_account_id` FOREIGN KEY (`mail_account_id`) REFERENCES `system_mail_account` (`id`),
  ADD CONSTRAINT `fk_system_app_address_id` FOREIGN KEY (`address_id`) REFERENCES `common_address` (`id`),
  ADD CONSTRAINT `fk_system_app_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_app_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `system_theme` (`id`),
  ADD CONSTRAINT `fk_system_app_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_approval_entry`
--
ALTER TABLE `system_approval_entry`
  ADD CONSTRAINT `fk_system_approval_entry_approver_id` FOREIGN KEY (`approver_id`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_approval_entry_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_approval_entry_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_approval_hierarchy`
--
ALTER TABLE `system_approval_hierarchy`
  ADD CONSTRAINT `fk_system_approval_hierarchy_alt_role_id` FOREIGN KEY (`alt_role_id`) REFERENCES `system_role` (`id`),
  ADD CONSTRAINT `fk_system_approval_hierarchy_alt_user_id` FOREIGN KEY (`alt_user_id`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_approval_hierarchy_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_approval_hierarchy_role_id` FOREIGN KEY (`role_id`) REFERENCES `system_role` (`id`),
  ADD CONSTRAINT `fk_system_approval_hierarchy_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_approval_hierarchy_user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_bootstrap`
--
ALTER TABLE `system_bootstrap`
  ADD CONSTRAINT `fk_system_bootstrap_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_bootstrap_module_id` FOREIGN KEY (`module_id`) REFERENCES `system_module` (`id`),
  ADD CONSTRAINT `fk_system_bootstrap_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_code_unit`
--
ALTER TABLE `system_code_unit`
  ADD CONSTRAINT `fk_system_code_unit_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_code_unit_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_custom_message`
--
ALTER TABLE `system_custom_message`
  ADD CONSTRAINT `fk_system_custom_message_message_code` FOREIGN KEY (`code`) REFERENCES `system_message` (`code`);

--
-- Constraints for table `system_event`
--
ALTER TABLE `system_event`
  ADD CONSTRAINT `fk_system_event_code_unit_code` FOREIGN KEY (`code_unit_code`) REFERENCES `system_code_unit` (`code`);

--
-- Constraints for table `system_event_subscriber`
--
ALTER TABLE `system_event_subscriber`
  ADD CONSTRAINT `fk_system_event_subscriber_code_unit_code` FOREIGN KEY (`code_unit_code`) REFERENCES `system_code_unit` (`code`);

--
-- Constraints for table `system_file`
--
ALTER TABLE `system_file`
  ADD CONSTRAINT `fk_system_file_mft_id` FOREIGN KEY (`mft_id`) REFERENCES `system_master_file` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `system_file_attachment`
--
ALTER TABLE `system_file_attachment`
  ADD CONSTRAINT `fk_system_file_attachment_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_file_attachment_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_log`
--
ALTER TABLE `system_log`
  ADD CONSTRAINT `fk_system_log_user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_mail_account`
--
ALTER TABLE `system_mail_account`
  ADD CONSTRAINT `fk_system_mail_account_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_mail_template`
--
ALTER TABLE `system_mail_template`
  ADD CONSTRAINT `fk_system_mail_template_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_mail_template_layout` FOREIGN KEY (`layout`) REFERENCES `system_mail_template` (`code`),
  ADD CONSTRAINT `fk_system_mail_template_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_master_file`
--
ALTER TABLE `system_master_file`
  ADD CONSTRAINT `fk_system_master_file_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `system_master_file` (`id`);

--
-- Constraints for table `system_menu_item`
--
ALTER TABLE `system_menu_item`
  ADD CONSTRAINT `fk_system_menu_item_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `system_menu` (`id`),
  ADD CONSTRAINT `fk_system_menu_item_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `system_menu_item` (`id`);

--
-- Constraints for table `system_model`
--
ALTER TABLE `system_model`
  ADD CONSTRAINT `fk_system_model_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_model_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_module`
--
ALTER TABLE `system_module`
  ADD CONSTRAINT `fk_system_module_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_module_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `system_module` (`id`),
  ADD CONSTRAINT `fk_system_module_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_notification`
--
ALTER TABLE `system_notification`
  ADD CONSTRAINT `fk_system_notification_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_notification_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_period`
--
ALTER TABLE `system_period`
  ADD CONSTRAINT `fk_system_period_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_period_entity_id` FOREIGN KEY (`entity_id`) REFERENCES `system_setting` (`id`),
  ADD CONSTRAINT `fk_system_period_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_period_instance`
--
ALTER TABLE `system_period_instance`
  ADD CONSTRAINT `fk_system_period_instance_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_period_instance_period_id` FOREIGN KEY (`period_id`) REFERENCES `system_period` (`id`),
  ADD CONSTRAINT `fk_system_period_instance_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_provider`
--
ALTER TABLE `system_provider`
  ADD CONSTRAINT `fk_system_provider_unit_code` FOREIGN KEY (`unit_code`) REFERENCES `system_code_unit` (`code`);

--
-- Constraints for table `system_provider_param`
--
ALTER TABLE `system_provider_param`
  ADD CONSTRAINT `fk_system_provider_param_provider_id` FOREIGN KEY (`provider_id`) REFERENCES `system_provider` (`id`);

--
-- Constraints for table `system_record_approver`
--
ALTER TABLE `system_record_approver`
  ADD CONSTRAINT `fk_system_record_approver_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_record_approver_role_id` FOREIGN KEY (`role_id`) REFERENCES `system_role` (`id`),
  ADD CONSTRAINT `fk_system_record_approver_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_record_approver_user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_response`
--
ALTER TABLE `system_response`
  ADD CONSTRAINT `fk_system_response_parent_code` FOREIGN KEY (`parent_code`) REFERENCES `system_response` (`code`);

--
-- Constraints for table `system_role`
--
ALTER TABLE `system_role`
  ADD CONSTRAINT `fk_role_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_role_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_role_entity_id` FOREIGN KEY (`entity_id`) REFERENCES `system_setting` (`id`);

--
-- Constraints for table `system_role_message`
--
ALTER TABLE `system_role_message`
  ADD CONSTRAINT `fk_system_role_message_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_role_message_message_code` FOREIGN KEY (`message_code`) REFERENCES `system_message` (`code`),
  ADD CONSTRAINT `fk_system_role_message_role_id` FOREIGN KEY (`role_id`) REFERENCES `system_role` (`id`),
  ADD CONSTRAINT `fk_system_role_message_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_role_notification`
--
ALTER TABLE `system_role_notification`
  ADD CONSTRAINT `fk_system_role_notification_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_role_notification_notification_id` FOREIGN KEY (`notification_id`) REFERENCES `system_notification` (`id`),
  ADD CONSTRAINT `fk_system_role_notification_role_id` FOREIGN KEY (`role_id`) REFERENCES `system_role` (`id`),
  ADD CONSTRAINT `fk_system_role_notification_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_role_resource`
--
ALTER TABLE `system_role_resource`
  ADD CONSTRAINT `fk_role_resource_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_role_resource_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `system_resource` (`id`),
  ADD CONSTRAINT `fk_role_resource_role_id` FOREIGN KEY (`role_id`) REFERENCES `system_role` (`id`),
  ADD CONSTRAINT `fk_role_resource_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_setting`
--
ALTER TABLE `system_setting`
  ADD CONSTRAINT `fk_system_setting_base_currency` FOREIGN KEY (`base_currency`) REFERENCES `common_currency` (`code`),
  ADD CONSTRAINT `fk_system_setting_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_setting_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_task`
--
ALTER TABLE `system_task`
  ADD CONSTRAINT `fk_system_task_code_unit_code` FOREIGN KEY (`code_unit_code`) REFERENCES `system_code_unit` (`code`),
  ADD CONSTRAINT `fk_system_task_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_task_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_task_schedule`
--
ALTER TABLE `system_task_schedule`
  ADD CONSTRAINT `fk_system_task_schedule_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_task_schedule_task_guid` FOREIGN KEY (`task_guid`) REFERENCES `system_task` (`guid`),
  ADD CONSTRAINT `fk_system_task_schedule_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_user`
--
ALTER TABLE `system_user`
  ADD CONSTRAINT `fk_system_user_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_user_entity_id` FOREIGN KEY (`entity_id`) REFERENCES `system_setting` (`id`),
  ADD CONSTRAINT `fk_system_user_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_user_login`
--
ALTER TABLE `system_user_login`
  ADD CONSTRAINT `fk_system_user_login_user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_user_notification`
--
ALTER TABLE `system_user_notification`
  ADD CONSTRAINT `fk_system_user_notification_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_user_notification_notification_id` FOREIGN KEY (`notification_id`) REFERENCES `system_notification` (`id`),
  ADD CONSTRAINT `fk_system_user_notification_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_user_notification_user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_user_role`
--
ALTER TABLE `system_user_role`
  ADD CONSTRAINT `fk_user_role_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_user_role_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_user_role_user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_view`
--
ALTER TABLE `system_view`
  ADD CONSTRAINT `fk_system_view_app_id` FOREIGN KEY (`app_id`) REFERENCES `system_app` (`id`),
  ADD CONSTRAINT `fk_system_view_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_view_module_id` FOREIGN KEY (`module_id`) REFERENCES `system_module` (`unique_id`),
  ADD CONSTRAINT `fk_system_view_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_widget`
--
ALTER TABLE `system_widget`
  ADD CONSTRAINT `fk_system_widget_code_unit_code` FOREIGN KEY (`code_unit_code`) REFERENCES `system_code_unit` (`code`),
  ADD CONSTRAINT `fk_system_widget_entity_id` FOREIGN KEY (`entity_id`) REFERENCES `system_setting` (`id`);

--
-- Constraints for table `system_workflow`
--
ALTER TABLE `system_workflow`
  ADD CONSTRAINT `fk_system_workflow_category_id` FOREIGN KEY (`category_id`) REFERENCES `system_workflow_category` (`id`),
  ADD CONSTRAINT `fk_system_workflow_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_workflow_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_workflow_category`
--
ALTER TABLE `system_workflow_category`
  ADD CONSTRAINT `fk_system_workflow_category_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_workflow_category_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_workflow_event`
--
ALTER TABLE `system_workflow_event`
  ADD CONSTRAINT `fk_system_workflow_event_code` FOREIGN KEY (`event_code`) REFERENCES `system_event` (`code_unit_code`);

--
-- Constraints for table `system_workflow_rule`
--
ALTER TABLE `system_workflow_rule`
  ADD CONSTRAINT `fk_system_workflow_rule_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_workflow_rule_step_id` FOREIGN KEY (`step_id`) REFERENCES `system_workflow_step` (`id`),
  ADD CONSTRAINT `fk_system_workflow_rule_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_workflow_step`
--
ALTER TABLE `system_workflow_step`
  ADD CONSTRAINT `fk_system_workflow_step_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_workflow_step_event_code` FOREIGN KEY (`event_code`) REFERENCES `system_event` (`code_unit_code`),
  ADD CONSTRAINT `fk_system_workflow_step_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_workflow_step_workflow_id` FOREIGN KEY (`workflow_id`) REFERENCES `system_workflow` (`id`);

--
-- Constraints for table `system_workspace_menu`
--
ALTER TABLE `system_workspace_menu`
  ADD CONSTRAINT `fk_system_workspace_menu_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_workspace_menu_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `system_menu_item` (`id`),
  ADD CONSTRAINT `fk_system_workspace_menu_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_workspace_menu_user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `system_workspace_widget`
--
ALTER TABLE `system_workspace_widget`
  ADD CONSTRAINT `fk_system_workspace_widget_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_workspace_widget_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_workspace_widget_user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_system_workspace_widget_widget_code` FOREIGN KEY (`widget_code`) REFERENCES `system_widget` (`code_unit_code`);

--
-- Constraints for table `wakala_agent`
--
ALTER TABLE `wakala_agent`
  ADD CONSTRAINT `fk_wakala_agent_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_wakala_agent_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_wakala_agent_user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `wakala_agent_log`
--
ALTER TABLE `wakala_agent_log`
  ADD CONSTRAINT `fk_wakala_agent_log_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `wakala_agent` (`id`),
  ADD CONSTRAINT `fk_wakala_agent_log_service_id` FOREIGN KEY (`service_id`) REFERENCES `wakala_provider_service` (`id`);

--
-- Constraints for table `wakala_agent_rating`
--
ALTER TABLE `wakala_agent_rating`
  ADD CONSTRAINT `fk_wakala_agent_rating_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `wakala_agent` (`id`),
  ADD CONSTRAINT `fk_wakala_agent_rating_client_id` FOREIGN KEY (`client_id`) REFERENCES `wakala_client` (`id`);

--
-- Constraints for table `wakala_agent_service`
--
ALTER TABLE `wakala_agent_service`
  ADD CONSTRAINT `fk_wakala_agent_service_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `wakala_agent` (`id`),
  ADD CONSTRAINT `fk_wakala_agent_service_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_wakala_agent_service_service_id` FOREIGN KEY (`service_id`) REFERENCES `wakala_provider_service` (`id`),
  ADD CONSTRAINT `fk_wakala_agent_service_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `wakala_agent_sms`
--
ALTER TABLE `wakala_agent_sms`
  ADD CONSTRAINT `fk_wakala_client_sms_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `wakala_agent` (`id`);

--
-- Constraints for table `wakala_client_notification`
--
ALTER TABLE `wakala_client_notification`
  ADD CONSTRAINT `fk_wakala_client_notification_client_id` FOREIGN KEY (`client_id`) REFERENCES `wakala_client` (`id`),
  ADD CONSTRAINT `fk_wakala_client_notification_request_id` FOREIGN KEY (`request_id`) REFERENCES `wakala_service_request` (`id`);

--
-- Constraints for table `wakala_client_sms`
--
ALTER TABLE `wakala_client_sms`
  ADD CONSTRAINT `fk_wakala_client_sms_client_id` FOREIGN KEY (`client_id`) REFERENCES `wakala_client` (`id`);

--
-- Constraints for table `wakala_provider_service`
--
ALTER TABLE `wakala_provider_service`
  ADD CONSTRAINT `fk_wakala_provider_service_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_wakala_provider_service_provider_id` FOREIGN KEY (`provider_id`) REFERENCES `wakala_service_provider` (`id`),
  ADD CONSTRAINT `fk_wakala_provider_service_service_id` FOREIGN KEY (`service_id`) REFERENCES `wakala_service` (`id`),
  ADD CONSTRAINT `fk_wakala_provider_service_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `wakala_request_notification`
--
ALTER TABLE `wakala_request_notification`
  ADD CONSTRAINT `fk_wakala_request_notification_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `wakala_agent` (`id`),
  ADD CONSTRAINT `fk_wakala_request_notification_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_wakala_request_notification_request_id` FOREIGN KEY (`request_id`) REFERENCES `wakala_service_request` (`id`),
  ADD CONSTRAINT `fk_wakala_request_notification_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `wakala_service`
--
ALTER TABLE `wakala_service`
  ADD CONSTRAINT `fk_wakala_service_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_wakala_service_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `wakala_service_provider`
--
ALTER TABLE `wakala_service_provider`
  ADD CONSTRAINT `fk_wakala_service_provider_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_wakala_service_provider_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `wakala_service_request`
--
ALTER TABLE `wakala_service_request`
  ADD CONSTRAINT `fk_wakala_service_request_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `wakala_agent` (`id`),
  ADD CONSTRAINT `fk_wakala_service_request_client_id` FOREIGN KEY (`client_id`) REFERENCES `wakala_client` (`id`),
  ADD CONSTRAINT `fk_wakala_service_request_service_id` FOREIGN KEY (`service_id`) REFERENCES `wakala_provider_service` (`id`);

--
-- Constraints for table `wakala_setting`
--
ALTER TABLE `wakala_setting`
  ADD CONSTRAINT `fk_wakala_setting_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_wakala_setting_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);

--
-- Constraints for table `wakala_tos`
--
ALTER TABLE `wakala_tos`
  ADD CONSTRAINT `fk_wakala_tos_created_by` FOREIGN KEY (`created_by`) REFERENCES `system_user` (`id`),
  ADD CONSTRAINT `fk_wakala_tos_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `system_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
