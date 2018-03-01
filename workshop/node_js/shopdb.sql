-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 28, 2018 at 09:53 PM
-- Server version: 5.7.13-log
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Fashion', 'Category for anything related to fashion.', '2018-02-24 17:35:07', '2018-02-25 17:35:07'),
(2, 'Electronics', 'Gadgets, drones and more.', '2018-02-24 17:35:07', '2018-02-24 17:35:07'),
(3, 'Motors', 'Motor sports and more', '2018-02-24 17:35:07', '2018-02-25 17:35:07'),
(5, 'Movies', 'Movie products.', '2018-02-24 17:35:07', '2018-02-24 17:35:07'),
(6, 'Books', 'Kindle books, audio books and more.', '2018-02-24 17:35:07', '2018-02-25 17:35:07'),
(13, 'Sports', 'Drop into new winter gear.', '2018-02-24 17:35:07', '2018-02-24 17:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', '336', 3, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', '299', 2, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(3, 'Samsung Galaxy S4', 'How about no?', '600', 3, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(6, 'Bench Shirt', 'The best shirt!', '29', 1, '2014-05-31 18:12:26', '2018-02-24 18:12:26'),
(7, 'Lenovo Laptop', 'My business partner.', '399', 2, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', '259', 2, '2018-02-24 18:12:26', '2018-02-26 02:16:14'),
(9, 'Spalding Watch', 'My sports watch.', '199', 1, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', '300', 2, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(11, 'Huawei Y300', 'For testing purposes.', '100', 2, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', '60', 1, '2018-02-24 18:12:26', '2018-02-26 02:16:14'),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', '70', 1, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(26, 'Another product', 'Awesome product!', '555', 2, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(28, 'Wallet', 'You can absolutely use this one!', '799', 6, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', '333', 1, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(42, 'Nike Shoes for Men', 'Nike Shoes', '12999', 3, '2018-02-24 18:12:26', '2018-02-26 02:16:14'),
(48, 'Bristol Shoes', 'Awesome shoes.', '999', 5, '2018-02-24 18:12:26', '2018-02-24 18:12:26'),
(60, 'Rolex Watch', 'Luxury watch.', '25000', 1, '2018-02-24 18:12:26', '2018-02-26 02:16:14'),
(61, 'Samsung Galaxy S9', 'smart phone in 2018', '27900', 2, '2018-02-28 18:00:24', '2018-02-28 18:00:24');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
