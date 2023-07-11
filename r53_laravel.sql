-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 07:01 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r53_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Automobiles', '2023-07-09 04:16:46', '2023-07-09 04:17:28'),
(2, 'Books', '2023-07-09 04:16:53', '2023-07-09 04:17:42'),
(3, 'Clothes', '2023-07-09 04:16:57', '2023-07-09 04:17:15'),
(5, 'Electronics', NULL, NULL),
(6, 'Home and Living', '2023-07-10 09:32:59', NULL),
(7, 'Shoe', '2023-07-10 03:54:18', '2023-07-10 03:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://picsum.photos/id/915/640/480', NULL, NULL),
(2, 1, 'https://picsum.photos/id/565/640/480', NULL, NULL),
(3, 1, 'https://picsum.photos/id/125/640/480', NULL, NULL),
(4, 1, 'https://picsum.photos/id/969/640/480', NULL, NULL),
(5, 1, 'https://picsum.photos/id/503/640/480', NULL, NULL),
(6, 2, 'https://picsum.photos/id/414/640/480', NULL, NULL),
(7, 2, 'https://picsum.photos/id/918/640/480', NULL, NULL),
(8, 2, 'https://picsum.photos/id/541/640/480', NULL, NULL),
(9, 2, 'https://picsum.photos/id/242/640/480', NULL, NULL),
(10, 2, 'https://picsum.photos/id/463/640/480', NULL, NULL),
(11, 3, 'https://picsum.photos/id/135/640/480', NULL, NULL),
(12, 3, 'https://picsum.photos/id/797/640/480', NULL, NULL),
(13, 3, 'https://picsum.photos/id/871/640/480', NULL, NULL),
(14, 3, 'https://picsum.photos/id/3/640/480', NULL, NULL),
(15, 3, 'https://picsum.photos/id/453/640/480', NULL, NULL),
(16, 4, 'https://picsum.photos/id/113/640/480', NULL, NULL),
(17, 4, 'https://picsum.photos/id/698/640/480', NULL, NULL),
(18, 4, 'https://picsum.photos/id/399/640/480', NULL, NULL),
(19, 4, 'https://picsum.photos/id/791/640/480', NULL, NULL),
(20, 4, 'https://picsum.photos/id/334/640/480', NULL, NULL),
(21, 5, 'https://picsum.photos/id/276/640/480', NULL, NULL),
(22, 5, 'https://picsum.photos/id/361/640/480', NULL, NULL),
(23, 5, 'https://picsum.photos/id/186/640/480', NULL, NULL),
(24, 5, 'https://picsum.photos/id/583/640/480', NULL, NULL),
(25, 5, 'https://picsum.photos/id/516/640/480', NULL, NULL),
(26, 6, 'https://picsum.photos/id/153/640/480', NULL, NULL),
(27, 6, 'https://picsum.photos/id/32/640/480', NULL, NULL),
(28, 6, 'https://picsum.photos/id/27/640/480', NULL, NULL),
(29, 6, 'https://picsum.photos/id/99/640/480', NULL, NULL),
(30, 6, 'https://picsum.photos/id/340/640/480', NULL, NULL),
(31, 7, 'https://picsum.photos/id/813/640/480', NULL, NULL),
(32, 7, 'https://picsum.photos/id/107/640/480', NULL, NULL),
(33, 7, 'https://picsum.photos/id/565/640/480', NULL, NULL),
(34, 7, 'https://picsum.photos/id/4/640/480', NULL, NULL),
(35, 7, 'https://picsum.photos/id/607/640/480', NULL, NULL),
(36, 8, 'https://picsum.photos/id/623/640/480', NULL, NULL),
(37, 8, 'https://picsum.photos/id/474/640/480', NULL, NULL),
(38, 8, 'https://picsum.photos/id/547/640/480', NULL, NULL),
(39, 8, 'https://picsum.photos/id/751/640/480', NULL, NULL),
(40, 8, 'https://picsum.photos/id/393/640/480', NULL, NULL),
(41, 9, 'https://picsum.photos/id/837/640/480', NULL, NULL),
(42, 9, 'https://picsum.photos/id/21/640/480', NULL, NULL),
(43, 9, 'https://picsum.photos/id/362/640/480', NULL, NULL),
(44, 9, 'https://picsum.photos/id/386/640/480', NULL, NULL),
(45, 9, 'https://picsum.photos/id/978/640/480', NULL, NULL),
(46, 10, 'https://picsum.photos/id/499/640/480', NULL, NULL),
(47, 10, 'https://picsum.photos/id/317/640/480', NULL, NULL),
(48, 10, 'https://picsum.photos/id/900/640/480', NULL, NULL),
(49, 10, 'https://picsum.photos/id/346/640/480', NULL, NULL),
(50, 10, 'https://picsum.photos/id/631/640/480', NULL, NULL),
(51, 11, 'https://picsum.photos/id/315/640/480', NULL, NULL),
(52, 11, 'https://picsum.photos/id/612/640/480', NULL, NULL),
(53, 11, 'https://picsum.photos/id/424/640/480', NULL, NULL),
(54, 11, 'https://picsum.photos/id/69/640/480', NULL, NULL),
(55, 11, 'https://picsum.photos/id/160/640/480', NULL, NULL),
(56, 12, 'https://picsum.photos/id/117/640/480', NULL, NULL),
(57, 12, 'https://picsum.photos/id/439/640/480', NULL, NULL),
(58, 12, 'https://picsum.photos/id/712/640/480', NULL, NULL),
(59, 12, 'https://picsum.photos/id/975/640/480', NULL, NULL),
(60, 12, 'https://picsum.photos/id/974/640/480', NULL, NULL),
(61, 13, 'https://picsum.photos/id/683/640/480', NULL, NULL),
(62, 13, 'https://picsum.photos/id/353/640/480', NULL, NULL),
(63, 13, 'https://picsum.photos/id/423/640/480', NULL, NULL),
(64, 13, 'https://picsum.photos/id/959/640/480', NULL, NULL),
(65, 13, 'https://picsum.photos/id/916/640/480', NULL, NULL),
(66, 14, 'https://picsum.photos/id/370/640/480', NULL, NULL),
(67, 14, 'https://picsum.photos/id/985/640/480', NULL, NULL),
(68, 14, 'https://picsum.photos/id/91/640/480', NULL, NULL),
(69, 14, 'https://picsum.photos/id/45/640/480', NULL, NULL),
(70, 14, 'https://picsum.photos/id/391/640/480', NULL, NULL),
(71, 15, 'https://picsum.photos/id/353/640/480', NULL, NULL),
(72, 15, 'https://picsum.photos/id/349/640/480', NULL, NULL),
(73, 15, 'https://picsum.photos/id/439/640/480', NULL, NULL),
(74, 15, 'https://picsum.photos/id/890/640/480', NULL, NULL),
(75, 15, 'https://picsum.photos/id/875/640/480', NULL, NULL),
(76, 16, 'https://picsum.photos/id/298/640/480', NULL, NULL),
(77, 16, 'https://picsum.photos/id/898/640/480', NULL, NULL),
(78, 16, 'https://picsum.photos/id/698/640/480', NULL, NULL),
(79, 16, 'https://picsum.photos/id/584/640/480', NULL, NULL),
(80, 16, 'https://picsum.photos/id/668/640/480', NULL, NULL),
(81, 17, 'https://picsum.photos/id/859/640/480', NULL, NULL),
(82, 17, 'https://picsum.photos/id/408/640/480', NULL, NULL),
(83, 17, 'https://picsum.photos/id/155/640/480', NULL, NULL),
(84, 17, 'https://picsum.photos/id/773/640/480', NULL, NULL),
(85, 17, 'https://picsum.photos/id/65/640/480', NULL, NULL),
(86, 18, 'https://picsum.photos/id/126/640/480', NULL, NULL),
(87, 18, 'https://picsum.photos/id/764/640/480', NULL, NULL),
(88, 18, 'https://picsum.photos/id/858/640/480', NULL, NULL),
(89, 18, 'https://picsum.photos/id/782/640/480', NULL, NULL),
(90, 18, 'https://picsum.photos/id/72/640/480', NULL, NULL),
(91, 19, 'https://picsum.photos/id/629/640/480', NULL, NULL),
(92, 19, 'https://picsum.photos/id/259/640/480', NULL, NULL),
(93, 19, 'https://picsum.photos/id/855/640/480', NULL, NULL),
(94, 19, 'https://picsum.photos/id/228/640/480', NULL, NULL),
(95, 19, 'https://picsum.photos/id/26/640/480', NULL, NULL),
(96, 20, 'https://picsum.photos/id/552/640/480', NULL, NULL),
(97, 20, 'https://picsum.photos/id/668/640/480', NULL, NULL),
(98, 20, 'https://picsum.photos/id/755/640/480', NULL, NULL),
(99, 20, 'https://picsum.photos/id/92/640/480', NULL, NULL),
(100, 20, 'https://picsum.photos/id/759/640/480', NULL, NULL),
(101, 21, 'https://picsum.photos/id/362/640/480', NULL, NULL),
(102, 21, 'https://picsum.photos/id/241/640/480', NULL, NULL),
(103, 21, 'https://picsum.photos/id/203/640/480', NULL, NULL),
(104, 21, 'https://picsum.photos/id/614/640/480', NULL, NULL),
(105, 21, 'https://picsum.photos/id/210/640/480', NULL, NULL),
(106, 22, 'https://picsum.photos/id/315/640/480', NULL, NULL),
(107, 22, 'https://picsum.photos/id/859/640/480', NULL, NULL),
(108, 22, 'https://picsum.photos/id/722/640/480', NULL, NULL),
(109, 22, 'https://picsum.photos/id/96/640/480', NULL, NULL),
(110, 22, 'https://picsum.photos/id/507/640/480', NULL, NULL),
(111, 23, 'https://picsum.photos/id/506/640/480', NULL, NULL),
(112, 23, 'https://picsum.photos/id/251/640/480', NULL, NULL),
(113, 23, 'https://picsum.photos/id/372/640/480', NULL, NULL),
(114, 23, 'https://picsum.photos/id/789/640/480', NULL, NULL),
(115, 23, 'https://picsum.photos/id/982/640/480', NULL, NULL),
(116, 24, 'https://picsum.photos/id/393/640/480', NULL, NULL),
(117, 24, 'https://picsum.photos/id/931/640/480', NULL, NULL),
(118, 24, 'https://picsum.photos/id/751/640/480', NULL, NULL),
(119, 24, 'https://picsum.photos/id/33/640/480', NULL, NULL),
(120, 24, 'https://picsum.photos/id/222/640/480', NULL, NULL),
(121, 25, 'https://picsum.photos/id/889/640/480', NULL, NULL),
(122, 25, 'https://picsum.photos/id/421/640/480', NULL, NULL),
(123, 25, 'https://picsum.photos/id/179/640/480', NULL, NULL),
(124, 25, 'https://picsum.photos/id/253/640/480', NULL, NULL),
(125, 25, 'https://picsum.photos/id/480/640/480', NULL, NULL),
(126, 26, 'https://picsum.photos/id/403/640/480', NULL, NULL),
(127, 26, 'https://picsum.photos/id/512/640/480', NULL, NULL),
(128, 26, 'https://picsum.photos/id/654/640/480', NULL, NULL),
(129, 26, 'https://picsum.photos/id/902/640/480', NULL, NULL),
(130, 26, 'https://picsum.photos/id/878/640/480', NULL, NULL),
(131, 27, 'https://picsum.photos/id/409/640/480', NULL, NULL),
(132, 27, 'https://picsum.photos/id/583/640/480', NULL, NULL),
(133, 27, 'https://picsum.photos/id/689/640/480', NULL, NULL),
(134, 27, 'https://picsum.photos/id/412/640/480', NULL, NULL),
(135, 27, 'https://picsum.photos/id/468/640/480', NULL, NULL),
(136, 28, 'https://picsum.photos/id/882/640/480', NULL, NULL),
(137, 28, 'https://picsum.photos/id/381/640/480', NULL, NULL),
(138, 28, 'https://picsum.photos/id/763/640/480', NULL, NULL),
(139, 28, 'https://picsum.photos/id/140/640/480', NULL, NULL),
(140, 28, 'https://picsum.photos/id/634/640/480', NULL, NULL),
(141, 29, 'https://picsum.photos/id/449/640/480', NULL, NULL),
(142, 29, 'https://picsum.photos/id/799/640/480', NULL, NULL),
(143, 29, 'https://picsum.photos/id/774/640/480', NULL, NULL),
(144, 29, 'https://picsum.photos/id/275/640/480', NULL, NULL),
(145, 29, 'https://picsum.photos/id/445/640/480', NULL, NULL),
(146, 30, 'https://picsum.photos/id/48/640/480', NULL, NULL),
(147, 30, 'https://picsum.photos/id/199/640/480', NULL, NULL),
(148, 30, 'https://picsum.photos/id/621/640/480', NULL, NULL),
(149, 30, 'https://picsum.photos/id/343/640/480', NULL, NULL),
(150, 30, 'https://picsum.photos/id/783/640/480', NULL, NULL),
(151, 31, 'https://picsum.photos/id/59/640/480', NULL, NULL),
(152, 31, 'https://picsum.photos/id/420/640/480', NULL, NULL),
(153, 31, 'https://picsum.photos/id/271/640/480', NULL, NULL),
(154, 31, 'https://picsum.photos/id/333/640/480', NULL, NULL),
(155, 31, 'https://picsum.photos/id/737/640/480', NULL, NULL),
(156, 32, 'https://picsum.photos/id/851/640/480', NULL, NULL),
(157, 32, 'https://picsum.photos/id/66/640/480', NULL, NULL),
(158, 32, 'https://picsum.photos/id/456/640/480', NULL, NULL),
(159, 32, 'https://picsum.photos/id/373/640/480', NULL, NULL),
(160, 32, 'https://picsum.photos/id/731/640/480', NULL, NULL),
(161, 33, 'https://picsum.photos/id/312/640/480', NULL, NULL),
(162, 33, 'https://picsum.photos/id/373/640/480', NULL, NULL),
(163, 33, 'https://picsum.photos/id/290/640/480', NULL, NULL),
(164, 33, 'https://picsum.photos/id/335/640/480', NULL, NULL),
(165, 33, 'https://picsum.photos/id/230/640/480', NULL, NULL),
(166, 34, 'https://picsum.photos/id/586/640/480', NULL, NULL),
(167, 34, 'https://picsum.photos/id/570/640/480', NULL, NULL),
(168, 34, 'https://picsum.photos/id/106/640/480', NULL, NULL),
(169, 34, 'https://picsum.photos/id/624/640/480', NULL, NULL),
(170, 34, 'https://picsum.photos/id/356/640/480', NULL, NULL),
(171, 35, 'https://picsum.photos/id/947/640/480', NULL, NULL),
(172, 35, 'https://picsum.photos/id/557/640/480', NULL, NULL),
(173, 35, 'https://picsum.photos/id/35/640/480', NULL, NULL),
(174, 35, 'https://picsum.photos/id/574/640/480', NULL, NULL),
(175, 35, 'https://picsum.photos/id/148/640/480', NULL, NULL),
(176, 36, 'https://picsum.photos/id/697/640/480', NULL, NULL),
(177, 36, 'https://picsum.photos/id/270/640/480', NULL, NULL),
(178, 36, 'https://picsum.photos/id/47/640/480', NULL, NULL),
(179, 36, 'https://picsum.photos/id/70/640/480', NULL, NULL),
(180, 36, 'https://picsum.photos/id/856/640/480', NULL, NULL),
(181, 37, 'https://picsum.photos/id/790/640/480', NULL, NULL),
(182, 37, 'https://picsum.photos/id/946/640/480', NULL, NULL),
(183, 37, 'https://picsum.photos/id/679/640/480', NULL, NULL),
(184, 37, 'https://picsum.photos/id/134/640/480', NULL, NULL),
(185, 37, 'https://picsum.photos/id/111/640/480', NULL, NULL),
(186, 38, 'https://picsum.photos/id/536/640/480', NULL, NULL),
(187, 38, 'https://picsum.photos/id/261/640/480', NULL, NULL),
(188, 38, 'https://picsum.photos/id/617/640/480', NULL, NULL),
(189, 38, 'https://picsum.photos/id/870/640/480', NULL, NULL),
(190, 38, 'https://picsum.photos/id/278/640/480', NULL, NULL),
(191, 39, 'https://picsum.photos/id/3/640/480', NULL, NULL),
(192, 39, 'https://picsum.photos/id/955/640/480', NULL, NULL),
(193, 39, 'https://picsum.photos/id/713/640/480', NULL, NULL),
(194, 39, 'https://picsum.photos/id/186/640/480', NULL, NULL),
(195, 39, 'https://picsum.photos/id/909/640/480', NULL, NULL),
(196, 40, 'https://picsum.photos/id/564/640/480', NULL, NULL),
(197, 40, 'https://picsum.photos/id/351/640/480', NULL, NULL),
(198, 40, 'https://picsum.photos/id/38/640/480', NULL, NULL),
(199, 40, 'https://picsum.photos/id/676/640/480', NULL, NULL),
(200, 40, 'https://picsum.photos/id/938/640/480', NULL, NULL),
(201, 41, 'https://picsum.photos/id/820/640/480', NULL, NULL),
(202, 41, 'https://picsum.photos/id/247/640/480', NULL, NULL),
(203, 41, 'https://picsum.photos/id/6/640/480', NULL, NULL),
(204, 41, 'https://picsum.photos/id/887/640/480', NULL, NULL),
(205, 41, 'https://picsum.photos/id/813/640/480', NULL, NULL),
(206, 42, 'https://picsum.photos/id/905/640/480', NULL, NULL),
(207, 42, 'https://picsum.photos/id/934/640/480', NULL, NULL),
(208, 42, 'https://picsum.photos/id/503/640/480', NULL, NULL),
(209, 42, 'https://picsum.photos/id/410/640/480', NULL, NULL),
(210, 42, 'https://picsum.photos/id/201/640/480', NULL, NULL),
(211, 43, 'https://picsum.photos/id/332/640/480', NULL, NULL),
(212, 43, 'https://picsum.photos/id/372/640/480', NULL, NULL),
(213, 43, 'https://picsum.photos/id/707/640/480', NULL, NULL),
(214, 43, 'https://picsum.photos/id/344/640/480', NULL, NULL),
(215, 43, 'https://picsum.photos/id/46/640/480', NULL, NULL),
(216, 44, 'https://picsum.photos/id/858/640/480', NULL, NULL),
(217, 44, 'https://picsum.photos/id/804/640/480', NULL, NULL),
(218, 44, 'https://picsum.photos/id/233/640/480', NULL, NULL),
(219, 44, 'https://picsum.photos/id/347/640/480', NULL, NULL),
(220, 44, 'https://picsum.photos/id/995/640/480', NULL, NULL),
(221, 45, 'https://picsum.photos/id/21/640/480', NULL, NULL),
(222, 45, 'https://picsum.photos/id/994/640/480', NULL, NULL),
(223, 45, 'https://picsum.photos/id/303/640/480', NULL, NULL),
(224, 45, 'https://picsum.photos/id/165/640/480', NULL, NULL),
(225, 45, 'https://picsum.photos/id/845/640/480', NULL, NULL),
(226, 46, 'https://picsum.photos/id/106/640/480', NULL, NULL),
(227, 46, 'https://picsum.photos/id/640/640/480', NULL, NULL),
(228, 46, 'https://picsum.photos/id/56/640/480', NULL, NULL),
(229, 46, 'https://picsum.photos/id/899/640/480', NULL, NULL),
(230, 46, 'https://picsum.photos/id/391/640/480', NULL, NULL),
(231, 47, 'https://picsum.photos/id/247/640/480', NULL, NULL),
(232, 47, 'https://picsum.photos/id/372/640/480', NULL, NULL),
(233, 47, 'https://picsum.photos/id/730/640/480', NULL, NULL),
(234, 47, 'https://picsum.photos/id/193/640/480', NULL, NULL),
(235, 47, 'https://picsum.photos/id/294/640/480', NULL, NULL),
(236, 48, 'https://picsum.photos/id/709/640/480', NULL, NULL),
(237, 48, 'https://picsum.photos/id/510/640/480', NULL, NULL),
(238, 48, 'https://picsum.photos/id/576/640/480', NULL, NULL),
(239, 48, 'https://picsum.photos/id/84/640/480', NULL, NULL),
(240, 48, 'https://picsum.photos/id/456/640/480', NULL, NULL),
(241, 49, 'https://picsum.photos/id/309/640/480', NULL, NULL),
(242, 49, 'https://picsum.photos/id/783/640/480', NULL, NULL),
(243, 49, 'https://picsum.photos/id/955/640/480', NULL, NULL),
(244, 49, 'https://picsum.photos/id/146/640/480', NULL, NULL),
(245, 49, 'https://picsum.photos/id/30/640/480', NULL, NULL),
(246, 50, 'https://picsum.photos/id/665/640/480', NULL, NULL),
(247, 50, 'https://picsum.photos/id/787/640/480', NULL, NULL),
(248, 50, 'https://picsum.photos/id/312/640/480', NULL, NULL),
(249, 50, 'https://picsum.photos/id/736/640/480', NULL, NULL),
(250, 50, 'https://picsum.photos/id/784/640/480', NULL, NULL),
(251, 51, 'https://picsum.photos/id/676/640/480', NULL, NULL),
(252, 51, 'https://picsum.photos/id/5/640/480', NULL, NULL),
(253, 51, 'https://picsum.photos/id/914/640/480', NULL, NULL),
(254, 51, 'https://picsum.photos/id/610/640/480', NULL, NULL),
(255, 51, 'https://picsum.photos/id/428/640/480', NULL, NULL),
(256, 52, 'https://picsum.photos/id/311/640/480', NULL, NULL),
(257, 52, 'https://picsum.photos/id/793/640/480', NULL, NULL),
(258, 52, 'https://picsum.photos/id/235/640/480', NULL, NULL),
(259, 52, 'https://picsum.photos/id/866/640/480', NULL, NULL),
(260, 52, 'https://picsum.photos/id/857/640/480', NULL, NULL),
(261, 53, 'https://picsum.photos/id/924/640/480', NULL, NULL),
(262, 53, 'https://picsum.photos/id/216/640/480', NULL, NULL),
(263, 53, 'https://picsum.photos/id/155/640/480', NULL, NULL),
(264, 53, 'https://picsum.photos/id/102/640/480', NULL, NULL),
(265, 53, 'https://picsum.photos/id/552/640/480', NULL, NULL),
(266, 54, 'https://picsum.photos/id/100/640/480', NULL, NULL),
(267, 54, 'https://picsum.photos/id/516/640/480', NULL, NULL),
(268, 54, 'https://picsum.photos/id/969/640/480', NULL, NULL),
(269, 54, 'https://picsum.photos/id/678/640/480', NULL, NULL),
(270, 54, 'https://picsum.photos/id/359/640/480', NULL, NULL),
(271, 55, 'https://picsum.photos/id/187/640/480', NULL, NULL),
(272, 55, 'https://picsum.photos/id/837/640/480', NULL, NULL),
(273, 55, 'https://picsum.photos/id/376/640/480', NULL, NULL),
(274, 55, 'https://picsum.photos/id/61/640/480', NULL, NULL),
(275, 55, 'https://picsum.photos/id/252/640/480', NULL, NULL),
(276, 56, 'https://picsum.photos/id/156/640/480', NULL, NULL),
(277, 56, 'https://picsum.photos/id/893/640/480', NULL, NULL),
(278, 56, 'https://picsum.photos/id/434/640/480', NULL, NULL),
(279, 56, 'https://picsum.photos/id/88/640/480', NULL, NULL),
(280, 56, 'https://picsum.photos/id/955/640/480', NULL, NULL),
(281, 57, 'https://picsum.photos/id/641/640/480', NULL, NULL),
(282, 57, 'https://picsum.photos/id/145/640/480', NULL, NULL),
(283, 57, 'https://picsum.photos/id/312/640/480', NULL, NULL),
(284, 57, 'https://picsum.photos/id/999/640/480', NULL, NULL),
(285, 57, 'https://picsum.photos/id/703/640/480', NULL, NULL),
(286, 58, 'https://picsum.photos/id/9/640/480', NULL, NULL),
(287, 58, 'https://picsum.photos/id/79/640/480', NULL, NULL),
(288, 58, 'https://picsum.photos/id/674/640/480', NULL, NULL),
(289, 58, 'https://picsum.photos/id/520/640/480', NULL, NULL),
(290, 58, 'https://picsum.photos/id/955/640/480', NULL, NULL),
(291, 59, 'https://picsum.photos/id/268/640/480', NULL, NULL),
(292, 59, 'https://picsum.photos/id/428/640/480', NULL, NULL),
(293, 59, 'https://picsum.photos/id/588/640/480', NULL, NULL),
(294, 59, 'https://picsum.photos/id/548/640/480', NULL, NULL),
(295, 59, 'https://picsum.photos/id/687/640/480', NULL, NULL),
(296, 60, 'https://picsum.photos/id/133/640/480', NULL, NULL),
(297, 60, 'https://picsum.photos/id/11/640/480', NULL, NULL),
(298, 60, 'https://picsum.photos/id/647/640/480', NULL, NULL),
(299, 60, 'https://picsum.photos/id/248/640/480', NULL, NULL),
(300, 60, 'https://picsum.photos/id/731/640/480', NULL, NULL),
(301, 61, 'https://picsum.photos/id/633/640/480', NULL, NULL),
(302, 61, 'https://picsum.photos/id/914/640/480', NULL, NULL),
(303, 61, 'https://picsum.photos/id/949/640/480', NULL, NULL),
(304, 61, 'https://picsum.photos/id/833/640/480', NULL, NULL),
(305, 61, 'https://picsum.photos/id/210/640/480', NULL, NULL),
(306, 62, 'https://picsum.photos/id/670/640/480', NULL, NULL),
(307, 62, 'https://picsum.photos/id/858/640/480', NULL, NULL),
(308, 62, 'https://picsum.photos/id/266/640/480', NULL, NULL),
(309, 62, 'https://picsum.photos/id/473/640/480', NULL, NULL),
(310, 62, 'https://picsum.photos/id/72/640/480', NULL, NULL),
(311, 63, 'https://picsum.photos/id/433/640/480', NULL, NULL),
(312, 63, 'https://picsum.photos/id/736/640/480', NULL, NULL),
(313, 63, 'https://picsum.photos/id/536/640/480', NULL, NULL),
(314, 63, 'https://picsum.photos/id/725/640/480', NULL, NULL),
(315, 63, 'https://picsum.photos/id/137/640/480', NULL, NULL),
(316, 64, 'https://picsum.photos/id/117/640/480', NULL, NULL),
(317, 64, 'https://picsum.photos/id/977/640/480', NULL, NULL),
(318, 64, 'https://picsum.photos/id/905/640/480', NULL, NULL),
(319, 64, 'https://picsum.photos/id/26/640/480', NULL, NULL),
(320, 64, 'https://picsum.photos/id/604/640/480', NULL, NULL),
(321, 65, 'https://picsum.photos/id/245/640/480', NULL, NULL),
(322, 65, 'https://picsum.photos/id/712/640/480', NULL, NULL),
(323, 65, 'https://picsum.photos/id/309/640/480', NULL, NULL),
(324, 65, 'https://picsum.photos/id/63/640/480', NULL, NULL),
(325, 65, 'https://picsum.photos/id/598/640/480', NULL, NULL),
(326, 66, 'https://picsum.photos/id/761/640/480', NULL, NULL),
(327, 66, 'https://picsum.photos/id/181/640/480', NULL, NULL),
(328, 66, 'https://picsum.photos/id/38/640/480', NULL, NULL),
(329, 66, 'https://picsum.photos/id/120/640/480', NULL, NULL),
(330, 66, 'https://picsum.photos/id/941/640/480', NULL, NULL),
(331, 67, 'https://picsum.photos/id/976/640/480', NULL, NULL),
(332, 67, 'https://picsum.photos/id/254/640/480', NULL, NULL),
(333, 67, 'https://picsum.photos/id/924/640/480', NULL, NULL),
(334, 67, 'https://picsum.photos/id/835/640/480', NULL, NULL),
(335, 67, 'https://picsum.photos/id/856/640/480', NULL, NULL),
(336, 68, 'https://picsum.photos/id/883/640/480', NULL, NULL),
(337, 68, 'https://picsum.photos/id/383/640/480', NULL, NULL),
(338, 68, 'https://picsum.photos/id/631/640/480', NULL, NULL),
(339, 68, 'https://picsum.photos/id/666/640/480', NULL, NULL),
(340, 68, 'https://picsum.photos/id/675/640/480', NULL, NULL),
(341, 69, 'https://picsum.photos/id/762/640/480', NULL, NULL),
(342, 69, 'https://picsum.photos/id/16/640/480', NULL, NULL),
(343, 69, 'https://picsum.photos/id/186/640/480', NULL, NULL),
(344, 69, 'https://picsum.photos/id/894/640/480', NULL, NULL),
(345, 69, 'https://picsum.photos/id/289/640/480', NULL, NULL),
(346, 70, 'https://picsum.photos/id/118/640/480', NULL, NULL),
(347, 70, 'https://picsum.photos/id/399/640/480', NULL, NULL),
(348, 70, 'https://picsum.photos/id/320/640/480', NULL, NULL),
(349, 70, 'https://picsum.photos/id/359/640/480', NULL, NULL),
(350, 70, 'https://picsum.photos/id/307/640/480', NULL, NULL),
(351, 71, 'https://picsum.photos/id/554/640/480', NULL, NULL),
(352, 71, 'https://picsum.photos/id/789/640/480', NULL, NULL),
(353, 71, 'https://picsum.photos/id/936/640/480', NULL, NULL),
(354, 71, 'https://picsum.photos/id/313/640/480', NULL, NULL),
(355, 71, 'https://picsum.photos/id/139/640/480', NULL, NULL),
(356, 72, 'https://picsum.photos/id/152/640/480', NULL, NULL),
(357, 72, 'https://picsum.photos/id/187/640/480', NULL, NULL),
(358, 72, 'https://picsum.photos/id/434/640/480', NULL, NULL),
(359, 72, 'https://picsum.photos/id/315/640/480', NULL, NULL),
(360, 72, 'https://picsum.photos/id/72/640/480', NULL, NULL),
(361, 73, 'https://picsum.photos/id/654/640/480', NULL, NULL),
(362, 73, 'https://picsum.photos/id/252/640/480', NULL, NULL),
(363, 73, 'https://picsum.photos/id/536/640/480', NULL, NULL),
(364, 73, 'https://picsum.photos/id/566/640/480', NULL, NULL),
(365, 73, 'https://picsum.photos/id/849/640/480', NULL, NULL),
(366, 74, 'https://picsum.photos/id/790/640/480', NULL, NULL),
(367, 74, 'https://picsum.photos/id/715/640/480', NULL, NULL),
(368, 74, 'https://picsum.photos/id/209/640/480', NULL, NULL),
(369, 74, 'https://picsum.photos/id/189/640/480', NULL, NULL),
(370, 74, 'https://picsum.photos/id/46/640/480', NULL, NULL),
(371, 75, 'https://picsum.photos/id/147/640/480', NULL, NULL),
(372, 75, 'https://picsum.photos/id/684/640/480', NULL, NULL),
(373, 75, 'https://picsum.photos/id/631/640/480', NULL, NULL),
(374, 75, 'https://picsum.photos/id/184/640/480', NULL, NULL),
(375, 75, 'https://picsum.photos/id/498/640/480', NULL, NULL),
(376, 76, 'https://picsum.photos/id/417/640/480', NULL, NULL),
(377, 76, 'https://picsum.photos/id/981/640/480', NULL, NULL),
(378, 76, 'https://picsum.photos/id/146/640/480', NULL, NULL),
(379, 76, 'https://picsum.photos/id/148/640/480', NULL, NULL),
(380, 76, 'https://picsum.photos/id/492/640/480', NULL, NULL),
(381, 77, 'https://picsum.photos/id/111/640/480', NULL, NULL),
(382, 77, 'https://picsum.photos/id/198/640/480', NULL, NULL),
(383, 77, 'https://picsum.photos/id/113/640/480', NULL, NULL),
(384, 77, 'https://picsum.photos/id/641/640/480', NULL, NULL),
(385, 77, 'https://picsum.photos/id/172/640/480', NULL, NULL),
(386, 78, 'https://picsum.photos/id/315/640/480', NULL, NULL),
(387, 78, 'https://picsum.photos/id/770/640/480', NULL, NULL),
(388, 78, 'https://picsum.photos/id/804/640/480', NULL, NULL),
(389, 78, 'https://picsum.photos/id/20/640/480', NULL, NULL),
(390, 78, 'https://picsum.photos/id/438/640/480', NULL, NULL),
(391, 79, 'https://picsum.photos/id/630/640/480', NULL, NULL),
(392, 79, 'https://picsum.photos/id/888/640/480', NULL, NULL),
(393, 79, 'https://picsum.photos/id/182/640/480', NULL, NULL),
(394, 79, 'https://picsum.photos/id/54/640/480', NULL, NULL),
(395, 79, 'https://picsum.photos/id/379/640/480', NULL, NULL),
(396, 80, 'https://picsum.photos/id/669/640/480', NULL, NULL),
(397, 80, 'https://picsum.photos/id/869/640/480', NULL, NULL),
(398, 80, 'https://picsum.photos/id/899/640/480', NULL, NULL),
(399, 80, 'https://picsum.photos/id/96/640/480', NULL, NULL),
(400, 80, 'https://picsum.photos/id/422/640/480', NULL, NULL),
(401, 81, 'https://picsum.photos/id/795/640/480', NULL, NULL),
(402, 81, 'https://picsum.photos/id/537/640/480', NULL, NULL),
(403, 81, 'https://picsum.photos/id/501/640/480', NULL, NULL),
(404, 81, 'https://picsum.photos/id/115/640/480', NULL, NULL),
(405, 81, 'https://picsum.photos/id/971/640/480', NULL, NULL),
(406, 82, 'https://picsum.photos/id/941/640/480', NULL, NULL),
(407, 82, 'https://picsum.photos/id/60/640/480', NULL, NULL),
(408, 82, 'https://picsum.photos/id/914/640/480', NULL, NULL),
(409, 82, 'https://picsum.photos/id/663/640/480', NULL, NULL),
(410, 82, 'https://picsum.photos/id/157/640/480', NULL, NULL),
(411, 83, 'https://picsum.photos/id/648/640/480', NULL, NULL),
(412, 83, 'https://picsum.photos/id/692/640/480', NULL, NULL),
(413, 83, 'https://picsum.photos/id/129/640/480', NULL, NULL),
(414, 83, 'https://picsum.photos/id/33/640/480', NULL, NULL),
(415, 83, 'https://picsum.photos/id/230/640/480', NULL, NULL),
(416, 84, 'https://picsum.photos/id/562/640/480', NULL, NULL),
(417, 84, 'https://picsum.photos/id/348/640/480', NULL, NULL),
(418, 84, 'https://picsum.photos/id/774/640/480', NULL, NULL),
(419, 84, 'https://picsum.photos/id/416/640/480', NULL, NULL),
(420, 84, 'https://picsum.photos/id/895/640/480', NULL, NULL),
(421, 85, 'https://picsum.photos/id/393/640/480', NULL, NULL),
(422, 85, 'https://picsum.photos/id/830/640/480', NULL, NULL),
(423, 85, 'https://picsum.photos/id/587/640/480', NULL, NULL),
(424, 85, 'https://picsum.photos/id/654/640/480', NULL, NULL),
(425, 85, 'https://picsum.photos/id/715/640/480', NULL, NULL),
(426, 86, 'https://picsum.photos/id/116/640/480', NULL, NULL),
(427, 86, 'https://picsum.photos/id/958/640/480', NULL, NULL),
(428, 86, 'https://picsum.photos/id/489/640/480', NULL, NULL),
(429, 86, 'https://picsum.photos/id/91/640/480', NULL, NULL),
(430, 86, 'https://picsum.photos/id/157/640/480', NULL, NULL),
(431, 87, 'https://picsum.photos/id/205/640/480', NULL, NULL),
(432, 87, 'https://picsum.photos/id/655/640/480', NULL, NULL),
(433, 87, 'https://picsum.photos/id/413/640/480', NULL, NULL),
(434, 87, 'https://picsum.photos/id/929/640/480', NULL, NULL),
(435, 87, 'https://picsum.photos/id/75/640/480', NULL, NULL),
(436, 88, 'https://picsum.photos/id/915/640/480', NULL, NULL),
(437, 88, 'https://picsum.photos/id/86/640/480', NULL, NULL),
(438, 88, 'https://picsum.photos/id/869/640/480', NULL, NULL),
(439, 88, 'https://picsum.photos/id/808/640/480', NULL, NULL),
(440, 88, 'https://picsum.photos/id/580/640/480', NULL, NULL),
(441, 89, 'https://picsum.photos/id/72/640/480', NULL, NULL),
(442, 89, 'https://picsum.photos/id/661/640/480', NULL, NULL),
(443, 89, 'https://picsum.photos/id/704/640/480', NULL, NULL),
(444, 89, 'https://picsum.photos/id/485/640/480', NULL, NULL),
(445, 89, 'https://picsum.photos/id/361/640/480', NULL, NULL),
(446, 90, 'https://picsum.photos/id/740/640/480', NULL, NULL),
(447, 90, 'https://picsum.photos/id/440/640/480', NULL, NULL),
(448, 90, 'https://picsum.photos/id/94/640/480', NULL, NULL),
(449, 90, 'https://picsum.photos/id/619/640/480', NULL, NULL),
(450, 90, 'https://picsum.photos/id/400/640/480', NULL, NULL),
(451, 91, 'https://picsum.photos/id/649/640/480', NULL, NULL),
(452, 91, 'https://picsum.photos/id/994/640/480', NULL, NULL),
(453, 91, 'https://picsum.photos/id/621/640/480', NULL, NULL),
(454, 91, 'https://picsum.photos/id/508/640/480', NULL, NULL),
(455, 91, 'https://picsum.photos/id/310/640/480', NULL, NULL),
(456, 92, 'https://picsum.photos/id/380/640/480', NULL, NULL),
(457, 92, 'https://picsum.photos/id/217/640/480', NULL, NULL),
(458, 92, 'https://picsum.photos/id/777/640/480', NULL, NULL),
(459, 92, 'https://picsum.photos/id/803/640/480', NULL, NULL),
(460, 92, 'https://picsum.photos/id/478/640/480', NULL, NULL),
(461, 93, 'https://picsum.photos/id/438/640/480', NULL, NULL),
(462, 93, 'https://picsum.photos/id/911/640/480', NULL, NULL),
(463, 93, 'https://picsum.photos/id/950/640/480', NULL, NULL),
(464, 93, 'https://picsum.photos/id/972/640/480', NULL, NULL),
(465, 93, 'https://picsum.photos/id/343/640/480', NULL, NULL),
(466, 94, 'https://picsum.photos/id/820/640/480', NULL, NULL),
(467, 94, 'https://picsum.photos/id/803/640/480', NULL, NULL),
(468, 94, 'https://picsum.photos/id/432/640/480', NULL, NULL),
(469, 94, 'https://picsum.photos/id/367/640/480', NULL, NULL),
(470, 94, 'https://picsum.photos/id/452/640/480', NULL, NULL),
(471, 95, 'https://picsum.photos/id/282/640/480', NULL, NULL),
(472, 95, 'https://picsum.photos/id/912/640/480', NULL, NULL),
(473, 95, 'https://picsum.photos/id/497/640/480', NULL, NULL),
(474, 95, 'https://picsum.photos/id/731/640/480', NULL, NULL),
(475, 95, 'https://picsum.photos/id/286/640/480', NULL, NULL),
(476, 96, 'https://picsum.photos/id/64/640/480', NULL, NULL),
(477, 96, 'https://picsum.photos/id/290/640/480', NULL, NULL),
(478, 96, 'https://picsum.photos/id/478/640/480', NULL, NULL),
(479, 96, 'https://picsum.photos/id/975/640/480', NULL, NULL),
(480, 96, 'https://picsum.photos/id/859/640/480', NULL, NULL),
(481, 97, 'https://picsum.photos/id/145/640/480', NULL, NULL),
(482, 97, 'https://picsum.photos/id/72/640/480', NULL, NULL),
(483, 97, 'https://picsum.photos/id/905/640/480', NULL, NULL),
(484, 97, 'https://picsum.photos/id/125/640/480', NULL, NULL),
(485, 97, 'https://picsum.photos/id/134/640/480', NULL, NULL),
(486, 98, 'https://picsum.photos/id/340/640/480', NULL, NULL),
(487, 98, 'https://picsum.photos/id/721/640/480', NULL, NULL),
(488, 98, 'https://picsum.photos/id/820/640/480', NULL, NULL),
(489, 98, 'https://picsum.photos/id/449/640/480', NULL, NULL),
(490, 98, 'https://picsum.photos/id/781/640/480', NULL, NULL),
(491, 99, 'https://picsum.photos/id/585/640/480', NULL, NULL),
(492, 99, 'https://picsum.photos/id/542/640/480', NULL, NULL),
(493, 99, 'https://picsum.photos/id/667/640/480', NULL, NULL),
(494, 99, 'https://picsum.photos/id/330/640/480', NULL, NULL),
(495, 99, 'https://picsum.photos/id/109/640/480', NULL, NULL),
(496, 100, 'https://picsum.photos/id/403/640/480', NULL, NULL),
(497, 100, 'https://picsum.photos/id/534/640/480', NULL, NULL),
(498, 100, 'https://picsum.photos/id/365/640/480', NULL, NULL),
(499, 100, 'https://picsum.photos/id/47/640/480', NULL, NULL),
(500, 100, 'https://picsum.photos/id/318/640/480', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_07_04_103001_create_categories_table', 2),
(11, '2023_07_09_094547_add_roles_to_users_table', 2),
(12, '2023_07_09_100016_create_subcategories_table', 2),
(23, '2023_07_09_102003_create_products_table', 3),
(24, '2023_07_09_102941_create_images_table', 3),
(25, '2023_07_10_101013_create_wives_table', 3),
(27, '2023_07_11_181758_create_profiles_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `hot` tinyint(4) NOT NULL DEFAULT 0,
  `new` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `sku`, `details`, `price`, `quantity`, `status`, `hot`, `new`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'marum', '202306consequatur', 'Quas et sed et impedit dolore commodi sit. In ut eaque quisquam deserunt est. At ea velit est ea. Quis ratione nisi vel repudiandae voluptatem. Blanditiis omnis architecto culpa nobis dicta sit ipsa.', 90.00, 9, 1, 0, 1, '2023-07-11 09:55:06', '2023-07-11 13:01:15', NULL),
(2, 1, 1, 'sunt', '202306veniam', 'Iure voluptatibus aut quisquam aperiam. Sed dolorem pariatur officia aperiam perferendis doloribus. Impedit quod molestiae totam repudiandae. Tenetur eos iure voluptates placeat.', 60.00, 6, 1, 0, 1, '2023-07-11 09:55:06', '2023-07-11 13:01:19', NULL),
(3, 1, 1, 'aspernatur', '202306omnis', 'Et sunt assumenda velit voluptates sed. Vitae voluptatem deleniti omnis voluptas provident itaque hic. Repellat magni sed occaecati qui.', 80.00, 6, 1, 0, 1, '2023-07-11 09:55:06', '2023-07-11 10:22:43', NULL),
(4, 1, 1, 'reiciendis', '202306enim', 'Dolorem eaque aut officia vel odio minima. Enim architecto sit et id est distinctio velit. Occaecati quos minima aut est est. Fuga velit natus cumque animi.', 80.00, 0, 1, 0, 1, '2023-07-11 09:55:06', '2023-07-11 09:55:06', NULL),
(5, 1, 1, 'nihil', '202306molestiae', 'Aut recusandae eveniet eum nemo sint cum ratione. Numquam rerum maiores atque ut ut sit sunt aliquid. Distinctio doloremque dolorem non optio consequatur.', 20.00, 9, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 10:20:02', NULL),
(6, 1, 2, 'et', '202306nam', 'Saepe voluptates qui ut voluptatibus suscipit. Illo mollitia fugiat alias quae. Tenetur reiciendis et velit esse.', 40.00, 7, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 13:01:11', NULL),
(7, 1, 2, 'eaque', '202306esse', 'Illum fugiat voluptatem necessitatibus. Qui cumque fugiat sapiente quidem molestiae veniam possimus. Dolorem reprehenderit dolor molestiae culpa.', 90.00, 2, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(8, 1, 2, 'vel', '202306illo', 'Explicabo ut quibusdam et quae facilis suscipit. Et ea et neque tempore et quia. Illo placeat ut tempore voluptatem.', 10.00, 7, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(9, 1, 2, 'suscipit', '202306rem', 'At est ullam omnis cumque. Earum modi ea eos. Eum rerum magni consequatur harum maiores et. Officiis nostrum aut corporis libero est similique. Eius est fugit possimus voluptas tempore.', 90.00, 6, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(10, 1, 1, 'adipisci', '202306aliquid', 'Perspiciatis nisi sapiente quod provident. Alias quod dolor provident aperiam sapiente dolores eum. Incidunt cupiditate pariatur perspiciatis aut odit unde.', 0.00, 0, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(11, 1, 1, 'facere', '202306sit', 'Possimus sapiente neque iste eos id. Beatae nobis vel nulla sed. Ipsa voluptas eum nesciunt magnam ipsa ipsa. Tempore est doloremque odit.', 0.00, 0, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(12, 1, 1, 'quia', '202306et', 'Earum et ducimus commodi odit et. Officia nulla dignissimos sed ad dolore aut. Vitae vel ratione quas maiores.', 40.00, 2, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(13, 1, 2, 'enim', '202306nihil', 'Iure cumque id enim voluptatum voluptates recusandae est aliquam. Officiis non inventore aut dolorem. Sit deleniti itaque voluptates et enim repellendus. Quo odio ullam consequatur vitae delectus.', 80.00, 1, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(14, 1, 2, 'quia', '202306aut', 'Laudantium dolorem nostrum eos occaecati voluptatem. Quas ut ut asperiores. Quibusdam quia non soluta rerum. Soluta eligendi minus nulla eos quam quibusdam.', 90.00, 5, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(15, 1, 2, 'quia', '202306explicabo', 'Dicta odio ipsam ut ratione. Dolorem quasi qui aut a. Molestiae commodi nam accusamus non velit qui. Molestiae consectetur voluptatem ut adipisci saepe.', 60.00, 1, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(16, 1, 1, 'tempore', '202306minima', 'Ut inventore voluptatibus ab non voluptates quibusdam. Dolorum eveniet ea voluptatem vel soluta cupiditate error.', 20.00, 4, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(17, 1, 2, 'dicta', '202306nesciunt', 'Nihil autem quia repellat ex odit aut. Ab modi nulla voluptate ut. Dicta reprehenderit nihil dolorem.', 30.00, 0, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(18, 1, 1, 'et', '202306ipsa', 'Dolor velit maiores sequi maiores dolorem at. Sit sed nobis voluptas tenetur.', 60.00, 6, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(19, 1, 2, 'voluptatum', '202306at', 'Voluptas fugiat dolores eligendi vitae perspiciatis. Qui in voluptatem cupiditate et consequuntur est minima. Assumenda sed eligendi qui optio cumque ut animi.', 90.00, 4, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(20, 1, 1, 'voluptas', '202306beatae', 'Ut odio ullam unde aut. Quidem voluptatem mollitia ut nihil. Voluptates beatae ex sit.', 80.00, 4, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(21, 1, 2, 'qui', '202306delectus', 'Iure libero occaecati incidunt et. Reprehenderit temporibus maxime voluptatem consequatur. Incidunt qui autem rem a porro sapiente.', 50.00, 9, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(22, 1, 2, 'aspernatur', '202306ut', 'Officiis labore dolorem sit asperiores voluptas error. Ea dolorem nobis dolores nobis. Non qui atque autem quod quia optio consequatur. Et delectus ipsam aspernatur non et.', 20.00, 9, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(23, 1, 1, 'eos', '202306magnam', 'Cum doloribus recusandae est atque. Maiores tempora in libero. Animi sit doloremque blanditiis distinctio qui sit nihil enim.', 30.00, 4, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(24, 1, 1, 'doloribus', '202306iusto', 'Vero odit magni doloremque officia et incidunt. Iste non repellendus consequatur. Deleniti et dolores nisi est.', 80.00, 7, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(25, 1, 1, 'ipsum', '202306ullam', 'Aut nemo voluptatem beatae omnis nostrum. Dolor quia voluptas eum expedita magnam sed. Sequi eos velit perspiciatis molestias ea. Cumque et soluta voluptate tenetur.', 0.00, 3, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(26, 1, 1, 'rem', '202306tempore', 'Explicabo ad totam aut provident. Voluptas rerum aut non eum laboriosam consequuntur possimus. Et aut quam facilis quo ut et voluptate.', 50.00, 8, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(27, 1, 1, 'ex', '202306sed', 'Et tempora est autem in. Qui et deleniti quia consectetur molestias.', 30.00, 4, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(28, 1, 2, 'quisquam', '202306exercitationem', 'Deserunt omnis et aperiam aspernatur sint odio. Dignissimos et animi ut quo sequi sint. Aspernatur nesciunt sit praesentium qui cum. Soluta voluptatibus voluptas maiores optio.', 60.00, 8, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(29, 1, 2, 'laborum', '202306maxime', 'Dolorem eum temporibus consequuntur laudantium nisi. Maiores ut repellendus itaque amet magni. Consequatur enim perspiciatis dolor rerum rerum.', 80.00, 7, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(30, 1, 1, 'qui', '202306quaerat', 'Laborum dolores et eius nulla nulla perferendis modi accusantium. Atque nobis harum autem id maxime molestiae aut rerum. Dolorum quibusdam unde aspernatur expedita culpa praesentium eos.', 80.00, 3, 1, 0, 1, '2023-07-11 09:55:07', '2023-07-11 09:55:07', NULL),
(31, 1, 2, 'et', '202306ex', 'Ratione voluptate at quam quia fugiat dolor. At dolore quos incidunt quia aut. Voluptatum ab aut nemo dolorem. Optio consectetur repudiandae et et eos.', 0.00, 6, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(32, 1, 1, 'dolore', '202306autem', 'Sed ea quam eos dolore iusto doloribus veritatis. Velit debitis consequatur fugiat qui illo sunt aut. Quo rerum voluptas deleniti dolores qui.', 60.00, 0, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(33, 1, 2, 'molestias', '202306alias', 'Earum natus vel asperiores quia. Dolores aut est fugiat natus incidunt quam ipsa aut. Ut atque qui neque nesciunt vel est. Quod facilis praesentium ut fugit.', 80.00, 6, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(34, 1, 1, 'illo', '202306ad', 'Nemo unde ipsum id voluptatem modi id fugiat. Odio ut autem quibusdam qui quia distinctio. Voluptatem quis ea asperiores sed vitae cum nam. Velit sequi ut sed molestiae vitae.', 10.00, 8, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(35, 1, 2, 'rerum', '202306velit', 'Occaecati asperiores rerum atque consequuntur sint sed. Officia excepturi dolores exercitationem quas et quae quis. Voluptatem vitae ratione et placeat consequatur consequatur dolorem.', 70.00, 8, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(36, 1, 1, 'quasi', '202306sunt', 'Nam ab iusto id voluptas dolor sapiente fugit. Laboriosam cum iure asperiores minus. Inventore voluptates quo natus blanditiis possimus.', 80.00, 6, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(37, 1, 1, 'consequatur', '202306fuga', 'Explicabo architecto rerum dolores aut. Natus reprehenderit nobis sequi ducimus. Commodi harum quaerat amet corporis iure.', 60.00, 9, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(38, 1, 1, 'nostrum', '202306quis', 'Soluta quam est aliquid quisquam. Voluptatem aut itaque error. Nobis labore sapiente culpa eligendi rem voluptates autem.', 70.00, 4, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(39, 1, 1, 'veniam', '202306consectetur', 'Laboriosam sunt debitis quo dolorem. Tenetur quidem cum molestias labore consequuntur. Deserunt asperiores aut mollitia praesentium architecto. Repudiandae delectus sed hic est porro eaque veritatis.', 70.00, 7, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(40, 1, 1, 'beatae', '202306dolorem', 'Commodi unde magni porro ad. Nostrum et molestias quia. Maxime esse ullam voluptate quia.', 70.00, 1, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(41, 1, 1, 'adipisci', '202306eos', 'Aut sit et ab quidem. Aperiam sed magni neque aliquid similique. Cum ea est qui dolor nihil. Et deleniti quasi aut dolore. Sapiente aut ullam et magni qui ipsum maiores.', 0.00, 5, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(42, 1, 2, 'sunt', '202306cum', 'Occaecati rem veritatis ut sunt officia nihil dolor. Dignissimos deserunt nostrum aut sapiente consequatur sit laborum. Aut et impedit possimus sit enim sed. Illum autem aut ad ea quam illo sit.', 0.00, 4, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 10:20:16', NULL),
(43, 1, 1, 'consectetur', '202306eius', 'Minima mollitia impedit aperiam sunt quia et non. Eos quam fugit in et eveniet. Inventore accusamus quasi aliquam labore qui quod vel accusamus.', 70.00, 1, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 10:20:39', NULL),
(44, 1, 2, 'velit', '202306qui', 'Quas provident voluptatem quia cum fuga. Nobis reiciendis delectus sed. Aut molestiae voluptatibus autem rerum debitis ullam.', 80.00, 9, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(45, 1, 2, 'ut', '202306quidem', 'Sunt et quia debitis animi tempore ut quas. Voluptatem aut quas ullam qui quas repellendus. Accusamus adipisci nesciunt eos et voluptas repudiandae.', 0.00, 5, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(46, 1, 1, 'amet', '202306saepe', 'Id quasi laudantium ullam magni natus molestiae id. Quis adipisci sit amet quae quia. Et sit reprehenderit et sit voluptatem hic.', 70.00, 7, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(47, 1, 1, 'rem', '202306non', 'Earum aperiam ut vero autem delectus sed et ut. Natus ut voluptatem temporibus incidunt inventore.', 90.00, 7, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(48, 1, 2, 'dicta', '202306perspiciatis', 'Ratione ipsum quidem consectetur inventore. Assumenda sunt illo praesentium. Omnis rerum iste nam tempore rem. Laboriosam expedita sapiente dolorem quibusdam quisquam blanditiis necessitatibus.', 60.00, 0, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(49, 1, 1, 'tenetur', '202306quos', 'Vero eos quis sit eum omnis. Enim quia sunt error impedit quis possimus magnam. Debitis voluptatem iure fugit atque alias labore quia. Et deserunt cum ut quam.', 50.00, 9, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(50, 1, 2, 'nesciunt', '202306fugit', 'Itaque omnis deleniti perspiciatis reprehenderit. Fugit nam impedit enim debitis voluptas repellat. Possimus est et itaque aperiam et eum id. Maxime nemo dolorem maxime facilis.', 20.00, 4, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(51, 1, 2, 'in', '202306rerum', 'Et soluta alias ut omnis repudiandae impedit quod. Eius illum voluptas iusto sed voluptatem rerum. Dolorum earum mollitia delectus sit ratione.', 90.00, 3, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(52, 1, 2, 'sequi', '202306accusantium', 'Sunt assumenda dignissimos animi quaerat nihil corrupti hic. Minima assumenda perferendis pariatur et. Officiis beatae ipsam et veniam facilis excepturi. Non et ullam aliquam ut maiores aspernatur.', 70.00, 1, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(53, 1, 1, 'quo', '202306nisi', 'Nulla expedita vitae itaque asperiores. Vero repellendus nam numquam. Occaecati qui ratione ipsam voluptas explicabo blanditiis et. Quo et est nesciunt voluptas ipsam.', 80.00, 7, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(54, 1, 2, 'officiis', '202306similique', 'Accusantium quia voluptatibus in cumque est molestiae expedita. Quia maiores libero minima perspiciatis qui rerum repudiandae.', 90.00, 5, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(55, 1, 2, 'dolor', '202306sapiente', 'Voluptatibus ex aspernatur assumenda iure libero autem dolor. Necessitatibus itaque error quae possimus et et.', 50.00, 0, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(56, 1, 2, 'non', '202306ratione', 'Quibusdam quia modi vel. Earum sint iure voluptas ut. Eius non sit culpa ipsam voluptatibus asperiores saepe. Ut eum ut nulla dolorem totam nisi libero minima.', 40.00, 4, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(57, 1, 2, 'sit', '202306nobis', 'Odio maiores ut ex consequatur inventore quo. Rerum tempore sint est eos magni itaque natus est. Incidunt eveniet non animi quia quis. Quisquam est saepe accusantium labore ab sunt.', 40.00, 3, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(58, 1, 1, 'iste', '202306laudantium', 'Repudiandae quis est minus. Voluptas eum quaerat at eius quae laudantium omnis. Perspiciatis asperiores iste sunt blanditiis. Qui quia nisi eum ipsum sit suscipit explicabo recusandae.', 60.00, 6, 1, 0, 1, '2023-07-11 09:55:08', '2023-07-11 09:55:08', NULL),
(59, 1, 2, 'aut', '202306eum', 'Eos consectetur eligendi optio id quisquam dolor. Ea ratione quibusdam et qui quia voluptatem. Voluptas occaecati nam neque. Neque cum culpa quia explicabo.', 90.00, 9, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(60, 1, 2, 'recusandae', '202306quod', 'Non voluptatibus minus suscipit molestiae dolores vel qui. Sint aut provident occaecati quae. Ut commodi quasi alias ut libero ut.', 70.00, 8, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(61, 1, 2, 'tempore', '202306impedit', 'Nam qui ea nihil expedita. Sed maxime expedita officiis recusandae sint est rerum. Et rerum vitae ipsum dolores maxime sit qui.', 50.00, 5, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(62, 1, 1, 'in', '202306id', 'Enim non quasi accusamus quo ea quis recusandae. Quaerat debitis eligendi et. Odio voluptas officiis molestiae recusandae. Veniam aperiam perspiciatis consequatur dolores tempora.', 50.00, 4, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(63, 1, 1, 'asperiores', '202306amet', 'Minus rem magni amet fuga ducimus. Et omnis ex dolorum quia dolores. Ut id earum enim aut quia. Beatae ut ut sit pariatur deserunt ipsam. Et dicta numquam quis natus provident illum vero.', 10.00, 8, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(64, 1, 2, 'sapiente', '202306vero', 'Quia officia cupiditate maxime et qui cupiditate corporis. Vel sit laborum soluta quasi sint voluptatem est consectetur. Sed voluptas est non nulla velit voluptas.', 10.00, 4, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(65, 1, 2, 'consequatur', '202306culpa', 'Excepturi dolore iusto laudantium commodi perspiciatis sit quaerat. Et repellat consequuntur saepe ut dolores. Facere et et porro aut minus distinctio neque soluta. Qui voluptatem et et dolore ut.', 20.00, 7, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(66, 1, 1, 'incidunt', '202306corporis', 'Asperiores fuga et numquam quo voluptatum vitae dicta. Non magni nihil distinctio autem necessitatibus aperiam. Molestiae quia facilis maiores doloremque iure eligendi atque.', 40.00, 1, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(67, 1, 2, 'sequi', '202306minus', 'Vel quae quibusdam quia. Quasi voluptates qui omnis officia. Sit temporibus veritatis omnis repudiandae voluptatem officiis. Ut sed repellendus quae pariatur quidem voluptate qui.', 70.00, 0, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(68, 1, 1, 'minus', '202306asperiores', 'Voluptatem ex nihil odio accusamus sint excepturi rerum. Enim ullam id voluptatum eius. Perspiciatis sunt delectus reprehenderit.', 50.00, 8, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(69, 1, 1, 'delectus', '202306fugiat', 'Soluta dignissimos a cumque. Est mollitia est minima nobis magnam voluptates enim. Error quo alias aut quis reiciendis tenetur.', 20.00, 4, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(70, 1, 1, 'eos', '202306magni', 'Ut voluptatibus fuga et voluptatem. Ipsa assumenda reiciendis ex beatae et.', 60.00, 6, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(71, 1, 2, 'nihil', '202306inventore', 'Sint accusantium dolorem dolore. Eius dolorum officia autem magnam repellat. Qui eius laborum vel voluptatem sed eaque nemo qui.', 30.00, 6, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(72, 1, 2, 'et', '202306ipsum', 'Vero earum sint et voluptas rerum molestiae. At consequatur placeat aut dolor. Iste aliquam corporis perspiciatis tenetur quisquam laborum at. Dolorem ea sit earum.', 70.00, 1, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(73, 1, 1, 'autem', '202306hic', 'Voluptatem hic minus ut vitae consequatur neque. Velit voluptate sit eveniet amet libero asperiores.', 30.00, 3, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(74, 1, 1, 'quo', '202306labore', 'Iste iure et dolores expedita quam voluptatum. Ab ullam voluptas voluptatem minima fugit et. Similique totam quisquam officia at aliquid ipsa quia.', 40.00, 5, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(75, 1, 2, 'recusandae', '202306cupiditate', 'Provident necessitatibus incidunt est est. Sint sit ut sint. Quasi dolorem fuga consequatur sint molestiae.', 70.00, 8, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(76, 1, 1, 'aut', '202306eveniet', 'Optio voluptatibus non explicabo qui ea voluptate doloribus. Aut nobis provident ducimus. Dolore quia voluptate qui velit aspernatur modi.', 10.00, 3, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(77, 1, 1, 'ullam', '202306soluta', 'Rem excepturi et qui numquam sunt. Eum error laborum repellendus assumenda deleniti necessitatibus odio. Possimus tenetur quibusdam reprehenderit ut ut sunt eaque est.', 0.00, 2, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(78, 1, 2, 'aut', '202306laboriosam', 'Et perspiciatis alias minus vel commodi. Debitis enim unde commodi cumque dicta sed. Cum accusantium quae nesciunt in facilis. Doloribus sunt possimus necessitatibus exercitationem.', 10.00, 6, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(79, 1, 2, 'debitis', '202306aliquam', 'Laborum ea et ut ullam est. Et rem atque libero cum sequi sint porro est. Aliquam sunt accusamus ratione velit modi. Ut dicta quidem enim vel.', 0.00, 6, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(80, 1, 2, 'et', '202306quia', 'Officiis voluptas fugiat ut aut qui ex. Perspiciatis impedit autem velit laudantium consequuntur illum modi fuga. Fugit cum et quia consectetur totam autem. Id rerum qui aut illum quo sequi ipsum.', 0.00, 0, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(81, 1, 1, 'consequatur', '202306commodi', 'Sed natus voluptatem non recusandae. Libero eum facilis qui non impedit. Repellendus illo recusandae et voluptas. Omnis nihil magni ipsa. Esse quidem pariatur quis. Debitis animi corrupti quia quia.', 20.00, 9, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(82, 1, 2, 'omnis', '202306veritatis', 'Sed repudiandae necessitatibus sit consequatur. Et dignissimos possimus totam ut. Tempora corrupti saepe tenetur illo deleniti qui. Temporibus ea corrupti quibusdam dolore assumenda et voluptatem.', 0.00, 5, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(83, 1, 1, 'provident', '202306in', 'Ducimus quidem consectetur in earum dolorum provident consectetur est. Quibusdam magni nam nihil molestias. Dolores eos veniam amet beatae qui nesciunt facilis.', 70.00, 6, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(84, 1, 2, 'omnis', '202306iste', 'Voluptate officiis et est esse et odit id. Quos delectus corporis fugiat sunt quidem aut.', 10.00, 7, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(85, 1, 2, 'esse', '202306voluptatem', 'Nesciunt maxime aliquam asperiores nulla vitae. Consequatur voluptas atque illum rem fugiat rerum. Sint saepe quasi maxime quaerat ut.', 80.00, 3, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(86, 1, 1, 'cumque', '202306facilis', 'Veniam eos et et. Ipsum eveniet quia ut est deleniti impedit. Impedit natus doloribus dolores asperiores vel eligendi harum.', 30.00, 5, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(87, 1, 2, 'quo', '202306illum', 'Eum nisi quos rerum officiis et. In optio eos consectetur asperiores eligendi natus voluptatem minus.', 50.00, 7, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(88, 1, 1, 'veritatis', '202306nulla', 'Ut aliquid consequatur eum placeat labore quia qui. Laborum quasi perferendis sint in delectus nesciunt. Qui dolores unde et numquam quidem eveniet. Animi ea animi ut cum ut veritatis velit ut.', 30.00, 7, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(89, 1, 1, 'animi', '202306dignissimos', 'Numquam cum quasi repellendus et adipisci non at velit. Et ad est ullam quas delectus libero. Repellat quisquam accusantium maxime.', 30.00, 9, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(90, 1, 2, 'laboriosam', '202306dolores', 'Delectus harum ipsam quaerat aut. Eos et non sed sequi sint eum harum. Repudiandae quia molestias qui aut. Nesciunt aut eaque voluptatem temporibus.', 10.00, 1, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(91, 1, 2, 'quia', '202306odit', 'Non eveniet dicta et et. Iure quia molestiae voluptatum quia consequuntur ut explicabo consequuntur. Labore provident in aut sit nisi velit.', 70.00, 5, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(92, 1, 2, 'eius', '202306deleniti', 'Molestias voluptatum eos repellat impedit ea et nulla. Provident quasi provident fuga repellendus illum cumque. Qui et temporibus quisquam assumenda ratione quibusdam.', 30.00, 4, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(93, 1, 1, 'nihil', '202306eaque', 'Doloremque magni dolorem sint adipisci sit. Quis dolore sed quisquam pariatur expedita quam. Quasi dignissimos ducimus praesentium dolores ea laborum voluptatem in.', 40.00, 3, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(94, 1, 2, 'magnam', '202306error', 'Vel sit consequatur voluptates adipisci deserunt. Ab perspiciatis perspiciatis iste. Et qui eum quis quia.', 50.00, 5, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(95, 1, 2, 'iusto', '202306mollitia', 'Ipsam nihil veniam corrupti deserunt ut nemo aut. Amet illo dolor rem rem aut error. Dolorem qui ratione nesciunt animi aut quasi. Vitae consequuntur id cupiditate dignissimos dolores.', 50.00, 3, 1, 0, 1, '2023-07-11 09:55:09', '2023-07-11 09:55:09', NULL),
(96, 1, 1, 'hic', '202306vel', 'Natus quia aut cum atque necessitatibus. Enim dolor sed ut sed labore laudantium atque asperiores. Sit explicabo velit accusantium illo autem qui.', 70.00, 3, 1, 0, 1, '2023-07-11 09:55:10', '2023-07-11 09:55:10', NULL),
(97, 1, 1, 'sit', '202306modi', 'Rerum magnam ad consequatur voluptate voluptas. Sapiente aut culpa placeat facere. Sunt dolorem fuga voluptatibus id sed exercitationem aut.', 0.00, 2, 1, 0, 1, '2023-07-11 09:55:10', '2023-07-11 09:55:10', NULL),
(98, 1, 2, 'est', '202306facere', 'Consequatur deleniti nam sed ipsa quia ad animi. Ut in et ut. Similique rem pariatur cumque aliquid expedita culpa.', 30.00, 8, 1, 0, 1, '2023-07-11 09:55:10', '2023-07-11 09:55:10', NULL),
(99, 1, 1, 'voluptatem', '202306necessitatibus', 'Odit ipsam quis quo esse ipsam. Recusandae magni sint veniam quis. Qui reiciendis maxime ut aut odit nulla nihil et. Eos dolore vel vel.', 30.00, 2, 1, 0, 1, '2023-07-11 09:55:10', '2023-07-11 09:55:10', NULL),
(100, 1, 1, 'quaerat', '202306odio', 'Qui sit iusto et provident optio aut inventore. Ut at voluptas vero ipsa cum et tenetur. Dolor ea maxime quia officia.', 10.00, 8, 1, 0, 1, '2023-07-11 09:55:10', '2023-07-11 09:55:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addres1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addres2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `th` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `phone`, `father_name`, `mother_name`, `addres1`, `addres2`, `bg`, `fb`, `tw`, `th`, `created_at`, `updated_at`) VALUES
(1, 1, '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-11 12:32:30', '2023-07-11 12:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Bike', 1, NULL, NULL),
(2, 'Car', 1, NULL, NULL),
(3, 'Mobile', 5, NULL, NULL),
(4, 'Laptop', 5, NULL, NULL),
(5, 'Furniture', 6, NULL, NULL),
(6, 'BUS', 1, '2023-07-10 04:27:34', '2023-07-10 04:27:34'),
(7, 'truck', 1, '2023-07-10 04:34:52', '2023-07-10 04:34:52'),
(8, 'bikee', 1, '2023-07-10 04:41:32', '2023-07-10 04:41:32'),
(9, 'likee', 1, '2023-07-10 04:43:32', '2023-07-10 04:43:32'),
(10, 'ikee', 1, '2023-07-10 04:45:31', '2023-07-10 04:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$YI3/Nmz6EffYggvm1Xgc5.unhLxedp.CYmjuw3L78/YitA53.ywoG', 1, NULL, '2023-07-04 04:14:58', '2023-07-04 04:14:58'),
(2, 'sohan', 'sr.sohanur22@gmail.com', NULL, '$2y$10$OzQzijcNFDRn12kuyNt6DOTQEHnWitwsRNps1t5bmjFlX8uu16v4u', 1, NULL, '2023-07-04 06:31:28', '2023-07-04 06:31:28'),
(3, 'ruma', 'ruma@gmail.com', NULL, '$2y$10$eVJLhid90I36T4J9pJgTFeeAbsK1oi9vb87Khv7zMF9QsZBOVsegi', 1, NULL, '2023-07-04 06:34:00', '2023-07-04 06:34:00'),
(4, 'lipiakter', 'lipiakter@gmail.com', NULL, '$2y$10$v8W/.YaGTzcShcLr2ohHTOANXUEFxrHCfco198xyWtWWhHc2p5OTW', 1, NULL, '2023-07-04 06:36:29', '2023-07-04 06:36:29'),
(5, 'Marzan Afroz', 'marzanafroz@gmail.com', NULL, '$2y$10$BapeTp7hrtFHVVE0vgGn5OW26agRU3MNNmKZn6CeX49rrBlGmOlxW', 1, NULL, '2023-07-04 06:36:34', '2023-07-04 06:36:34'),
(6, 'admin2', 'admin2@gmail.com', NULL, '$2y$10$shMTDpnvXd8ZgC40CJ4sSej7xSQTyV2KgXEP7ivefPjSWRi07ZVQO', 1, NULL, '2023-07-05 03:44:22', '2023-07-05 03:44:22'),
(7, 'admin3', 'admin3@gmail.com', NULL, '$2y$10$Reu1t7T.hEdEJjZQL4AO5.RTMMMEwFv.GlUpwiGIf9HdcnOw.YTv6', 1, NULL, '2023-07-05 03:45:59', '2023-07-05 03:45:59'),
(8, 'admin4', 'admin4@gmail.com', NULL, '$2y$10$WUa2vN00.W.VX0aH9eO0ruw9Ug57EfyXD288wSmkCDICrlI/jGioS', 1, NULL, '2023-07-05 03:49:09', '2023-07-05 03:49:09'),
(9, 'mohim', 'mohim@gmail.com', NULL, '$2y$10$GWsgd/8t1mYCxQgnTI8/bePnOhIizsjHAX6ECeRq9sTMH1fH1lJY2', 1, NULL, '2023-07-05 03:49:30', '2023-07-05 03:49:30'),
(10, 'Ismail Hosen', 'ismail@gmail.com', NULL, '$2y$10$yG7TDRjvI0CehCckdVjicu/tg8D9eyIe0oYG0n1VmFPJF1qGUR8oW', 1, NULL, '2023-07-06 04:15:39', '2023-07-06 04:15:39'),
(11, 'Ishrat', 'ishrat@gmail.com', NULL, '$2y$10$xezUH2p4FQ6xwj7pRRqqnOTlI1N7gbFITehFBt3Dk8snYUyI/FApm', 1, NULL, '2023-07-06 06:15:43', '2023-07-06 06:15:43'),
(12, 'Sayeed', 'syeed@gmail.com', NULL, '$2y$10$dO6pCD9R9kHUYV4J8romEOaEllrX3olu5XQ128iuByLPDZaquNerO', 1, NULL, '2023-07-08 06:44:11', '2023-07-08 06:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `wives`
--

CREATE TABLE `wives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wives`
--
ALTER TABLE `wives`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wives`
--
ALTER TABLE `wives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
