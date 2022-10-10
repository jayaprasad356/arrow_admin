-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2022 at 10:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arrowfurniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(11) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `last_updated`, `date_created`) VALUES
(1, 'Sofa', 'upload/images/6177-2022-10-10.jpg', 1, '2022-10-10 07:56:54', '2022-10-10 07:55:37'),
(2, 'Wooden cots', 'upload/images/9196-2022-10-10.png', 1, '2022-10-10 07:57:01', '2022-10-10 07:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_name` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `discounted_price` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `price`, `discounted_price`, `description`, `image`) VALUES
(1, 1, 'AURORA', '2999', '2299', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/7517-2022-10-10.jpg'),
(2, 1, 'GREEN CORNER', '1499', '1099', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/6414-2022-10-10.jpg'),
(3, 1, 'LAURA', '3999', '3499', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/5921-2022-10-10.jpg'),
(4, 1, 'NUDE', '2999', '2549', 'Gubergren amet dolor ea diam takimataL\r\n', 'upload/products/3508-2022-10-10.jpg'),
(5, 1, 'DINING SET', '1999', '1499', 'Blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/6093-2022-10-10.jpg'),
(6, 1, 'SEAT CHAIR', '999', '896', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/3066-2022-10-10.jpg'),
(7, 1, 'SOFA', '1499', '1099', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/5941-2022-10-10.jpg'),
(8, 2, 'WOODEN COT1', '14999', '14900', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/7065-2022-10-10.jpeg'),
(9, 2, 'WOODEN COT2', '12000', '11800', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/4544-2022-10-10.jpeg'),
(10, 2, 'WOODEN COT3', '10999', '10499', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/3210-2022-10-10.jpeg'),
(11, 2, 'WOODEN COT4', '16879', '16440', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/9019-2022-10-10.jpeg'),
(12, 2, 'WOODEN COT5', '11900', '10900', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/8171-2022-10-10.jpeg'),
(13, 2, 'WOODEN COT6', '8999', '8500', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/0325-2022-10-10.jpeg'),
(14, 2, 'WOODEN COT7', '10999', '10500', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/8520-2022-10-10.jpeg'),
(15, 2, 'WOODEN COT8', '15999', '15400', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/1736-2022-10-10.jpeg'),
(16, 2, 'WOODEN COT9', '11450', '11000', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/4068-2022-10-10.jpeg'),
(17, 2, 'WOODEN COT10', '14999', '14900', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/1721-2022-10-10.jpeg'),
(18, 2, 'WOODEN COT11', '14999', '14900', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/0329-2022-10-10.jpeg'),
(19, 2, 'WOODEN COT12', '12999', '12900', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/8614-2022-10-10.jpeg'),
(20, 2, 'WOODEN COT13', '13999', '13400', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/1929-2022-10-10.jpeg'),
(21, 2, 'WOODEN COT14', '14999', '14900', 'Gubergren amet dolor ea diam takimata\r\n                                        consetetur facilisis blandit et aliquyam lorem ea duo labore diam\r\n                                        sit et\r\n                                        consetetur nulla', 'upload/products/1218-2022-10-10.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `status`) VALUES
(1, 'Divakar', '1234567890', '0'),
(2, 'Senthilganesh', '9876543234', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
