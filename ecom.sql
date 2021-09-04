-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2021 at 08:52 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_title` varchar(200) NOT NULL,
  `banner_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(4, 'Grocery & Staples', 1),
(6, 'Dairy & Eggs', 1),
(7, 'Beverages', 1),
(8, 'Vegetables & Fruits', 1),
(9, 'Snacks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'No Cap', 'nocap@gmail.com', '1234567890', 'Test Query', '2020-01-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `added_on`) VALUES
(3, 4, 'Vulture St, Woolloongabba QLD 4102, Australia', 'Sydney', 6542, 'Credit/Debit', 3.9, 'Pending', 1, '2021-08-29 08:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(5, 3, 21, 1, 3.9);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `status`) VALUES
(12, 7, 'Naked Life Virgin Margarita 250ml X4 Pack', 12, 10, 4, '951211901_naked life.jpg', 'Naked Life Virgin Margarita 250ml X4 Pack', 'Naked Life Virgin Margarita 250ml X4 Pack', 0, 1),
(13, 7, 'Running With Bulls Tempranillo 750ml', 25, 20, 1, '161154502_bull.webp', 'This one starts with a deep crimson colour and only gets bolder from there. Running with Bulls Tempranillo has blueberries, black cherry and cocoa powder aromas and flavours of juicy redcurrants and blueberries. An easy drinking and versatile red blend to add to your favourites.', 'This one starts with a deep crimson colour and only gets bolder from there. Running with Bulls Tempranillo has blueberries, black cherry and cocoa powder aromas and flavours of juicy redcurrants and blueberries. An easy drinking and versatile red blend to add to your favourites.', 0, 1),
(14, 6, 'Woolworths Drought Relief Full Cream Milk 3l', 3.25, 3.15, 1, '987912899_cream milk.jpg', 'At Woolworths, we care deeply and this new Drought Relief Milk range will offer our customers Woolworths Full Cream and Woolworths Lite Milk varieties at two litres and for three litres, with the extra 10 cents per litre to support dairy farmers in drought affected areas.', 'At Woolworths, we care deeply and this new Drought Relief Milk range will offer our customers Woolworths Full Cream and Woolworths Lite Milk varieties at two litres and for three litres, with the extra 10 cents per litre to support dairy farmers in drought affected areas.', 0, 1),
(15, 4, 'Sunrice White Rice Calrose Medium Grain 2kg', 7.2, 6.5, 1, '791639882_grain rice.jpg', 'SunRice Australian Medium Grain Calrose Rice is soft, tender and absorbent grains, suited to a wide variety of cuisines.\r\nThe medium sized grains are round, tender and lock in moisture, qualities favoured in Middle Eastern, Korean and Spanish cuisines. With a tendency to cling together, Medium Grain is also a great choice for delicious desserts.', 'SunRice Australian Medium Grain Calrose Rice is soft, tender and absorbent grains, suited to a wide variety of cuisines.\r\nThe medium sized grains are round, tender and lock in moisture, qualities favoured in Middle Eastern, Korean and Spanish cuisines. With a tendency to cling together, Medium Grain is also a great choice for delicious desserts.', 0, 1),
(16, 4, 'Sunrice Steamed Rice Basmati 2 Quick Cups 240g', 2.5, 2.2, 1, '796197943_rice.jpg', 'SunRice Quick Cups Basmati Fragrant Rice is gluten free. No preservatives and no artificial colours or flavours.\r\nMicrowave in 40 secs.', 'SunRice Quick Cups Basmati Fragrant Rice is gluten free. No preservatives and no artificial colours or flavours.\r\nMicrowave in 40 secs.', 0, 1),
(17, 8, 'Yello Apple Each', 1.7, 1.56, 1, '452500846_yello apple.jpg', 'The new generation of a yellow apple. The apple to create a colour burst . yelloâ„¢ apple is a cross between a Golden Delicious and the Senshu apple. The exciting apple is one for the food lovers and inspiring innovative chefs. Known for its golden yellow skin, yelloâ„¢ features a complex sweet flavour that is set to change the Australian apple market.', 'The new generation of a yellow apple. The apple to create a colour burst . yelloâ„¢ apple is a cross between a Golden Delicious and the Senshu apple. The exciting apple is one for the food lovers and inspiring innovative chefs. Known for its golden yellow skin, yelloâ„¢ features a complex sweet flavour that is set to change the Australian apple market.', 0, 1),
(18, 8, 'Woolworths Fresh Pink Lady Apples 1kg', 4, 3.85, 1, '742555724_apple.jpg', 'Large round shaped fruit with pink/red skin with a firm, sweet, crisp, juicy and cream coloured flesh.\r\nSold in a 1kg punnet.', 'Large round shaped fruit with pink/red skin with a firm, sweet, crisp, juicy and cream coloured flesh.\r\nSold in a 1kg punnet.', 0, 1),
(19, 8, 'Woolworths Broccolini Bunch Each', 3.2, 3, 1, '648719667_brocoli.jpg', 'This is a natural cross between broccoli and Chinese broccoli (gai lan).\r\nIt has a long slender stem topped with small flowering buds that are\r\na cross between broccoli florets and an asparagus tip.', 'This is a natural cross between broccoli and Chinese broccoli (gai lan).\r\nIt has a long slender stem topped with small flowering buds that are\r\na cross between broccoli florets and an asparagus tip.', 0, 1),
(20, 8, 'Hass Avocado Each', 1, 0.9, 1, '696770803_avocado.jpg', 'This product varies by state. Please review the product packaging for specific details when you receive this product, including nutritional information and country of origin, before consuming.', 'This product varies by state. Please review the product packaging for specific details when you receive this product, including nutritional information and country of origin, before consuming.', 0, 1),
(21, 9, 'Oreo Mini Multipack Original 23g X 10 Pack', 3.99, 3.9, 1, '852645470_orio.jpg', 'he little brother to the Original cookie Mini Oreo bite size, pop-able, no mess treats.\r\n\r\nPerfect for a lunch box treat or an afternoon snack.', 'he little brother to the Original cookie Mini Oreo bite size, pop-able, no mess treats.\r\n\r\nPerfect for a lunch box treat or an afternoon snack.', 0, 1),
(22, 9, 'Choc Chip Minis 8 Pack 180g', 2.35, 2.3, 8, '969335763_choco.jpg', 'Made in Australia from at least 78% Australian ingredient', 'Made in Australia from at least 78% Australian ingredient', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(4, 'no cap', 'nocap', 'nocap@gmail.com', '1451247415', '2021-04-25 07:54:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
