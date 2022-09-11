-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2018 at 03:35 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_art_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `po_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `cart_total` varchar(100) NOT NULL,
  `bill_fname` varchar(100) NOT NULL,
  `bill_lname` varchar(100) NOT NULL,
  `bill_add` varchar(100) NOT NULL,
  `bill_city` varchar(100) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_phone` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`po_id`, `u_id`, `cart_total`, `bill_fname`, `bill_lname`, `bill_add`, `bill_city`, `bill_email`, `bill_phone`, `status`, `date`) VALUES
(1, 1, '13999', 'gajen', 'pradhan', 'bhilai', 'khi', 'gajen@gmail.com', '9165063741', '', '2018-10-10 19:57:43'),
(2, 3, '15999', 'gajen', 'pradhan', 'bhilai', 'khi', 'gajen@gmail.com', '9165063741', '', '2018-10-11 10:02:41'),
(3, 4, '11000', 'gopi', 'pal', 'bhilai', 'khi', 'gopipal@gmail.com', '1234567890', '', '2018-10-15 13:05:03'),
(4, 5, '11000', 'ravi', 'pal', 'bhilai', 'khi', 'ravipal@gmail.com', '1234567890', '', '2018-10-15 13:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_des` varchar(1000) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `file_ext` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `product_name`, `product_category`, `product_price`, `product_des`, `file_name`, `file_path`, `file_ext`) VALUES
(1, 'Horse Painting', 'Painting', '10000', 'Manufacturer of Traditional \r\nArt Gallery Products \r\nPainting offered by Ganesha\r\nArt And Craft, Jaipur, Rajasthan', 'Horse_Painting.jpg', 'C:/xampp/htdocs/myproject/Mobile_Shop/uploads/', '.jpg'),
(2, 'Bird Flower', 'Painting', '5000', 'Manufacturer of Traditional \r\nArt Gallery Products \r\nPainting offered by Ganesha \r\nArt And Craft, Jaipur, Rajasthan', 'bird_flowers.jpg', 'C:/xampp/htdocs/myproject/Mobile_Shop/uploads/', '.jpg'),
(3, 'Bird', 'Painting', '7000', 'Manufacturer of Traditional \r\nArt Gallery Products \r\nPainting offered by Ganesha \r\nArt And Craft, Jaipur, Rajasthan', 'bird_painting.jpg', 'C:/xampp/htdocs/myproject/Mobile_Shop/uploads/', '.jpg'),
(4, 'Photo Frame', 'Frame', '14999', 'Manufacturer of Traditional \r\nArt Gallery Products \r\nPainting offered by Ganesha \r\nArt And Craft, Jaipur, Rajasthan', 'alephant.jpg', 'C:/xampp/htdocs/myproject/Mobile_Shop/uploads/', '.jpg'),
(5, 'Photo Frame 2', 'Frame', '21000', 'Manufacturer of Traditional \r\nArt Gallery Products \r\nPainting offered by Ganesha \r\nArt And Craft, Jaipur, Rajasthan', 'photo_frame.jpg', 'C:/xampp/htdocs/myproject/Mobile_Shop/uploads/', '.jpg'),
(6, 'Photo Frame 3', 'Frame', '12999', 'Manufacturer of Traditional \r\nArt Gallery Products \r\nPainting offered by Ganesha \r\nArt And Craft, Jaipur, Rajasthan', 'mahapurush.jpg', 'C:/xampp/htdocs/myproject/Mobile_Shop/uploads/', '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE `purchase_history` (
  `ph_id` int(11) NOT NULL,
  `oh` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `p_qty` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`ph_id`, `oh`, `p_name`, `p_price`, `p_qty`, `u_id`, `date`) VALUES
(1, 1, 'Redmi Note 5 Pro (Blue, 64 GB)  (4 GB RAM)', '12999', '1', 1, '2018-10-10 19:57:43'),
(2, 2, 'Nokia 6.1 Plus (Blue, 64 GB)  (4 GB RAM)', '14999', '1', 3, '2018-10-11 10:02:41'),
(3, 3, 'Horse Painting', '10000', '1', 4, '2018-10-15 13:05:03'),
(4, 4, 'Horse Painting', '10000', '1', 5, '2018-10-15 13:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `fname`, `lname`, `username`, `email`, `password`, `status`) VALUES
(1, 'gajen', 'pradhan', 'gajen', 'admin@admin.com', 'admin', 'admin'),
(2, 'Muhammad', 'Sameer', 'sameer', 'ms@ms.com', 'user', ''),
(3, 'yugesh', 'verma', 'yugesh', 'yugesh@gmail.com', '12345', ''),
(4, 'gopi', 'pal', 'gopipal', 'gopipal@gmail.com', '123456', ''),
(5, 'ravi', 'pal', 'ravipal', 'ravipal@gmail.com', '123456', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
