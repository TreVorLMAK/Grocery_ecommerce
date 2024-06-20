
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;


-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `street`, `city`, `password`, `phone`) VALUES
(5, 'bimal', 'bimalbruh@gmail.com', 'svsdvs', 'svdsvs', 'bimal123', '9518786014'),
(7, 'admin', 'admin@gmail.com', 'dvssdvsd', 'dvssdv', 'admin123', '8149992015'),
(8, 'aso', 'krishna@gmail.com', 'svdsds', 'vsdvs', 'krishna123', '1223451334');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(100) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  `admin_name` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `admin_name`) VALUES
(12, 'Nestle', 'bimbimalbruh@gmail.com'),
(13, 'Other', 'bimbimalbruh@gmail.com'),
(14, 'kitchen', 'bimbimalbruh@gmail.com'),
(15, 'household', 'bimbimalbruh@gmail.com'),
(16, 'personal care', 'bimbimalbruh@gmail.com'),
(17, 'bakery, eggs and meat', 'bimbimalbruh@gmail.com'),
(18, 'snacks', 'bimbimalbruh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  `admin_name` text NOT NULL,
  `cat_name` text DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `admin_name`, `cat_name`) VALUES
(15, 'water and beverages', 'bimalbruh@gmail.com', 'water_and_beverages'),
(16, 'fruits and vegetables', 'bimalbruh@gmail.com', 'fruits_and_vegetables'),
(17, 'staples', 'bimalbruh@gmail.com', 'staples'),
(18, 'branded food', 'bimalbruh@gmail.com', 'branded_food'),
(19, 'breakfast and cereal', 'bimalbruh@gmail.com', 'breakfast_and_cereal'),
(20, 'snacks', 'bimalbruh@gmail.com', 'snacks'),
(21, 'spices', 'bimalbruh@gmail.com', 'spices'),
(22, 'sweets', 'bimalbruh@gmail.com', 'sweets'),
(23, 'pickle and condiment', 'bimalbruh@gmail.com', 'pickle_and_condiment'),
(24, 'instant food', 'bimalbruh@gmail.com', 'instant_food'),
(25, 'dryfruit', 'bimalbruh@gmail.com', 'dryfruit'),
(27, 'ayurvedic', 'bimalbruh@gmail.com', 'ayurvedic'),
(28, 'babycare', 'bimalbruh@gmail.com', 'babycare'),
(29, 'cosmetics', 'bimalbruh@gmail.com', 'cosmetics'),
(30, 'deo and perfumes', 'bimalbruh@gmail.com', 'deo_and_perfumes'),
(31, 'haircare', 'bimalbruh@gmail.com', 'haircare'),
(32, 'oralcare', 'bimalbruh@gmail.com', 'oralcare'),
(33, 'personal hygiene', 'bimalbruh@gmail.com', 'personal_hygiene'),
(34, 'skincare', 'bimalbruh@gmail.com', 'skincare'),
(35, 'fashion accessories', 'bimalbruh@gmail.com', 'fashion_accessories'),
(36, 'grooming tools', 'bimalbruh@gmail.com', 'grooming_tools'),
(37, 'shaving needs', 'bimalbruh@gmail.com', 'shaving_needs'),
(38, 'sanitary needs', 'bimalbruh@gmail.com', 'sanitary_needs'),
(39, 'noodles and pasta', 'bimalbruh@gmail.com', 'noodles_and_pasta'),
(41, 'biscuit and cookies', 'bimalbruh@gmail.com', 'biscuit_and_cookies'),
(42, 'sauces and ketchups', 'bimalbruh@gmail.com', 'sauces_and_ketchups'),
(43, 'chocolates and candies', 'bimalbruh@gmail.com', 'chocolates_and_candies'),
(44, 'frozen veggies', 'bimalbruh@gmail.com', 'frozen_veggies'),
(45, 'snacks and namkeen', 'bimalbruh@gmail.com', 'snacks_and_namkeen'),
(46, 'indian mithai', 'bimalbruh@gmail.com', 'indian_mithai'),
(47, 'breads and buns', 'bimalbruh@gmail.com', 'breads_and_buns'),
(48, 'dairy', 'bimalbruh@gmail.com', 'dairy'),
(49, 'cakes and pastries', 'bimalbruh@gmail.com', 'cakes_and_pastries'),
(50, 'rusk and khari', 'bimalbruh@gmail.com', 'rusk_and_khari'),
(51, 'eggs', 'bimalbruh@gmail.com', 'eggs'),
(52, 'poultry', 'bimalbruh@gmail.com', 'poultry'),
(53, 'mutton and lamb', 'bimalbruh@gmail.com', 'mutton_and_lamb'),
(54, 'fish and seafood', 'bimalbruh@gmail.com', 'fish_and_seafood'),
(55, 'pork and others', 'bimalbruh@gmail.com', 'pork_and_others'),
(56, 'icecream', 'bimalbruh@gmail.com', 'icecream'),
(57, 'cleaning accessories', 'bimalbruh@gmail.com', 'cleaning_accessories'),
(58, 'cookwear', 'bimalbruh@gmail.com', 'cookwear'),
(59, 'detergents', 'bimalbruh@gmail.com', 'detergents'),
(60, 'gardening', 'bimalbruh@gmail.com', 'gardening'),
(61, 'kitchen and dining', 'bimalbruh@gmail.com', 'kitchen_and_dining'),
(62, 'kitchenwear', 'bimalbruh@gmail.com', 'kitchenwear'),
(63, 'petcare', 'bimalbruh@gmail.com', 'petcare'),
(64, 'plasticwear', 'bimalbruh@gmail.com', 'plasticwear'),
(65, 'pooja needs', 'bimalbruh@gmail.com', 'pooja_needs'),
(66, 'safety accessories', 'bimalbruh@gmail.com', 'safety_accessories'),
(67, 'festive decoratives', 'bimalbruh@gmail.com', 'festive_decoratives'),
(68, 'toys and gifts', 'bimalbruh@gmail.com', 'toys_and_gifts');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `street`, `city`, `password`, `phone`) VALUES
(1, 'bimalbruh', 'bimalbruh@gmail.com', 'D6cc', 'chincccchwad', 'bimal123', '9518786014'),
(2, 'admin', 'admin@gmail.com', 'Kdccdvencccagar', 'Punedcdc', 'admin123', '1234567890'),
(3, 'aso', 'aso@gmail.com', 'adcdacac', 'acsascas', 'aso123', '123457890'),
(4, 'ugjbkjj', '2312dd@gmail.com', 'Erbil/sharawany', 'Erbil', '123456789', '33333424234');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `username`, `email`, `street`, `city`, `phone`) VALUES
(1, 'delivery', 'bimalbruh@gmail.com', 'hdfc', 'puneadca', '1234567890'),
(2, 'delivery2', 'aso@gmail.com', 'kakde park', 'pune', '122111112'),
(95, 'delivery3', 'cdr@gmail.com', 'dvsvsd', 'dvsds', '01234567890');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) DEFAULT NULL,
  `product_price` int(100) DEFAULT NULL,
  `product_qty` int(100) DEFAULT NULL,
  `product_image` text DEFAULT NULL,
  `admin_name` text DEFAULT NULL,
  `payment_id` text DEFAULT NULL,
  `payment_status` text DEFAULT NULL,
  `buyer_email` text DEFAULT NULL,
  `buyer_phone` text DEFAULT NULL,
  `buyer_name` text DEFAULT NULL,
  `order_date` varchar(250) DEFAULT NULL,
  `delivery_status` text DEFAULT NULL,
  `shipping_method` varchar(250) DEFAULT NULL,
  `buyer_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_title`, `product_price`, `product_qty`, `product_image`, `admin_name`, `payment_id`, `payment_status`, `buyer_email`, `buyer_phone`, `buyer_name`, `order_date`, `delivery_status`, `shipping_method`, `buyer_address`) VALUES
(39, 'Soya Chunks (1Kg)', 5500, 1, 'images/1560280805_of3.png', 'bimalbruh@gmail.com', 'COD600103430', 'Cod', '2312dd@gmail.com', '33333424234', 'ugjbkjj', '07/07/2020 21:48:11', 'ND', 'Normal', 'Lakeside,Pokhara '),
(40, 'Kabuli Chana (1Kg)', 4500, 1, 'images/1560280766_of2.png', 'bimalbruh@gmail.com', 'COD600103430', 'Cod', '2312dd@gmail.com', '33333424234', 'ugjbkjj', '07/07/2020 21:48:11', 'ND', 'Normal', 'Lakeside,Pokhara '),
(42, 'Bitter Gourd (1 kg)', 1500, 6, './images/1560323684_of10.png', 'bimalbruh@gmail.com', 'COD600103430', 'Cod', '2312dd@gmail.com', '33333424234', 'ugjbkjj', '07/07/2020 21:48:11', 'ND', 'Normal', 'Lakeside,Pokhara ');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `admin_name` text DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_cat` (`product_cat`),
  KEY `fk_product_brand` (`product_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `admin_name`) VALUES
(2, 17, 14, 'Moong Dal (200g)', 2000, 5, 'Fresh and healthy Moong Dal', '1560272048_of.png', 'bimalbruh@gmail.com'),
(3, 17, 14, 'Sunflower Oil (5Kg)', 1000, 10, 'Fresh Sunflower Oil', '1560280713_of1.png', 'bimalbruh@gmail.com'),
(4, 17, 14, 'Kabuli Chana (1Kg)', 4500, 5, 'Kabuli Chana', '1560280766_of2.png', 'bimalbruh@gmail.com'),
(5, 17, 14, 'Soya Chunks (1Kg)', 5500, 20, 'Soya Chunks', '1560280805_of3.png', 'bimalbruh@gmail.com'),
(6, 20, 18, 'Lays (100g)', 2000, 20, 'Tasty Spicy Lays', '1560321892_of4.png', 'bimalbruh@gmail.com'),
(7, 20, 18, 'Kurkure (100g)', 2000, 10, 'Tasty, Spicy and Salty Snack', '1560321938_of5.png', 'bimalbruh@gmail.com'),
(8, 20, 18, 'Popcorn (250 g)', 3000, 10, 'Tasty Popcorns', '1560322049_of6.png', 'bimalbruh@gmail.com'),
(9, 20, 14, 'Nuts (250 g)', 4500, 50, 'Health Nuts', '1560322089_of7.png', 'bimalbruh@gmail.com'),
(10, 19, 14, 'Honey (500 g)', 9000, 10, 'Fresh, Healthy and Tasty Honey', '1560323321_of12.png', 'bimalbruh@gmail.com'),
(11, 19, 18, 'Chocos (250 g)', 5500, 10, 'Chocolaty Chocos', '1560323379_of13.png', 'bimalbruh@gmail.com'),
(12, 19, 14, 'Oats (1 kg)', 5000, 10, 'Healthy Oats', '1560323484_of14.png', 'bimalbruh@gmail.com'),
(13, 47, 17, 'Bread (500 g)', 2500, 20, 'Brown Bread', '1560323526_of15.png', 'bimalbruh@gmail.com'),
(14, 16, 14, 'Banana (6 pcs)', 2000, 60, 'Tasty Bananas', '1560323604_of8.png', 'bimalbruh@gmail.com'),
(15, 16, 14, 'Onion (1 kg)', 2000, 20, 'Fresh Onion', '1560323639_of9.png', 'bimalbruh@gmail.com'),
(16, 16, 14, 'Bitter Gourd (1 kg)', 1500, 10, 'Bitter Gourd', '1560323684_of10.png', 'bimalbruh@gmail.com'),
(17, 16, 14, 'Apples (1 kg)', 1000, 20, 'Tasty Red Apples', '1560323747_of11.png', 'bimalbruh@gmail.com'),
(18, 34, 16, 'Moisturiser (500 g)', 9000, 10, 'Moisturize your skin', '1560342395_of16.png', 'bimalbruh@gmail.com'),
(19, 67, 15, 'Ribbon (1 pc)', 1500, 20, 'Ribbon Your Gifts', '1560342521_of18.png', 'bimalbruh@gmail.com'),
(20, 57, 15, 'Clips (10 pc)', 2000, 10, 'Clips for your Clothes', '1560342587_of20.png', 'bimalbruh@gmail.com'),
(21, 31, 16, 'Conditioner (200 g)', 5500, 20, 'Hair conditioner', '1560342648_of21.png', 'bimalbruh@gmail.com'),
(22, 38, 15, 'Cleaner (500 g)', 7000, 20, 'Bathroom Cleaner', '1560342712_of22.png', 'bimalbruh@gmail.com'),
(24, 31, 16, 'Hair Gel (250 g)', 6000, 25, 'Good hair everyday', '1560342839_of23.png', 'bimalbruh@gmail.com'),
(25, 16, 14, 'Grapes (200 g)', 5000, 100, 'Fresh and Tasty Green Grapes', '1560342973_of19.png', 'bimalbruh@gmail.com'),
(26, 16, 14, 'Lady Finger (250 g)', 2000, 20, 'Fresh Lady Fingers for your meal', '1560343032_of17.png', 'bimalbruh@gmail.com'),
(27, 33, 14, 'dsv', 454543, 41, 'vdsvd', '1594149382_me.jpg', 'admin@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
