-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 05:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `cars_id` int(11) NOT NULL,
  `cars_name` varchar(255) NOT NULL,
  `cars_image` varchar(255) NOT NULL,
  `cars_price` varchar(255) NOT NULL,
  `cars_description` varchar(255) NOT NULL,
  `cars_state` varchar(255) NOT NULL,
  `cars_region` varchar(255) NOT NULL,
  `cars_type` varchar(255) NOT NULL,
  `cars_gear` varchar(255) NOT NULL,
  `cars_create_year` varchar(255) NOT NULL,
  `cars_color` varchar(255) NOT NULL,
  `cars_diesel` varchar(255) NOT NULL,
  `cars_how_cc` varchar(255) NOT NULL,
  `cars_color_state` varchar(255) NOT NULL,
  `cars_surface` varchar(255) NOT NULL,
  `cars_thing` varchar(255) NOT NULL,
  `cars_kilometrage` varchar(255) NOT NULL,
  `cars_isfeatured` tinyint(4) NOT NULL DEFAULT 0,
  `cars_catego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`cars_id`, `cars_name`, `cars_image`, `cars_price`, `cars_description`, `cars_state`, `cars_region`, `cars_type`, `cars_gear`, `cars_create_year`, `cars_color`, `cars_diesel`, `cars_how_cc`, `cars_color_state`, `cars_surface`, `cars_thing`, `cars_kilometrage`, `cars_isfeatured`, `cars_catego`) VALUES
(21, 'MERCEDES G-CLASS ', '4902IMG_20250515_184140_044.jpg', '66000', '...', 'جديدة', 'ألمانيا', 'G- CLASS', 'أتوماتيك', '2023', 'أبيض', 'بينزين', '2700 cc', 'طلاء أصلي', 'نعم', 'دفع رباعي', '10000', 0, 7),
(25, 'BMW M4', '1818IMG_20250515_184205_097.jpg', '70000', '...', 'جديدة', 'ألمانيا', 'M4', 'أتوماتيك', '2022', 'أزرق', 'بينزين', '2800 cc', 'طلاء الشركة', 'لا', 'دفع رباعي', '30000', 0, 6),
(26, 'KIA SORENTO', '8964IMG_20250515_184312_633.jpg', '80000', '...', 'جديدة', 'الصين', 'SORENTO', 'أتوماتيك', '2018', 'أبيض', 'بينزين', '2000 cc', 'طلاء الشركة ', 'نعم', 'دفع ثلاثي', '54000', 0, 9),
(27, 'MAZDA ZOOM 6', '8634IMG_20250515_184256_541.jpg', '22000', '...', 'جديدة', 'كوريا', 'ZOOM 6', 'أتوماتيك', '2019', 'أحمر', 'بينزين', '', 'طلاء الشركة ', 'لا', 'دفع ثنائي', '16000', 0, 8),
(28, 'MAZDA ZOOM 3', '7440IMG_20250515_184245_028.jpg', '50000', '...', 'جديدة', 'الصين', 'ZOOM 3', 'أتوماتيك', '2020', 'أزرق', 'بينزين', '6000 cc', 'طلاء الشركة ', 'نعم', 'دفع أمامي', '25000', 0, 8),
(29, 'MERCEDES A-ZORA', '6387IMG_20250515_184152_837.jpg', '22000', '...', 'جديدة', 'ألمانيا ', 'A-ZORA ', 'أتوماتيك', '2021', 'أزرق', 'بينزين', '2000 cc', 'طلاء الشركة ', 'نعم ', 'دفع خماسي ', '44000', 0, 7),
(30, 'AUDI MECHANISM', '4620IMG_20250515_184227_547.jpg', '60000', '...', 'جديدة', 'كوريا', 'MECHANISM', 'أتوماتيك', '2014', 'أحمر', 'بينزين', '5600 cc', 'طلاء الشركة ', 'نعم', 'دفع سداسي', '25000', 0, 12),
(31, 'AUDI GTX', '9383IMG_20250515_184223_250.jpg', '50000', '...', 'جديدة', 'ألمانيا ', 'GTX', 'أتوماتيك', '2017', 'رمادي', 'بينزين', '5100 cc', 'طلاء الشركة ', 'لا', 'دفع سداسي', '65000', 1, 12),
(32, 'BMW M5', '9691IMG_20250515_184156_972.jpg', '50000', '...', 'جديدة', 'ألمانيا ', 'M5', 'أتوماتيك', '2025', 'أبيض', 'بينزين', '2300 cc', 'طلاء الشركة ', 'نعم', 'دفع سداسي ', '66000', 1, 6),
(33, 'MERCEDES MEAN', '9488IMG_20250515_184144_157.jpg', '90000', '...', 'جديدة', 'ألمانيا ', 'MEAN', 'أتوماتيك', '2023', 'أسود', 'بينزين', '4000 cc', 'طلاء الشركة ', 'لا', 'دفع رباعي', '20000', 1, 7),
(34, 'KIA SPORTAGE ', '4228IMG_20250515_184307_078.jpg', '55000', '...', 'جديدة', 'الصين ', 'SPORTAGE ', 'أوتوماتيك ', '2020', 'رمادي', 'بينزين', '1600 cc', 'طلاء الشركة ', 'نعم', 'دفع رباعي', '30000', 1, 9),
(35, 'MAZDA CARO', '1414IMG_20250515_184301_506.jpg', '55000', '...', 'جديدة', 'الصين', 'CARO', 'أتوماتيك', '2012', 'رمادي', 'بينزين', '2000 cc', 'طلاء الشركة ', 'نعم', 'دفع أمامي', '43000', 1, 8),
(36, 'MERCEDES VOSTRO ', '5192IMG_20250515_184132_527.jpg', '80000', '...', 'جديدة', 'ألمانيا ', 'VOSTRO ', 'أتوماتيك', '2016', 'رمادي', 'بينزين', '4000 cc', 'طلاء الشركة ', 'نعم', 'دفع سداسي', '21000', 1, 7),
(37, 'MERCEDES AMG-3', '3777IMG_20250515_184149_433.jpg', '90000', '...', 'جديدة', 'ألمانيا ', 'AMG-3', 'أوتوماتيك ', '2020', 'أزرق', 'بينزين', '2500 cc', 'طلاء الشركة ', 'لا', 'دفع أمامي', '30000', 1, 7),
(38, 'BMW 320 I', '3652IMG_20250515_184201_523.jpg', '80000', '...', 'جديدة', 'ألمانيا ', '320 I', 'أتوماتيك', '2019', 'دهبي', 'بينزين ', '3500 cc', 'طلاء الشركة ', 'نعم', 'دفع رباعي ', '55000', 1, 6),
(39, 'BMW GTR-6', '6545IMG_20250515_184217_832.jpg', '21000', '...', 'جديدة', 'ألمانيا ', 'GTR-6', 'أوتوماتيك ', '2025', 'أبيض', 'بينزين ', '5000 cc', 'طلاء الشركة ', 'نعم', 'دفع سداسي ', '25000', 1, 6),
(40, 'BMW LLM', '8227IMG_20250515_184208_316.jpg', '22000', '...', 'جديدة', 'ألمانيا ', 'LLM', 'أوتوماتيك ', '2023', 'سماوي', 'بينزين', '3400 cc', 'طلاء الشركة ', 'لا', 'دفع رباعي ', '60000', 1, 6),
(41, 'AUDI RINGS', '6601IMG_20250515_184231_785.jpg', '55000', '...', 'جديدة', 'ألمانيا ', 'RINGS', 'أتوماتيك ', '2016', 'أزرق', 'بينزين', '3500 cc', 'طلاء الشركة ', 'نعم ', 'دفع رباعي ', '23000', 1, 12),
(42, 'AUDI RINGS ', '8005IMG_20250515_184231_785.jpg', '22000', '...', 'جديدة', 'الصين', 'RINGS ', 'أتوماتيك ', '2021', 'أزرق', 'بينزين', '2300 cc', 'طلاء الشركة ', 'نعم', 'دفع رباعي ', '22000', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(100) NOT NULL,
  `categories_image` varchar(100) NOT NULL,
  `categories_date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_image`, `categories_date_time`) VALUES
(6, 'BMW', '4761IMG_20250509_182818_227.jpg', '2025-05-09 13:32:28'),
(7, 'MERCEDES', '3314IMG_20250509_182818_738.jpg', '2025-05-09 13:32:41'),
(8, 'MAZDA', '8445IMG_20250509_182818_396.jpg', '2025-05-09 13:32:53'),
(9, 'KIA', '1186IMG_20250509_182818_368.jpg', '2025-05-09 13:33:04'),
(12, 'AUDI', '2379IMG_20250509_182818_642.jpg', '2025-05-09 13:33:46');

-- --------------------------------------------------------

--
-- Stand-in structure for view `items1view`
-- (See below for the actual view)
--
CREATE TABLE `items1view` (
`cars_id` int(11)
,`cars_name` varchar(255)
,`cars_image` varchar(255)
,`cars_price` varchar(255)
,`cars_description` varchar(255)
,`cars_state` varchar(255)
,`cars_region` varchar(255)
,`cars_type` varchar(255)
,`cars_gear` varchar(255)
,`cars_create_year` varchar(255)
,`cars_color` varchar(255)
,`cars_diesel` varchar(255)
,`cars_how_cc` varchar(255)
,`cars_color_state` varchar(255)
,`cars_surface` varchar(255)
,`cars_thing` varchar(255)
,`cars_kilometrage` varchar(255)
,`cars_isfeatured` tinyint(4)
,`cars_catego` int(11)
,`categories_id` int(11)
,`categories_name` varchar(100)
,`categories_image` varchar(100)
,`categories_date_time` timestamp
,`products_id` int(11)
,`products_itemsId` int(11)
,`products_image2` varchar(255)
,`products_image3` varchar(255)
,`products_image4` varchar(255)
,`products_image5` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_itemsId` int(11) NOT NULL,
  `products_image2` varchar(255) NOT NULL,
  `products_image3` varchar(255) NOT NULL,
  `products_image4` varchar(255) NOT NULL,
  `products_image5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_itemsId`, `products_image2`, `products_image3`, `products_image4`, `products_image5`) VALUES
(11, 21, '8758IMG_20250515_184139_529.jpg', '7910IMG_20250515_184139_171.jpg', '3671IMG_20250515_184139_529.jpg', '4865IMG_20250515_184139_758.jpg'),
(14, 25, '5276IMG_20250515_184204_756.jpg', '2317IMG_20250515_184204_548.jpg', '5347IMG_20250515_184205_261.jpg', '3244IMG_20250515_184204_658.jpg'),
(15, 26, '4429IMG_20250515_184312_062.jpg', '7875IMG_20250515_184311_970.jpg', '5397IMG_20250515_184312_668.jpg', '1101IMG_20250515_184311_892.jpg'),
(16, 27, '6374IMG_20250515_184256_709.jpg', '3813IMG_20250515_184256_511.jpg', '1529IMG_20250515_184256_761.jpg', '7082IMG_20250515_184256_494.jpg'),
(17, 28, '2445IMG_20250515_184244_592.jpg', '8504IMG_20250515_184244_728.jpg', '4250IMG_20250515_184244_247.jpg', '2002IMG_20250515_184244_827.jpg'),
(18, 29, '7052IMG_20250515_184153_324.jpg', '9874IMG_20250515_184153_646.jpg', '7246IMG_20250515_184153_414.jpg', '7709IMG_20250515_184153_135.jpg'),
(19, 30, '1440IMG_20250515_184227_106.jpg', '9469IMG_20250515_184227_528.jpg', '5651IMG_20250515_184227_641.jpg', '8477IMG_20250515_184227_518.jpg'),
(20, 31, '1331IMG_20250515_184222_835.jpg', '3269IMG_20250515_184223_071.jpg', '4120IMG_20250515_184222_544.jpg', '7252IMG_20250515_184222_632.jpg'),
(21, 32, '2340IMG_20250515_184157_247.jpg', '6368IMG_20250515_184156_885.jpg', '3070IMG_20250515_184157_392.jpg', '7753IMG_20250515_184157_417.jpg'),
(22, 33, '5185IMG_20250515_184143_870.jpg', '5214IMG_20250515_184143_725.jpg', '8547IMG_20250515_184144_234.jpg', '3524IMG_20250515_184144_132.jpg'),
(23, 34, '3272IMG_20250515_184307_033.jpg', '4301IMG_20250515_184306_976.jpg', '7186IMG_20250515_184307_565.jpg', '8154IMG_20250515_184307_789.jpg'),
(24, 35, '1393IMG_20250515_184236_202.jpg', '8764IMG_20250515_184301_996.jpg', '3237IMG_20250515_184301_537.jpg', '1447IMG_20250515_184301_462.jpg'),
(25, 36, '9409IMG_20250515_184132_712.jpg', '5384IMG_20250515_184132_278.jpg', '5535IMG_20250515_184131_840.jpg', '2773IMG_20250515_184132_199.jpg'),
(26, 37, '5106IMG_20250515_184149_566.jpg', '5756IMG_20250515_184149_081.jpg', '3303IMG_20250515_184149_333.jpg', '4730IMG_20250515_184149_533.jpg'),
(27, 38, '9082IMG_20250515_184201_378.jpg', '1164IMG_20250515_184200_835.jpg', '1236IMG_20250515_184200_917.jpg', '1307IMG_20250515_184200_812.jpg'),
(28, 39, '3223IMG_20250515_184218_104.jpg', '8421IMG_20250515_184218_721.jpg', '8413IMG_20250515_184218_549.jpg', '9249IMG_20250515_184218_205.jpg'),
(29, 40, '4543IMG_20250515_184208_516.jpg', '6973IMG_20250515_184207_956.jpg', '9116IMG_20250515_184208_500.jpg', '4579IMG_20250515_184208_049.jpg'),
(30, 42, '7824IMG_20250515_184232_116.jpg', '1443IMG_20250515_184232_432.jpg', '5928IMG_20250515_184231_631.jpg', '8687IMG_20250515_184231_520.jpg');

-- --------------------------------------------------------

--
-- Structure for view `items1view`
--
DROP TABLE IF EXISTS `items1view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `items1view`  AS SELECT `cars_id` AS `cars_id`, `cars_name` AS `cars_name`, `cars_image` AS `cars_image`, `cars_price` AS `cars_price`, `cars_description` AS `cars_description`, `cars_state` AS `cars_state`, `cars_region` AS `cars_region`, `cars_type` AS `cars_type`, `cars_gear` AS `cars_gear`, `cars_create_year` AS `cars_create_year`, `cars_color` AS `cars_color`, `cars_diesel` AS `cars_diesel`, `cars_how_cc` AS `cars_how_cc`, `cars_color_state` AS `cars_color_state`, `cars_surface` AS `cars_surface`, `cars_thing` AS `cars_thing`, `cars_kilometrage` AS `cars_kilometrage`, `cars_isfeatured` AS `cars_isfeatured`, `cars_catego` AS `cars_catego`, `categories`.`categories_id` AS `categories_id`, `categories`.`categories_name` AS `categories_name`, `categories`.`categories_image` AS `categories_image`, `categories`.`categories_date_time` AS `categories_date_time`, `products`.`products_id` AS `products_id`, `products`.`products_itemsId` AS `products_itemsId`, `products`.`products_image2` AS `products_image2`, `products`.`products_image3` AS `products_image3`, `products`.`products_image4` AS `products_image4`, `products`.`products_image5` AS `products_image5` FROM ((`cars` join `categories` on(`categories`.`categories_id` = `cars_catego`)) join `products` on(`cars_id` = `products`.`products_itemsId`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`cars_id`),
  ADD KEY `cars_catego` (`cars_catego`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `products_itemsId` (`products_itemsId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `cars_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`cars_catego`) REFERENCES `categories` (`categories_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`products_itemsId`) REFERENCES `cars` (`cars_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
