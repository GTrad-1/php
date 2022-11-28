-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2022-11-24 04:07:36
-- 服务器版本： 8.0.27
-- PHP 版本： 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `demo2`
--

-- --------------------------------------------------------

--
-- 表的结构 `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `salary611` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `employees`
--

INSERT INTO `employees` (`id`, `name`, `address`, `salary611`, `username`, `password`) VALUES
(1, 'Vivi', 'Ningbo', 1000, '2313', '123123'),
(2, 'Marco', 'Ningbo', 900, '423423', '1232112'),
(3, 'Zed', 'Ningbo', 600, '231312', '213'),
(4, 'Gordon', 'Ningbo', 500, '123', '123'),
(5, '', '', 0, 'qwe', '$2y$10$G1VCdSp4S1ZO77Ms7Xrbu.q7O1Tsn2Ym4NQlkBxX7SOKSxWcCZkJy'),
(7, 'Zed', 'Ningbo', 500, '321', '321');

-- --------------------------------------------------------

--
-- 表的结构 `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
CREATE TABLE IF NOT EXISTS `tblproduct` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `average_rating` float(3,1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`, `category`, `average_rating`) VALUES
(1, 'Sourdough White', '1', 'product-images/1.jpg', 7.00, 'French bread', 3.0),
(2, 'Sourdough Rye', '2', 'product-images/2.jpg', 8.00, 'French bread', 4.0),
(3, 'Sourdough Spelt', '3', 'product-images/3.jpg', 9.00, 'French bread', 3.0),
(4, 'Sourdough Seeded', '4', 'product-images/4.jpg', 9.50, 'Western bread', 3.0),
(5, 'Oat bread', '5', 'product-images/5.jpg', 10.50, 'Western bread', 4.0),
(6, 'Whole wheat bread', '6', 'product-images/6.jpg', 8.50, 'Western bread', 2.0),
(7, 'Garlic bread', '7', 'product-images/7.jpg', 9.00, 'Western bread', 5.0),
(8, 'Multigrain bread', '8', 'product-images/8.jpg', 9.50, 'French bread', 4.0),
(9, 'Toast', '9', 'product-images/9.jpg', 10.00, 'French bread', 4.0),
(10, 'Croissant', '10', 'product-images/10.jpg', 6.00, 'French bread', 3.0),
(11, 'Brioche Bread', '11', 'product-images/11.jpg', 6.50, 'French bread', 0.0),
(12, 'Ciabatta Bread', '12', 'product-images/12.jpg', 5.00, 'French bread', 4.0),
(13, 'Bagels', '13', 'product-images/13.jpg', 5.00, 'Western bread', 3.0),
(14, 'Crumpet', '14', 'product-images/14.jpg', 5.50, 'Western bread', 4.0),
(15, 'Scone bread', '15', 'product-images/15.jpg', 6.00, 'Western bread', 3.0);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Vivi', '$2y$10$.xZV.frLzycwFYl1xr9eaexMROMloSpzotfoOSnxEDGlNbiqSf/U2', '2022-10-31 19:38:55');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
