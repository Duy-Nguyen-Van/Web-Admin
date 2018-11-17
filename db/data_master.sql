-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 15, 2018 at 07:30 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(1) NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', '$2y$10$CrzA78aZECMPdhq5p3xwYegSYYBwo4Z.6/S8SOmgBvofpUH41zvc2', 1, 'jsuPwYsjvohi52gARdj8HH1ny8BZFKIRAm8Ro2gmDhBjSqWnRbXy9SEUnvHh', '2018-01-14 02:53:02', '2018-01-14 02:53:02'),
(3, 'tri', '$2y$10$2MhQ8vdyOOkGZqS.WOnqmOcEZ4DOdvbR3oG5DjSFJp3vGRCF4Eypq', 2, NULL, '2018-01-14 02:55:44', '2018-01-14 02:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `date_order` date NOT NULL,
  `total` double NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `note`, `checkout`, `created_at`, `updated_at`) VALUES
(3, 6, '2018-01-14', 50, NULL, 0, '2018-01-14 15:27:14', '2018-01-15 07:29:43'),
(4, 6, '2018-01-14', 450, NULL, 1, '2018-01-14 15:27:49', '2018-01-15 07:29:57'),
(5, 6, '2018-01-14', 599, NULL, 1, '2018-01-14 16:24:03', '2018-01-15 07:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE IF NOT EXISTS `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_bill` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product` (`id_product`),
  KEY `id_bill` (`id_bill`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 1, 50, '2018-01-14 15:27:14', '2018-01-14 15:27:14'),
(3, 4, 41, 1, 450, '2018-01-14 15:27:49', '2018-01-14 15:27:49'),
(4, 5, 5, 1, 50, '2018-01-14 16:24:03', '2018-01-14 16:24:03'),
(5, 5, 6, 1, 99, '2018-01-14 16:24:03', '2018-01-14 16:24:03'),
(6, 5, 42, 1, 450, '2018-01-14 16:24:03', '2018-01-14 16:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` tinyint(4) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(1, 'abc', NULL, '1@gmail.com', '1', '1', '1', '2018-01-14 15:10:46', '2018-01-14 15:10:46'),
(2, 'abc', NULL, '1@gmail.com', '1', '1', '1', '2018-01-14 15:23:45', '2018-01-14 15:23:45'),
(3, 'a', NULL, '123@gmail.com', '1', '1', '1', '2018-01-14 15:24:14', '2018-01-14 15:24:14'),
(4, 'a', NULL, '123@gmail.com', '1', '1', '1', '2018-01-14 15:27:14', '2018-01-14 15:27:14'),
(5, 'dfadfasfadf', NULL, 'afds@gmail.com', '13e1r', '12124134', '12', '2018-01-14 15:27:49', '2018-01-14 15:27:49'),
(6, 'trí', NULL, 'hominht@gmail.com', 'dytie', '09912', '0', '2018-01-14 16:24:03', '2018-01-14 16:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `origin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `price` double NOT NULL,
  `promotion` double NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_type` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `origin`, `description`, `price`, `promotion`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ÁO THUN TAY DÀI CÁ KOI D167-4 (ĐÔ)', 1, NULL, NULL, 199, 0, 'http://juky.vn/upload/products/tb29lgkis3pl1jjszfxxxcbbvxa2923754463_1513675030.jpg', NULL, '2018-01-13 17:43:21'),
(2, 'ÁO THUN TAY DÀI MẶT HỀ D168 (ĐỎ - ĐEN)', 1, NULL, NULL, 199, 50, 'http://juky.vn/upload/products/photo20171207172917_1512642659.jpg', NULL, '2018-01-13 17:43:37'),
(3, 'ÁO THUN ICON SMILE BỰ CO041-3 (XÁM)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/co0413_1512109091.jpg', NULL, NULL),
(4, 'ÁO THUN CHỮ NHẬT IN TAY CO252-1 (TRẮNG)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/231307621937046493285456213738115829552594n_1509615831.png', NULL, NULL),
(5, 'ÁO THUN CỔ TRÒN CON THỎ CO239-2 (XANH ĐEN)', 1, NULL, NULL, 99, 50, 'http://juky.vn/upload/products/2281531719340992669135127661521139221450905n_1509176601.jpg', NULL, '2018-01-13 17:44:51'),
(6, 'ÁO THUN CỔ TRÒN RAPLAN TRƠN CO237-4 (XANH ĐEN)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/2273007119334487703118958236213838661309461n_1509161449.png', NULL, NULL),
(7, 'ÁO THUN CỔ TRÒN BROOKLYA CO236-4 (ĐỎ)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/2273027319330031270231266943515377350168389n_1509010716.png', NULL, NULL),
(8, 'ÁO THUN CỔ TRÒN EISTU CO233-1 (TRẮNG)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/6d8c03a4d81b34456d0a_1511767717.jpg', NULL, NULL),
(9, 'ÁO THUN CỔ TRÒN MÚA VÕ CO232-2 (NÂU)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/2273049019329581636942899038846225144991199n_1509001237.jpg', NULL, NULL),
(10, 'ÁO THUN CỔ TRÒN 2 CON MÈO CO231', 1, NULL, NULL, 99, 50, 'http://juky.vn/upload/products/2172841419109743758926685656344337995442536n_1508999158.jpg', NULL, '2018-01-13 17:43:44'),
(11, 'ÁO THUN CỔ TRÒN ĐẦU CON MÈO CO229-2 (HỒNG)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/2272867619325237504043971682254327165324428n_1508989734.jpg', NULL, NULL),
(12, 'ÁO THUN CỔ TRÒN AW3P CO228-3 (VÀNG)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/2273013219325400904027637132884706718327387n_1508987946.jpg', NULL, NULL),
(13, 'ÁO THUN TAY LỞ PHỐI VẠT TRẮNG CO221-2 (XÁM)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/2268766519318416938059361779844560434802291n_1513505881.jpg', NULL, NULL),
(14, 'ÁO THUN CỔ TRÒN HYUKOH CO219-2 (ĐEN)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/2268846119313533938547664896693717137916306n_1508745962.png', NULL, NULL),
(15, 'ÁO THUN CỔ TRÒN COCACOLA CO215-3 (NÂU)', 1, NULL, '', 99, 0, 'http://juky.vn/upload/products/tb2t6o5ocxjpufjsszexxaemvxa1593558082_1508578405.jpg', NULL, NULL),
(16, 'IZRO NAME TEE - YELLOW', 1, NULL, '', 200, 0, 'http://izro.co.kr/web/product/big/201710/117_shop1_614091.jpg', NULL, NULL),
(17, 'IZRO LOGO TEE - BLACK', 1, NULL, '', 250, 0, 'http://izro.co.kr/web/product/big/201701/103_shop1_238662.jpg', NULL, NULL),
(18, 'IZRO PENCIL TEE - WHITE', 1, NULL, '', 250, 0, 'http://izro.co.kr/web/product/big/201701/82_shop1_637740.jpg', NULL, NULL),
(19, 'IZRO PENCIL TEE - BLACK', 1, NULL, '', 250, 0, 'http://izro.co.kr/web/product/big/201701/81_shop1_727892.jpg', NULL, NULL),
(20, 'Apologize T-shirt', 1, NULL, '', 280, 0, 'https://dosi-in.com/wp-content/uploads/2017/07/APOLOGIZE-T-SHIRT1.jpg', NULL, NULL),
(21, 'To Live T-shirt', 1, NULL, '', 300, 0, 'https://dosi-in.com/wp-content/uploads/2017/07/DIRTYCOINS-TO-LIVE-T-SHIRT1.jpg', NULL, NULL),
(22, 'Futurism A Ship – White', 1, NULL, '', 380, 0, 'https://dosi-in.com/wp-content/uploads/2017/11/Tee-AShip-2-1.png', NULL, NULL),
(23, 'Futurism A Ship – Black', 1, NULL, '', 380, 0, 'https://dosi-in.com/wp-content/uploads/2017/11/Tee-AShip-1-1.png', NULL, NULL),
(24, 'CITY HEAVY TEE – GREY', 1, NULL, '', 500, 0, 'https://dosi-in.com/wp-content/uploads/2017/11/header-6.jpg', NULL, NULL),
(25, 'Dreams Tee', 1, NULL, '', 500, 0, 'https://dosi-in.com/wp-content/uploads/2017/10/FullSizeRender-41.jpg', NULL, NULL),
(26, 'Black Flannel Shirt', 2, NULL, '', 500, 0, 'https://dosi-in.com/wp-content/uploads/2017/10/Black-Flannel-Shirt-1.jpg', NULL, NULL),
(27, 'UM$ Valencia Shirt', 2, NULL, '', 1350, 0, 'https://dosi-in.com/wp-content/uploads/2017/10/UM-VALENCIA-SHIRT-2.jpg', NULL, NULL),
(28, 'Plannel Shirt', 2, NULL, '', 400, 0, 'https://dosi-in.com/wp-content/uploads/2017/07/Saigonexotic-plannel-shirt-02SGEX0200120003-1.jpg', NULL, NULL),
(29, 'Split Shirt', 2, NULL, '', 850, 0, 'https://dosi-in.com/wp-content/uploads/2017/07/02AOKE020008001606-01.jpg', NULL, NULL),
(30, 'CHECK BASEBALL SHIRT', 2, NULL, '', 1350, 0, 'https://dosi-in.com/wp-content/uploads/2017/11/t17ash10or_03-copy.jpg', NULL, NULL),
(31, 'LOOSE FIT CHECK SHIRT – BLUE', 2, NULL, '', 790, 0, 'https://dosi-in.com/wp-content/uploads/2017/11/t17ash02bl_031.jpg', NULL, NULL),
(32, '80S DENIM SHIRT', 2, NULL, '', 450, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-80s-denim-shirt-1_master.jpg', NULL, NULL),
(33, 'BAE STRIPED SHIRT', 2, NULL, '', 450, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-bea-striped-shirt-blue_master.jpg', NULL, NULL),
(34, 'BODE DENIM SHIRT', 2, NULL, '', 450, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-bode-denim-shirt-2_master.jpg', NULL, NULL),
(35, 'BOX SHIRT', 2, NULL, '', 460, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-box-shirt-beige-0_master.jpg', NULL, NULL),
(36, 'BOX SHIRT VER. 2', 2, NULL, '', 460, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-box-shirt-ver2-brown_master.jpg', NULL, NULL),
(37, 'COLLAR DENIM SHIRT', 2, NULL, '', 450, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-collar-denim-shirt-blue-1_master.jpg', NULL, NULL),
(38, 'DETA SHIRT', 2, NULL, NULL, 450, 250, 'http://product.hstatic.net/1000161656/product/ssstutter-product-deta-shirt-0_master.jpg', NULL, '2018-01-13 17:43:54'),
(39, 'DUI SHIRT', 2, NULL, '', 450, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-dui-shirt-2_master.jpg', NULL, NULL),
(40, 'ONO SHIRT', 2, NULL, '', 450, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-ono-shirt-black_master.jpg', NULL, NULL),
(41, 'SOCA SHIRT', 2, NULL, '', 450, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-soca-shirt_master.jpg', NULL, NULL),
(42, 'WORK SHIRT', 2, NULL, '', 450, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-work-shirt-blue_master.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_provider`
--

DROP TABLE IF EXISTS `social_provider`;
CREATE TABLE IF NOT EXISTS `social_provider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `provider_id` int(100) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_products`
--

DROP TABLE IF EXISTS `type_products`;
CREATE TABLE IF NOT EXISTS `type_products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(0, 'Tất Cả Sản Phẩm', NULL, NULL),
(1, 'Áo Thun', NULL, NULL),
(2, 'Áo Sơ Mi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `active`, `remember_token`, `name`, `gender`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'a@gm', '$2y$10$Ma/lISyNPPWvNq0Hw7wL9O6ysUA3Q63NltEAn4tkuh6j9cnSS4rou', 0, NULL, NULL, NULL, NULL, NULL, '2018-01-14 04:39:06', '2018-01-14 04:39:06'),
(3, 'fasdf@gmail.com', '$2y$10$sOKVcwmzqFk5p5V4bj4etOARE/DYPpxQUUfjUSVlB64Fh11NgnT6y', 0, 'ewZgToxRkWxrGF4gV5SERdZnBHcQEBH69OfDUY2K', '121', NULL, NULL, NULL, '2018-01-14 04:46:58', '2018-01-14 04:46:58'),
(4, 'g@gmail.com', '$2y$10$O3kgWTRBQmu9XVtNaLktnulPspG87hoYNXDCqloLkmeModiWeBQLG', 0, 'ewZgToxRkWxrGF4gV5SERdZnBHcQEBH69OfDUY2K', 'cXC', NULL, NULL, NULL, '2018-01-14 04:48:32', '2018-01-14 04:48:32'),
(5, 'fs@gmail.com', '$2y$10$/cWHraRI3A.9T3Ifpxcp/.hPfeb55f.6GmBIPNUDTAUTANjl3lrli', 0, 'ewZgToxRkWxrGF4gV5SERdZnBHcQEBH69OfDUY2K', 'fadf', NULL, NULL, NULL, '2018-01-14 04:50:23', '2018-01-14 04:50:23'),
(6, 'tri@gmail.com', '$2y$10$57R7BjEMbJ5tPOpTrPNy2O1A.gAeburOczjrCo1wqLjPGsbM/f4tK', 0, 'v2mcVhqrOGFr6XgsyAJHMn6vrMB9L6RA6YgZ53Ws', 'tri', NULL, NULL, NULL, '2018-01-15 05:05:52', '2018-01-15 05:05:52');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
