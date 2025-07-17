-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2025 at 01:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_zone`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `a_id` int(11) NOT NULL,
  `dp_id` int(11) DEFAULT NULL,
  `area_name` varchar(50) DEFAULT NULL,
  `pin_code` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`a_id`, `dp_id`, `area_name`, `pin_code`) VALUES
(8, NULL, 'Ambawadi', '380006'),
(9, NULL, 'Anandnagar', '380007'),
(10, NULL, 'Asarwa Chakla', '380016'),
(11, NULL, 'Asarwa Ext South', '380024'),
(12, NULL, 'Ashram Road P.O', '380009'),
(13, NULL, 'Azad Society', '380015'),
(14, NULL, 'Bapunagar', '380024'),
(15, NULL, 'Behrampura', '380022'),
(16, NULL, 'Bhairavnath Road', '380028'),
(17, NULL, 'Bodakdev', '380054'),
(18, NULL, 'Calico Mills', '380022'),
(19, NULL, 'Cantonment', '380004'),
(20, NULL, 'Civil Hospital', '380016'),
(21, NULL, 'Ctm Char Rasta', '380026'),
(22, NULL, 'D Cabin', '380019'),
(23, NULL, 'Dariapur Ahmedabad', '380001'),
(24, NULL, 'Darpan Society', '380009'),
(25, NULL, 'Daxini Society', '380008'),
(26, NULL, 'Delhi Gate Ahmedabad', '380004'),
(27, NULL, 'District Court Ahmedabad', '380001'),
(28, NULL, 'Dudheshwar Tavdipura', '380004'),
(29, NULL, 'Ellisbridge', '380006'),
(30, NULL, 'Gandhi Ashram Ahmedabad', '380027'),
(31, NULL, 'Gandhi Road Ahmedabad', '380001'),
(32, NULL, 'Gheekanta Road', '380001'),
(33, NULL, 'Ghodasar Ahmedabad', '380050'),
(34, NULL, 'Girdharnagar', '380004'),
(35, NULL, 'Gita Mandir Road', '380022'),
(36, NULL, 'Gomtipur', '380021'),
(37, NULL, 'Gujarat University', '380009'),
(38, NULL, 'Gyaspur', '382405'),
(40, NULL, 'I E Bapunagar', '380024'),
(41, NULL, 'I I M', '380015');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `pro_id`, `c_id`, `quantity`) VALUES
(21, 17, 12, 1),
(27, 4, 15, 1),
(45, 24, 16, 5),
(47, 24, 14, 1),
(65, 24, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `default_address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `default_area` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `username`, `email`, `default_address`, `password`, `phone_number`, `default_area`) VALUES
(1, 'jinal', 'jinal@gmail.com', '', '123', '', NULL),
(2, 'aasima', 'aasimamansuri56@gmail.com', '', '123', '', NULL),
(3, 'sujal', 'suujal@gmail.com', '', '123', '', NULL),
(4, 'jin', 'jin@gmail.com', '', '123', '', NULL),
(5, 'jinu', 'jinu@gmail.com', '', '123', '', NULL),
(6, 'poonam', 'poonam@gmail.com', '', '123', '', NULL),
(7, 'jjj', 'jjj@gmail.com', '', '123', '', NULL),
(8, 'aaa', 'aaa@gmail.xom', '', '123', '', NULL),
(9, 'pravin', 'pravin@gmail.com', '', '123', '', NULL),
(10, 'xxx', 'xxx@gmail.com', '', '123', '', NULL),
(11, 'aaaa', 'aaaa@gmail.com', '', '123', '', NULL),
(12, 'jimmy', 'jimmy@gmail.com', '', '12345', '', NULL),
(13, 'mmom', 'mom@gmail.com', '', '1234', '', NULL),
(14, 'romil', 'romil@gmail.com', '', '1234', '', NULL),
(15, 'ddd', 'ddd@gmail.com', '', '1234', '', NULL),
(16, 'ppp', 'ppp@gmail.com', '', '1234', '', NULL),
(17, 'jst', 'js2gmail@gmail.com', '', 'JS1234', '', NULL),
(18, 'krina', 'krina@gmail.com', NULL, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', NULL, NULL),
(19, 'mina', 'mina@gmail.com', NULL, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', NULL, NULL),
(20, 'khushi', 'khushi@gmail.com', NULL, '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_person`
--

CREATE TABLE `delivery_person` (
  `dp_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `order_area1` varchar(100) DEFAULT NULL,
  `order_area2` varchar(100) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `total_delivery` int(11) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_person`
--

INSERT INTO `delivery_person` (`dp_id`, `name`, `email`, `password`, `order_area1`, `order_area2`, `join_date`, `total_delivery`, `salary`) VALUES
(1, 'jinal', 'jinal@gmail.com', '1234', '380007', '380013', '2024-06-23', 2, 12000.00),
(6, 'nimesh', 'nimesh@gmail.com', '123', '380006', '380016', '2025-01-04', 0, 12000.00),
(7, 'yogesh', 'yogesh@gmail.com', '123', '380024', '380022', '2025-01-04', 0, 12000.00),
(8, 'kishan', 'kishan@gmail.com', '123', '380015', '380009', '2025-01-04', 0, 12000.00),
(9, 'kamal', 'kamal@gmail.com', '123', '380028', '380054', '2025-01-04', 0, 12000.00),
(10, 'kamal', 'kamal@gmail.com', '123', '380028', '380054', '2025-01-04', 0, 12000.00),
(16, 'deep', 'deep@gmail.com', '123', '380022', '380004', '2025-01-04', 0, 12000.00),
(17, 'fenil', 'fenil@gmail.com', '123', '380016', '380026', '2025-01-04', 0, 12000.00),
(18, 'heet', 'heet@gmail.com', '123', '380019', '380001', '2025-01-04', 0, 12000.00),
(19, 'lemin', 'lemin@gmail.com', '123', '380009', '380008', '2025-01-04', 0, 12000.00),
(20, 'aman', 'aman@gmail.com', '123', '380004', '380001', '2025-01-04', 0, 12000.00),
(21, 'umang', 'umang@gmail.com', '123', '380004', '380006', '2025-01-04', 0, 12000.00),
(22, 'jay', 'jay@gmail.com', '123', '380027', '380001', '2025-01-04', 0, 12000.00),
(23, 'PARIN', 'parin@gmail.com', '123', '380001', '380050', '2025-01-04', 0, 12000.00),
(24, 'neel', 'neel@gmail.com', '123', '380004', '380022', '2025-01-04', 0, 12000.00),
(25, 'dev', 'dev@gmail.com', '123', '380021', '380009', '2025-01-04', 0, 12000.00),
(26, 'rohit', 'rohit@gmail.com', '123', '380004', '382405', '2025-01-04', 0, 12000.00),
(27, 'himmat', 'himmat@gmail.com', '123', '380001', '380018', '2025-01-04', 0, 12000.00),
(28, 'suraj', 'suraj@gmail.com', '123', '380014', '380052', '2025-01-04', 0, 12000.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `username`, `email`, `password`, `role`, `hire_date`, `salary`) VALUES
(4, 'yamin', 'yamin@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, NULL, NULL),
(5, 'aasma', 'x@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, NULL, NULL),
(6, 'jin', 'jin@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', NULL, NULL, NULL),
(7, 'xxx', 'xxx@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', NULL, NULL, NULL),
(8, 'kkk', 'kkk@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, NULL, NULL),
(9, 'xxx', 'xxxx@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, NULL, NULL),
(10, 'kkk', 'k@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `c_id`, `pro_id`, `content`, `rating`) VALUES
(1, 18, 22, 'it\'s so beautiful.', 5),
(3, 18, 20, 'it looks good.', 4),
(4, 18, 3, 'it is good', 5);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `img_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`img_id`, `path`, `pro_id`, `created_at`) VALUES
(3, 'img/product_img/p3.jpg', 3, '2024-12-01 17:40:37'),
(4, 'img/product_img/p4.jpg', 4, '2024-12-01 17:40:37'),
(5, 'img/product_img/p5.jpg', 5, '2024-12-01 17:40:37'),
(6, 'img/product_img/p6.jpg', 6, '2024-12-01 17:40:37'),
(7, 'img/product_img/p7.jpg', 7, '2024-12-01 17:40:37'),
(8, 'img/product_img/p8.jpg', 8, '2024-12-01 17:40:37'),
(9, 'img/product_img/p9.jpg', 9, '2024-12-01 17:40:37'),
(10, 'img/product_img/p10.jpg', 10, '2024-12-01 17:40:37'),
(11, 'img/product_img/p11.jpg', 11, '2024-12-01 17:40:37'),
(12, 'img/product_img/p12.jpg', 12, '2024-12-01 17:40:37'),
(13, 'img/product_img/p13.jpg', 13, '2024-12-01 17:40:37'),
(14, 'img/product_img/p14.jpg', 14, '2024-12-01 17:40:37'),
(15, 'img/product_img/p15.jpg', 15, '2024-12-01 17:40:37'),
(16, 'img/product_img/p16.jpg', 16, '2024-12-01 17:40:37'),
(17, 'img/product_img/p17.jpg', 17, '2024-12-01 17:40:37'),
(18, 'img/product_img/p18.jpg', 18, '2024-12-01 17:40:37'),
(19, 'img/product_img/p19.jpg', 19, '2024-12-01 17:40:37'),
(20, 'img/product_img/p20.jpg', 20, '2024-12-01 17:40:37'),
(21, 'img/product_img/p21.jpg', 21, '2024-12-01 17:40:37'),
(22, 'img/product_img/p22.jpg', 22, '2024-12-01 17:40:37'),
(23, 'img/product_img/p23.jpg', 23, '2024-12-01 17:40:37'),
(24, 'img/product_img/p24.jpg', 24, '2024-12-01 17:40:37'),
(25, 'img/product_img/p25.jpg', 25, '2024-12-01 17:40:37'),
(26, 'img/product_img/p26.jpg', 26, '2024-12-01 17:40:37'),
(27, 'img/product_img/p27.jpg', 27, '2024-12-01 17:40:37'),
(28, 'img/product_img/p28.jpg', 28, '2024-12-01 17:40:37'),
(29, 'img/product_img/p29.jpg', 29, '2024-12-01 17:40:37'),
(30, 'img/product_img/p30.jpg', 30, '2024-12-01 17:40:37'),
(31, 'img/product_img/p31.jpg', 31, '2024-12-01 17:40:37'),
(32, 'img/product_img/p32.jpg', 32, '2024-12-01 17:40:37'),
(33, 'img/product_img/p33.jpg', 33, '2024-12-01 17:40:37'),
(34, 'img/product_img/p34.jpg', 34, '2024-12-01 17:40:37'),
(35, 'img/product_img/p35.jpg', 35, '2024-12-01 17:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `dp_id` int(11) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `num_of_items` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `p_id`, `c_id`, `dp_id`, `order_status`, `num_of_items`, `order_date`, `pincode`, `delivery_date`, `shipping_address`) VALUES
(1, 27, 14, 1, 'Processing', 5, '2024-01-25', '380007', NULL, 'dzshxfn'),
(2, 28, 14, 1, 'Order Placed', 1, '2024-02-25', '380007', NULL, '13/101, Ratnadeep apartment, near d.p. school '),
(4, 30, 17, 1, 'Order Placed', 4, '2024-03-26', '380007', NULL, 'j-101, Abhishek apartment ,near Ganesh collage, Nava Vadaj ,Ahmedabad , Gujarat'),
(5, 31, 18, 1, 'Order Placed', 2, '2024-05-26', '380007', NULL, '202, vinay appartment, aanadnagar'),
(6, 32, 18, 1, 'Order Placed', 1, '2024-06-26', '380007', NULL, '202, vinay appartment, aanadnagar'),
(7, 33, 20, 1, 'delivered', 2, '2024-10-27', '380007', NULL, '401,tirupati appartment'),
(9, 35, 20, 1, 'Order Placed', 1, '2023-12-21', '380007', NULL, '602'),
(10, 36, 18, 1, 'Order Placed', 4, '2025-01-04', '380007', NULL, 'j-101, Abhishek apartment ,near Ganesh collage, Nava Vadaj ,Ahmedabad , Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `order_line_item`
--

CREATE TABLE `order_line_item` (
  `order_line_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `prize` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_line_item`
--

INSERT INTO `order_line_item` (`order_line_item_id`, `order_id`, `pro_id`, `quantity`, `prize`) VALUES
(1, 1, 22, 2, NULL),
(2, 1, 23, 2, NULL),
(3, 1, 24, 1, NULL),
(4, 2, 22, 1, NULL),
(5, 4, 3, 1, NULL),
(6, 4, 5, 1, NULL),
(7, 4, 23, 2, NULL),
(8, 5, 23, 2, NULL),
(9, 6, 23, 1, NULL),
(10, 7, 4, 1, NULL),
(11, 7, 7, 1, NULL),
(12, 9, 7, 1, NULL),
(13, 10, 23, 1, NULL),
(14, 10, 4, 1, NULL),
(15, 10, 5, 1, NULL),
(16, 10, 7, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parent_category`
--

CREATE TABLE `parent_category` (
  `p_cat_id` int(11) NOT NULL,
  `p_cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `p_id` int(11) NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `payment_submit_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sub_cat_id` int(11) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `show_price` decimal(10,2) DEFAULT NULL,
  `actual_price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `pro_status` int(11) DEFAULT NULL,
  `reorder_limit` int(11) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `about` varchar(255) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `discounted_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_name` varchar(100) NOT NULL,
  `sub_cat_pic_path` varchar(100) NOT NULL,
  `p_cat_id` int(11) DEFAULT NULL,
  `total_products` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `w_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `pro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`w_id`, `c_id`, `pro_id`) VALUES
(8, 1, 24),
(14, 12, 4),
(29, 16, 24),
(32, 18, 7),
(33, 18, 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `dp_id` (`dp_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD PRIMARY KEY (`dp_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`img_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `dp_id` (`dp_id`);

--
-- Indexes for table `order_line_item`
--
ALTER TABLE `order_line_item`
  ADD PRIMARY KEY (`order_line_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `parent_category`
--
ALTER TABLE `parent_category`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `sub_cat_id` (`sub_cat_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_cat_id`),
  ADD KEY `p_cat_id` (`p_cat_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`w_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `delivery_person`
--
ALTER TABLE `delivery_person`
  MODIFY `dp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_line_item`
--
ALTER TABLE `order_line_item`
  MODIFY `order_line_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `parent_category`
--
ALTER TABLE `parent_category`
  MODIFY `p_cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`dp_id`) REFERENCES `delivery_person` (`dp_id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `payment` (`p_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`dp_id`) REFERENCES `delivery_person` (`dp_id`);

--
-- Constraints for table `order_line_item`
--
ALTER TABLE `order_line_item`
  ADD CONSTRAINT `order_line_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_line_item_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_category` (`sub_cat_id`);

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`p_cat_id`) REFERENCES `parent_category` (`p_cat_id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
