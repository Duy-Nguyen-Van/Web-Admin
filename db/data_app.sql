-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 07:07 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(1) NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', '$2y$10$CrzA78aZECMPdhq5p3xwYegSYYBwo4Z.6/S8SOmgBvofpUH41zvc2', 1, 'jsuPwYsjvohi52gARdj8HH1ny8BZFKIRAm8Ro2gmDhBjSqWnRbXy9SEUnvHh', '2018-01-13 19:53:02', '2018-01-13 19:53:02'),
(3, 'tri', '$2y$10$2MhQ8vdyOOkGZqS.WOnqmOcEZ4DOdvbR3oG5DjSFJp3vGRCF4Eypq', 2, NULL, '2018-01-13 19:55:44', '2018-01-13 19:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `date_order` date NOT NULL,
  `total` double NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `note`, `checkout`, `created_at`, `updated_at`) VALUES
(3, 6, '2018-01-14', 50, NULL, 0, '2018-01-14 08:27:14', '2018-01-15 00:29:43'),
(4, 6, '2018-01-14', 450, NULL, 1, '2018-01-14 08:27:49', '2018-01-15 00:29:57'),
(5, 6, '2018-01-14', 599, NULL, 1, '2018-01-14 09:24:03', '2018-01-15 00:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 1, 50, '2018-01-14 08:27:14', '2018-01-14 08:27:14'),
(3, 4, 41, 1, 450, '2018-01-14 08:27:49', '2018-01-14 08:27:49'),
(4, 5, 5, 1, 50, '2018-01-14 09:24:03', '2018-01-14 09:24:03'),
(5, 5, 6, 1, 99, '2018-01-14 09:24:03', '2018-01-14 09:24:03'),
(6, 5, 42, 1, 450, '2018-01-14 09:24:03', '2018-01-14 09:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
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

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(1, 'abc', NULL, '1@gmail.com', '1', '1', '1', '2018-01-14 08:10:46', '2018-01-14 08:10:46'),
(2, 'abc', NULL, '1@gmail.com', '1', '1', '1', '2018-01-14 08:23:45', '2018-01-14 08:23:45'),
(3, 'a', NULL, '123@gmail.com', '1', '1', '1', '2018-01-14 08:24:14', '2018-01-14 08:24:14'),
(4, 'a', NULL, '123@gmail.com', '1', '1', '1', '2018-01-14 08:27:14', '2018-01-14 08:27:14'),
(5, 'dfadfasfadf', NULL, 'afds@gmail.com', '13e1r', '12124134', '12', '2018-01-14 08:27:49', '2018-01-14 08:27:49'),
(6, 'trí', NULL, 'hominht@gmail.com', 'dytie', '09912', '0', '2018-01-14 09:24:03', '2018-01-14 09:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `id_store` int(200) UNSIGNED NOT NULL,
  `origin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `price` double NOT NULL,
  `promotion` double NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `id_store`, `origin`, `description`, `price`, `promotion`, `image`, `created_at`, `updated_at`) VALUES
(1, ' Sữa tươi trân châu hoàng gia ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g76/758995/s570x570/3cc16157-097a-4aac-b7e0-ea7c60fe19f8.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, ' Sữa Tươi Trân Châu Đường Đen ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g76/758995/s570x570/54413d62-9e23-46bc-97ba-be440362fec6.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, ' Sữa tươi trân châu Totoco ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g76/758995/s570x570/5917183a-ea77-40f5-9d4b-8062acffc836.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, ' Sữa tươi trân châu Hạnh Phúc ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g76/758995/s570x570/184534fd-30fa-4683-b5c7-1bbb50aab240.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, ' Socola trân châu đường đen ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g76/758995/s570x570/abf9d7fe-1406-4cc9-8e63-ebc547631b43.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, ' Đại Dương Xanh trân châu đường đen ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g76/758995/s570x570/2bec4174-1f87-4960-a0b9-51f5ba236d40.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, ' Trà sữa trân châu đường đen ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g76/758995/s570x570/2f8cbcad-af4e-44b9-bd46-a1243a019bb0.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, ' Biển Đỏ trân châu đường đen ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g76/758995/s570x570/2be67e1c-c3d1-4d40-a859-f49ed9eba2db.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, ' Trà sữa trân châu Totoco ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g76/758995/s570x570/b7c1817d-4fcf-4229-a7af-96ca90173f1b.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, ' Matcha trân châu đường đen ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g76/758995/s570x570/9b3fc6ba-8f35-4d5f-ad1b-5e285075df71.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, ' Hồng trà đào ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g76/758995/s570x570/0834277c-3501-4ab1-aed6-a0a4d2ced0d7.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, ' Hồng trà Biển Đỏ ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g76/758995/s570x570/67b17eef-0121-40f5-bb2e-2f9ae6b6e650.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, ' Hồng trà bạc hà ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/default/s120x120/deli-dish-no-image.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, ' Hồng trà Đại Dương Xanh ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g76/758995/s570x570/29785cc4-32bc-4394-b4dc-7c166ea1c183.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, ' Macchiato sửu nhi trân châu đường đen ', 0, 1, 'NULL', 'NULL', 50, 0, 'https://media.foody.vn/res/g76/758995/s570x570/61a0a33b-a7ea-4ba0-8f21-c3d46ce3ab78.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, ' Macchiato trà xanh ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g76/758995/s570x570/49f190f6-d88a-46c2-a9b0-b89f591c4a36.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, ' Macchiato Đại Dương Xanh ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g76/758995/s570x570/4e246f04-0afe-47a0-baa3-c802832e91c6.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, ' Trà hoa quả Totoco đặc biệt ', 0, 1, 'NULL', 'NULL', 55, 0, 'https://media.foody.vn/res/g76/758995/s570x570/faf170ca-65f6-4631-8dc0-7c53fa473650.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, ' Macchiato Biển Đỏ ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g76/758995/s570x570/b2174ef5-8648-43e2-9800-a2b07b11cc9c.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, ' Macchiato trà đào ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g76/758995/s570x570/bc838d3e-b680-4f1a-9fc8-3dae9cd018a0.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, ' Macchiato trân châu đường đen ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/default/s120x120/deli-dish-no-image.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, ' Macchiato socola ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g76/758995/s570x570/a5188b13-fb68-4c41-9d36-50cee1d76da9.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, ' Cafe Đá ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g76/758995/s570x570/04337b6e-d0e9-4f73-9fa2-2acdda173f62.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, ' Cafe bạc xỉu ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g76/758995/s570x570/0d67e631-7b43-4f21-b2a7-cf93686e4e82.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, ' Bánh mì ', 0, 1, 'NULL', 'NULL', 29, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116154022-banh-mi-phuc-long.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, ' Trà sữa Phúc Long (đá) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201710211157-tra-sua-phuc-long.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, ' Trà đào (đá) ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201812011926-tra-dao.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, ' Trà vải ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2017102111528-tra-vai.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, ' Trà oolong sữa (đá) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2017102111518-tra-oolong-sua.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, ' Hồng trà sữa (đá) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2017102111456-hong-tra-sua.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, ' Trà xanh latte (đá) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201812014384-foody-phuc-long-coffee-tea-house-tran-hung-dao-356-636482065671989997.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, ' Trà đào sữa (đá) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181171831-dao-sua.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, ' Trà sữa đặc biệt ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20168241232-tra-sua-dac-biet.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, ' Hồng trà chanh (đá) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117162450-hong-tra-chanh.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, ' Trà oolong dâu ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018120115926-foody-phuc-long-coffee-tea-ngo-duc-ke-509-636509155583844433.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, ' Trà hoa hồng ', 0, 1, 'NULL', 'NULL', 50, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201812011547-foody-phuc-long-cafe-takeaway-tran-hung-dao-315-636519865737752073.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, ' Trà nhãn ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018101592855-2017102111528-tra-vai.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, ' Trà may mắn (đá) ', 0, 1, 'NULL', 'NULL', 50, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117162710-tra-may-man.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, ' Trà sữa Phúc Long (nóng) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117163237-hong-tra-sua.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, ' Trà oolong sữa (nóng) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117163219-hong-tra-sua.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, ' Hồng trà sữa (nóng) ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117162518-hong-tra-sua-nong.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, ' Trà đào (nóng) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117162545-tra-dao-nong.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, ' Trà xanh latte (nóng) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117162810-tra-xanh-latte-nonggg.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, ' Trà đào sữa (nóng) ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117162645-tra-dao-sua.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, ' Hồng trà chanh (nóng) ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811717119-hong-tra-chanh.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, ' Trà sen hazelnut kem sữa ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018120145333-23-4-848x4771.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, ' Trà đen hazelnut kem sữa ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018120145317-foody-mobile-r02d6yhd-jpg-340-6361671708497626121.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, ' Trà hoa hồng kem sữa ', 0, 1, 'NULL', 'NULL', 70, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811716376-tra-hoa-hong-kem-sua.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, ' Trà xanh đá xay ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201682413051-tra-xanh-da-xay.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, ' Socola xay với hạnh nhân & espresso ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018120114523-socola-xay-voi-hanh-nhan-espresso.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, ' Socola cafe đá xay ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2016824125735-socola-da-xay.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, ' Cappuccino đá xay ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2017529114154-cappuccino-da-xay.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, ' Oreo xay cùng Cappuccino ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201682412145-oreo-capuchino-blast.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, ' Cafe bạc hà đá xay ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20168241267-afe-bac-ha-da-xay.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, ' Socola trắng đá xay ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018120114456-socola-trang-da-xay.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, ' Cafe hazelnut đá xay ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117163750-ca-phe-halzenut-da-xay.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, ' Cafe caramel đá xay ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018120114513-cafe-caramel-da-xay.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, ' Caramel đá xay ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2017102111647-caramel-da-xay.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, ' Trà xanh cafe xay jelly ', 0, 1, 'NULL', 'NULL', 65, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811717151-tra-xanh-ca-phe-da-xay-va-jelly.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, ' Trà xanh xay almond ', 0, 1, 'NULL', 'NULL', 60, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811717210-tra-xanh-xay-almond.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, ' Trà xanh cafe xay almond ', 0, 1, 'NULL', 'NULL', 60, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117163834-tra-xanh-ca-phe-xay-almond.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, ' Trà oolong (đá) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117163438-tra-o-long.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, ' Trà sen (đá) ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811716350-tra-sen.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, ' Trà thiết quan âm (đá) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117163530-tra-thiet-quan-am.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, ' Trà lài (đá) ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117163416-tra-lai.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, ' Trà oolong (nóng) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811717350-tra-o-long.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, ' Trà tiểu long châu (đá) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117163612-tra-tieu-long-chau-nong_da-.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, ' Trà xanh (nóng) ', 0, 1, 'NULL', 'NULL', 25, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811717938-tra-xanh.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, ' Trà xanh (đá) ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117163633-tra-xanh.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, ' Trà sen (nóng) ', 0, 1, 'NULL', 'NULL', 25, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117171024-tra-sen.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, ' Trà lài (nóng) ', 0, 1, 'NULL', 'NULL', 25, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811717105-tra-lai.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, ' Trà thiết quan âm (nóng) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811717919-tra-thiet-quan-am.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, ' Trà tiểu long châu (nóng) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117163555-tra-tieu-long-chau-nong_da-.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, ' Cafe sữa (đá) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117162338-ca-phe-sua.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, ' Cà phê đen (đá) ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117162313-ca-phe-den.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, ' Cà phê sữa (nóng) ', 0, 1, 'NULL', 'NULL', 33, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117162223-ca-phe-sua.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, ' Cà phê đen (nóng) ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117162155-ca-phe-den.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, ' Chocolate (đá) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117171427-chocolate.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, ' Cappuccino (đá) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117161915-cappuccino.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, ' Choco coffee (đá) ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018120111028-phuc-long-cafe-latte.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, ' Latte (đá) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117171231-latte.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, ' Cappuccino (nóng) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117161731-cappuccino.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, ' Chocolate (nóng) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811717144-chocolate.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, ' Latte (nóng) ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117171211-latte.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, ' Caramel coffee (đá) ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117171630-caramel-coffee.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, ' Espresso ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018120111039-32105-phuc-long-coffee-and-tea-house.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, ' Vanilla latte (đá) ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g5/48683/s570x570/201811717157-vanilla-latte.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, ' Caramel coffee (nóng) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117171554-caramel-coffee.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, ' Choco coffee (nóng) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117171527-choco-coffee.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, ' Vanilla latte (nóng) ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018117171445-vanilla-latte.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, ' Táo và dâu ép ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155953-tao-va-dau-ep.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, ' Cam và cà rốt ép ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155814-ca-rot-ep.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, ' Bưởi ép ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018111615576-buoi-ep.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, ' Cà rốt ép ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155723-ca-rot-ep.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, ' Dâu ép ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155833-dau-ep.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, ' Dứa và dâu ép ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018111615597-dua-va-dau-ep.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, ' Dứa ép ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155849-dua-ep.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, ' Cam ép ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155738-cam-ep.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, ' Táo ép ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155938-tao-ep.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, ' Ổi ép ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155923-oi-ep.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, ' Tropical fruit mix ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155553-tropical-fruit-mix.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, ' Happy summer smoothie ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/2018111615539-happy-summer-smoothie.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, ' Love autumn smoothie ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155441-vitamin-c-smoothie.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, ' Vitamin C smoothie ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155537-vitamin-c-smoothie.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, ' Lemon smoothie ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155328-lemon-smoothie.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, ' Everyday healthy smoothie ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155246-everyday-healthy-smoothie.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, ' Red sunset smoothie ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g5/48683/s570x570/20181116155520-happy-summer-smoothie.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, ' Sữa tươi trân châu đường đen ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g77/769777/s570x570/17b8f707-051d-42dc-aadd-959688e54313.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, ' Trà xanh hoa quả Royaltea đặc biệt ', 0, 1, 'NULL', 'NULL', 57, 0, 'https://media.foody.vn/res/g77/769777/s570x570/f12a7599-775f-4ba1-a74c-01af20bd0896.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, ' Trà sữa trân châu oreo kem trứng ', 0, 1, 'NULL', 'NULL', 57, 0, 'https://media.foody.vn/res/g77/769777/s570x570/0436a54c-5007-4b83-927e-54f48887e729.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, ' Cà phê cốt dừa ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/a8d2f53b-1513-4a28-9581-0d83d0bd3779.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, ' Trà xanh dưa mật hoàng kim ', 0, 1, 'NULL', 'NULL', 50, 0, 'https://media.foody.vn/res/g77/769777/s570x570/07365886-416c-4e41-b837-5e04298d9e7f.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, ' Trà đào chanh sả ', 0, 1, 'NULL', 'NULL', 53, 0, 'https://media.foody.vn/res/g77/769777/s570x570/5357d6cb-8345-4150-b664-0a36ab3e85a6.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, ' Trà olong Royal kem cheese ', 0, 1, 'NULL', 'NULL', 53, 0, 'https://media.foody.vn/res/g77/769777/s570x570/d58c91b1-45f2-4fe4-b547-45099e13fe81.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, ' Trà xanh Royal kem cheese ', 0, 1, 'NULL', 'NULL', 47, 0, 'https://media.foody.vn/res/g77/769777/s570x570/79cf28ec-1975-4533-82b4-4e151b35acd4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, ' Hồng trà Royal kem cheese ', 0, 1, 'NULL', 'NULL', 47, 0, 'https://media.foody.vn/res/g77/769777/s570x570/71754493-dc12-4c31-8d39-ca2374192d53.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, ' Trà bá tước Royal kem cheese ', 0, 1, 'NULL', 'NULL', 47, 0, 'https://media.foody.vn/res/g77/769777/s570x570/4871f1de-b657-4e8d-bdce-0ac99780ec9b.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, ' Trà olong bạch đào Royal kem cheese ', 0, 1, 'NULL', 'NULL', 53, 0, 'https://media.foody.vn/res/g77/769777/s570x570/be2200ea-89f7-45a1-8379-c3b9baed2e6f.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, ' Hồng trà vải kem cheese ', 0, 1, 'NULL', 'NULL', 47, 0, 'https://media.foody.vn/res/g77/769777/s570x570/3520944f-9a73-41e3-8014-8c642ce5884f.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, ' Trà olong hoa hồng kem cheese ', 0, 1, 'NULL', 'NULL', 47, 0, 'https://media.foody.vn/res/g77/769777/s570x570/1a2c3a49-6bb1-4e8d-822c-a3238cac0f84.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, ' Trà olong sakura kem cheese ', 0, 1, 'NULL', 'NULL', 47, 0, 'https://media.foody.vn/res/g77/769777/s570x570/74029507-ac42-49cf-ae38-f3ccb14ada5e.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, ' Trà olong Quế Hoa kem cheese ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/8ed2fb96-69f7-4e38-bce2-bc0d891da50d.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, ' Trà Phổ Nhĩ kem cheese ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/a2bb5af1-f42a-4f3c-be5a-896eaa5aadfa.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, ' Trà kim phượng kem cheese ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/3e4b5fb6-d6f1-45e3-945a-1d5af3fc932f.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, ' Trà sữa kem cheese ', 0, 1, 'NULL', 'NULL', 47, 0, 'https://media.foody.vn/res/g77/769777/s570x570/4727857c-21de-43b5-8398-4d5a529b2560.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, ' Trà sữa trân châu ngọc trai ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/6970d3e7-222d-465d-bec3-fcf9f40aebab.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, ' Trà sữa trân châu đường đen ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g77/769777/s570x570/645dacc4-fe60-494d-9a24-d3c720702227.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, ' Trà sữa trân châu hoàng kim ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/faed5b3a-1c4a-4f85-88ee-cf53e3b6df5b.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, ' Trà sữa trân châu đen ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/33a2c82f-8f13-4ee0-beed-4d2b9b9d0f5c.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, ' Trà sữa trân châu kem trứng ', 0, 1, 'NULL', 'NULL', 53, 0, 'https://media.foody.vn/res/g77/769777/s570x570/b4cbb258-ffbf-43d1-b341-d38d1e0f16fb.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, ' Trà sữa đậu đỏ ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/ad07eebb-1586-40ca-9f29-100d44409262.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, ' Trà sữa oreo kem trứng ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g77/769777/s570x570/2cbedd90-052b-4653-9e8c-04f583340ec4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, ' Matcha kem cheese ', 0, 1, 'NULL', 'NULL', 57, 0, 'https://media.foody.vn/res/g77/769777/s570x570/32f2c467-1bc7-43a3-af84-39ad33556635.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, ' Socola kem cheese ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g77/769777/s570x570/b335c4cf-2f54-42ba-ac36-764905a52b93.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, ' Matcha trân châu đường đen ', 0, 1, 'NULL', 'NULL', 49, 0, 'https://media.foody.vn/res/g77/769777/s570x570/b9039921-80c1-467d-97b0-f6f7ebcad646.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, ' Socola ', 0, 1, 'NULL', 'NULL', 39, 0, 'https://media.foody.vn/res/g77/769777/s570x570/5aec0eab-d99b-4edc-a081-5edb47953ad0.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, ' Socola kem trứng ', 0, 1, 'NULL', 'NULL', 47, 0, 'https://media.foody.vn/res/g77/769777/s570x570/6d2dc8bf-4949-412e-9a12-4c2881ee9af1.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, ' Matcha đậu đỏ ', 0, 1, 'NULL', 'NULL', 53, 0, 'https://media.foody.vn/res/g77/769777/s570x570/ee96766e-7472-460c-afab-26756098a346.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, ' Matcha uji ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/80ce6457-5db6-4c64-8f9c-afc69f1e1494.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, ' Trà xanh cam nhài ', 0, 1, 'NULL', 'NULL', 50, 0, 'https://media.foody.vn/res/g77/769777/s570x570/85199e2d-e720-4eb9-88cc-0146d2a61032.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, ' Trà chanh bá tước ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/66441c7a-7671-4704-9317-a199f06ec61e.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, ' Trà chanh quất ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/cce5e2f1-6720-4fa8-90db-79590bcead09.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, ' Trà xanh chanh tuyết ', 0, 1, 'NULL', 'NULL', 50, 0, 'https://media.foody.vn/res/g77/769777/s570x570/d525f2c1-28d4-4626-a156-5412eda7f92a.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, ' Yogurt Dâu Tây Kem Cheese ', 0, 1, 'NULL', 'NULL', 59, 0, 'https://media.foody.vn/res/g77/769777/s570x570/2fb32784-0167-417f-b755-c39009befea4.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, ' Yogurt Việt Quốc Kem Cheese ', 0, 1, 'NULL', 'NULL', 59, 0, 'https://media.foody.vn/res/g77/769777/s570x570/5dd6fa79-9feb-49e4-b81e-b7b7dfc84dd6.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, ' Lục trà xoài kem cheese ', 0, 1, 'NULL', 'NULL', 55, 0, 'https://media.foody.vn/res/g77/769777/s570x570/d3511eed-b8c4-4dbc-99a3-7cc6c1814ae9.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, ' Yogurt Phúc Bồn Tử Kem Cheese ', 0, 1, 'NULL', 'NULL', 59, 0, 'https://media.foody.vn/res/g77/769777/s570x570/cd4c818e-de7c-454a-a6c0-9eb0fe713bfb.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, ' Yogurt Chanh Dây Kem Cheese ', 0, 1, 'NULL', 'NULL', 59, 0, 'https://media.foody.vn/res/g77/769777/s570x570/7ef8cf05-55ed-4ab8-ad8d-eb93f97679f3.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, ' Lục trà dưa hấu kem cheese ', 0, 1, 'NULL', 'NULL', 55, 0, 'https://media.foody.vn/res/g77/769777/s570x570/5749f724-9fba-43ab-b8a0-426972e09fb9.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, ' Trà bá tước sữa nóng ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/dfc69150-b430-4967-b691-c9deed3b665a.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, ' Trà Kim Phượng sữa nóng ', 0, 1, 'NULL', 'NULL', 45, 0, 'https://media.foody.vn/res/g77/769777/s570x570/7a90c449-c4d8-4cbc-bf90-265d138971a2.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, ' Cà phê nâu ', 0, 1, 'NULL', 'NULL', 35, 0, 'https://media.foody.vn/res/g77/769777/s570x570/fb62552c-605b-4ec7-88a7-9948eeb23608.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, ' Cà phê bạc xỉu ', 0, 1, 'NULL', 'NULL', 40, 0, 'https://media.foody.vn/res/g77/769777/s570x570/ed4fd803-60bb-49a0-86d1-f2dec82ae91a.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, ' Cà phê đen ', 0, 1, 'NULL', 'NULL', 30, 0, 'https://media.foody.vn/res/g77/769777/s570x570/34df13f0-a6f3-44db-871a-e2480f6e180c.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `social_provider`
--

CREATE TABLE `social_provider` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `provider_id` int(100) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `address`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Morico - Contemporary Japanese Lifestyle - Lê Lợi ', ' 30 Lê Lợi, P. Bến Nghé, Quận 1 , TP. HCM ', 'https://images.foody.vn/res/g1/595/prof/s640x400/foody-upload-api-foody-mobile-10-jpg-180508140146.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Hệ thống Monkey In Black Cafe ', ' 2 chi nhánh ', 'https://images.foody.vn/res/g9/89822/prof/s640x400/foody-mobile-zas-jpg-258-636086627918162406.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Oromia Coffee - Nam Kỳ Khởi Nghĩa ', ' 193A/D3 Nam Kỳ Khởi Nghĩa, Quận 3 , TP. HCM ', 'https://images.foody.vn/res/g12/112158/prof/s640x400/foody-mobile-1-jpg-194-636289977329979410.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Hệ thống Starbucks Coffee - HCM ', ' 25 chi nhánh ', 'https://images.foody.vn/res/g2/15031/prof/s640x400/foody-mobile-mobile-jpg-409-635744522405981690.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Hệ thống Morico - Modern Japanese - Food, Sushi & Dessert ', ' 3 chi nhánh ', 'https://images.foody.vn/res/g1/742/prof/s640x400/foody-upload-api-foody-mobile-9-jpg-180508140028.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Hệ thống Partea ', ' 2 chi nhánh ', 'https://images.foody.vn/res/g8/77729/prof/s640x400/foody-mobile-12-jpg-868-636171531644694064.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Hệ thống Đen Đá Cafe ', ' 7 chi nhánh ', 'https://images.foody.vn/res/g12/110335/prof/s640x400/foody-mobile-mhfo7qz6-jpg-187-636130047827225698.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Hệ thống Morico - Contemporary Japanese Lifestyle ', ' 2 chi nhánh ', 'https://images.foody.vn/res/g1/900/prof/s640x400/foody-upload-api-foody-mobile-7-jpg-180508135106.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Paris Baguette - Cao Thắng ', ' 1 Cao Thắng, P. 2, Quận 3 , TP. HCM ', 'https://images.foody.vn/res/g1/4336/prof/s640x400/foody-upload-api-foody-mobile--b5e49debee037df4559-180704101653.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Hệ thống Phúc Long Coffee & Tea Express ', ' 30 chi nhánh ', 'https://images.foody.vn/res/g9/87015/prof/s640x400/foody-mobile-phuc-long-ly-tu-tron-343-635791628128985595.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Trà Sữa Gong Cha - 貢茶 - Hồ Tùng Mậu ', ' 83 Hồ Tùng Mậu, Quận 1 , TP. HCM ', 'https://images.foody.vn/res/g10/96530/prof/s640x400/foody-mobile-gong-cha2-jpg-305-636173909122516269.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Moon Fast Food - Món Hàn - Xuân Hồng ', ' 53 Xuân Hồng, P. 12, Quận Tân Bình , TP. HCM ', 'https://images.foody.vn/res/g8/71782/prof/s640x400/foody-mobile-mon-fastfood-mb-jpg-441-635895077676626146.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Morico - Contemporary Japanese Lifestyle - Vincom Center ', ' Tầng B3 Vincom Center, 70 - 72 Lê Thánh Tôn, P. Bến Nghé, Quận 1 , TP. HCM ', 'https://images.foody.vn/res/g1/742/prof/s640x400/foody-upload-api-foody-mobile-9-jpg-180508140028.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Hệ thống Paris Baguette ', ' 4 chi nhánh ', 'https://images.foody.vn/res/g1/4336/prof/s640x400/foody-upload-api-foody-mobile--b5e49debee037df4559-180704101653.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Moon Fast Food - Món Hàn - Xuân Hồng ', ' 53 Xuân Hồng, P. 12, Quận Tân Bình , TP. HCM ', 'https://images.foody.vn/res/g8/71782/prof/s640x400/foody-mobile-mon-fastfood-mb-jpg-441-635895077676626146.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Hệ thống Fly Cupcake ', ' 2 chi nhánh ', 'https://images.foody.vn/res/g1/6676/prof/s640x400/foody-mobile-flycupcake-jpg-612-635657179559706401.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Hệ thống Star Kitchen ', ' 3 chi nhánh ', 'https://images.foody.vn/res/g10/90625/prof/s640x400/foody-upload-api-foody-mobile-21-jpg-181114113351.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Hệ thống Dallas Cakes & Coffee ', ' 5 chi nhánh ', 'https://images.foody.vn/res/g1/9138/prof/s640x400/foody-upload-api-foody-mobile-3-jpg-180409101750.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Buffet Windsor - Cafe Central An Dong - Windsor Plaza ', ' Windsor Plaza, 18 An Dương Vương, Quận 5 , TP. HCM ', 'https://images.foody.vn/res/g1/8/prof/s640x400/foody-mobile-dpxxrdae-jpg-176-635851879399811855.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Hệ thống TOUS les JOURS SG ', ' 6 chi nhánh ', 'https://images.foody.vn/res/g1/520/prof/s640x400/foody-upload-api-foody-mobile-tlj-jpg-180521103523.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Chewy Chewy - Cafe & Bánh - Trần Hưng Đạo ', ' 34 Trần Hưng Đạo, P. Phạm Ngũ Lão, Quận 1 , TP. HCM ', 'https://images.foody.vn/res/g1/4139/prof/s640x400/foody-upload-api-foody-mobile-18-jpg-181023082644.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Bánh Bao Thọ Phát - Nguyễn Tri Phương ', ' 78 Nguyễn Tri Phương, P. 7, Quận 5 , TP. HCM ', 'https://images.foody.vn/res/g1/3100/prof/s640x400/foody-mobile-tho-phat-jpg-980-636044605184486406.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Hệ thống Cheesecake Ngon ', ' 2 chi nhánh ', 'https://images.foody.vn/res/g5/44454/prof/s640x400/foody-mobile-cheese-cake-jpg-576-636119657716824761.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'TacoLeo - Ẩm Thực Mexico - Cao Bá Nhạ ', ' 20 Cao Bá Nhạ, P. Nguyễn Cư Trinh, Quận 1 , TP. HCM ', 'https://images.foody.vn/res/g5/49674/prof/s640x400/foody-mobile-cao-ba-nha-jpg.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Hệ thống Sumo BBQ - Buffet Lẩu & Nướng ', ' 11 chi nhánh ', 'https://images.foody.vn/res/g1/4074/prof/s640x400/foody-mobile-12-jpg-340-636169623888144042.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Red Chilli Seafood Buffet - CHLOE Gallery ', ' 2 - 6 Phan Văn Chương, Phú Mỹ Hưng, Quận 7 , TP. HCM ', 'https://images.foody.vn/res/g1/562/prof/s640x400/foody-mobile-109-jpg-361-635858632711885387.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Sushi Dining AOI - Món Nhật ', ' 53 - 55 Bà Huyện Thanh Quan, P. 6, Quận 3 , TP. HCM ', 'https://images.foody.vn/res/g1/726/prof/s640x400/foody-mobile-sushi-set-aoi-jpg-270-636317608417017315.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Hệ thống Hana Buffet ', ' 6 chi nhánh ', 'https://images.foody.vn/res/g2/13986/prof/s640x400/foody-mobile-hana-buffet-pvc-mb-j-201-635924466203859693.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Buffet Windsor - Cafe Central An Dong - Windsor Plaza ', ' Windsor Plaza, 18 An Dương Vương, Quận 5 , TP. HCM ', 'https://images.foody.vn/res/g1/8/prof/s640x400/foody-mobile-dpxxrdae-jpg-176-635851879399811855.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Langfarm Buffet - Trần Hưng Đạo ', ' 771 - 773 - 775 Trần Hưng Đạo, P. 1, Quận 5 , TP. HCM ', 'https://images.foody.vn/res/g22/215893/prof/s640x400/2018123152530-langfarm-buffet-tran-hung-dao-copy.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'La Brasserie Restaurant - Hotel Nikko Saigon ', ' Hotel Nikko Saigon, 235 Nguyễn Văn Cừ, Quận 1, Quận 1 , TP. HCM ', 'https://images.foody.vn/res/g4/33141/prof/s640x400/2017619161034-img_2388.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Hệ thống Hoàng Yến Buffet ', ' 5 chi nhánh ', 'https://images.foody.vn/res/g1/305/prof/s640x400/foody-mobile-dsc_0886-jpg-219-636118800111396860.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Cheap Eats - Seafood BBQ Buffet ', ' Tầng 5, 9 Nguyễn Trãi, P. Bến Thành, Quận 1 , TP. HCM ', 'https://images.foody.vn/res/g26/255427/prof/s640x400/foody-mobile-1-jpg-112-636258618783661123.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Hệ thống King BBQ ', ' 24 chi nhánh ', 'https://images.foody.vn/res/g5/46902/prof/s640x400/foody-mobile-gff-jpg-282-635768935243754658.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Parkview Buffet - New World Saigon Hotel ', ' New World Saigon Hotel, 76 Lê Lai, P. Bến Nghé, Quận 1 , TP. HCM ', 'https://images.foody.vn/res/g2/15012/prof/s640x400/2017539570-_parkview-2-.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Fujiya Restaurant - Yakiniku Nabe Buffet ', ' B3-01 Vincom Center, 72 Lê Thánh Tôn, Quận 1 , TP. HCM ', 'https://images.foody.vn/res/g10/94289/prof/s640x400/foody-upload-api-foody-mobile-2-jpg-180602081629.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Phúc Long Coffee & Tea - Crescent Mall', 'GF-21B Tầng Trệt Khu crescent mall 101, Nguyễn Văn Linh, Tân Phú, Quận 7, Hồ Chí Minh', 'https://images.foody.vn/res/g1/6644/prof/s576x330/foody-mobile-4-jpg-963-635695344335948074.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Totoco - Trà Sữa & Coffee', '254 Lê Văn Sỹ, P. 1,  Quận Tân Bình, TP. HCM', 'https://images.foody.vn/res/g76/758995/prof/s576x330/foody-upload-api-foody-mobile-32-jpg-180907165445.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Royaltea Center Hills - Gò Vấp', 'Số 71 Đường số 7 KDC, Dự án Center Hills Gò Vấp, Gò Vấp', 'https://images.foody.vn/res/g77/769777/prof/s576x330/foody-upload-api-foody-mobile-17a-jpg-180820103147.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nước uống', NULL, NULL),
(2, 'Đồ ăn', NULL, NULL),
(3, 'Tất Cả Sản Phẩm', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `active`, `remember_token`, `name`, `gender`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'a@gm', '$2y$10$Ma/lISyNPPWvNq0Hw7wL9O6ysUA3Q63NltEAn4tkuh6j9cnSS4rou', 0, NULL, NULL, NULL, NULL, NULL, '2018-01-13 21:39:06', '2018-01-13 21:39:06'),
(3, 'fasdf@gmail.com', '$2y$10$sOKVcwmzqFk5p5V4bj4etOARE/DYPpxQUUfjUSVlB64Fh11NgnT6y', 0, 'ewZgToxRkWxrGF4gV5SERdZnBHcQEBH69OfDUY2K', '121', NULL, NULL, NULL, '2018-01-13 21:46:58', '2018-01-13 21:46:58'),
(4, 'g@gmail.com', '$2y$10$O3kgWTRBQmu9XVtNaLktnulPspG87hoYNXDCqloLkmeModiWeBQLG', 0, 'ewZgToxRkWxrGF4gV5SERdZnBHcQEBH69OfDUY2K', 'cXC', NULL, NULL, NULL, '2018-01-13 21:48:32', '2018-01-13 21:48:32'),
(5, 'fs@gmail.com', '$2y$10$/cWHraRI3A.9T3Ifpxcp/.hPfeb55f.6GmBIPNUDTAUTANjl3lrli', 0, 'ewZgToxRkWxrGF4gV5SERdZnBHcQEBH69OfDUY2K', 'fadf', NULL, NULL, NULL, '2018-01-13 21:50:23', '2018-01-13 21:50:23'),
(6, 'tri@gmail.com', '$2y$10$57R7BjEMbJ5tPOpTrPNy2O1A.gAeburOczjrCo1wqLjPGsbM/f4tK', 0, 'v2mcVhqrOGFr6XgsyAJHMn6vrMB9L6RA6YgZ53Ws', 'tri', NULL, NULL, NULL, '2018-01-14 22:05:52', '2018-01-14 22:05:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_store` (`id_store`);

--
-- Indexes for table `social_provider`
--
ALTER TABLE `social_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `social_provider`
--
ALTER TABLE `social_provider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
