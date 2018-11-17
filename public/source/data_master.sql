-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 14, 2018 at 09:28 AM
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
(2, 'admin', '$2y$10$CrzA78aZECMPdhq5p3xwYegSYYBwo4Z.6/S8SOmgBvofpUH41zvc2', 1, 'y6U05SGxnJLI7RwE7ExX0Ehgby4CPmvikKPLDsebuPX0H8NcsfxdwNyHBd3k', '2018-01-14 02:53:02', '2018-01-14 02:53:02'),
(3, 'tri', '$2y$10$2MhQ8vdyOOkGZqS.WOnqmOcEZ4DOdvbR3oG5DjSFJp3vGRCF4Eypq', 2, NULL, '2018-01-14 02:55:44', '2018-01-14 02:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) NOT NULL,
  `date_order` date NOT NULL,
  `total` double NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE IF NOT EXISTS `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'ÁO THUN TAY DÀI CÁ KOI D167-4 (ĐÔ)', 1, NULL, NULL, 199000, 0, 'http://juky.vn/upload/products/tb29lgkis3pl1jjszfxxxcbbvxa2923754463_1512550649.jpg', NULL, '2018-01-13 17:43:21'),
(2, 'ÁO THUN TAY DÀI MẶT HỀ D168 (ĐỎ - ĐEN)', 1, NULL, NULL, 199000, 50000, 'http://juky.vn/upload/products/photo20171207172917_1512642659.jpg', NULL, '2018-01-13 17:43:37'),
(3, 'ÁO THUN ICON SMILE BỰ CO041-3 (XÁM)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/co0413_1512109091.jpg', NULL, NULL),
(4, 'ÁO THUN CHỮ NHẬT IN TAY CO252-1 (TRẮNG)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/231307621937046493285456213738115829552594n_1509615831.png', NULL, NULL),
(5, 'ÁO THUN CỔ TRÒN CON THỎ CO239-2 (XANH ĐEN)', 1, NULL, NULL, 99000, 50000, 'http://juky.vn/upload/products/2281531719340992669135127661521139221450905n_1509176601.jpg', NULL, '2018-01-13 17:44:51'),
(6, 'ÁO THUN CỔ TRÒN RAPLAN TRƠN CO237-4 (XANH ĐEN)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/2273007119334487703118958236213838661309461n_1509161449.png', NULL, NULL),
(7, 'ÁO THUN CỔ TRÒN BROOKLYA CO236-4 (ĐỎ)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/2273027319330031270231266943515377350168389n_1509010716.png', NULL, NULL),
(8, 'ÁO THUN CỔ TRÒN EISTU CO233-1 (TRẮNG)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/6d8c03a4d81b34456d0a_1511767717.jpg', NULL, NULL),
(9, 'ÁO THUN CỔ TRÒN MÚA VÕ CO232-2 (NÂU)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/2273049019329581636942899038846225144991199n_1509001237.jpg', NULL, NULL),
(10, 'ÁO THUN CỔ TRÒN 2 CON MÈO CO231', 1, NULL, NULL, 99000, 50000, 'http://juky.vn/upload/products/2172841419109743758926685656344337995442536n_1508999158.jpg', NULL, '2018-01-13 17:43:44'),
(11, 'ÁO THUN CỔ TRÒN ĐẦU CON MÈO CO229-2 (HỒNG)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/2272867619325237504043971682254327165324428n_1508989734.jpg', NULL, NULL),
(12, 'ÁO THUN CỔ TRÒN AW3P CO228-3 (VÀNG)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/2273013219325400904027637132884706718327387n_1508987946.jpg', NULL, NULL),
(13, 'ÁO THUN TAY LỞ PHỐI VẠT TRẮNG CO221-2 (XÁM)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/2268766519318416938059361779844560434802291n_1508827240.png', NULL, NULL),
(14, 'ÁO THUN CỔ TRÒN HYUKOH CO219-2 (ĐEN)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/2268846119313533938547664896693717137916306n_1508745962.png', NULL, NULL),
(15, 'ÁO THUN CỔ TRÒN COCACOLA CO215-3 (NÂU)', 1, NULL, '', 99000, 0, 'http://juky.vn/upload/products/tb2t6o5ocxjpufjsszexxaemvxa1593558082_1508578405.jpg', NULL, NULL),
(16, 'IZRO NAME TEE - YELLOW', 1, NULL, '', 200000, 0, 'http://izro.co.kr/web/product/big/201710/117_shop1_614091.jpg', NULL, NULL),
(17, 'IZRO LOGO TEE - BLACK', 1, NULL, '', 250000, 0, 'http://izro.co.kr/web/product/big/201701/103_shop1_238662.jpg', NULL, NULL),
(18, 'IZRO PENCIL TEE - WHITE', 1, NULL, '', 250000, 0, 'http://izro.co.kr/web/product/big/201701/82_shop1_637740.jpg', NULL, NULL),
(19, 'IZRO PENCIL TEE - BLACK', 1, NULL, '', 250000, 0, 'http://izro.co.kr/web/product/big/201701/81_shop1_727892.jpg', NULL, NULL),
(20, 'Apologize T-shirt', 1, NULL, '', 280000, 0, 'https://dosi-in.com/wp-content/uploads/2017/07/APOLOGIZE-T-SHIRT1.jpg', NULL, NULL),
(21, 'To Live T-shirt', 1, NULL, '', 300000, 0, 'https://dosi-in.com/wp-content/uploads/2017/07/DIRTYCOINS-TO-LIVE-T-SHIRT1.jpg', NULL, NULL),
(22, 'Futurism A Ship – White', 1, NULL, '', 380000, 0, 'https://dosi-in.com/wp-content/uploads/2017/11/Tee-AShip-2-1.png', NULL, NULL),
(23, 'Futurism A Ship – Black', 1, NULL, '', 380000, 0, 'https://dosi-in.com/wp-content/uploads/2017/11/Tee-AShip-1-1.png', NULL, NULL),
(24, 'CITY HEAVY TEE – GREY', 1, NULL, '', 500000, 0, 'https://dosi-in.com/wp-content/uploads/2017/11/header-6.jpg', NULL, NULL),
(25, 'Dreams Tee', 1, NULL, '', 500000, 0, 'https://dosi-in.com/wp-content/uploads/2017/10/FullSizeRender-41.jpg', NULL, NULL),
(26, 'Black Flannel Shirt', 2, NULL, '', 500000, 0, 'https://dosi-in.com/wp-content/uploads/2017/10/Black-Flannel-Shirt-1.jpg', NULL, NULL),
(27, 'UM$ Valencia Shirt', 2, NULL, '', 1350000, 0, 'https://dosi-in.com/wp-content/uploads/2017/10/UM-VALENCIA-SHIRT-2.jpg', NULL, NULL),
(28, 'Plannel Shirt', 2, NULL, '', 400000, 0, 'https://dosi-in.com/wp-content/uploads/2017/07/Saigonexotic-plannel-shirt-02SGEX0200120003-1.jpg', NULL, NULL),
(29, 'Split Shirt', 2, NULL, '', 850000, 0, 'https://dosi-in.com/wp-content/uploads/2017/07/02AOKE020008001606-01.jpg', NULL, NULL),
(30, 'CHECK BASEBALL SHIRT', 2, NULL, '', 1350000, 0, 'https://dosi-in.com/wp-content/uploads/2017/11/t17ash10or_03-copy.jpg', NULL, NULL),
(31, 'LOOSE FIT CHECK SHIRT – BLUE', 2, NULL, '', 790000, 0, 'https://dosi-in.com/wp-content/uploads/2017/11/t17ash02bl_031.jpg', NULL, NULL),
(32, '80S DENIM SHIRT', 2, NULL, '', 450000, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-80s-denim-shirt-1_master.jpg', NULL, NULL),
(33, 'BAE STRIPED SHIRT', 2, NULL, '', 450000, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-bea-striped-shirt-blue_master.jpg', NULL, NULL),
(34, 'BODE DENIM SHIRT', 2, NULL, '', 450000, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-bode-denim-shirt-2_master.jpg', NULL, NULL),
(35, 'BOX SHIRT', 2, NULL, '', 460000, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-box-shirt-beige-0_master.jpg', NULL, NULL),
(36, 'BOX SHIRT VER. 2', 2, NULL, '', 460000, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-box-shirt-ver2-brown_master.jpg', NULL, NULL),
(37, 'COLLAR DENIM SHIRT', 2, NULL, '', 450000, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-collar-denim-shirt-blue-1_master.jpg', NULL, NULL),
(38, 'DETA SHIRT', 2, NULL, NULL, 450000, 50000, 'http://product.hstatic.net/1000161656/product/ssstutter-product-deta-shirt-0_master.jpg', NULL, '2018-01-13 17:43:54'),
(39, 'DUI SHIRT', 2, NULL, '', 450000, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-dui-shirt-2_master.jpg', NULL, NULL),
(40, 'ONO SHIRT', 2, NULL, '', 450000, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-ono-shirt-black_master.jpg', NULL, NULL),
(41, 'SOCA SHIRT', 2, NULL, '', 450000, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-soca-shirt_master.jpg', NULL, NULL),
(42, 'WORK SHIRT', 2, NULL, '', 450000, 0, 'http://product.hstatic.net/1000161656/product/ssstutter-product-work-shirt-blue_master.jpg', NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `name`, `gender`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'a@gm', '$2y$10$Ma/lISyNPPWvNq0Hw7wL9O6ysUA3Q63NltEAn4tkuh6j9cnSS4rou', NULL, NULL, NULL, NULL, NULL, '2018-01-14 04:39:06', '2018-01-14 04:39:06'),
(3, 'fasdf@gmail.com', '$2y$10$sOKVcwmzqFk5p5V4bj4etOARE/DYPpxQUUfjUSVlB64Fh11NgnT6y', 'ewZgToxRkWxrGF4gV5SERdZnBHcQEBH69OfDUY2K', '121', NULL, NULL, NULL, '2018-01-14 04:46:58', '2018-01-14 04:46:58'),
(4, 'g@gmail.com', '$2y$10$O3kgWTRBQmu9XVtNaLktnulPspG87hoYNXDCqloLkmeModiWeBQLG', 'ewZgToxRkWxrGF4gV5SERdZnBHcQEBH69OfDUY2K', 'cXC', NULL, NULL, NULL, '2018-01-14 04:48:32', '2018-01-14 04:48:32'),
(5, 'fs@gmail.com', '$2y$10$/cWHraRI3A.9T3Ifpxcp/.hPfeb55f.6GmBIPNUDTAUTANjl3lrli', 'ewZgToxRkWxrGF4gV5SERdZnBHcQEBH69OfDUY2K', 'fadf', NULL, NULL, NULL, '2018-01-14 04:50:23', '2018-01-14 04:50:23');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
