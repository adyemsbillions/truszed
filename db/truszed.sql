-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2025 at 09:33 PM
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
-- Database: `truszed`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Billions001', '$2y$10$Ir2P2Be874sd8W8JVuBotu/uBnqZ.cm.f7499gPTxj/jGaIda9qqC');

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('male','female','prefer not to say') NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) NOT NULL,
  `id_type` enum('NIN','Passport','Drivers Licence','Voter''s card') NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `id_front_image` varchar(255) NOT NULL,
  `id_back_image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','approved','rejected','suspended') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `full_name`, `email`, `phone_number`, `birth_date`, `gender`, `address_line1`, `address_line2`, `id_type`, `id_number`, `id_front_image`, `id_back_image`, `password`, `created_at`, `status`) VALUES
(2, 'Zena Klein', 'tonava@mailinator.com', '487', '1991-07-02', 'female', '933 Milton Boulevard', 'Aut necessitatibus q', 'NIN', '413', 'images.jpg', 'images (1).jpg', '$2y$10$YKnmJTVeuj/yegZKjIEJjuRlkKALF810enI6b1U/PIbQg9H1lSHDm', '2025-01-17 14:41:33', 'approved'),
(3, 'fater ', 'joponuza@mailinator.com', '539', '2024-09-06', 'male', '49 Old Lane', 'Omnis quidem quia ve', 'Drivers Licence', '931', 'hello - Copy.jpg', 'images (1).jpg', '$2y$10$OgJbd6fHn9zT1OzcdxbqHeAx1rErrYoiSMREINCDg5SqOZmCkYowa', '2025-01-17 15:36:15', 'approved'),
(4, 'Linda Gregory', 'macisirici@mailinator.com', '81', '2008-09-22', 'prefer not to say', '214 White Cowley Drive', 'Eum ullam adipisicin', 'Passport', '495', 'hello - Copy - Copy.jpg', 'images (1).jpg', '$2y$10$YzsWhBpxBEGKTRgzzV45tO30aCpiKfTHbqQ7FADVV823DSoFAw.Ze', '2025-01-17 19:02:05', 'approved'),
(5, 'Dalton Schneider', 'dihyhepo@mailinator.com', '7', '2023-08-26', 'female', '95 East White Hague Street', 'Consectetur id cons', 'Passport', '24', 'hello.jpg', 'hello - Copy - Copy.jpg', '$2y$10$xhQ0tGSKsLkvMF6Y12arzuafqZ3MCZDtKNPZKOITfU9lZez9WcDA.', '2025-01-17 19:11:18', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `agent_properties`
--

CREATE TABLE `agent_properties` (
  `id` int(11) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `address` text NOT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `property_type` enum('rent','sell') NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `toilets` int(11) NOT NULL,
  `parking_space` int(11) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `other_images` text DEFAULT NULL,
  `market_status` enum('available','unavailable') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `state` varchar(100) DEFAULT NULL,
  `lga` varchar(255) DEFAULT NULL,
  `property_details` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `stars` int(11) DEFAULT 0,
  `agent_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent_properties`
--

INSERT INTO `agent_properties` (`id`, `property_name`, `price`, `address`, `dimensions`, `property_type`, `bedrooms`, `bathrooms`, `toilets`, `parking_space`, `post_image`, `other_images`, `market_status`, `created_at`, `state`, `lga`, `property_details`, `status`, `stars`, `agent_id`) VALUES
(1, 'Ginger Wilder', 45.00, 'Eveniet eum eos qui', 'Nisi sint nobis temp', 'rent', 10, 36, 3, 74, 'hello.jpg', 'hello - Copy.jpg', 'available', '2025-01-17 11:12:34', 'Adamawa', 'Girei', 'Deleniti provident ', 'approved', 0, NULL),
(2, 'Jasper Strong', 484.00, 'Totam iste id ullam ', 'Elit doloremque eos', 'sell', 3, 38, 2, 28, 'hello - Copy.jpg', '', 'available', '2025-01-17 11:12:48', 'Niger', 'Wushishi', 'Porro consequat Aut', 'pending', 0, NULL),
(3, 'Jasper Strong', 484.00, 'Totam iste id ullam ', 'Elit doloremque eos', 'sell', 3, 38, 2, 28, 'hello - Copy.jpg', '', 'available', '2025-01-17 11:13:53', 'Niger', 'Wushishi', 'Porro consequat Aut', 'pending', 0, NULL),
(4, 'Jasper Strong', 484.00, 'Totam iste id ullam ', 'Elit doloremque eos', 'sell', 3, 38, 2, 28, 'hello - Copy.jpg', '', 'available', '2025-01-17 11:14:17', 'Niger', 'Wushishi', 'Porro consequat Aut', 'pending', 0, NULL),
(5, 'Jasper Strong', 484.00, 'Totam iste id ullam ', 'Elit doloremque eos', 'sell', 3, 38, 2, 28, 'hello - Copy.jpg', '', 'available', '2025-01-17 11:14:25', 'Niger', 'Wushishi', 'Porro consequat Aut', 'pending', 0, NULL),
(6, 'Jasper Strong', 484.00, 'Totam iste id ullam ', 'Elit doloremque eos', 'sell', 3, 38, 2, 28, 'hello - Copy.jpg', '', 'available', '2025-01-17 11:14:32', 'Niger', 'Wushishi', 'Porro consequat Aut', 'pending', 0, NULL),
(7, 'Jasper Strong', 484.00, 'Totam iste id ullam ', 'Elit doloremque eos', 'sell', 3, 38, 2, 28, 'hello - Copy.jpg', '', 'available', '2025-01-17 11:14:59', 'Niger', 'Wushishi', 'Porro consequat Aut', 'pending', 0, NULL),
(8, 'Jasper Strong', 484.00, 'Totam iste id ullam ', 'Elit doloremque eos', 'sell', 3, 38, 2, 28, 'hello - Copy.jpg', '', 'available', '2025-01-17 11:15:03', 'Niger', 'Wushishi', 'Porro consequat Aut', 'pending', 0, NULL),
(9, 'Jasper Strong', 484.00, 'Totam iste id ullam ', 'Elit doloremque eos', 'sell', 3, 38, 2, 28, 'hello - Copy.jpg', '', 'available', '2025-01-17 11:16:22', 'Niger', 'Wushishi', 'Porro consequat Aut', 'pending', 0, NULL),
(10, 'Jasper Strong', 484.00, 'Totam iste id ullam ', 'Elit doloremque eos', 'sell', 3, 38, 2, 28, 'hello - Copy.jpg', '', 'available', '2025-01-17 11:16:40', 'Niger', 'Wushishi', 'Porro consequat Aut', 'pending', 0, NULL),
(11, 'Jasper Strong', 484.00, 'Totam iste id ullam ', 'Elit doloremque eos', 'sell', 3, 38, 2, 28, 'hello - Copy.jpg', '', 'available', '2025-01-17 11:16:53', 'Niger', 'Wushishi', 'Porro consequat Aut', 'pending', 0, NULL),
(12, 'Galvin Boyle', 633.00, 'Nisi autem fugiat ul', 'Saepe officia Nam re', 'rent', 61, 14, 52, 70, 'images.jpg', '', 'available', '2025-01-17 11:39:47', 'Adamawa', 'Ganye', 'Adipisci aliquid ame', 'approved', 0, NULL),
(13, 'adyems chech again', 966.00, 'Doloribus rem dolori', 'Enim rem eaque repel', 'sell', 50, 50, 53, 91, 'l2.jpg', 'images (1) - Copy.jpg,images (1).jpg,images.jpg,l2.jpg', 'unavailable', '2025-01-17 12:05:51', 'Osun', 'Ede South', 'Tempora ut dolores r', 'approved', 0, NULL),
(14, 'last check2', 685.00, 'Et aliquid reiciendi', 'Incididunt id natus ', 'sell', 37, 17, 34, 37, 'office-buildings-with-modern-architecture_107420-95734.jpg', '', 'unavailable', '2025-01-17 12:08:45', 'Bauchi', 'Toro', 'Enim tempore est m', 'approved', 0, NULL),
(15, 'last check2', 685.00, 'Et aliquid reiciendi', 'Incididunt id natus ', 'sell', 37, 17, 34, 37, 'office-buildings-with-modern-architecture_107420-95734.jpg', '', 'unavailable', '2025-01-17 14:02:55', 'Bauchi', 'Toro', 'Enim tempore est m', 'pending', 0, NULL),
(16, 'Claudia Owen', 724.00, 'Quia deserunt nostru', 'Distinctio Vero sin', 'rent', 36, 7, 88, 6, 'hello - Copy.jpg', '', 'unavailable', '2025-01-17 14:21:04', 'Imo', 'Nkwerre', 'Ducimus sequi ut re', 'pending', 0, NULL),
(17, 'fater duplic', 2345679.00, 'Incididunt nisi at e', 'Ut expedita in maxim', 'sell', 15, 51, 50, 83, 'images (1) - Copy.jpg', 'office-buildings-with-modern-architecture_107420-95734.jpg,papa.jfif,prop1.jpg,ru4.jpg,l2 - Copy.jpg,hello - Copy - Copy.jpg', 'available', '2025-01-17 15:40:15', 'Edo', 'Esan North-East', 'Dolorem odit aliquid', 'approved', 3, NULL),
(18, 'adyems chris duplex', 563.00, 'Obcaecati omnis do c', 'Aperiam anim est pos', 'sell', 99, 27, 62, 47, 'l2 - Copy.jpg', 'hello - Copy - Copy.jpg,hello - Copy (2).jpg,hello.jpg,images (1) - Copy.jpg,images (1).jpg,papa.jfif', 'available', '2025-01-17 18:19:26', 'Benue', 'Ukum', 'Libero alias itaque ', 'approved', 2, NULL),
(19, 'Alvin Sandoval', 113.00, 'Recusandae Quidem o', 'Non ut cillum accusa', 'rent', 65, 99, 95, 83, 'hello - Copy.jpg', 'images (1).jpg', 'unavailable', '2025-01-17 19:20:15', 'Sokoto', 'Tambuwal', 'Aliquip similique be', 'pending', 0, NULL),
(20, 'Alvin Sandoval', 113.00, 'Recusandae Quidem o', 'Non ut cillum accusa', 'rent', 65, 99, 95, 83, 'hello - Copy.jpg', 'images (1).jpg', 'unavailable', '2025-01-18 06:24:19', 'Sokoto', 'Tambuwal', 'Aliquip similique be', 'pending', 0, NULL),
(21, 'Alvin Sandoval', 113.00, 'Recusandae Quidem o', 'Non ut cillum accusa', 'rent', 65, 99, 95, 83, 'hello - Copy.jpg', 'images (1).jpg', 'unavailable', '2025-01-18 06:33:09', 'Sokoto', 'Tambuwal', 'Aliquip similique be', 'pending', 0, ''),
(22, 'Minerva Herman', 211.00, 'Libero et aut molest', 'Temporibus aliquid d', 'rent', 19, 52, 51, 72, 'images (1) - Copy.jpg', 'images (1).jpg', 'available', '2025-01-18 06:34:05', 'Edo', 'Akoko-Edo', 'Et labore rerum et c', 'approved', 0, '4'),
(23, 'Steel Mcintyre', 172.00, 'Quo voluptate molest', 'Qui pariatur Velit ', 'rent', 1, 24, 35, 14, 'hello - Copy.jpg', 'hello.jpg', 'unavailable', '2025-01-28 19:27:02', 'Lagos', 'Ikorodu', 'Dolor quis sed in ma', 'pending', 0, 'Ullamco sunt consequ'),
(24, 'Mallory Morton', 346.00, 'In quas aliqua Illo', 'Iure ullamco facilis', 'sell', 24, 84, 84, 82, 'IMG_20241222_101120_203.jpg', 'IMG_20241222_101224_864.jpg,IMG_20241225_111843_788.jpg', 'available', '2025-01-28 19:29:01', 'Ogun', 'Ikenne', 'Eaque dignissimos sa', 'pending', 0, '4'),
(25, 'Mallory Morton', 346.00, 'In quas aliqua Illo', 'Iure ullamco facilis', 'sell', 24, 84, 84, 82, 'IMG_20241222_101120_203.jpg', 'IMG_20241222_101224_864.jpg,IMG_20241225_111843_788.jpg', 'available', '2025-01-28 19:32:28', 'Ogun', 'Ikenne', 'Eaque dignissimos sa', 'pending', 0, '4'),
(26, 'adyems dup', 2000000.00, 'Ullam et quia in et ', 'Est similique non of', 'sell', 100, 17, 49, 48, 'IMG_20241222_101120_203.jpg', 'hello - Copy.jpg,hello.jpg,images (1) - Copy.jpg', 'available', '2025-01-28 19:33:07', 'Nasarawa', 'Nasarawa', 'Irure aute accusamus', 'approved', 0, '4');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_user_sender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `property_id`, `sender_id`, `recipient_id`, `message`, `timestamp`, `is_user_sender`) VALUES
(1, 13, 1, 0, 'i want it', '2025-01-28 17:08:46', 1),
(2, 0, 1, 0, '', '2025-01-28 17:09:45', 1),
(3, 0, 1, 0, '', '2025-01-28 17:09:50', 1),
(4, 0, 1, 0, '', '2025-01-28 17:10:32', 1),
(5, 0, 1, 0, '', '2025-01-28 17:11:09', 1),
(6, 0, 1, 0, '', '2025-01-28 17:11:39', 1),
(7, 0, 1, 0, '', '2025-01-28 17:11:41', 1),
(8, 0, 1, 0, '', '2025-01-28 17:11:44', 1),
(9, 26, 1, 4, 'i want tis', '2025-01-28 19:34:45', 1),
(10, 26, 1, 4, 'i want to buy', '2025-01-28 19:42:38', 1),
(11, 26, 1, 4, 'right now', '2025-01-28 19:43:06', 1),
(12, 0, 1, 4, 'okay', '2025-01-28 19:52:58', 0),
(13, 26, 1, 4, 'i said', '2025-01-28 19:53:23', 1),
(14, 26, 6, 4, 'i said this one', '2025-01-28 19:59:24', 1),
(15, 0, 1, 4, 'okay', '2025-01-28 20:00:31', 0),
(16, 26, 4, 0, 'okay', '2025-01-28 20:23:09', 0),
(17, 26, 6, 4, 'i will pay 2M', '2025-01-28 20:27:16', 1),
(18, 26, 6, 4, 'i just have 2million', '2025-01-28 20:32:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `recipient_id`, `message`, `link`, `sent_at`, `read`) VALUES
(1, 1, 4, 'Cillum fugit minima', NULL, '2025-01-14 21:33:07', 0),
(2, 1, 4, 'Cillum fugit minima', NULL, '2025-01-14 21:34:06', 0),
(3, 1, 4, 'Cillum fugit minima', NULL, '2025-01-14 21:37:46', 0),
(4, 1, 6, 'check', NULL, '2025-01-14 21:37:52', 1),
(5, 1, 4, 'check', NULL, '2025-01-14 21:37:52', 0),
(6, 1, 3, 'check', NULL, '2025-01-14 21:37:52', 0),
(7, 1, 1, 'check', NULL, '2025-01-14 21:37:52', 0),
(8, 1, 5, 'check', NULL, '2025-01-14 21:37:52', 0),
(9, 1, 6, 'check', NULL, '2025-01-14 21:58:30', 1),
(10, 1, 4, 'check', NULL, '2025-01-14 21:58:30', 0),
(11, 1, 3, 'check', NULL, '2025-01-14 21:58:30', 0),
(12, 1, 1, 'check', NULL, '2025-01-14 21:58:30', 0),
(13, 1, 5, 'check', NULL, '2025-01-14 21:58:30', 0),
(14, 1, 6, 'Et asperiores non do\n\nLink: Mollit voluptas reru', NULL, '2025-01-14 22:00:27', 1),
(15, 1, 4, 'Et asperiores non do\n\nLink: Mollit voluptas reru', NULL, '2025-01-14 22:00:27', 0),
(16, 1, 3, 'Et asperiores non do\n\nLink: Mollit voluptas reru', NULL, '2025-01-14 22:00:27', 0),
(17, 1, 1, 'Et asperiores non do\n\nLink: Mollit voluptas reru', NULL, '2025-01-14 22:00:27', 0),
(18, 1, 5, 'Et asperiores non do\n\nLink: Mollit voluptas reru', NULL, '2025-01-14 22:00:27', 0),
(19, 1, 6, 'Omnis at quia lorem \n\nLink: amazon.com', NULL, '2025-01-14 22:00:52', 1),
(20, 1, 6, 'Omnis at quia lorem ', 'amazon.com', '2025-01-14 22:02:06', 1),
(21, 1, 3, 'bbb', '', '2025-01-14 22:37:36', 0),
(22, 1, 6, 'now', '', '2025-01-14 22:37:50', 1),
(23, 1, 6, 'this is a message to welcome all users on this platform\r\n\r\nyou can click the link below to visit our rent page too', 'truszedproperties.com/rent', '2025-01-16 20:20:40', 1),
(24, 1, 4, 'this is a message to welcome all users on this platform\r\n\r\nyou can click the link below to visit our rent page too', 'truszedproperties.com/rent', '2025-01-16 20:20:40', 0),
(25, 1, 3, 'this is a message to welcome all users on this platform\r\n\r\nyou can click the link below to visit our rent page too', 'truszedproperties.com/rent', '2025-01-16 20:20:40', 0),
(26, 1, 1, 'this is a message to welcome all users on this platform\r\n\r\nyou can click the link below to visit our rent page too', 'truszedproperties.com/rent', '2025-01-16 20:20:40', 0),
(27, 1, 5, 'this is a message to welcome all users on this platform\r\n\r\nyou can click the link below to visit our rent page too', 'truszedproperties.com/rent', '2025-01-16 20:20:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `alt_phone_number` varchar(15) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT 'Other',
  `home_address` text DEFAULT NULL,
  `residential_address` text DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `verification_token` varchar(255) NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `alt_phone_number`, `gender`, `home_address`, `residential_address`, `password`, `created_at`, `verification_token`, `is_verified`) VALUES
(1, 'Leigh Fitzpatrick', 'hygy@mailinator.com', '1234567890', NULL, 'Other', NULL, NULL, '$2y$10$sJGnfe/NlMVFfoVfK2Zda.uK6eK.oRdrZB0WIiL5jvVZRSWf3H2t6', '2025-01-14 16:58:45', '', 0),
(3, 'Ava Maxwell', 'fiquxoxopy@mailinator.com', '1234567888', NULL, 'Other', NULL, NULL, '$2y$10$Gh68HCkvevSG31JvNAca1OH/Z8AArpgbcRj1z7sOlzCcHa2OVk0rm', '2025-01-14 17:04:48', '', 0),
(4, 'Cairo Dean', 'dyxoze@mailinator.com', '1234567885', NULL, 'Other', NULL, NULL, '$2y$10$0Et.9yTIoA/Xb0qTtmn81u7cE30jOfZXQUGmSKZwVeVAfZH0.zJWu', '2025-01-14 17:06:17', '', 0),
(5, 'Bethany Ray', 'reqeh@mailinator.com', '+1 (268) 281-89', '+1 (908) 807-76', 'Male', 'Voluptatum nostrum i', 'Deserunt velit accus', '$2y$10$SMWWciLOp7qIJy962tGH9ePW8reTtyFRs82gRy0lvpdPLXeCJ2wTK', '2025-01-14 17:07:24', '', 0),
(6, 'Adyems godlove aondosoo', 'billions@gmail.com', '09061512740', '+1 (771) 553-52', 'Other', 'Recusandae Lorem te', 'Quo commodo sequi su', '$2y$10$laeVQ2JVK42YUd1fm1gz.uwT7K2Hx7oIl3ItlTphVS6UgIS394vza', '2025-01-14 17:14:40', '', 0),
(7, '', 'your-email@domain.com', '', NULL, 'Other', NULL, NULL, '', '2025-01-18 08:40:24', '39411277d3a6f5082aacf739803fa506', 0),
(8, '', 'adyemsgodlove@gmail.com', '', NULL, 'Other', NULL, NULL, '', '2025-01-18 08:50:41', 'd7a2e69889d395f2f8678f2a93f947f3', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_properties`
--
ALTER TABLE `agent_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `agent_properties`
--
ALTER TABLE `agent_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
