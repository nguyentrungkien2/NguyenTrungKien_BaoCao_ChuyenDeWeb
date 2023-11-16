-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 10:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_nguyentrungkien`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_brand`
--

CREATE TABLE `db_brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(1000) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_brand`
--

INSERT INTO `db_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `description`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'adidas', 'adidas', 'a', 0, '', 'a', 'a', '2023-09-13 08:51:59', '2023-09-27 08:51:59', 1, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(1000) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `slug`, `image`, `parent_id`, `sort_order`, `description`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'ÁO SƠ MI TAY DÀI\r\n', 'ao-so-mi-dai-tay', 'a', 0, 0, '', 'a', 'a', '2023-09-05 03:33:42', '2023-08-15 03:17:18', 1, NULL, 1),
(6, 'ÁO THUN TAY NGẮN', 'ao-so-mi-tay-ngan', 'a', 0, 0, '', 'a', 'a', '2023-09-05 03:33:42', '2023-08-15 03:17:18', 1, NULL, 1),
(7, 'ÁO NỮ', 'ao-nu', 'a', 0, 0, '', 'a', 'a', '2023-09-05 03:33:42', '2023-08-15 03:17:18', 1, NULL, 1),
(8, 'QUẦN', 'quan\r\n', 'a', 0, 0, '', 'a', 'a', '2023-09-05 03:33:42', '2023-08-15 03:17:18', 1, NULL, 1),
(9, 'Sản phẩm mới', 'san-pham-moi\r\n', 'a', 0, 0, '', 'a', 'a', '2023-09-05 03:33:42', '2023-08-15 03:17:18', 1, NULL, 1),
(10, 'Sản phẩm khuyến mãi', 'san-pham-khuyen-mai\r\n', 'a', 0, 0, '', 'a', 'a', '2023-09-05 03:33:42', '2023-08-15 03:17:18', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` bigint(20) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `zalo` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `replay_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `user_id`, `name`, `email`, `phone`, `title`, `content`, `replay_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(2, 1, 'nguyễn trung kiên tèo', 'Kikiahihi@gmail.com', '0999999999', 'hihi', 'hí hí', 1, '2023-06-26 10:42:06', '2023-06-26 10:42:06', 1, NULL, 1),
(3, 1, 'dương đình hội, phước Long B, thành phố thủ đức', 'Kikiahihi@gmail.com', '0999999999', 'sfs', 'fsdf', 1, '2023-06-29 23:26:10', '2023-06-29 23:26:10', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_menu`
--

CREATE TABLE `db_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(10) NOT NULL,
  `position` varchar(1000) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `table_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_menu`
--

INSERT INTO `db_menu` (`id`, `name`, `link`, `sort_order`, `position`, `parent_id`, `table_id`, `type`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(17, 'Danh mục  các loại sản phẩm', '/', 0, 'mainmenu', 0, 0, 'a', NULL, NULL, 1, NULL, 1),
(19, 'QUẦN', '/quan', 0, 'mainmenu', 17, 0, 'a', NULL, NULL, 1, NULL, 1),
(20, 'ÁO SƠ MI TAY NGẮN', '/ao-so-mi-tay-ngan', 0, 'mainmenu', 17, 0, 'a', NULL, NULL, 1, NULL, 1),
(21, 'ÁO SƠ MI TAY DÀI', '/ao-so-mi-tay-dai', 0, 'mainmenu', 17, 0, 'a', NULL, NULL, 1, NULL, 1),
(22, 'ĐỒ NỮ', '/do-nu', 0, 'mainmenu', 17, 0, 'a', NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`id`, `user_id`, `name`, `phone`, `email`, `address`, `note`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 1, 'kien', '9999999999', 'kie@gmail.com', 'lào cai', 'ú ú', '2023-06-26 10:39:02', '2023-06-26 10:39:02', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `discount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_post`
--

CREATE TABLE `db_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `detail` mediumtext NOT NULL,
  `image` varchar(1000) NOT NULL,
  `type` mediumtext NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_post`
--

INSERT INTO `db_post` (`id`, `topic_id`, `title`, `slug`, `detail`, `image`, `type`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(3, 1, 'vãi cotton co giãn 2 chiều', 'vai-cotton-co-gian-2-chieu', 'vãi cotton co giãn 2 chiều hoạt tiết đẹp bền bỉ đi kèm với sư thoãi mái khi mặc giúp người dùng tự\r\n                    tin với ghệ iu', 'b1.jpg', 'abc', 'abc', 'hàng việt chất lượng cao mặc thoáng mát và cá tính', '2023-10-11 10:34:10', '2023-06-29 10:34:10', 1, NULL, 1),
(9, 1, 'Vãi lụa Việt Nam', 'vai-lua-Viet-Nam', 'vãi lụa 100% của Việt Nam được các thợ may Việt Nam kì công thoáng mát vô cũng thoải mái và tự tin với ghệ iu', 'b2.jpg', 'abc', 'abc', 'hàng việt chất lượng cao mặc thoáng mát và cá tính', '2023-10-11 10:34:10', '2023-06-29 10:34:10', 1, NULL, 1),
(10, 1, 'thời trang ', 'thoi-trang', 'Các mẫu hiện đại và phụ hợp với các bạn thích sự trẻ trung và không kém phần sang chảnh giúp cho các cô nàng tự tin khoe cá tính riêng và tự tin bên cạnh người iu', 'b3.jpg', 'abc', 'abc', 'hàng việt chất lượng cao mặc thoáng mát và cá tính', '2023-10-11 10:34:10', '2023-06-29 10:34:10', 1, NULL, 1),
(11, 1, 'thời trang tối giản', 'thoi-trang-toi-gian', 'Các mẫu hiện đại và phụ hợp với các bạn thích sự trẻ trung và không kém phần sang chảnh giúp cho các cô nàng tự tin khoe cá tính riêng và tự tin bên cạnh người iu', 'b4.jpg', 'abc', 'abc', 'hàng việt chất lượng cao mặc thoáng mát và cá tính', '2023-10-11 10:34:10', '2023-06-29 10:34:10', 1, NULL, 1),
(12, 1, 'vãi len ấm áp', 'vai-len-am-ap', 'Các mẫu hiện đại và phụ hợp với các bạn thích sự trẻ trung và không kém phần sang chảnh giúp cho các cô nàng tự tin khoe cá tính riêng và tự tin bên cạnh người iu', 'b5.jpg', 'abc', 'abc', 'hàng việt chất lượng cao mặc thoáng mát và cá tính', '2023-10-11 10:34:10', '2023-06-29 10:34:10', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `detail` mediumtext NOT NULL,
  `description` varchar(1000) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `price_sale`, `image`, `qty`, `detail`, `description`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 1, 1, 'Áo sơ mi công sở', 'ao-so-mi-cong-so', 100000.00, 150000.00, 'n1.jpg', 1, 'Áo sơ mi', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(2, 1, 1, ' Áo sơ mi tay dài dọc', 'ao-so-mi-tay-dai-doc', 220000.00, 150000.00, 'n2.jpg', 1, 'Áo sơ mi tay dài dọc', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(3, 1, 1, 'Áo sơ mi tay dài trắng', 'ao-so-mi-tay-dai-trang', 120000.00, 150000.00, 'n3.jpg', 1, 'phù hợp đi chơi và đi làm việc', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(4, 6, 1, 'Áo sơ mi tay ngắn họa tiết', 'ao-so-mi-tay-ngan-hoa-tiet', 200000.00, 150000.00, 'n4.jpg', 1, 'phá cách thiết kế', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(5, 1, 1, 'Áo sơ mi tay dài jean', 'ao-so-mi-tay-dai-jean', 150000.00, 150000.00, 'n5.jpg', 1, 'Tông xanh lam mát mẻ', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(6, 8, 1, 'Quần đùi kaki', 'quan-dui-kaki', 200000.00, 150000.00, 'n6.jpg', 1, 'Quần đùi jean chất lượng cao', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(7, 1, 1, 'Áo sơ mi tay dài nâu kaki', 'ao-so-mi-tay-dai-nau-kaki', 200000.00, 150000.00, 'n7.jpg', 1, 'áo kaki thời thượng', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(8, 6, 1, 'Áo sơ mi tay ngắn', 'Ao-so-mi-tay-ngan', 200000.00, 150000.00, 'n8.jpg', 1, 'Áo thun tay ngắn hoạt hình', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(9, 6, 1, 'Áo thun tay ngắn hoạt hình', 'ao-thun-tay-ngan-hoat-hinh', 200000.00, 150000.00, 'f1.jpg', 1, 'Áo thun tay ngắn hoạt hình', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(10, 7, 1, 'Áo thun tay ngắn hoạt họa', 'ao-thun-tay-ngan-hoat-hoa-2', 500000.00, 150000.00, 'f2.jpg', 1, 'Áo thun tay ngắn hoạt họa', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(11, 7, 1, 'Áo thun tay ngắn hoạt họa', 'ao-thun-tay-ngan-hoat-hoa-3', 200000.00, 150000.00, 'f3.jpg', 1, 'Áo thun tay ngắn hoạt họa', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(12, 7, 1, 'Áo thun tay ngắn hoa đào', 'ao-thun-tay-ngan-hoa-dao', 100000.00, 150000.00, 'f4.jpg', 1, 'Áo thun tay ngắn hoa đào', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(13, 7, 1, 'Áo thun tay ngắn hoạt họa', 'ao-thun-tay-ngan-hoat-hoa-4', 200000.00, 150000.00, 'f5.jpg', 1, 'Áo thun tay ngắn hoạt họa', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(14, 6, 1, 'Áo tay dài basic', 'ao-tay-dai-basic', 300000.00, 150000.00, 'f6.jpg', 1, 'Áo tay dài basic', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(15, 8, 1, 'quần thun dài hoạt họa', 'quan-thun-dai-hoat-hoa', 200000.00, 150000.00, 'f7.jpg', 1, 'quần thun dài hoạt họa', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(16, 7, 1, 'áo thun rộng cổ hoạt họa', 'ao-thun-rong-co-hoat-hoa', 160000.00, 150000.00, 'f8.jpg', 1, 'quần thun rộng cổ hoạt họa', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(17, 8, 1, 'quần đùi thời trang nữ', 'quan-dui-thoi-trang-nu', 200000.00, 150000.00, 'n9.jpg', 1, 'thoãi mái và thời thượng', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(18, 8, 1, 'quần đùi thời trang nữ', 'quan-dui-thoi-trang-nu-2', 200000.00, 150000.00, 'n10.jpg', 1, 'thoãi mái và thời thượng', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(19, 7, 1, 'áo nữ thời trang ', 'ao-thoi-trang-nu', 200000.00, 150000.00, 'f9.jpg', 1, 'sang trọng quý phái', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(20, 7, 1, 'áo nữ thời trang ', 'ao-nu-thoi-trang-2', 200000.00, 150000.00, 'f10.jpg', 1, 'cá tính, phong cách', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(21, 7, 1, 'áo khoác nữ thời trang ', 'ao-khoac-thoi-trang-nu', 200000.00, 150000.00, 'f11.jpg', 1, 'cá tính, phong cách', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(22, 9, 1, 'Áo thun tay ngắn hoạt họa', 'ao-thun-tay-ngan-hoat-hoa-3', 200000.00, 150000.00, 'f3.jpg', 1, 'Áo thun tay ngắn hoạt họa', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(23, 9, 1, 'Áo sơ mi tay ngắn họa tiết', 'ao-so-mi-tay-ngan-hoa-tiet', 200000.00, 150000.00, 'n4.jpg', 1, 'phá cách thiết kế', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(24, 9, 1, 'Áo sơ mi tay ngắn', 'Ao-so-mi-tay-ngan', 250000.00, 150000.00, 'n8.jpg', 1, 'Áo thun tay ngắn hoạt hình', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(25, 9, 1, 'Áo thun tay ngắn hoạt họa', 'ao-thun-tay-ngan-hoat-hoa-4', 170000.00, 150000.00, 'f5.jpg', 1, 'Áo thun tay ngắn hoạt họa', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(26, 10, 1, 'áo khoác nữ thời trang ', 'ao-khoac-thoi-trang-nu', 950000.00, 150000.00, 'f11.jpg', 1, 'cá tính, phong cách', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(27, 10, 1, 'Áo thun tay ngắn hoạt hình', 'ao-thun-tay-ngan-hoat-hinh', 200000.00, 150000.00, 'f5.jpg', 1, 'Áo thun tay ngắn hoạt hình', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(28, 10, 1, 'Áo thun tay ngắn hoạt hình', 'ao-thun-tay-ngan-hoat-hinh', 100000.00, 150000.00, 'f1.jpg', 1, 'Áo thun tay ngắn hoạt hình', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1),
(29, 10, 1, 'áo thun rộng cổ hoạt họa', 'ao-thun-rong-co-hoat-hoa', 90000.00, 150000.00, 'f8.jpg', 1, 'quần thun rộng cổ hoạt họa', '', '1', '', '2023-09-26 03:27:13', '2023-09-26 03:27:13', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_productsale`
--

CREATE TABLE `db_productsale` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pricesale` double NOT NULL,
  `qty` int(11) NOT NULL,
  `date_begin` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_productstore`
--

CREATE TABLE `db_productstore` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image` varchar(1000) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `description`, `image`, `sort_order`, `position`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'hero', 'Mua thêm cùng với ưu đãi lên tới 70%', ' Siêu khuyến mãi trên tất cả sản phẩm', 'hero4.png', 0, 'a', '2023-09-13 03:51:06', '2023-09-13 03:51:06', 1, NULL, 2),
(2, 'hero2', '', NULL, 'hero4.png', 0, '', '2023-09-13 03:51:06', '2023-09-13 03:51:06', 1, NULL, 2),
(3, 'hero3', '', NULL, 'hero4.png', 0, '', '2023-09-13 03:51:06', '2023-09-13 03:51:06', 1, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `db_topic`
--

CREATE TABLE `db_topic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_topic`
--

INSERT INTO `db_topic` (`id`, `name`, `slug`, `parent_id`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'ĐƯỜNG PHỐ', 'duong-pho', 1, 'xe mo to', 'đam mê xe mô tô', '2023-06-26 10:38:26', '2023-06-26 10:38:26', 1, NULL, 1),
(2, 'Touring', 'touring', 2, 'xe mo to', 'đam mê xe mô tô', '2023-06-26 10:38:26', '2023-06-26 10:38:26', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `name`, `phone`, `email`, `username`, `password`, `address`, `image`, `roles`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(4, 'Bí mật không tên', '09999999', 'Kikiahihi@gmail.com', 'tèo', 'asdasd', 'adv', 'asda.jpg', 'asdasd', '2023-11-13 23:52:38', '2023-11-13 23:52:38', 1, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_05_29_092202_create_brand_table', 1),
(3, '2023_05_29_092228_create_category_table', 1),
(4, '2023_05_29_092340_create_contact_table', 1),
(5, '2023_05_29_092353_create_menu_table', 1),
(6, '2023_05_29_092413_create_order_table', 1),
(7, '2023_05_29_092432_create_orderdetail_table', 1),
(8, '2023_05_29_092447_create_product_table', 1),
(9, '2023_05_29_092459_create_post_table', 1),
(10, '2023_05_29_092512_create_slider_table', 1),
(11, '2023_05_29_092524_create_topic_table', 1),
(12, '2023_05_29_092539_create_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_brand`
--
ALTER TABLE `db_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_menu`
--
ALTER TABLE `db_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_post`
--
ALTER TABLE `db_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_productsale`
--
ALTER TABLE `db_productsale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_productstore`
--
ALTER TABLE `db_productstore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_topic`
--
ALTER TABLE `db_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_brand`
--
ALTER TABLE `db_brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_menu`
--
ALTER TABLE `db_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_post`
--
ALTER TABLE `db_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_topic`
--
ALTER TABLE `db_topic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
