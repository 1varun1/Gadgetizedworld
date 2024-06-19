-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 13, 2020 at 04:42 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '43cf0e644bc499b253da515ee6e71363', '2017-01-24 16:21:18', '13-06-2020 10:11:51 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(8, 'Laptop', '', '2020-06-13 11:57:44', NULL),
(9, 'Mobile', '', '2020-06-13 11:57:53', NULL),
(10, 'Accessories', '', '2020-06-13 11:57:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 8, 14, 'HP Pavilion 15', 'HP', 74990, 76990, '<div>2.40GHz Intel Core i5-9300H 9th Gen processor</div><div>&nbsp;NVIDIA Geforce GTX 1660 Ti for Desktop Level Performance</div><div>&nbsp;1TB 7200rpm hard drive</div><div>&nbsp; Light Laptop without Optical Disk Drive</div><div>Pre-installed Genuine Windows 10 OS</div><div>&nbsp;15.6 inch Full HD WLED Backlit Anti-glare IPS Narrow Bezel</div><div>&nbsp; Display (250 nits Brightness, 141 ppi, 45% Color Gamut, 82.29% Screen&nbsp; to Body Ratio, 60 Hz Refresh Rate)</div>', 'hp1.1.jpg', 'hp1.jpg', 'hp1.2.jpg', 0, 'In Stock', '2020-06-13 12:34:36', NULL),
(23, 8, 14, 'HP pavilion 16', 'HP', 80990, 82990, '<div>Pre-installed Genuine Windows 10 OS</div><div>Preloaded MS Office Home and Student 2016</div><div>1.8 GhzGHz Intel Core i7-8565U 8th Gen processor</div><div>8GB DDR4 RAM</div><div>1TB 5400rpm hard drive</div><div>15.6-inch screen</div><div>NVIDIA Geforce NVIDIA GeForce MX250&nbsp; 4GB Graphics for High Graphics Performance</div><div>256GB SSD</div>', 'hp2.jpg', 'hp2.1.jpg', 'hp2.2.jpg', 0, 'In Stock', '2020-06-13 12:58:19', NULL),
(24, 8, 14, 'hpspectrex360', 'HP', 125993, 128993, 'Include Windows 10 Professional, HP International Premium Warranty, 3 Years McAfee Internet Security.<br><div>Newest Intel 10th Gen. i7-10510U (1.8 GHz, up to 4.9 GHz, 8 MB cache, 4 cores)+NVIDIA&nbsp;GeForce MX250 (2GB), 16GB DDR4 RAM(2x8GB), 1 TB PCI NVMe M.2 SSD<br></div><div>15.6\" diagonal 4K UWVA BrightView micro-edge AMOLED multitouch-enabled(3840 x 2160)<br></div><div>HP TrueVision FHD IR Camera with digital microphone, Fingerprint reader;<br></div>', 'hp3.jpg', 'hp3.1.jpg', 'hp3.2.jpg', 0, 'In Stock', '2020-06-13 13:05:19', NULL),
(25, 8, 16, 'ASUS TUF', 'ASUS', 70990, 72990, 'Processor: AMD Ryzen 5-3550H Processor, 2.1GHz (6MB Cache, up to 3.7GHz, 4 Cores)<br><div><div>Memory and Storage: 8GB DDR4 2400MHz RAM upgradeable upto 32GB RAM with|Storage: PCIe NVMe 512GB M.2 SSD + 1x 2.5-inch SATA Slot for storage expansion</div></div><div>Graphics: Dedicated NVIDIA GeForce GTX 1650 GDDR5 4GB VRAM<br></div><div><div>Display: 17.3\" (16:9) LED-backlit FHD (1920x1080) 60Hz Anti-Glare vIPS-level&nbsp;</div><div>Software: Pre-loaded Windows 10 Home (64bit) Operating System Panel with 45% NTSC</div></div>', 'asus2.jpg', 'asus2.1.jpg', 'asus2.2.jpg', 0, 'In Stock', '2020-06-13 13:12:11', NULL),
(26, 8, 16, 'ASUS ROG', 'ASUS', 55990, 57900, 'Intel Core i5-9300U 9th Gen processor, upto 4.1 GHz<br><div>Pre-loaded Windows 10, Home, 64Bit operating system<br></div><div>15.6-inch Full HD (1920 x 1080 Wideview anti glare screen display<br></div><div>Memory: 8GB DDR4 RAM, 2666Mhz | Storage: 1TB 5400rpm hard drive<br></div><div>Graphics: Dedicated NVIDIA GeForce GTX 1050 GDDR5 4GB VRAM<br></div>', 'asus1.jpg', 'asus1.1.jpg', 'asus1.2.jpg', 0, 'In Stock', '2020-06-13 13:19:19', NULL),
(27, 8, 15, 'APPLE MacBook Pro', 'APPLE', 70990, 72990, 'Processor: Intel Core i5 processor, 2.5GHz base processor speed<br><div>Operating System: Preloaded Mac OS X Mavericks with lifetime validity<br></div><div>Display: 13-inch (1280x800) LED display<br></div><div>Memory and Storage: 4GB DDR3 RAM with Intel HD graphics 4000 | Storage: 500GB HDD<br></div><div>4GB DDR3 RAM<br></div>', 'apple1.jpg', 'apple1.1.jpg', 'apple1.2.jpg', 0, 'In Stock', '2020-06-13 13:22:37', NULL),
(28, 8, 18, 'MSI Gaming65', 'MSI', 11990, 128993, '<div>MSI Gaming GL65 9SEK-260IN Intel Core i7-9750H 9th Gen 15.6-inch</div><div>&nbsp;Laptop (16GB/1TB HDD + 256GB NVMe SSD/Windows 10 Home/RTX 2060,&nbsp; 6GB Graphics/Black/2.3Kg) 9S7-16U512-260</div>', 'msi1.jpg', 'msi1.1.jpg', 'msi1.2.jpg', 0, 'In Stock', '2020-06-13 13:26:34', NULL),
(29, 8, 17, 'Dell G series g7', 'Dell', 141990, 145990, '<div>Processor: 8th Gen Intel Core i9-8950HK processor,2.9GHz base processor speed</div><div>&nbsp;Operating System: Pre-loaded Windows 10 with lifetime validity</div><div>&nbsp;Display: 15.5-inch FHD (1920x1080 ) display</div><div>&nbsp;Memory and Storage : 16GB DDR4 RAM with Nvidia GeForce GTX 1060 6GB Graphics&nbsp;</div><div>&nbsp;Storage: 1TB 5400rpm hard drive&nbsp;</div><div>&nbsp;Design and battery : Laptop weight 2.5kg | Lithium battery</div><div>&nbsp;Pre-installed Software: MS Office Home and Student 2016 | In the Box: Laptop&nbsp; with included battery and charger</div>', 'dell1.jpg', 'dell1.1.jpg', 'dell1.2.jpg', 0, 'In Stock', '2020-06-13 13:55:05', NULL),
(30, 8, 17, 'Dell inspiron 7570', 'Dell', 70990, 76990, '<div>Processor: 8th Gen Intel Core i5-8250U processor,1.6GHz base processor speed</div><div>&nbsp;Operating System: Pre-loaded Windows 10 with lifetime validity</div><div>&nbsp;Display: 15.6-inch FHD (1920x1080 ) display</div><div>&nbsp;Memory and Storage : 8GB DDR4 RAM with Nvidia GeForce MX 130 4GB Graphics&nbsp; Storage: 1TB HDD + 128GB SSD</div><div>&nbsp;Design and battery : Laptop weight 2.5kg | Lithium battery</div><div>Pre-installed Software: MS Office Home and Student 2016 | In the Box: Laptop&nbsp; with included battery and charger</div>', 'dell2.jpg', 'dell2.1.jpg', 'dell2.2.jpg', 0, 'In Stock', '2020-06-13 13:58:11', NULL),
(31, 8, 28, 'Acer aspire5s', 'Acer', 52990, 55990, '<div>Processor: Intel Core i5-10210U processor, turbo up to 4.20 Ghz</div><div>&nbsp;Display: 15.6\" Full HD 1920 x 1080, high-brightness Acer ComfyView LED-backlit TFT LCD</div><div>&nbsp;Memory: 4 GB On-board + 4 GB additional Ram, upgradable up to 20 GB</div><div>&nbsp;Storage: 512 GB, PCIe Gen3 8 Gb/s up to 2 lanes, NVMe</div><div>&nbsp; Design: Thin and Light Notebook (1.79 cm thin and 1.8 kgs light)</div><div>&nbsp; &nbsp;Battery life up to 9.5 hours(based on video-playback test results)</div><div>&nbsp;Pre-installed Software: Pre-loaded Windows 10 Home 64-bit Microsoft Office 2019 Home and Student</div>', 'acer2.jpg', 'acer2.1.jpg', 'acer2.2.jpg', 0, 'In Stock', '2020-06-13 14:01:40', NULL),
(32, 8, 28, 'Acer nitro7', 'Acer', 88899, 90000, '<div>2.60 GHzGHz Intel Core i7 9750H Processor 9th Gen processor</div><div>8GB DDR4&nbsp;</div><div>1TB SSD</div><div>15.6-inch screen, Nvidia GeForce GTX 1660Ti 6GB 6GB Graphics</div><div>&nbsp;Windows 10 Home 64-bit operating system</div><div>7 hours battere, 2.5kg laptop</div><div>&nbsp; Processor: Intel Core i7-9750H processor, 2.60 Ghz turbo up to 4.50 Ghz | Graphics: Nvidia GeForce GTX 1660Ti 6GB</div><div>Memory: 8 GB of DDR4 system memory, upgradable to 32GB 1920x1080,&nbsp; )Acer ComfyViewTM LED-ba TFT LCD, supporting 144 Hz |</div><div>&nbsp; &nbsp;Operating System: Preloaded Windows 10 Home 64 bit with litetime validity</div>', 'acer1.jpg', 'acer1.1.jpg', 'acer1.2.jpg', 0, 'In Stock', '2020-06-13 14:05:24', NULL),
(33, 9, 29, 'Apple IPhone XS max', 'APPLE', 78990, 80000, '<div>6.5-inch Super Retina display (OLED) with HDR</div><div>IP68 dust and water resistant (maximum depth of 2 meters up to 30 minutes)</div><div>12MP dual cameras with dual OIS and 7MP TrueDepth front camera Portrait mode, Portrait Lighting, Depth Control, and Smart HDR</div><div>Face ID for secure authentication</div><div>A12 Bionic with next-generation Neural Engine</div><div>Wireless charging works with Qi chargers</div><div>iOS 12 with Memoji, Screen Time, Siri Shortcuts, and Group FaceTime</div>', 'mobile7.jpg', 'mobile7.1.jpg', 'mobile7.2.jpg', 0, 'In Stock', '2020-06-13 14:11:47', NULL),
(34, 9, 19, 'Redmi Note 8 Pro', 'Redmi', 15280, 15890, '<div>64MP AI Quad rear camera with portrait, ultra-wide lens, macro lens, LED flash,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;AI support, beautify support | 20MP front camera</div><div>Performance: Smooth gaming experience with powerful Helio G90T gaming processor,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Game turbo and Liquid cooling technology</div><div>16.58 centimeters (6.53-inch) Dot Notch HDR Display with 2340 x 1080 pixels&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;resolution and 19.5:9 aspect ratio | 2.5D curved glass</div><div>With Amazon Alexa built-in: Simply say â€œAlexaâ€ to play music, hear the news,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;control your smart devices or check the weather wherever you are. Just ask - and</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Alexa will respond instantly</div><div>Memory, Storage and SIM: 6GB RAM | 64GB internal memory expandable up to 512GB |</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dual SIM (nano+nano) dual-standby (4G+4G)</div><div>Android Pie v9 operating system with 2.05GHz MediaTek Helio G90T octa core&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;processor</div><div>4500mAH lithium-polymer battery providing talk-time of 41 hours and standby time</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;of 666 hours | 18W fast charger</div>', 'mobile2.jpg', 'mobile2.1.jpg', 'mobile2.2.jpg', 0, 'In Stock', '2020-06-13 14:16:36', NULL),
(35, 9, 21, 'Samsung Galaxy Note 10', 'Samsung', 42000, 45000, '<div>12MP Ultra wide FF + F2.2 \" Wide 12MP AF F1.7 Dual Pixel + Tele 12MP AF F2.4 OIS, 2x&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Zoom camera | 32MP front facing camera</div><div>17.04 centimeters (6.7-inch) super Amoled infinity-O display and FHD+ capacitive&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;multi-touch touchscreen with 2400 x 1080 pixels resolution | 16M color support</div><div>Memory, Storage and SIM: 8GB RAM | 128GB internal memory expandable up to 1TB | Dual&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SIM dual-standby (4G+4G)</div><div>Android v10.0 operating system with 2.7GHz+1.8GHz Exynos 9810 octa core processor</div><div>4500mAH lithium-ion battery</div><div>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;accessories including batteries from the date of purchase</div><div>Box also Includes: S-pen, non-removable battery included, earphones, travel adapter,&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;USB cable and user manual</div><div>Triple Camera Setup - Ultra wide 12 MP FF, F2.2 \" Wide 12MP AF F1.7 Dual&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Pixel + Tele 12MP AF F2.4 OIS, 2x Zoom and 32MP (F2.0) front facing Punch Hole&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Camera</div><div>Android 10.0 operating system with Exynos 9810, Triple Camera Setup - Ultra wide</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;12 MP FF, F2.2 \" Wide 12MP AF F1.7 Dual Pixel + Tele 12MP AF F2.4 OIS, 2x&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Zoom</div><div>32MP (F2.0) front facing Punch Hole Camera-1 Processor, 8GB RAM, 128GB internal memory</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;expandable up to 1TB and dual SIM</div>', 'mobile10.jpg', 'mobile10.1.jpg', 'mobile10.2.jpg', 0, 'In Stock', '2020-06-13 14:19:26', NULL),
(36, 9, 20, 'Realme X2 Pro', 'Realme', 15280, 16000, '<div>Dual SIM|Double Mic Noise Suppression, Dual Speaker, Super Linear Speaker,&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dual Stereo with Dolby Atmos</div><div>Back Cover Technology: 3D Glass, 90Hz Ultra Smooth Display, Latest In-display&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Fingerprint</div><div>Memory, Storage and SIM: 8GB RAM | 128GB internal memory | Dual SIM&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dual-standby (4G+4G)</div><div>Android Pie 9, Qualcomm Snapdragon 855 Plus, 2.96 GHz Octa Core</div><div>Fingerprint, Magnetic Induction Sensor, Light Sensor, Proximity Sensor, Gyro-meter,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Acceleration Sensor</div>', 'mobile3.jpg', 'mobile3.1.jpg', 'mobile3.2.jpg', 0, 'In Stock', '2020-06-13 14:22:32', NULL),
(37, 9, 20, 'Realme 6 Pro', 'Realme', 19980, 21000, '<div>8 GB RAM | 128 GB ROM | Expandable Upto 256 GB</div><div>16.76 cm (6.6 inch) Full HD+ Display | 90 Hz Ultra Smooth Display</div><div>64MP + 12MP + 8MP + 2MP | 16MP + 8MP Dual Front Camera</div><div>4300 mAh Battery | 30 W Flash Charge</div><div>Snapdragon 720G Processor | Dual In Display Selfie</div><div>Side Fingerprint Sensor,Magnetic Induction Sensor, Light Sensor, Proximity Sensor,&nbsp;</div><div>Gyro-meter,Acceleration Sensor</div>', 'mobile11.jpg', 'mobile11.1.jpg', 'mobile11.2.jpeg', 0, 'In Stock', '2020-06-13 14:25:04', NULL),
(38, 9, 19, 'POCO F1', 'Redmi', 22999, 25000, '<div>12MP+5MP dual camera | 20MP front facing camera</div><div>&nbsp; 15.69 centimeters (6.18-inch) IPS (in-cell) multi-touch capacitive touchscreen with 2246 x 1080 pixels resolution, 403 ppi pixel density</div><div>&nbsp; Memory, Storage and SIM: 8GB RAM, 256GB internal memory expandable up to 128GB |</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dual SIM (nano+nano) dual-standby (4G+4G)</div><div>&nbsp; Andriod Oreo v8.1 operating system with 2.8GHz Qualcomm Snapdragon 845 octa core</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;processor, 8xKyro cores/10 nm architecture</div><div>&nbsp; 4000mAH lithium-ion battery with quick charge 3.0 to keep you going all-day long</div><div>&nbsp; 1 year manufacturer warranty for device and 6 months manufacturer warranty for&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;in-box accessories including batteries from the date of purchase For any issue&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;contact 1800 1036286</div><div>&nbsp; Box also includes: Adapter, USB cable, warranty card, user guide, SIM insertion&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;tool and back case</div>', 'mobile5.jpg', 'mobile5.1.jpg', 'mobile5.2.jpg', 0, 'In Stock', '2020-06-13 14:27:46', NULL),
(39, 9, 29, 'Apple IPhone XR', 'APPLE', 49990, 53000, '<div>6.1-inch Liquid Retina display (LCD)</div><div>IP67 water and dust resistant (maximum depth of 1 meter up to 30 minutes)</div><div>12MP camera with OIS and 7MP TrueDepth front camera Portrait mode, Portrait Lighting,Depth Control, and Smart HDR</div><div>Face ID for secure authentication</div><div>A12 Bionic with next-generation Neural Engine</div><div>Wireless charging works with Qi chargers</div><div>iOS 12 with Memoji, Screen Time, Siri Shortcuts, and Group FaceTime</div>', 'mobile8.jpg', 'mobile8.1.jpg', 'mobile8.2.jpg', 0, 'In Stock', '2020-06-13 14:35:06', NULL),
(40, 9, 30, 'One Plus 7 Pro', 'One Plus', 45575, 48000, '<div>Rear Camera; 48MP (Primary)+ 8MP (Tele-photo)+16MP (ultrawide); Front Camera;16 MP POP-UP Camera; You will need to chargethe phone when you first get it or if you have not used it for a long time</div><div>16.9 centimeters (6.67-inch) multi-touch capacitive touchscreen with 3120 x 1440 pixels resolution</div><div>Memory, Storage and SIM: 8GB RAM | 256GB internal memory | Dual SIM&nbsp;</div><div>dual-standby (4G+4G)</div><div>Android Oxygen operating system with 2.84GHz Snapdragon 855 octa core processor</div><div>4000mAH lithium-ion battery, Buttons: Gestures and on-screen navigation support;</div><div>Alert Slider</div><div>1 year manufacturer warranty for device and 6 months manufacturer warranty for</div><div>in-box accessories including batteries from the date of purchase</div><div>Box also includes: Power Adapter, Type-C Cable (Support USB 2.0), Quick Start&nbsp;</div><div>Guide, Welcome Letter, Safety Information and Warranty Card, Logo Sticker, Case,Screen Protector (pre-applied) and SIM Tray Ejector</div>', 'mobile1.jpg', 'mobile1.1.jpg', 'mobile1.2.jpg', 0, 'In Stock', '2020-06-13 14:42:04', NULL),
(41, 9, 20, 'Red Magic 3', 'Realme', 37990, 40000, '<div>16.76 centimeters (6.6-inch) multi-touch capacitive touchscreen with 2340 x 1080 pixels resolution</div><div>Rear Camera 48 megapixel SONY IMX586, 0.8micrometer Large Pixel, f/1.7 Aperture,0.1s Focusing Speed, 1920fps Slow-motion Video Shooting, Shot by 8K Video, PDAF Focusing (Phase Focusing), Support 4 in 1</div><div>Memory, Storage and SIM: 8GB RAM | 128GB internal memory | Dual SIM dual-standby (4G+4G)</div><div>Powered by the flagship Qualcomm Snapdragon 855 processor with 8GB of LPDDR4X RAM and dual-lane 128GB UFS 2.1 storage, Red Magic is built for the most intense battles.</div>', 'mobile4.jpg', 'mobile4.1.jpg', 'mobile4.2.jpeg', 0, 'In Stock', '2020-06-13 14:45:56', NULL),
(42, 9, 31, 'iQOO 3', 'Iqoo', 38990, 40000, '<div>48MP + 13MP + 13MP + 2MP rear camera with 48MP + 13MP (Telephoto - 20X Digital Zoom)+ 13MP (Wide Angle) + 2MP (Bokeh), Aperture: 48MP (f/1.79) + 13MP (f/2.46) +13MP (f/2.2) + 2MP (f/2.4), Primary Camera Sensor Brand and Model: Sony IMX582, EIS, Super Night, Mode,Super Anti Shake,AI Super Wide-angle (Photo + Video), Super Macro, AI HDR, SLO-MO,PRO Mode, Panorama, AI Scene Recognition, DOC, Take Photo, Video Record. Secondary Camera Sensor Brand and Model: Samsung S5K3P9SP04-FGX9, Aperture: 16MP f/2.45, Super Night Selfie, Portrait Light Effects (Portrait Bokeh Included), AR Stickers, Pose Master, AI HDR, Burst, Take Photo, Video Record and 16MP front facing camera</div><div>16.35 centimeters (6.44-inch) Super AMOLED capacitive touchscreen with 2400 x 1080pixels resolution, 409 ppi pixel density and 16M color support</div><div>Memory, Storage and SIM: 8GB RAM | 128GB storage expandable up to 256GB| Dual SIM with dual standby (4G+4G)</div><div>Android 10 operating system with 2.8GHz Qualcomm Snapdragon 865 octa core processor, Adreno 650 GPU</div><div>4440mAH lithium-ion battery</div>', 'mobile6.jpg', 'mobile6.1.jpg', 'mobile6.2.jpeg', 0, 'In Stock', '2020-06-13 14:51:12', NULL),
(43, 10, 22, 'Redragon M601-BA 2 in 1 Gaming Mouse', 'Red Dragon', 1299, 1400, '<div>Wired gaming mouse, built for pc gamers - ergonomic redragon m601-3 rgb red led&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; backlit gaming mouse (backlight can be disabled) up to 3200 dpi (user adjustable&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 800/1600/2400/3200 dpi), 30g acceleration</div><div>Programmable pc gaming mouse, 5 user programmable buttons and side buttons, 5 memory&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; profiles plus 8-piece user adjustable weight tuning set (2.4g x 8) to adjust overall&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; weight, balance and center of gravity to achieve personalized feel and control</div><div>Ergonomic gamer mouse: The ergonomic shape of the redragon m601-3 pc gaming mouse is&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; built for comfort, fits naturally in your hand, the tuned buttons reduce click&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; fatigue</div><div>Gaming mouse pad: Large redragon mouse pad for gaming, waterproof washable and easy&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; to clean, silk-processed cloth surface ensures smooth, ultra-precise mouse movements</div><div>Advanced multi-layer surface provides thousands of light reflecting microscopic points for ultra-precise tracking, underside is made of natural processed foam rubber</div>', 'mouse2.1.jpg', 'mouse2.2.jpg', 'mouse2.jpg', 0, 'In Stock', '2020-06-13 15:01:55', NULL),
(44, 10, 23, 'HP HPFD302M 64GB OTG Flash Drive', 'HP', 1090, 1200, '<div>Steel design</div><div>Color:Silver</div><div>Store:64 GB, share and transfer music, videos and more</div><div>OTG flash drive easily transfer between phones and computers</div><div>Durable casing free space for your phones</div><div>Interface: USB 3.1</div>', 'pendrive2.jpg', 'pendrive2.1.jpg', 'pendrive2.2.jpg', 0, 'In Stock', '2020-06-13 15:04:35', NULL),
(45, 10, 23, 'SanDisk Ultra Dual 64GB USB 3.0 OTG Pen Drive ', 'Sandisk', 650, 700, '<div>Free up space on your OTG-enabled Android phone</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Read Speed: up to 150 MB/s</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Retractable design with dual micro-USB and USB 3.0 connectors and</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;back up your mobile photos, videos and contacts</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; High-speed USB 3.0 performance with up to 130mbps file transfer from</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; drive to computer</div>', 'pendrive1.jpg', 'pendrive1.1.jpg', 'pendrive1.2.jpg', 0, 'In Stock', '2020-06-13 15:07:05', NULL),
(46, 10, 24, 'WD 2TB Passport', 'WD', 6249, 6500, '<div>Auto backup with included WD backup software</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Password protection with hardware encryption</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Included WD discovery software for social media and cloud storage import</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Easy to use; Works with: Windows, Mac compatible (reformatting required)</div>', 'hdd2.jpg', 'hdd2.1.jpg', 'hdd2.2.jpg', 0, 'In Stock', '2020-06-13 15:31:55', NULL),
(47, 10, 24, 'Seagate 2 TB Harddrive', 'Seagate', 5599, 5700, '<div>Store and access 2 TB of photos and files on the go with Seagate&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Backup Plus Slim, an external hard drive for Mac and Windows</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; This portable external hard drive features a minimalist brushed</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; metal enclosure, and is a stylish USB drive</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Simply plug this external hard drive for Mac and Windows into a&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; computer via the included USB 3.0 cable to back up files with a&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; single click or schedule automatic daily, weekly, or monthly backups</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Reformatting may be required for use with Time Machine</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Edit, manage, and share photos with a one-year complimentary&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; subscription to Mylio Create and a two-month membership to Adobe&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Creative Cloud Photography Plan</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Enjoy long-term peace of mind with the included three-year limited warranty</div>', 'hdd1.jpg', 'hdd1.1.jpg', 'hdd1.2.jpg', 0, 'In Stock', '2020-06-13 15:34:29', NULL),
(48, 10, 25, 'WD Green 240GB M.2 2280 Internal SSD', 'WD', 2990, 3200, '<div>Auto backup with included WD backup software</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Password protection with hardware encryption</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Included WD discovery software for social media and cloud storage import</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Easy to use; Works with: Windows, Mac compatible (reformatting required)</div>', 'ssd2.jpg', 'ssd2.1.jpg', 'ssd2.2.jpg', 0, 'In Stock', '2020-06-13 15:36:48', NULL),
(49, 10, 25, 'HP SSD EX900 M.2 500GB PCIe 3.0 x4 NVMe 3D', 'HP', 8979, 9200, 'Ultra-high Performance without Latency: The read and write speed of EX900\r\n                        reach 2100MB/s and 1500MB/s respectively, which ensures faster speed and \r\n                        higher efficiency. EX900 fully accelerates the PC systems, enabling PC boot,\r\n                        program startup and files loading in seconds.\r\n                   HP PCIe Controller, Better Performance and Stability: It features an HP \r\n                       controller with 4 flash memory channels that support PCIe3x4 and NVMe 1.3 \r\n                       standard. Maximize gaming notebook and high-end computer\'s performance, and\r\n                       increase responsiveness.\r\n                   3D NAND Flash, Break through Space Limitation: Quite Capable of Boosting \r\n                       High-performance PC, with a size of 22x80x2.4mm (2280), HP EX900 M.2 is a \r\n                       new storage solution with ultra-high performance.', 'ssd1.jpg', 'ssd1.1.jpg', 'ssd1.3.jpg', 0, 'In Stock', '2020-06-13 15:45:53', ''),
(50, 10, 27, 'JBL Flip 3 Speaker', 'JBL', 5979, 6200, '<div>JBL Signature Sound</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Wireless Bluetooth streaming</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dual external passive Bass radiators</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IPX7 Waterproof with durable fabric material</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 10 hours of playtime under optimum audio settings</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1 year manufacturers warranty</div>', 'speaker1.jpg', 'speaker1.1.jpg', 'speaker1.2.jpg', 0, 'In Stock', '2020-06-13 15:49:54', NULL),
(51, 10, 26, 'boAt Rockerz 255 Sports Bluetooth Wireless Earphone', 'BOAT', 499, 550, 'boAt signature audio: boAt Rockerz 255, while being lightweight in design pumps out\r\n                        your favourite tunes with powerful HD sound and deep boosted bass\r\n                    Powered By Qualcomm CSR8635 Chipset High Level functionality is provided to the boAt\r\n                        Rockerz 255 by the Advanced Qualcomm CSR 8635 Chipset providing the features of the  \r\n                        latest Bluetooth 4.1 Version.Frequency response: 20Hz-20KHz\r\n                    10 mins charge, 45 mins play: The boAt Rockerz 255 are equipped with a 110 mAh \r\n                        battery that\'ll surely allow you to spend your time with these earphones a quarter\r\n                        of your day\r\n                    Attractive ergonomics with a Comfort Fit: Built with resolute craftsmanship from \r\n                        premium materials including metal housing earphones and chrome accents the boAt \r\n                        Rockerz 255 is both sturdy and stylis', 'earphone1.jpg', 'earphone1.1.jpg', 'earphone1.2.jpg', 50, 'In Stock', '2020-06-13 16:07:33', NULL),
(52, 10, 22, 'HP M100 Wired Gaming Optical Mouse', 'HP', 400, 500, 'With or without a mouse pad, the mouse moves easily for precise \r\n                        optical tracking, use the scroll wheel for fast, precise tracking\r\n                        to navigate through your work effortlessly\r\n                    Just plug the cord into your computer\'s USB port and you\'re ready to go\r\n                    Adjust your DPI setting (1,000 and 1,600 DPI), high-definition optical  \r\n                        sensor delivers smooth, responsive cursor control, so you can work with\r\n                        precision and confidence on a wide variety of surfaces\r\n                    3-buttons, scroll wheel (acts as third button)', 'mouse1.jpg', 'mouse1.1.jpg', 'mouse1.2.jpg', 50, 'In Stock', '2020-06-13 16:13:31', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(14, 8, 'Hp', '2020-06-13 12:07:34', NULL),
(15, 8, 'Apple', '2020-06-13 12:07:45', NULL),
(16, 8, 'Asus', '2020-06-13 12:07:54', NULL),
(17, 8, 'Dell', '2020-06-13 12:08:02', NULL),
(18, 8, 'Msi', '2020-06-13 12:08:36', NULL),
(19, 9, 'Redmi', '2020-06-13 12:09:15', NULL),
(20, 9, 'Realme', '2020-06-13 12:09:24', NULL),
(21, 9, 'Samsung', '2020-06-13 12:09:33', NULL),
(22, 10, 'Mouse', '2020-06-13 12:11:08', NULL),
(23, 10, 'Pendrive', '2020-06-13 12:11:18', NULL),
(24, 10, 'HDD', '2020-06-13 12:11:28', NULL),
(25, 10, 'SSD', '2020-06-13 12:11:36', NULL),
(26, 10, 'Earphone', '2020-06-13 12:11:57', NULL),
(27, 10, 'Speaker', '2020-06-13 12:12:06', NULL),
(28, 8, 'Acer', '2020-06-13 13:26:51', NULL),
(29, 9, 'Apple', '2020-06-13 14:08:34', NULL),
(30, 9, 'One Plus', '2020-06-13 14:38:50', NULL),
(31, 9, 'Iqoo', '2020-06-13 14:47:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
