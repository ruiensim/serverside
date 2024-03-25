-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 22, 2024 at 05:23 AM
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
-- Database: `gadget_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `quantity_available` int(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `description`, `quantity_available`, `brand`, `category_id`, `image_url`, `price`) VALUES
(1, 'Computer', 'good', 100, 'apple', 1, 'product01.png', 100),
(2, 'handphone', 'I love you', 500, 'pineapple', 2, 'b.png', 7899),
(3, 'likuan', 'nn', 100, 'dddcdsvs', 2, 'product06.png', 100000),
(4, 'likuan', 'nn', 100, 'dddcdsvs', 2, 'product06.png', 100000),
(5, 'handphone', 'I love you', 500, 'pineapple', 2, 'b.png', 7899),
(6, 'handphone', 'I love you', 500, 'pineapple', 2, 'b.png', 7899),
(7, 'handphone', 'I love you', 500, 'pineapple', 2, 'b.png', 7899),
(8, 'Computer', 'good', 100, 'apple', 1, 'product01.png', 100),
(9, 'handphone', 'I love you', 500, 'pineapple', 2, 'b.png', 7899),
(10, 'Computer', 'good', 100, 'apple', 1, 'product01.png', 100),
(11, 'Computer', 'good', 100, 'apple', 1, 'product01.png', 100),
(12, 'Computer', 'good', 100, 'apple', 1, 'product01.png', 100),
(13, 'Computer', 'good', 100, 'apple', 1, 'product01.png', 100),
(14, 'Computer', 'good', 100, 'apple', 1, 'product01.png', 100),
(15, 'tiang', 'good', 100, 'apple', 1, 'product09.png', 9999),
(16, 'kiongpeng', 'good', 100, 'apple', 1, 'product08.png', 8888),
(17, 'kiongpeng2', 'good', 100, 'apple', 1, 'product07.png', 888899),
(18, 'kiongpeng100', 'good', 100, 'apple', 1, 'product05.png', 8888);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
