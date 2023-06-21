-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2023 at 11:24 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `about` longtext,
  `purchase_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_popular` int(11) NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `blog_comment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `likes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_date` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `font_awesome_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percentage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `expiry_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `outcomes` longtext COLLATE utf8_unicode_ci,
  `faqs` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `section` longtext COLLATE utf8_unicode_ci,
  `requirements` longtext COLLATE utf8_unicode_ci,
  `price` double DEFAULT NULL,
  `discount_flag` int(11) DEFAULT '0',
  `discounted_price` double DEFAULT NULL,
  `level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `course_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_top_course` int(11) DEFAULT '0',
  `is_admin` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_overview_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `is_free_course` int(11) DEFAULT NULL,
  `multi_instructor` int(11) NOT NULL DEFAULT '0',
  `enable_drip_content` int(11) NOT NULL,
  `creator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `ccavenue_supported` int(11) DEFAULT '0',
  `iyzico_supported` int(11) DEFAULT '0',
  `paystack_supported` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `ccavenue_supported`, `iyzico_supported`, `paystack_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1, 0, 0, 0),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0, 0, 0),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0, 0, 0),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0, 0, 0),
(5, 'Argentine Peso', 'ARS', '$', 1, 1, 0, 0, 0),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0, 0, 0),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0, 0, 0),
(8, 'Australian Dollar', 'AUD', '$', 1, 1, 0, 0, 0),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0, 0, 0),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0, 0, 0),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0, 0, 0),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0, 0, 0),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0, 0, 0),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0, 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0, 0, 0),
(16, 'Belize Dollar', 'BZD', '$', 1, 1, 0, 0, 0),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0, 0, 0),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0, 0, 0),
(19, 'Bitcoin', 'BTC', '฿', 1, 1, 0, 0, 0),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0, 0, 0),
(21, 'Bosnia', 'BAM', 'KM', 1, 1, 0, 0, 0),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0, 0, 0),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 0, 0, 0),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1, 0, 0, 0),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0, 0, 0),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0, 0, 0),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0, 0, 0),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0, 0, 0),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1, 0, 0, 0),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 0, 0, 0),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0, 0, 0),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 0, 0, 0),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 0, 0, 0),
(34, 'CFP Franc', 'XPF', '₣', 1, 1, 0, 0, 0),
(35, 'Chilean Peso', 'CLP', '$', 1, 1, 0, 0, 0),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0, 0, 0),
(37, 'Colombian Peso', 'COP', '$', 1, 1, 0, 0, 0),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0, 0, 0),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 0, 0, 0),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0, 0, 0),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0, 0, 0),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0, 0, 0),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0, 0, 0),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0, 0, 0),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0, 0, 0),
(46, 'Dominican Peso', 'DOP', '$', 1, 1, 0, 0, 0),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0, 0, 0),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 0, 0, 0),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0, 0, 0),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0, 0, 0),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0, 0, 0),
(52, 'Euro', 'EUR', '€', 1, 1, 0, 0, 0),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0, 0, 0),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0, 0, 0),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 0, 0, 0),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0, 0, 0),
(57, 'German Mark', 'DEM', 'DM', 1, 1, 0, 0, 0),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 0, 0, 0),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0, 0, 0),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0, 0, 0),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0, 0, 0),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 0, 0, 0),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0, 0, 0),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0, 0, 0),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0, 0, 0),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0, 0, 0),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0, 0, 0),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0, 0, 0),
(69, 'Indian Rupee', 'INR', '₹', 1, 1, 1, 0, 0),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0, 0, 0),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0, 0, 0),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0, 0, 0),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0, 0, 0),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0, 0, 0),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0, 0, 0),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0, 0, 0),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0, 0, 0),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0, 0, 0),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 0, 0, 0),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0, 0, 0),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0, 0, 0),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0, 0, 0),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0, 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0, 0, 0),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0, 0, 0),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1, 0, 0, 0),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0, 0, 0),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0, 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0, 0, 0),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0, 0, 0),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0, 0, 0),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 0, 0, 0),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0, 0, 0),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0, 0, 0),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0, 0, 0),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0, 0, 0),
(97, 'Mexican Peso', 'MXN', '$', 1, 1, 0, 0, 0),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0, 0, 0),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0, 0, 0),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 0, 0, 0),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0, 0, 0),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0, 0, 0),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0, 0, 0),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0, 0, 0),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0, 0, 0),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0, 0, 0),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0, 0, 0),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0, 0, 0),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 0, 0, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0, 0, 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0, 0, 0),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0, 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0, 0, 0),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0, 0, 0),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0, 0, 0),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0, 0, 0),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0, 0, 0),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0, 0, 0),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0, 0, 0),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0, 0, 0),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0, 0, 0),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0, 0, 0),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 0, 0, 0),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0, 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0, 0, 0),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0, 0, 0),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0, 0, 0),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0, 0, 0),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 0, 0, 0),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0, 0, 0),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0, 0, 0),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0, 0, 0),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0, 0, 0),
(134, 'South African Rand', 'ZAR', 'R', 1, 1, 0, 0, 0),
(135, 'South Korean Won', 'KRW', '₩', 1, 1, 0, 0, 0),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0, 0, 0),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0, 0, 0),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0, 0, 0),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0, 0, 0),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0, 0, 0),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0, 0, 0),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0, 0, 0),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0, 0, 0),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0, 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 0, 0, 0),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0, 0, 0),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 0, 0, 0),
(148, 'Thai Baht', 'THB', '฿', 1, 1, 0, 0, 0),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0, 0, 0),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0, 0, 0),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0, 0, 0),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0, 1, 0),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0, 0, 0),
(154, 'Ugandan Shilling', 'UGX', 'USh', 1, 1, 0, 0, 0),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0, 0, 0),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0, 0, 0),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0, 0, 0),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0, 0, 0),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0, 0, 0),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0, 0, 0),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0, 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0, 0, 0),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0, 0, 0),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_page`
--

CREATE TABLE `custom_page` (
  `custom_page_id` int(11) NOT NULL,
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `button_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrol`
--

CREATE TABLE `enrol` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `gifted_by` int(11) NOT NULL DEFAULT '0',
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`id`, `key`, `value`) VALUES
(1, 'banner_title', 'Start learning from best Platform'),
(2, 'banner_sub_title', 'Study any topic, anytime. Explore thousands of courses for the lowest price ever!'),
(4, 'about_us', '<p></p><h2><span xss=removed>This is about us</span></h2><p><span xss=\"removed\">Welcome to Academy. It will help you to learn in a new ways</span></p>'),
(10, 'terms_and_condition', '<h2>Terms and Condition</h2>This is the Terms and condition page for your companys'),
(11, 'privacy_policy', '<p></p><p></p><h2><span xss=\"removed\">Privacy Policy</span><br></h2>This is the Privacy Policy page for your companys<p></p><p><b>This is another</b> <u><a href=\"https://youtube.com/watch?v=PHgc8Q6qTjc\" target=\"_blank\">thing you will</a></u> <span xss=\"removed\">not understand</span>.</p>'),
(13, 'theme', 'default'),
(14, 'cookie_note', 'This website uses cookies to personalize content and analyse traffic in order to offer you a better experience.'),
(15, 'cookie_status', 'active'),
(16, 'cookie_policy', '<h1>Cookie policy</h1><ol><li>Cookies are small text files that can be used by websites to make a user\'s experience more efficient.</li><li>The law states that we can store cookies on your device if they are strictly necessary for the operation of this site. For all other types of cookies we need your permission.</li><li>This site uses different types of cookies. Some cookies are placed by third party services that appear on our pages.</li></ol>'),
(17, 'banner_image', 'home-banner.jpg'),
(18, 'light_logo', 'logo-light.png'),
(19, 'dark_logo', 'logo-dark.png'),
(20, 'small_logo', 'logo-light-sm.png'),
(21, 'favicon', 'favicon.png'),
(22, 'recaptcha_status', '0'),
(23, 'recaptcha_secretkey', 'Valid-secret-key'),
(24, 'recaptcha_sitekey', 'Valid-site-key'),
(25, 'refund_policy', '<h2><span xss=\"removed\">Refund Policy</span></h2>'),
(26, 'facebook', 'https://facebook.com'),
(27, 'twitter', 'https://twitter.com'),
(28, 'linkedin', ''),
(31, 'blog_page_title', 'Where possibilities begin'),
(32, 'blog_page_subtitle', 'We’re a leading marketplace platform for learning and teaching online. Explore some of our most popular content and learn something new.'),
(33, 'blog_page_banner', 'blog-page.png'),
(34, 'instructors_blog_permission', '0'),
(35, 'blog_visibility_on_the_home_page', '1');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci,
  `english` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'english', 'English'),
(2, '404_page_not_found', '404 page not found'),
(3, 'categories', 'Categories'),
(4, 'categories', 'Categories'),
(5, 'menu', 'Menu'),
(6, 'menu', 'Menu'),
(7, 'all_courses', 'All courses'),
(8, 'all_courses', 'All courses'),
(9, 'search_for_courses', 'Search for courses'),
(10, 'total', 'Total'),
(11, 'total', 'Total'),
(12, 'total', 'Total'),
(13, 'total', 'Total'),
(14, 'total', 'Total'),
(15, 'total', 'Total'),
(16, 'go_to_cart', 'Go to cart'),
(17, 'your_cart_is_empty', 'Your cart is empty'),
(18, 'log_in', 'Log in'),
(19, 'sign_up', 'Sign up'),
(20, 'sign_up', 'Sign up'),
(21, 'sign_up', 'Sign up'),
(22, 'sign_up', 'Sign up'),
(23, 'cookie_policy', 'Cookie policy'),
(24, 'accept', 'Accept'),
(25, 'oh_snap', 'Oh snap'),
(26, 'this_is_not_the_web_page_you_are_looking_for', 'This is not the web page you are looking for'),
(27, 'back_to_home', 'Back to home'),
(28, 'back_to_home', 'Back to home'),
(29, 'top_categories', 'Top categories'),
(30, 'top_categories', 'Top categories'),
(31, 'top_categories', 'Top categories'),
(32, 'top_categories', 'Top categories'),
(33, 'top_categories', 'Top categories'),
(34, 'top_categories', 'Top categories'),
(35, 'useful_links', 'Useful links'),
(36, 'blog', 'Blog'),
(37, 'help', 'Help'),
(38, 'help', 'Help'),
(39, 'about_us', 'About us'),
(40, 'privacy_policy', 'Privacy policy'),
(41, 'privacy_policy', 'Privacy policy'),
(42, 'terms_and_condition', 'Terms and condition'),
(43, 'terms_and_condition', 'Terms and condition'),
(44, 'refund_policy', 'Refund policy'),
(45, 'refund_policy', 'Refund policy'),
(46, 'refund_policy', 'Refund policy'),
(47, 'refund_policy', 'Refund policy'),
(48, 'all_rights_reserved', 'All rights reserved'),
(49, 'all_rights_reserved', 'All rights reserved'),
(50, 'all_rights_reserved', 'All rights reserved'),
(51, 'step', 'Step'),
(52, 'how_would_you_rate_this_course_overall', 'How would you rate this course overall'),
(53, 'write_a_public_review', 'Write a public review'),
(54, 'write_a_public_review', 'Write a public review'),
(55, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', 'Describe your experience what you got out of the course and other helpful highlights'),
(56, 'describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights', 'Describe your experience what you got out of the course and other helpful highlights'),
(57, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', 'What did the instructor do well and what could use some improvement'),
(58, 'what_did_the_instructor_do_well_and_what_could_use_some_improvement', 'What did the instructor do well and what could use some improvement'),
(59, 'next', 'Next'),
(60, 'previous', 'Previous'),
(61, 'previous', 'Previous'),
(62, 'publish', 'Publish'),
(63, 'publish', 'Publish'),
(64, 'publish', 'Publish'),
(65, 'are_you_sure', 'Are you sure'),
(66, 'are_you_sure', 'Are you sure'),
(67, 'are_you_sure', 'Are you sure'),
(68, 'are_you_sure', 'Are you sure'),
(69, 'are_you_sure', 'Are you sure'),
(70, 'yes', 'Yes'),
(71, 'yes', 'Yes'),
(72, 'yes', 'Yes'),
(73, 'yes', 'Yes'),
(74, 'no', 'No'),
(75, 'no', 'No'),
(76, 'no', 'No'),
(77, 'no', 'No'),
(78, 'no', 'No'),
(79, 'view_less', 'View less'),
(80, 'view_less', 'View less'),
(81, 'view_less', 'View less'),
(82, 'view_less', 'View less'),
(83, 'view_more', 'View more'),
(84, 'view_more', 'View more'),
(85, 'view_more', 'View more'),
(86, 'view_more', 'View more'),
(87, 'view_more', 'View more'),
(88, 'view_more', 'View more'),
(89, 'login', 'Login'),
(90, 'provide_your_valid_login_credentials', 'Provide your valid login credentials'),
(91, 'email', 'Email'),
(92, 'password', 'Password'),
(93, 'forgot_password', 'Forgot password'),
(94, 'do_not_have_an_account', 'Do not have an account'),
(95, 'home', 'Home'),
(96, 'start_learning_from_best_platform', 'Start learning from best platform'),
(97, 'study_any_topic,_anytime._explore_thousands_of_courses_for_the_lowest_price_ever!', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(98, 'what_do_you_want_to_learn', 'What do you want to learn'),
(99, 'search', 'Search'),
(100, 'online_courses', 'Online courses'),
(101, 'explore_a_variety_of_fresh_topics', 'Explore a variety of fresh topics'),
(102, 'expert_instruction', 'Expert instruction'),
(103, 'find_the_right_course_for_you', 'Find the right course for you'),
(104, 'lifetime_access', 'Lifetime access'),
(105, 'learn_on_your_schedule', 'Learn on your schedule'),
(106, 'top_courses', 'Top courses'),
(107, 'top', 'Top'),
(108, 'latest_courses', 'Latest courses'),
(109, 'join_now_to_start_learning', 'Join now to start learning'),
(110, 'get_started', 'Get started'),
(111, 'become_a_new_instructor', 'Become a new instructor'),
(112, 'join_now', 'Join now'),
(113, 'add_to_cart', 'Add to cart'),
(114, 'added_to_cart', 'Added to cart'),
(115, 'welcome', 'Welcome'),
(116, 'dashboard', 'Dashboard'),
(117, 'quick_actions', 'Quick actions'),
(118, 'create_course', 'Create course'),
(119, 'add_course', 'Add course'),
(120, 'add_new_lesson', 'Add new lesson'),
(121, 'add_lesson', 'Add lesson'),
(122, 'add_student', 'Add student'),
(123, 'enrol_a_student', 'Enrol a student'),
(124, 'enrol_student', 'Enrol student'),
(125, 'help_center', 'Help center'),
(126, 'read_documentation', 'Read documentation'),
(127, 'watch_video_tutorial', 'Watch video tutorial'),
(128, 'get_customer_support', 'Get customer support'),
(129, 'order_customization', 'Order customization'),
(130, 'request_a_new_feature', 'Request a new feature'),
(131, 'browse_addons', 'Browse addons'),
(132, 'admin', 'Admin'),
(133, 'my_account', 'My account'),
(134, 'settings', 'Settings'),
(135, 'logout', 'Logout'),
(136, 'visit_website', 'Visit website'),
(137, 'navigation', 'Navigation'),
(138, 'courses', 'Courses'),
(139, 'manage_courses', 'Manage courses'),
(140, 'add_new_course', 'Add new course'),
(141, 'course_category', 'Course category'),
(142, 'coupons', 'Coupons'),
(143, 'enrolment', 'Enrolment'),
(144, 'course_enrollment', 'Course enrollment'),
(145, 'enrol_history', 'Enrol history'),
(146, 'report', 'Report'),
(147, 'admin_revenue', 'Admin revenue'),
(148, 'instructor_revenue', 'Instructor revenue'),
(149, 'purchase_history', 'Purchase history'),
(150, 'users', 'Users'),
(151, 'admins', 'Admins'),
(152, 'manage_admins', 'Manage admins'),
(153, 'add_new_admin', 'Add new admin'),
(154, 'instructors', 'Instructors'),
(155, 'manage_instructors', 'Manage instructors'),
(156, 'add_new_instructor', 'Add new instructor'),
(157, 'instructor_payout', 'Instructor payout'),
(158, 'instructor_settings', 'Instructor settings'),
(159, 'applications', 'Applications'),
(160, 'students', 'Students'),
(161, 'manage_students', 'Manage students'),
(162, 'add_new_student', 'Add new student'),
(163, 'message', 'Message'),
(164, 'all_blogs', 'All blogs'),
(165, 'pending_blog', 'Pending blog'),
(166, 'blog_category', 'Blog category'),
(167, 'blog_settings', 'Blog settings'),
(168, 'addons', 'Addons'),
(169, 'themes', 'Themes'),
(170, 'system_settings', 'System settings'),
(171, 'website_settings', 'Website settings'),
(172, 'academy_cloud', 'Academy cloud'),
(173, 'drip_content_settings', 'Drip content settings'),
(174, 'payment_settings', 'Payment settings'),
(175, 'language_settings', 'Language settings'),
(176, 'smtp_settings', 'Smtp settings'),
(177, 'social_login', 'Social login'),
(178, 'custom_page', 'Custom page'),
(179, 'data_center', 'Data center'),
(180, 'about', 'About'),
(181, 'manage_profile', 'Manage profile'),
(182, 'admin_revenue_this_year', 'Admin revenue this year'),
(183, 'number_courses', 'Number courses'),
(184, 'number_of_lessons', 'Number of lessons'),
(185, 'number_of_enrolment', 'Number of enrolment'),
(186, 'number_of_student', 'Number of student'),
(187, 'course_overview', 'Course overview'),
(188, 'active_courses', 'Active courses'),
(189, 'pending_courses', 'Pending courses'),
(190, 'requested_withdrawal', 'Requested withdrawal'),
(191, 'january', 'January'),
(192, 'february', 'February'),
(193, 'march', 'March'),
(194, 'april', 'April'),
(195, 'may', 'May'),
(196, 'june', 'June'),
(197, 'july', 'July'),
(198, 'august', 'August'),
(199, 'september', 'September'),
(200, 'october', 'October'),
(201, 'november', 'November'),
(202, 'december', 'December'),
(203, 'this_year', 'This year'),
(204, 'active_course', 'Active course'),
(205, 'pending_course', 'Pending course'),
(206, 'heads_up', 'Heads up'),
(207, 'congratulations', 'Congratulations'),
(208, 'please_fill_all_the_required_fields', 'Please fill all the required fields'),
(209, 'close', 'Close'),
(210, 'cancel', 'Cancel'),
(211, 'continue', 'Continue'),
(212, 'ok', 'Ok'),
(213, 'success', 'Success'),
(214, 'successfully', 'Successfully'),
(215, 'div_added_to_bottom_', 'Div added to bottom '),
(216, 'div_has_been_deleted_', 'Div has been deleted '),
(217, 'theme_settings', 'Theme settings'),
(218, 'buy_new_theme', 'Buy new theme'),
(219, 'upload_your_theme_file', 'Upload your theme file'),
(220, 'installed_themes', 'Installed themes'),
(221, 'add_new_themes', 'Add new themes'),
(222, 'active_theme', 'Active theme'),
(223, 'theme_successfully_activated', 'Theme successfully activated'),
(224, 'you_do_not_have_right_to_access_this_theme', 'You do not have right to access this theme'),
(225, 'website_name', 'Website name'),
(226, 'website_title', 'Website title'),
(227, 'website_keywords', 'Website keywords'),
(228, 'website_description', 'Website description'),
(229, 'author', 'Author'),
(230, 'slogan', 'Slogan'),
(231, 'system_email', 'System email'),
(232, 'address', 'Address'),
(233, 'phone', 'Phone'),
(234, 'youtube_api_key', 'Youtube api key'),
(235, 'get_youtube_api_key', 'Get youtube api key'),
(236, 'vimeo_api_key', 'Vimeo api key'),
(237, 'get_vimeo_api_key', 'Get vimeo api key'),
(238, 'purchase_code', 'Purchase code'),
(239, 'system_language', 'System language'),
(240, 'student_email_verification', 'Student email verification'),
(241, 'enable', 'Enable'),
(242, 'disable', 'Disable'),
(243, 'course_accessibility', 'Course accessibility'),
(244, 'publicly', 'Publicly'),
(245, 'only_logged_in_users', 'Only logged in users'),
(246, 'number_of_authorized_devices', 'Number of authorized devices'),
(247, 'how_many_devices_do_you_want_to_allow_for_logging_in_using_a_single_account', 'How many devices do you want to allow for logging in using a single account'),
(248, 'course_selling_tax', 'Course selling tax'),
(249, 'enter_0_if_you_want_to_disable_the_tax_option', 'Enter 0 if you want to disable the tax option'),
(250, 'google_analytics_id', 'Google analytics id'),
(251, 'keep_it_blank_if_you_want_to_disable_it', 'Keep it blank if you want to disable it'),
(252, 'meta_pixel_id', 'Meta pixel id'),
(253, 'footer_text', 'Footer text'),
(254, 'footer_link', 'Footer link'),
(255, 'save', 'Save'),
(256, 'update_product', 'Update product'),
(257, 'file', 'File'),
(258, 'update', 'Update'),
(259, 'setup_payment_informations', 'Setup payment informations'),
(260, 'system_currency_settings', 'System currency settings'),
(261, 'system_currency', 'System currency'),
(262, 'select_system_currency', 'Select system currency'),
(263, 'currency_position', 'Currency position'),
(264, 'left', 'Left'),
(265, 'right', 'Right'),
(266, 'left_with_a_space', 'Left with a space'),
(267, 'right_with_a_space', 'Right with a space'),
(268, 'update_system_currency', 'Update system currency'),
(269, 'active', 'Active'),
(270, 'want_to_keep_test_mode_enabled', 'Want to keep test mode enabled'),
(271, 'select_currency', 'Select currency'),
(272, 'sandbox_client_id', 'Sandbox client id'),
(273, 'sandbox_secret_key', 'Sandbox secret key'),
(274, 'production_client_id', 'Production client id'),
(275, 'production_secret_key', 'Production secret key'),
(276, 'public_key', 'Public key'),
(277, 'secret_key', 'Secret key'),
(278, 'public_live_key', 'Public live key'),
(279, 'secret_live_key', 'Secret live key'),
(280, 'key_id', 'Key id'),
(281, 'theme_color', 'Theme color'),
(282, 'ensure_that_the_system_currency_and_all_active_payment_gateway_currencies_are_same', 'Ensure that the system currency and all active payment gateway currencies are same'),
(283, 'upay_key_id', 'Upay key id'),
(284, 'upay_secret_key', 'Upay secret key'),
(285, 'payment_settings_updated_successfully', 'Payment settings updated successfully'),
(286, 'student', 'Student'),
(287, 'photo', 'Photo'),
(288, 'name', 'Name'),
(289, 'enrolled_courses', 'Enrolled courses'),
(290, 'actions', 'Actions'),
(291, 'course_title', 'Course title'),
(292, 'enter_course_title', 'Enter course title'),
(293, 'category', 'Category'),
(294, 'select_a_category', 'Select a category'),
(295, 'select_sub_category', 'Select sub category'),
(296, 'level', 'Level'),
(297, 'beginner', 'Beginner'),
(298, 'advanced', 'Advanced'),
(299, 'intermediate', 'Intermediate'),
(300, 'language_made_in', 'Language made in'),
(301, 'check_if_this_is_a_free_course', 'Check if this is a free course'),
(302, 'course_price', 'Course price'),
(303, 'enter_course_course_price', 'Enter course course price'),
(304, 'check_if_this_course_has_discount', 'Check if this course has discount'),
(305, 'discounted_price', 'Discounted price'),
(306, 'this_course_has', 'This course has'),
(307, 'discount', 'Discount'),
(308, 'free_courses', 'Free courses'),
(309, 'paid_courses', 'Paid courses'),
(310, 'course_list', 'Course list'),
(311, 'all', 'All'),
(312, 'status', 'Status'),
(313, 'pending', 'Pending'),
(314, 'private', 'Private'),
(315, 'instructor', 'Instructor'),
(316, 'price', 'Price'),
(317, 'free', 'Free'),
(318, 'paid', 'Paid'),
(319, 'filter', 'Filter'),
(320, 'title', 'Title'),
(321, 'lesson_and_section', 'Lesson and section'),
(322, 'enrolled_student', 'Enrolled student'),
(323, 'add_new_category', 'Add new category'),
(324, 'add_category', 'Add category'),
(325, 'category_add_form', 'Category add form'),
(326, 'category_code', 'Category code'),
(327, 'category_title', 'Category title'),
(328, 'parent', 'Parent'),
(329, 'none', 'None'),
(330, 'select_none_to_create_a_parent_category', 'Select none to create a parent category'),
(331, 'icon_picker', 'Icon picker'),
(332, 'category_thumbnail', 'Category thumbnail'),
(333, 'the_image_size_should_be', 'The image size should be'),
(334, 'choose_thumbnail', 'Choose thumbnail'),
(335, 'submit', 'Submit'),
(336, 'data_added_successfully', 'Data added successfully'),
(337, 'sub_categories', 'Sub categories'),
(338, 'edit', 'Edit'),
(339, 'delete', 'Delete'),
(340, 'course_has_been_added_successfully', 'Course has been added successfully'),
(341, 'first_name', 'First name'),
(342, 'last_name', 'Last name'),
(343, 'user_added_successfully', 'User added successfully'),
(344, 'my_courses', 'My courses'),
(345, 'go_to_wishlist', 'Go to wishlist'),
(346, 'your_wishlist_is_empty', 'Your wishlist is empty'),
(347, 'explore_courses', 'Explore courses'),
(348, 'hi', 'Hi'),
(349, 'welcome_back', 'Welcome back'),
(350, 'my_wishlist', 'My wishlist'),
(351, 'my_messages', 'My messages'),
(352, 'user_profile', 'User profile'),
(353, 'log_out', 'Log out'),
(354, 'hours', 'Hours'),
(355, 'reviews', 'Reviews'),
(356, 'compare', 'Compare'),
(357, 'lectures', 'Lectures'),
(358, 'last_updated', 'Last updated'),
(359, 'lessons', 'Lessons'),
(360, 'shopping_cart', 'Shopping cart'),
(361, 'courses_in_cart', 'Courses in cart'),
(362, 'remove', 'Remove'),
(363, 'tax_included', 'Tax included'),
(364, 'apply_coupon_code', 'Apply coupon code'),
(365, 'apply', 'Apply'),
(366, 'checkout', 'Checkout'),
(367, 'there_are_no_courses_on_your_cart', 'There are no courses on your cart'),
(368, 'pay_for_purchasing_course', 'Pay for purchasing course'),
(369, 'payment', 'Payment'),
(370, 'make_payment', 'Make payment'),
(371, 'select_payment_gateway', 'Select payment gateway'),
(372, 'by', 'By'),
(373, 'pay_with_stripe', 'Pay with stripe'),
(374, 'please_wait', 'Please wait'),
(375, 'pay_by_razorpay', 'Pay by razorpay'),
(376, 'mark_as_pending', 'Mark as pending'),
(377, 'section_and_lesson', 'Section and lesson'),
(378, 'edit_this_course', 'Edit this course'),
(379, 'view_course_on_frontend', 'View course on frontend'),
(380, 'go_to_course_playing_page', 'Go to course playing page'),
(381, 'total_section', 'Total section'),
(382, 'total_lesson', 'Total lesson'),
(383, 'total_enrolment', 'Total enrolment'),
(384, 'edit_course', 'Edit course'),
(385, 'course_manager', 'Course manager'),
(386, 'view_on_frontend', 'View on frontend'),
(387, 'back_to_course_list', 'Back to course list'),
(388, 'curriculum', 'Curriculum'),
(389, 'basic', 'Basic'),
(390, 'info', 'Info'),
(391, 'pricing', 'Pricing'),
(392, 'media', 'Media'),
(393, 'seo', 'Seo'),
(394, 'finish', 'Finish'),
(395, 'add_new_section', 'Add new section'),
(396, 'add_section', 'Add section'),
(397, 'instructor_of_this_course', 'Instructor of this course'),
(398, 'short_description', 'Short description'),
(399, 'description', 'Description'),
(400, 'enable_drip_content', 'Enable drip content'),
(401, 'keep_it_as_a_private_course', 'Keep it as a private course'),
(402, 'check_if_this_course_is_top_course', 'Check if this course is top course'),
(403, 'course_faq', 'Course faq'),
(404, 'faq_question', 'Faq question'),
(405, 'answer', 'Answer'),
(406, 'requirements', 'Requirements'),
(407, 'provide_requirements', 'Provide requirements'),
(408, 'outcomes', 'Outcomes'),
(409, 'provide_outcomes', 'Provide outcomes'),
(410, 'course_overview_provider', 'Course overview provider'),
(411, 'youtube', 'Youtube'),
(412, 'vimeo', 'Vimeo'),
(413, 'html5', 'Html5'),
(414, 'course_overview_url', 'Course overview url'),
(415, 'course_thumbnail', 'Course thumbnail'),
(416, 'meta_keywords', 'Meta keywords'),
(417, 'write_a_keyword_and_then_press_enter_button', 'Write a keyword and then press enter button'),
(418, 'meta_description', 'Meta description'),
(419, 'thank_you', 'Thank you'),
(420, 'you_are_just_one_click_away', 'You are just one click away'),
(421, 'provide_a_section_name', 'Provide a section name'),
(422, 'select_lesson_type', 'Select lesson type'),
(423, 'video', 'Video'),
(424, 'secured', 'Secured'),
(425, 'video_file', 'Video file'),
(426, 'video_url', 'Video url'),
(427, 'google_drive_video', 'Google drive video'),
(428, 'document_file', 'Document file'),
(429, 'text', 'Text'),
(430, 'image_file', 'Image file'),
(431, 'iframe_embed', 'Iframe embed'),
(432, 'please_select_a_course', 'Please select a course'),
(433, 'lesson_type', 'Lesson type'),
(434, 'change', 'Change'),
(435, 'section', 'Section'),
(436, 'upload_system_video_file', 'Upload system video file'),
(437, 'select_system_video_file', 'Select system video file'),
(438, 'has_to_be_bigger_than', 'Has to be bigger than'),
(439, 'duration', 'Duration'),
(440, 'caption', 'Caption'),
(441, '.vtt', '.vtt'),
(442, 'choose_your_caption_file', 'Choose your caption file'),
(443, 'summary', 'Summary'),
(444, 'do_you_want_to_keep_it_free_as_a_preview_lesson', 'Do you want to keep it free as a preview lesson'),
(445, 'mark_as_free_lesson', 'Mark as free lesson'),
(446, 'uploading', 'Uploading'),
(447, 'section_has_been_added_successfully', 'Section has been added successfully'),
(448, 'add_new_quiz', 'Add new quiz'),
(449, 'add_quiz', 'Add quiz'),
(450, 'sort_sections', 'Sort sections'),
(451, 'sort_lessons', 'Sort lessons'),
(452, 'sort_lesson', 'Sort lesson'),
(453, 'update_section', 'Update section'),
(454, 'edit_section', 'Edit section'),
(455, 'delete_section', 'Delete section'),
(456, 'invalid_attachment', 'Invalid attachment'),
(457, 'course', 'Course'),
(458, 'ratings', 'Ratings'),
(459, 'students_enrolled', 'Students enrolled'),
(460, 'created_by', 'Created by'),
(461, 'curriculum_for_this_course', 'Curriculum for this course'),
(462, 'other_related_courses', 'Other related courses'),
(463, 'about_instructor', 'About instructor'),
(464, 'student_feedback', 'Student feedback'),
(465, 'add_to_wishlist', 'Add to wishlist'),
(466, 'buy_now', 'Buy now'),
(467, 'includes', 'Includes'),
(468, 'on_demand_videos', 'On demand videos'),
(469, 'access_on_mobile_and_tv', 'Access on mobile and tv'),
(470, 'full_lifetime_access', 'Full lifetime access'),
(471, 'compare_this_course_with_other', 'Compare this course with other'),
(472, 'added_to_wishlist', 'Added to wishlist'),
(473, 'all_category', 'All category'),
(474, 'language', 'Language'),
(475, 'showing', 'Showing'),
(476, 'of', 'Of'),
(477, 'results', 'Results'),
(478, 'sort_by', 'Sort by'),
(479, 'newest', 'Newest'),
(480, 'highest_rating', 'Highest rating'),
(481, 'discounted', 'Discounted'),
(482, 'lowest_price', 'Lowest price'),
(483, 'highest_price', 'Highest price'),
(484, 'show_more', 'Show more'),
(485, 'show_less', 'Show less'),
(486, 'wishlists', 'Wishlists'),
(487, 'messages', 'Messages'),
(488, 'profile', 'Profile'),
(489, 'account', 'Account'),
(490, 'reset', 'Reset'),
(491, 'search_my_courses', 'Search my courses'),
(492, 'search_my_wishlist', 'Search my wishlist'),
(493, 'gift', 'Gift'),
(494, 'enter_the_receiver\'s_email', 'Enter the receiver\'s email'),
(495, 'enter_the_recepient_email_address', 'Enter the recepient email address'),
(496, 'enter_the_recepient\'s_email_address', 'Enter the recepient\'s email address'),
(497, 'no_user_found', 'No user found'),
(498, 'sign_up_and_start_learning', 'Sign up and start learning'),
(499, 'already_have_an_account', 'Already have an account'),
(500, 'your_registration_has_been_successfully_done', 'Your registration has been successfully done'),
(501, 'payment_successfully_done', 'Payment successfully done'),
(502, 'featured_instructor', 'Featured instructor'),
(503, 'already_purchased', 'Already purchased'),
(504, 'completed', 'Completed'),
(505, 'edit_rating', 'Edit rating'),
(506, 'cancel_rating', 'Cancel rating'),
(507, 'start_lesson', 'Start lesson'),
(508, 'out_of', 'Out of'),
(509, 'write_your_review_here', 'Write your review here'),
(510, 'publish_rating', 'Publish rating'),
(511, 'protocol', 'Protocol'),
(512, 'smtp_crypto', 'Smtp crypto'),
(513, 'smtp_host', 'Smtp host'),
(514, 'smtp_port', 'Smtp port'),
(515, 'smtp_username', 'Smtp username'),
(516, 'smtp_password', 'Smtp password'),
(517, 'smtp_settings_updated_successfully', 'Smtp settings updated successfully'),
(518, 'already', 'Already'),
(519, 'course_adding_form', 'Course adding form'),
(520, 'course_compare', 'Course compare'),
(521, 'choose_a_course_to_compare', 'Choose a course to compare'),
(522, 'starting_from', 'Starting from'),
(523, 'learn_more', 'Learn more'),
(524, 'has_discount', 'Has discount'),
(525, 'made_in', 'Made in'),
(526, 'last_updated_at', 'Last updated at'),
(527, 'total_lessons', 'Total lessons'),
(528, 'total_duration', 'Total duration'),
(529, 'number_of_reviews', 'Number of reviews'),
(530, 'avg_rating', 'Avg rating'),
(531, 'send_as_a_gift', 'Send as a gift'),
(532, 'enter_the_recepient\'s_email', 'Enter the recepient\'s email'),
(533, 'you_have_already_purchased_this_course', 'You have already purchased this course'),
(534, 'you_are_already_enrolled', 'You are already enrolled'),
(535, 'administrator', 'Administrator'),
(536, 'buy_as_gift', 'Buy as gift'),
(537, 'the_user_is_already_enrolled', 'The user is already enrolled'),
(538, 'email_can\'t_be_empty', 'Email can\'t be empty'),
(539, 'enter_the_gift_recepient\'s_email', 'Enter the gift recepient\'s email'),
(540, 'recepient_must_be_and_existing_user_._no_user_found', 'Recepient must be and existing user . no user found'),
(541, 'recepient_must_be_and_existing_user._no_user_found', 'Recepient must be and existing user. no user found'),
(542, 'recepient_must_be_an_existing_user._no_user_found', 'Recepient must be an existing user. no user found'),
(543, 'recepient_must_be_an_existing_user._no_user_found.', 'Recepient must be an existing user. no user found.'),
(544, 'recepient_must_be_an_existing_user', 'Recepient must be an existing user');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `video_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cloud_video_id` int(20) DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `lesson_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` longtext COLLATE utf8_unicode_ci,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci,
  `is_free` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `quiz_attempt` int(11) NOT NULL DEFAULT '0',
  `video_type_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_url_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_for_mobile_application` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci,
  `sender` longtext COLLATE utf8_unicode_ci,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `read_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci,
  `sender` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `receiver` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `admin_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructor_revenue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `instructor_payment_status` int(11) DEFAULT '0',
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `keys` text COLLATE utf8_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled_test_mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_addon` int(11) NOT NULL,
  `created_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `identifier`, `currency`, `title`, `description`, `keys`, `model_name`, `enabled_test_mode`, `status`, `is_addon`, `created_at`, `updated_at`) VALUES
(1, 'paypal', 'USD', 'Paypal', '', '{\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}', 'Payment_model', 1, 1, 0, '', '1673263724'),
(2, 'stripe', 'USD', 'Stripe', '', '{\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}', 'Payment_model', 1, 1, 0, '', '1673263724'),
(3, 'razorpay', 'USD', 'Razorpay', '', '{\"key_id\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#23d792\"}', 'Payment_model', 1, 1, 0, '', '1673264610');

-- --------------------------------------------------------

--
-- Table structure for table `payout`
--

CREATE TABLE `payout` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci,
  `correct_answers` longtext COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `quiz_result_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_answers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'question_id',
  `total_obtained_marks` double NOT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_submitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) UNSIGNED NOT NULL,
  `rating` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ratable_id` int(11) DEFAULT NULL,
  `ratable_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `review` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'english'),
(2, 'system_name', 'Academy LMS'),
(3, 'system_title', 'Academy Learning Club'),
(4, 'system_email', 'academy@example.com'),
(5, 'address', 'Sydney, Australia'),
(6, 'phone', '+143-52-9933631'),
(7, 'purchase_code', 'your-purchase-code'),
(8, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AfGaziKslex-scLAyYdDYXNFaz2aL5qGau-SbDgE_D2E80D3AFauLagP8e0kCq9au7W4IasmFbirUUYc\",\"sandbox_secret_key\":\"EMa5pCTuOpmHkhHaCGibGhVUcKg0yt5-C3CzJw-OWJCzaXXzTlyD17SICob_BkfM_0Nlk7TWnN42cbGz\",\"production_client_id\":\"1234\",\"production_secret_key\":\"12345\"}]'),
(9, 'stripe_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"public_key\":\"pk_test_CAC3cB1mhgkJqXtypYBTGb4f\",\"secret_key\":\"sk_test_iatnshcHhQVRXdygXw3L2Pp2\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(10, 'youtube_api_key', 'youtube-api-key'),
(11, 'vimeo_api_key', '39258384b69994dba483c10286825b5c'),
(12, 'slogan', 'A course based video CMS'),
(13, 'text_align', NULL),
(14, 'allow_instructor', '1'),
(15, 'instructor_revenue', '70'),
(16, 'system_currency', 'USD'),
(17, 'paypal_currency', 'USD'),
(18, 'stripe_currency', 'USD'),
(19, 'author', 'Creativeitem'),
(20, 'currency_position', 'left'),
(21, 'website_description', 'Study any topic, anytime. explore thousands of courses for the lowest price ever!'),
(22, 'website_keywords', 'LMS,Learning Management System,Creativeitem,Academy LMS'),
(23, 'footer_text', ''),
(24, 'footer_link', 'http://creativeitem.com/'),
(25, 'protocol', 'smtp'),
(26, 'smtp_host', 'smtp.gmail.com'),
(27, 'smtp_port', '587'),
(28, 'smtp_user', 'pollobtesting@gmail.com'),
(29, 'smtp_pass', 'atdeswbbfregelhw'),
(30, 'version', '5.15'),
(31, 'student_email_verification', 'disable'),
(32, 'instructor_application_note', 'Fill all the fields carefully and share if you want to share any document with us it will help us to evaluate you as an instructor.'),
(33, 'razorpay_keys', '[{\"active\":\"1\",\"key\":\"rzp_test_J60bqBOi1z1aF5\",\"secret_key\":\"uk935K7p4j96UCJgHK8kAU4q\",\"theme_color\":\"#c7a600\"}]'),
(34, 'razorpay_currency', 'USD'),
(35, 'fb_app_id', 'facebook-app-id'),
(36, 'fb_app_secret', 'facebook-app-secret-key'),
(37, 'fb_social_login', '0'),
(38, 'drip_content_settings', '{\"lesson_completion_role\":\"percentage\",\"minimum_duration\":10,\"minimum_percentage\":\"50\",\"locked_lesson_message\":\"&lt;h3 xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;&lt;strong&gt;Permission denied!&lt;\\/strong&gt;&lt;\\/span&gt;&lt;\\/h3&gt;&lt;p xss=&quot;removed&quot; style=&quot;text-align: center; &quot;&gt;&lt;span xss=&quot;removed&quot;&gt;This course supports drip content, so you must complete the previous lessons.&lt;\\/span&gt;&lt;\\/p&gt;\"}'),
(41, 'course_accessibility', 'publicly'),
(42, 'smtp_crypto', 'tls'),
(43, 'allowed_device_number_of_loging', '10'),
(47, 'academy_cloud_access_token', 'jdfghasdfasdfasdfasdfasdf'),
(48, 'course_selling_tax', '10'),
(49, 'ccavenue_keys', '[{\"active\":\"1\",\"ccavenue_merchant_id\":\"cmi_xxxxxx\",\"ccavenue_working_key\":\"cwk_xxxxxxxxxxxx\",\"ccavenue_access_code\":\"ccc_xxxxxxxxxxxxx\"}]'),
(50, 'ccavenue_currency', 'INR'),
(51, 'iyzico_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"iyzico_currency\":\"TRY\",\"api_test_key\":\"atk_xxxxxxxx\",\"secret_test_key\":\"stk_xxxxxxxx\",\"api_live_key\":\"alk_xxxxxxxx\",\"secret_live_key\":\"slk_xxxxxxxx\"}]'),
(52, 'iyzico_currency', 'TRY'),
(53, 'paystack_keys', '[{\"active\":\"1\",\"testmode\":\"on\",\"secret_test_key\":\"sk_test_c746060e693dd50c6f397dffc6c3b2f655217c94\",\"public_test_key\":\"pk_test_0816abbed3c339b8473ff22f970c7da1c78cbe1b\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxx\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxx\"}]'),
(54, 'paystack_currency', 'NGN'),
(55, 'paytm_keys', '[{\"PAYTM_MERCHANT_KEY\":\"PAYTM_MERCHANT_KEY\",\"PAYTM_MERCHANT_MID\":\"PAYTM_MERCHANT_MID\",\"PAYTM_MERCHANT_WEBSITE\":\"DEFAULT\",\"INDUSTRY_TYPE_ID\":\"Retail\",\"CHANNEL_ID\":\"WEB\"}]'),
(57, 'google_analytics_id', ''),
(58, 'meta_pixel_id', '');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagable_id` int(11) DEFAULT NULL,
  `tagable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skills` longtext COLLATE utf8_unicode_ci NOT NULL,
  `social_links` longtext COLLATE utf8_unicode_ci,
  `biography` longtext COLLATE utf8_unicode_ci,
  `role_id` int(11) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL,
  `wishlist` longtext COLLATE utf8_unicode_ci,
  `title` longtext COLLATE utf8_unicode_ci,
  `payment_keys` longtext COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` longtext COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `is_instructor` int(11) DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sessions` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watched_duration`
--

CREATE TABLE `watched_duration` (
  `watched_id` int(11) UNSIGNED NOT NULL,
  `watched_student_id` int(11) DEFAULT NULL,
  `watched_course_id` int(11) DEFAULT NULL,
  `watched_lesson_id` int(11) DEFAULT NULL,
  `current_duration` int(20) DEFAULT NULL,
  `watched_counter` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories` (
  `watch_history_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `completed_lesson` longtext COLLATE utf8_unicode_ci NOT NULL,
  `course_progress` int(11) NOT NULL,
  `watching_lesson_id` int(11) NOT NULL,
  `quiz_result` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_added` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_updated` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`blog_comment_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_page`
--
ALTER TABLE `custom_page`
  ADD PRIMARY KEY (`custom_page_id`);

--
-- Indexes for table `enrol`
--
ALTER TABLE `enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`quiz_result_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watched_duration`
--
ALTER TABLE `watched_duration`
  ADD PRIMARY KEY (`watched_id`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`watch_history_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `custom_page`
--
ALTER TABLE `custom_page`
  MODIFY `custom_page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrol`
--
ALTER TABLE `enrol`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payout`
--
ALTER TABLE `payout`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `quiz_result_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watched_duration`
--
ALTER TABLE `watched_duration`
  MODIFY `watched_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watch_histories`
--
ALTER TABLE `watch_histories`
  MODIFY `watch_history_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
