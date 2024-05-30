-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 11:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catering_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `date_created`) VALUES
(1, 'Non veg', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);&quot;&gt;The star of the thali is usually the mutton curry, a rich and flavorful stew made with tender pieces of goat meat cooked in a blend of aromatic spices and herbs. The thali is often accompanied by other dishes such as dal, a lentil-based soup, raita, a yogurt-based condiment, and a variety of Indian bread like naan or roti&lt;/span&gt;&lt;br&gt;&lt;/p&gt;1,2021-08-04 11:37:48');
(2, 'Veg', '&lt;p&gt;&lt;span style=&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);&quot;&gt;Our Veg Indian Menu offers an array of mouthwatering vegetarian dishes made with fresh, high-quality ingredients. From delectable appetizers like crispy samosas and tangy chaat, to flavorful curries including classic favorites like chana masala and palak paneer, our menu is sure to please even the most discerning palates. Be sure to try our chef&#039;s specialties, such as baingan bharta and paneer makhani. With a variety of dishes that capture the essence of traditional Indian cuisine, our Veg Indian Menu is perfect for any occasion.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-08-04 11:38:12'),
(3, 'Desserts', '&lt;p&gt;&lt;span style=&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);&quot;&gt;Indulge in our dessert platter and satisfy your sweet cravings with a delicious selection of treats. The platter features our signature Gulab Jamun, a classic Indian dessert made with deep-fried dough balls soaked in a sweet syrup, as well as a creamy and rich Kheer, a traditional rice pudding delicately flavored with cardamom and saffron. Our Malpua, a fluffy pancake-like dessert drizzled with sweet syrup, is a must-try. The platter also includes a refreshing fruit salad, and a variety of cookies and pastries to complete your sweet experienc&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-08-04 11:38:44'),
(5, 'Drinks', '&lt;p&gt;&lt;span style=&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);&quot;&gt;Our Drinks Menu features a range of refreshing beverages to complement your meal or quench your thirst. Choose from our selection of non-alcoholic drinks, including sodas, juices, iced teas, and more. For those looking for something a bit stronger, our menu also includes a variety of alcoholic beverages, from classic cocktails to premium spirits and wines. Whether you&#039;re looking for a refreshing drink to enjoy on a hot summer day or a nightcap to savor after a meal, our Drinks Menu has something for everyone&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-08-04 12:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `address`, `date_created`) VALUES
(1, 'Sanket', 'Muluk', 'Male', '09123456789', 'an@sample.com', 'admin', 'Sample Address', '2024-08-04 14:31:09');
(2, 'Atharva', 'Kakade', 'Male', '1', 'kakadeatharva25@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Pune', '2024-05-07 14:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `type_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `type_name`, `description`, `price`, `date_created`, `date_updated`) VALUES
(9, 8, 'Special', '100 people 75 kgs', 100000, '2023-05-07 20:05:18', '2021-08-04 14:07:52'),
(10, 9, 'Hyderabadi', '100 Platter 75kgs', 50000, '2023-05-07 20:13:27'),
(11, 10, 'Seasonal', '100 Platter ', 20000, '2023-05-07 21:54:31'),
(12, 11, 'VIP', '100 Platter', 80000, '2023-05-07 21:59:02'),
(13, 12, 'Regional VIP', '100 Platter', 60000, '2023-05-07 22:04:58'),
(14, 13, 'Mithais', 'In Bulk around 5kgs each', 70000, '2023-05-07 22:12:12'),
(15, 14, 'Special', 'In Bulk around 5kgs each', 90000, '2023-05-07 22:16:16'),
(16, 15, 'Seasonal', '100Litres', 40000, '2023-05-07 22:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `event` varchar(250) NOT NULL,
  `venue` text NOT NULL,
  `event_date` datetime NOT NULL,
  `amount` double NOT NULL,
  `additional_remarks` text DEFAULT NULL,
  `additional_amount` float NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `event`, `venue`, `event_date`, `amount`, `additional_remarks`, `additional_amount`, `status`, `date_created`, `date_updated`) VALUES
(2, 2, 'dvsf', 'df', '2023-05-07 14:49:00', 1000, '0', 0, 1, '2023-05-07 14:50:07', '2023-05-07 14:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `inventory_id`, `quantity`, `price`, `total`) VALUES
(4, 2, 3, 1, 1000, 1000),
(5, 3, 11, 1, 20000, 20000),
(7, 5, 16, 1, 40000, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `title`, `description`, `status`, `date_created`) VALUES
(1, 1, 2, 'Chicken Thali', '&lt;p style=\&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\&quot;&gt;&lt;span style=\&quot;color: rgb(33, 37, 41); font-family: system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Noto Sans&amp;quot;, &amp;quot;Liberation Sans&amp;quot;, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; background-color: rgb(255, 255, 255);\&quot;&gt;The star of the thali is usually the chicken curry, a rich and flavorful stew made with tender pieces of goat meat cooked in a blend of aromatic spices and herbs. The thali is often accompanied by other dishes such as dal, a lentil-based soup, raita, a yogurt-based condiment, and a variety of Indian bread like naan or roti and Bhakri&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-08-04 11:51:13'),
(4, 1, 1, 'Mutton Thali', '&lt;p&gt;&lt;span style=\&quot;font-family: Tahoma;\&quot;&gt;﻿&lt;/span&gt;The star of the thali is usually the mutton curry, a rich and flavorful stew made with tender pieces of goat meat cooked in a blend of aromatic spices and herbs. The thali is often accompanied by other dishes such as dal, a lentil-based soup, raita, a yogurt-based condiment, and a variety of Indian bread like naan or roti and Bhakri&lt;/p&gt;', 1, '2021-08-04 12:00:32'),
(8, 1, 1, 'Mutton Biryani', '&lt;p&gt;&lt;span style=\&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);\&quot;&gt;Mutton biryani that features tender pieces of goat meat cooked in a flavorful blend of aromatic spices and layered with fragrant basmati rice. The dish is typically prepared by first marinating the meat in a mixture of yogurt, spices, and herbs to infuse it with flavor and tenderize it. The rice is then cooked separately with whole spices like cinnamon, cardamom, and bay leaves to add fragrance and depth of flavor.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-07 19:52:06'),
(9, 1, 2, 'Chicken Biryani', '&lt;p&gt;&lt;span style=\&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);\&quot;&gt;Our signature dish, made with tender pieces of chicken marinated in yogurt and spices, and cooked with fragrant basmati rice, aromatic spices, and herbs. Each layer is topped with fried onions, mint leaves, and saffron-infused milk, and cooked to perfection over low heat. Served with raita, a refreshing yogurt-based condiment, and a spicy pickle on the side. This classic Indian dish is a must-try for biryani lovers and is perfect for a hearty meal or special occasions.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-07 20:11:34'),
(10, 2, 7, 'Special Thali', '&lt;p&gt;Authentic Maharashtrians fav aamras thali served with Pooris and rotis (chappati) with batata bhaji and the very special main dish ie aamras made of best mangoes found in the season.&lt;/p&gt;', 1, '2023-05-07 21:53:46'),
(11, 2, 7, 'Special Shadi Platter', '&lt;p&gt;&lt;span style=\&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);\&quot;&gt;The platter typically includes a dal, a lentil-based curry dish that is rich in protein and spices; a sabzi, a vegetable-based curry dish made with a variety of fresh and flavorful vegetables; rice, a staple food that is cooked to perfection and served with aromatic spices; and roti or naan, a flatbread that is freshly made and served hot. &lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-07 21:58:04'),
(12, 2, 7, 'Maharashtrian Menu', '&lt;p&gt;&lt;span style=\&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);\&quot;&gt;This traditional Maharashtrian menu offers a variety of flavorful dishes that represent the essence of Maharashtrian cuisine. Starters include Kothimbir Vadi, Sabudana Vada, and Batata Bhaji. For the main course, enjoy the famous Puran Poli, Bharli Vangi, Varan Bhaat, Kanda Bhaji, and Solkadhi. This menu captures the blend of sweet, spicy, and tangy flavors and a variety of textures and ingredients, making it a perfect choice for those who love to explore new and authentic regional cuisines.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-07 22:04:26'),
(13, 3, 0, 'Indian Desserts', '&lt;p&gt;&lt;span style=\&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);\&quot;&gt;ur menu features a range of traditional Indian sweets and desserts, including the popular Gulab Jamun, a spongy milk-based dessert soaked in a sweet syrup, and the decadent Ras Malai, soft and spongy cottage cheese dumplings in a creamy and fragrant milk sauce. For a refreshing twist, try our Mango Kulfi, a frozen dessert made with fresh mango puree and cream, or our Kesar Pista Kulfi, a classic Indian ice cream flavored with saffron and pistachios.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-07 22:11:23'),
(14, 3, 0, 'Royal Desserts', '&lt;p&gt;&lt;span style=\&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);\&quot;&gt;Our Royal Desserts Menu offers a range of handcrafted desserts fit for royalty. Indulge in our signature Shahi Tukda and Gulab Jamun or try our unique Rasmalai Cheesecake and Kulfi Falooda. We also feature traditional Indian sweets like Rasgulla, Ras Malai, and Kheer. Experience the flavors and richness of our desserts fit for any special occasion.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-07 22:15:27'),
(14, 3, 0, 'Soft Drink', '&lt;p&gt;&lt;span style=\&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);\&quot;&gt;Our Event Soft Drinks Menu offers a refreshing selection of non-alcoholic beverages, perfect for any occasion. Choose from classic sodas, lemonade, fruit punch, iced tea, and organic juices. Our beverages are served cold and with a smile, ensuring that your guests are well-hydrated and satisfied throughout the event. Whether you\&#039;re hosting a corporate gathering, birthday party,&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2023-05-07 22:28:40');


-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(3, 2, 1000, '2023-05-07 14:50:07'),
(4, 3, 20000, '2023-05-08 08:37:42');
(4, 5, 40000, '2023-05-09 16:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `description`, `status`, `date_created`) VALUES
(1, 1, 'Meat', '&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;special gavraan mutton served with love and pride&lt;/span&gt;&lt;/div&gt;', 1, '2021-08-04 11:40:35'),
(2, 1, 'Chicken', '&lt;p style=&quot;text-align: justify; &quot;&gt;Special chicken thalis and biryani served with pride and love.&lt;/p&gt;', 1, '2021-08-04 11:47:06'),
(4, 5, 'Soft Drinks', '&lt;p&gt;&lt;span style=&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);&quot;&gt;Our Soft Drinks Menu for weddings offers a range of carbonated and non-carbonated beverages, including classic sodas, lemonade, fruit punch, iced tea, and organic juices. Perfect for complementing your special day and catering to all guest preferences&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-08-04 12:02:51'),
(5, 5, 'Beverages or Spirits', '&lt;p&gt;&lt;span style=&quot;color: rgb(209, 213, 219); font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Cantarell, &amp;quot;Noto Sans&amp;quot;, sans-serif, &amp;quot;Helvetica Neue&amp;quot;, Arial, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; white-space: pre-wrap; background-color: rgb(68, 70, 84);&quot;&gt;Our Wedding Hard Drinks Menu features a selection of premium alcoholic beverages to toast to your special day. Choose from a range of classic and contemporary cocktails made with top-shelf spirits, or savor a glass of fine wine or champagne. Our menu also includes a variety of domestic and imported beers, perfect for those who prefer a cold brew. Our experienced bartenders will craft your drinks with precision and care, ensuring that you and your guests have a memorable celebration.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, '2021-08-04 12:03:44'),
(7, 2, 'VEG', '', 1, '2023-05-07 21:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'HERE&apos;S YOUR ORDER'),
(6, 'short_name', 'THE DUO CATERINGS'),
(11, 'logo', 'uploads/1683515640_the-catering-logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1683467280_indian-condiments-with-copy-space-view.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', 'admin', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2024-06-21 09:55:07');
(2, 'Atharva', 'Kakade', 'admin1', 'admin', NULL, NULL, 1,);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
