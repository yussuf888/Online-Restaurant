-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2014 at 06:10 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `applebee`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE IF NOT EXISTS `administration` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`Username`, `Password`, `Position`) VALUES
('admin', '1234', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
`serial` int(11) NOT NULL,
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `Password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Gender` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Birthday` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `Poscode` int(11) NOT NULL,
  `State` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Country` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `phone` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
`feedback_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

-- --------------------------------------------------------

--
-- Table structure for table `myorder`
--

CREATE TABLE IF NOT EXISTS `myorder` (
`Order_ID` int(11) NOT NULL,
  `order_total` varchar(100) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Time` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Poscode` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`serial` int(11) NOT NULL,
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `description` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `price` float NOT NULL,
  `picture` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `Category` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`serial`, `name`, `description`, `price`, `picture`, `Category`) VALUES
(7, 'APPETIZER SAMPLER', 'Mozzarella Sticks, Artichoke Dip, Cheese Quesadilla Grande & Boneless Wing.', 12.99, '1.jpg', 'APPETIZER'),
(8, 'MOZZARELLA STICKS', 'Golden fried and served with a tasty marinara sauce.', 7.29, '2.jpg', 'APPETIZER'),
(9, 'BREW PUB PRETZELS & ', 'White cheddar mixed with warm pretzel sticks.', 5.99, '3.jpg', 'APPETIZER'),
(10, 'CRUNCHY ONION RINGS', 'Bring the crunch with these golden fried, bread crumb-coated, thick-cut rings', 6.99, '4.jpg', 'APPETIZER'),
(11, 'CLASSIC WINGS', 'Tossed in your choice of sauce.', 9.29, '5.jpg', 'APPETIZER'),
(12, 'BLUE RIBBON BROWNIE ', 'Super moist with hunks of dark chocolate, nuts and hot fudge.', 3.99, '6.jpg', 'DESSERT'),
(13, 'STRAWBERRY CHEESE', 'Classic cheesecake, graham cracker crumbs, strawberry sauce', 4.99, '7.jpg', 'DESSERT\r\n'),
(14, 'OREO COOKIE SHAKE', 'Yummy vanilla ice cream with tons of Oreo cookies blended in.', 5.99, '8.jpg', 'DESSERT'),
(15, 'DOUBLE CRUNCH SHRIMP', 'Succulent shrimp golden fried to crunchy perfection is served with fries, cole slaw and cocktail sauce.', 12.79, '9.jpg', 'MAIN DISHES'),
(16, 'FIESTA LIME CHICKEN', 'Grilled chicken done fiesta-style with zesty lime sauce, Mexi- ranch and Jack-cheddar.', 11.59, '10.jpg', 'MAIN DISHES'),
(17, 'HAND-BATTERED FISH &', 'Cold-water white fish fillets, hand-dipped in a light batter and golden fried', 11.69, '11.jpg', 'MAIN DISHES'),
(18, '7 OZ. HOUSE SIRLOIN', 'Seasonal vegetables and your choice of garlic mashed potatoes or baked potato', 11.29, '12.jpg', 'MAIN DISHES'),
(19, 'SHRIMP ''N PARMESAN S', 'Succulent grilled shrimp, white wine scampi sauce and rich Italian cheeses top our juicy 9 oz.', 16.49, '13.jpg', 'MAIN DISHES'),
(20, 'BOURBON STREET STEAK', 'Pan-friA juicy, tender 9 oz. steak jazzed up with Cajun spices.', 14.59, '14.jpg', 'MAIN DISHES'),
(21, 'SIZZLING DOUBLE BARR', 'We start by grilling two 4 oz. sirloin steaks, flavored with blackened seasoning, garlic and thyme.', 12.79, '15.jpg', 'MAIN DISHES'),
(22, 'APPLEBEE''S RIBLETS', 'Our world-famous Riblets infused with Applewood smoked flavor and basted.', 12.29, '16.jpg', 'MAIN DISHES'),
(23, 'DECADENT SHAKES', 'Choose from Oreo Cookie, chocolate, strawberry. Served with whipped cream.', 3.99, '17.jpg', 'BEVERAGE'),
(24, 'FLAVORED LEMONADES', 'Choose from pomegranate, raspberry, mango or kiwi flavors.', 1.99, '18.jpg', 'BEVERAGE'),
(25, 'BREWED ICED TEA', 'Brewed fresh, daily.', 1.99, '19.jpg', 'BEVERAGE'),
(26, 'STRAWBERRY QUENCHER ', 'We are blending the sweet taste of strawberry with tart and tangy lemonade and mixing it all with fresh strawberry slices for one unbelievably refreshing beverage.', 2.29, '20.jpg', 'BEVERAGE'),
(27, 'FLAVORED ICED TEAS', 'Choose from pomegranate, raspberry, mango or kiwi flavors.', 1.99, '21.jpg', 'BEVERAGE'),
(28, 'FIREBALL WHISKEY LEM', 'Tito Handmade Vodka, strawberry, lemonade and Fireball whisky.', 3.39, '22.jpg', 'BEVERAGE'),
(29, 'APPLEBEE''S BAHAMA M', 'Malibu coconut rum, creme de banana liqueur, pineapple juice, orange juice and grenadine.', 2.89, '23.jpg', 'BEVERAGE'),
(30, 'SKINNYBEE BLUEBERRY ', 'Around 130 calories, Hornito''s tequila, DaVinci Skinnilicious mix and blueberries.', 4.99, '24.jpg', 'BEVERAGE'),
(31, 'asa', 'asa', 1, '2.jpg', 'BEVERAGE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`feedback_ID`);

--
-- Indexes for table `myorder`
--
ALTER TABLE `myorder`
 ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`serial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `feedback_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `myorder`
--
ALTER TABLE `myorder`
MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
