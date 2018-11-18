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
(1,'Ốp lưng iPhone 5C hiệu Rock Ethereal Shell','1','NULL','NULL',49,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/op-lung-iphone-5c-hieu-rock-ethereal-shell-1.jpg');
(2,'Ốp dẻo trong suốt siêu mỏng iPhone 6/6s','1','NULL','NULL',49,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/op-lung-iphone-6-deo-sieu-mong-1.jpg');
(3,'Viền nhôm siêu mỏng iPhone 5/5S','1','NULL','NULL',49,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/24/vien-nhom-sieu-mong-iphone-5-1.jpg');
(4,'Ốp lưng dẻo Iphone 6/6s hình thiên thần Love Crazy','1','NULL','NULL',49,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/24/op-lung-deo-iphone-6-thien-than-1.JPG');
(5,'Ốp dẻo vân caro đính đá Iphone 6/6s Plus','1','NULL','NULL',49,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/op-lung-iphone-6-6s-plus-deo-dinh-da-1.jpg');
(6,'Ốp dẻo vân caro đính đá Iphone 6/6s','1','NULL','NULL',49,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/op-lung-iphone-6-6s-deo-dinh-da-1.jpg');
(7,'Ốp lưng iPhone 6/6s viền nhôm siêu mỏng','1','NULL','NULL',79,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/op-cung-hinh-vien-iphone-6-1.JPG');
(8,'Ốp lưng iPhone 6/6s Plus viền nhôm siêu mỏng','1','NULL','NULL',79,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/op-cung-hinh-vien-iphone-6-plus-1.JPG');
(9,'Viền nhôm iphone 6 siêu mỏng','1','NULL','NULL',79,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/vien-nhom-iphone-6-sieu-mong-1.JPG');
(10,'Viền nhôm iphone 6/6s Plus siêu mỏng','1','NULL','NULL',79,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/vien-nhom-iphone-6-plus-sieu-mong-1.JPG');
(11,'Ốp lưng da iPhone 6/6s hiệu Coreka - Combi Sabari bar','1','NULL','NULL',79,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/23/op-lung-da-iphone-6-hieu-Coreka-1.jpg');
(12,'Ốp lưng da iPhone 6/6s Plus hiệu Coreka - Combi Skinny bar','1','NULL','NULL',79,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/23/op-lung-da-iphone-6-plus-hieu-coreka-1.jpg');
(13,'Ốp lưng IPHONE 6/6s hình Minions dễ thương','1','NULL','NULL',79,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/26/op-lung-iphone-6-hinh-minions-1.jpg');
(15,'Ốp lưng biến iPhone 4/4s thành iPhone 6','1','NULL','NULL',80,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/op-lung-iphone-4-gia-iphone-6-1.jpg');
(16,'Ốp lưng dẻo vân lưới Iphone 6/6s Plus','1','NULL','NULL',89,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/op-iphone-6-6s-plus-deo-luoi-1.jpg');
(17,'Ốp lưng dẻo vân lưới Iphone 6/6s','1','NULL','NULL',89,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/op-iphone-6-6s-deo-luoi-1.jpg');
(18,'Ốp lưng cao cấp iPhone 5C hiệu Kingbar đính đá sang trong','1','NULL','NULL',99,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/21/op-lung-iphone-5c-hieu-kingbar-1.jpg');
(19,'Ốp lưng phủ nano chống trầy xước Iphone 6/6s','1','NULL','NULL',99,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/op-lung-iphone-6-fashion-color-1.jpg');
(20,'Ốp lưng phủ nano chống trầy xước Iphone 6/6s Plus','1','NULL','NULL',99,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/op-lung-iphone-6-plus-fashion-color-1.jpg');
(21,'Bao da Iphone 5C hiệu FIBCOLOR-PIPILU X-Level Series','1','NULL','NULL',99,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/bao-da-iphone-5c-pipilu-1.jpg');
(22,'Ốp lưng da Iphone 6','1','NULL','NULL',99,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/op-lung-da-iphone-6-1.jpg');
(23,'Ốp lưng da Iphone 6/6s plus','1','NULL','NULL',99,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/op-lung-da-iphone-6-plus-1.jpg');
(24,'Ốp viền kim loại kèm nắp sau cho Iphone 6 (Verison 1)','1','NULL','NULL',99,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/23/op-kiem-vien-nhom-iphone-6-1.jpg');
(25,'Ốp viền kim loại kèm nắp sau cho Iphone 6 Plus (Verison 1)','1','NULL','NULL',99,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/23/op-kiem-vien-nhom-iphone-6-plus-1.jpg');
(26,'Ốp dẻo trong suốt siêu mỏng Galaxy Grand Prime','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/17/op-lung-deo-trong-suot-samsung-galaxy-grand-prime-1.jpg');
(27,'Ốp dẻo trong suốt siêu mỏng Galaxy Grand 2','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/22/op-lung-deo-trong-suot-samsung-galaxy-grand-2-1.jpg');
(28,'Ốp dẻo trong suốt siêu mỏng Galaxy S6','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/24/op-lung-samsung-galaxy-s6-deo-sieu-mong-1.jpg');
(29,'Ốp dẻo trong suốt siêu mỏng Galaxy S6 Edge','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/24/op-lung-samsung-galaxy-s6-edge-deo-sieu-mong-1.jpg');
(30,'Dán cường lực Galaxy Note 5 hiệu Glass','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/26/dan-cuong-luc-galaxy-note-5-hieu-glass-1.jpg');
(31,'Ốp dẻo trong suốt siêu mỏng Samsung Note 5','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/27/op-lung-deo-trong-suot-note-5-1.jpg');
(32,'Ốp dẻo trong suốt siêu mỏng Galaxy Note 3','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/27/op-lung-samsung-galaxy-note3-deo-sieu-mong-1.jpg');
(33,'Ốp dẻo trong suốt siêu mỏng Galaxy J1','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/28/op-lung-samsung-galaxy-j1-deo-sieu-mong-1.jpg');
(34,'Dán cường lực Samsung Galaxy S3 hiệu Glass','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/28/DAN-CUONG-LUC-SAMSUNG-GALAXY-S3-HIEU-GLASS-1.jpg');
(35,'Dán cường lực Samsung Galaxy A8 hiệu Glass','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/28/DAN-CUONG-LUC-SAMSUNG-GALAXY-A8-HIEU-GLASS-1.jpg');
(36,'Ốp dẻo trong suốt siêu mỏng Galaxy J2','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/29/op-lung-samsung-galaxy-j2-deo-sieu-mong-1.jpg');
(37,'Dán cường lực Galaxy ON5 hiệu Glass','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/dan-cuong-luc-galaxy-on5-hieu-glass-1.jpg');
(38,'Dán cường lực Galaxy ON7 hiệu Glass','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/dan-cuong-luc-galaxy-on7-hieu-glass-1.jpg');
(39,'Ốp dẻo trong suốt siêu mỏng Galaxy S5','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/op-lung-deo-trong-suot-samsung-s5-1.jpg');
(40,'Ốp dẻo trong suốt siêu mỏng Samsung Galaxy A5 2016','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/op-lung-deo-trong-suot-samsung-galaxy-a5-2016-1.jpg');
(41,'Ốp dẻo trong suốt siêu mỏng Samsung Galaxy A7 2016','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/op-lung-deo-trong-suot-samsung-galaxy-a7-2016-1.jpg');
(42,'Ốp dẻo trong suốt siêu mỏng Galaxy S7','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/op-lung-deo-trong-suot-samsung-galaxy-s7-1.jpg');
(43,'Ốp dẻo trong suốt siêu mỏng Galaxy A3 2016','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/30/op-lung-deo-trong-suot-samsung-galaxy-a3-2016-1.jpg');
(44,'Dán cường lực Galaxy J2 hiệu Glass','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/31/dan-cuong-luc-samsung-galaxy-j2-hieu-glass-1.jpg');
(45,'Dán cường lực Galaxy J5 hiệu Glass','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/31/dan-cuong-luc-samsung-galaxy-j5-hieu-glass-1.jpg');
(46,'Dán cường lực Galaxy J7 hiệu Glass','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/31/dan-cuong-luc-samsung-galaxy-j7-hieu-glass-1.jpg');
(47,'Dán cường lực Samsung Galaxy A5 2016 hiệu Glass','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/31/dan-cuong-luc-samsung-galaxy-a5-2016-hieu-glass-1.jpg');
(48,'Dán cường lực Samsung Galaxy A7 2016 hiệu Glass','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/31/dan-cuong-luc-samsung-galaxy-a7-2016-hieu-glass-1.jpg');
(49,'Đầu chuyển đổi OTG Samsung Galaxy S7/S7 Edge chính hãng','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/31/usb-otg-samsung-galaxy-s7-s7edge-1.jpg');
(50,'Ốp dẻo trong suốt siêu mỏng Galaxy J1 2016','2','NULL','NULL',100,0,'https://phukiengiare.com/images/thumbnails/220/190/detailed/31/op-lung-galaxy-j1-2016-deo-mong-1.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

--DUYEN: Insert data into STORES table
INSERT INTO `stores` (`name`, `address`, `image`) VALUES('The Coffee House','68 HUỲNH VĂN BÁNH,PHƯỜNG 15, QUẬN PHÚ NHUẬN','http://file.hstatic.net/1000075078/article/img_4483_grande.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Morico - Contemporary Japanese Lifestyle - Lê Lợi ',' 30 Lê Lợi, P. Bến Nghé, Quận 1 , TP. HCM ','https://images.foody.vn/res/g1/595/prof/s640x400/foody-upload-api-foody-mobile-10-jpg-180508140146.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Monkey In Black Cafe ',' 2 chi nhánh ','https://images.foody.vn/res/g9/89822/prof/s640x400/foody-mobile-zas-jpg-258-636086627918162406.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Oromia Coffee - Nam Kỳ Khởi Nghĩa ',' 193A/D3 Nam Kỳ Khởi Nghĩa, Quận 3 , TP. HCM ','https://images.foody.vn/res/g12/112158/prof/s640x400/foody-mobile-1-jpg-194-636289977329979410.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Starbucks Coffee - HCM ',' 25 chi nhánh ','https://images.foody.vn/res/g2/15031/prof/s640x400/foody-mobile-mobile-jpg-409-635744522405981690.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Morico - Modern Japanese - Food, Sushi & Dessert ',' 3 chi nhánh ','https://images.foody.vn/res/g1/742/prof/s640x400/foody-upload-api-foody-mobile-9-jpg-180508140028.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Partea ',' 2 chi nhánh ','https://images.foody.vn/res/g8/77729/prof/s640x400/foody-mobile-12-jpg-868-636171531644694064.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Đen Đá Cafe ',' 7 chi nhánh ','https://images.foody.vn/res/g12/110335/prof/s640x400/foody-mobile-mhfo7qz6-jpg-187-636130047827225698.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Morico - Contemporary Japanese Lifestyle ',' 2 chi nhánh ','https://images.foody.vn/res/g1/900/prof/s640x400/foody-upload-api-foody-mobile-7-jpg-180508135106.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Paris Baguette - Cao Thắng ',' 1 Cao Thắng, P. 2, Quận 3 , TP. HCM ','https://images.foody.vn/res/g1/4336/prof/s640x400/foody-upload-api-foody-mobile--b5e49debee037df4559-180704101653.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Phúc Long Coffee & Tea Express ',' 30 chi nhánh ','https://images.foody.vn/res/g9/87015/prof/s640x400/foody-mobile-phuc-long-ly-tu-tron-343-635791628128985595.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Trà Sữa Gong Cha - 貢茶 - Hồ Tùng Mậu ',' 83 Hồ Tùng Mậu, Quận 1 , TP. HCM ','https://images.foody.vn/res/g10/96530/prof/s640x400/foody-mobile-gong-cha2-jpg-305-636173909122516269.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Moon Fast Food - Món Hàn - Xuân Hồng ',' 53 Xuân Hồng, P. 12, Quận Tân Bình , TP. HCM ','https://images.foody.vn/res/g8/71782/prof/s640x400/foody-mobile-mon-fastfood-mb-jpg-441-635895077676626146.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Morico - Contemporary Japanese Lifestyle - Vincom Center ',' Tầng B3 Vincom Center, 70 - 72 Lê Thánh Tôn, P. Bến Nghé, Quận 1 , TP. HCM ','https://images.foody.vn/res/g1/742/prof/s640x400/foody-upload-api-foody-mobile-9-jpg-180508140028.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Paris Baguette ',' 4 chi nhánh ','https://images.foody.vn/res/g1/4336/prof/s640x400/foody-upload-api-foody-mobile--b5e49debee037df4559-180704101653.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Moon Fast Food - Món Hàn - Xuân Hồng ',' 53 Xuân Hồng, P. 12, Quận Tân Bình , TP. HCM ','https://images.foody.vn/res/g8/71782/prof/s640x400/foody-mobile-mon-fastfood-mb-jpg-441-635895077676626146.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Fly Cupcake ',' 2 chi nhánh ','https://images.foody.vn/res/g1/6676/prof/s640x400/foody-mobile-flycupcake-jpg-612-635657179559706401.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Star Kitchen ',' 3 chi nhánh ','https://images.foody.vn/res/g10/90625/prof/s640x400/foody-upload-api-foody-mobile-21-jpg-181114113351.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Dallas Cakes & Coffee ',' 5 chi nhánh ','https://images.foody.vn/res/g1/9138/prof/s640x400/foody-upload-api-foody-mobile-3-jpg-180409101750.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Buffet Windsor - Cafe Central An Dong - Windsor Plaza ',' Windsor Plaza, 18 An Dương Vương, Quận 5 , TP. HCM ','https://images.foody.vn/res/g1/8/prof/s640x400/foody-mobile-dpxxrdae-jpg-176-635851879399811855.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống TOUS les JOURS SG ',' 6 chi nhánh ','https://images.foody.vn/res/g1/520/prof/s640x400/foody-upload-api-foody-mobile-tlj-jpg-180521103523.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Chewy Chewy - Cafe & Bánh - Trần Hưng Đạo ',' 34 Trần Hưng Đạo, P. Phạm Ngũ Lão, Quận 1 , TP. HCM ','https://images.foody.vn/res/g1/4139/prof/s640x400/foody-upload-api-foody-mobile-18-jpg-181023082644.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Bánh Bao Thọ Phát - Nguyễn Tri Phương ',' 78 Nguyễn Tri Phương, P. 7, Quận 5 , TP. HCM ','https://images.foody.vn/res/g1/3100/prof/s640x400/foody-mobile-tho-phat-jpg-980-636044605184486406.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Cheesecake Ngon ',' 2 chi nhánh ','https://images.foody.vn/res/g5/44454/prof/s640x400/foody-mobile-cheese-cake-jpg-576-636119657716824761.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('TacoLeo - Ẩm Thực Mexico - Cao Bá Nhạ ',' 20 Cao Bá Nhạ, P. Nguyễn Cư Trinh, Quận 1 , TP. HCM ','https://images.foody.vn/res/g5/49674/prof/s640x400/foody-mobile-cao-ba-nha-jpg.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Sumo BBQ - Buffet Lẩu & Nướng ',' 11 chi nhánh ','https://images.foody.vn/res/g1/4074/prof/s640x400/foody-mobile-12-jpg-340-636169623888144042.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Red Chilli Seafood Buffet - CHLOE Gallery ',' 2 - 6 Phan Văn Chương, Phú Mỹ Hưng, Quận 7 , TP. HCM ','https://images.foody.vn/res/g1/562/prof/s640x400/foody-mobile-109-jpg-361-635858632711885387.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Sushi Dining AOI - Món Nhật ',' 53 - 55 Bà Huyện Thanh Quan, P. 6, Quận 3 , TP. HCM ','https://images.foody.vn/res/g1/726/prof/s640x400/foody-mobile-sushi-set-aoi-jpg-270-636317608417017315.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Hana Buffet ',' 6 chi nhánh ','https://images.foody.vn/res/g2/13986/prof/s640x400/foody-mobile-hana-buffet-pvc-mb-j-201-635924466203859693.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Buffet Windsor - Cafe Central An Dong - Windsor Plaza ',' Windsor Plaza, 18 An Dương Vương, Quận 5 , TP. HCM ','https://images.foody.vn/res/g1/8/prof/s640x400/foody-mobile-dpxxrdae-jpg-176-635851879399811855.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Langfarm Buffet - Trần Hưng Đạo ',' 771 - 773 - 775 Trần Hưng Đạo, P. 1, Quận 5 , TP. HCM ','https://images.foody.vn/res/g22/215893/prof/s640x400/2018123152530-langfarm-buffet-tran-hung-dao-copy.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('La Brasserie Restaurant - Hotel Nikko Saigon ',' Hotel Nikko Saigon, 235 Nguyễn Văn Cừ, Quận 1, Quận 1 , TP. HCM ','https://images.foody.vn/res/g4/33141/prof/s640x400/2017619161034-img_2388.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống Hoàng Yến Buffet ',' 5 chi nhánh ','https://images.foody.vn/res/g1/305/prof/s640x400/foody-mobile-dsc_0886-jpg-219-636118800111396860.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Cheap Eats - Seafood BBQ Buffet ',' Tầng 5, 9 Nguyễn Trãi, P. Bến Thành, Quận 1 , TP. HCM ','https://images.foody.vn/res/g26/255427/prof/s640x400/foody-mobile-1-jpg-112-636258618783661123.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Hệ thống King BBQ ',' 24 chi nhánh ','https://images.foody.vn/res/g5/46902/prof/s640x400/foody-mobile-gff-jpg-282-635768935243754658.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Parkview Buffet - New World Saigon Hotel ',' New World Saigon Hotel, 76 Lê Lai, P. Bến Nghé, Quận 1 , TP. HCM ','https://images.foody.vn/res/g2/15012/prof/s640x400/2017539570-_parkview-2-.jpg');
INSERT INTO `stores` (`name`, `address`, `image`) VALUES ('Fujiya Restaurant - Yakiniku Nabe Buffet ',' B3-01 Vincom Center, 72 Lê Thánh Tôn, Quận 1 , TP. HCM ','https://images.foody.vn/res/g10/94289/prof/s640x400/foody-upload-api-foody-mobile-2-jpg-180602081629.jpg');


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
(1, 'Apple', NULL, NULL),
(2, 'Samsung', NULL, NULL);

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
