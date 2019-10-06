-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 07:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `banner`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'DarkCyan', 'darkcyan', 'https://lorempixel.com/640/480/?10281', NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(2, 'MediumPurple', 'mediumpurple', 'https://lorempixel.com/640/480/?16530', NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(3, 'SeaShell', 'seashell', 'https://lorempixel.com/640/480/?16357', NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(4, 'Khaki', 'khaki', 'https://lorempixel.com/640/480/?98536', NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(5, 'Moccasin', 'moccasin', 'https://lorempixel.com/640/480/?92640', NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(6, 'PeachPuff', 'peachpuff', 'https://lorempixel.com/640/480/?39974', NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(7, 'Gold', 'gold', 'https://lorempixel.com/640/480/?57616', NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(8, 'DarkTurquoise', 'darkturquoise', 'https://lorempixel.com/640/480/?22496', NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(9, 'BlueViolet', 'blueviolet', 'https://lorempixel.com/640/480/?49354', NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(10, 'Lime', 'lime', 'https://lorempixel.com/640/480/?63389', NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Product', 3, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 34802, '[]', '[]', '[]', 1, '2019-10-04 00:59:48', '2019-10-04 00:59:48'),
(2, 'App\\Models\\Product', 11, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 29386, '[]', '[]', '[]', 2, '2019-10-04 00:59:49', '2019-10-04 00:59:49'),
(3, 'App\\Models\\Product', 18, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 38502, '[]', '[]', '[]', 3, '2019-10-04 00:59:50', '2019-10-04 00:59:50'),
(4, 'App\\Models\\Product', 14, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 53466, '[]', '[]', '[]', 4, '2019-10-04 00:59:51', '2019-10-04 00:59:51'),
(5, 'App\\Models\\Product', 15, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 42407, '[]', '[]', '[]', 5, '2019-10-04 00:59:52', '2019-10-04 00:59:52'),
(6, 'App\\Models\\Product', 12, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 58703, '[]', '[]', '[]', 6, '2019-10-04 00:59:53', '2019-10-04 00:59:53'),
(7, 'App\\Models\\Product', 5, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 38502, '[]', '[]', '[]', 7, '2019-10-04 00:59:54', '2019-10-04 00:59:54'),
(8, 'App\\Models\\Product', 20, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 34769, '[]', '[]', '[]', 8, '2019-10-04 00:59:54', '2019-10-04 00:59:54'),
(9, 'App\\Models\\Product', 7, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 34769, '[]', '[]', '[]', 9, '2019-10-04 00:59:55', '2019-10-04 00:59:55'),
(10, 'App\\Models\\Product', 16, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 45372, '[]', '[]', '[]', 10, '2019-10-04 00:59:56', '2019-10-04 00:59:56'),
(11, 'App\\Models\\Product', 19, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 32872, '[]', '[]', '[]', 11, '2019-10-04 00:59:56', '2019-10-04 00:59:56'),
(12, 'App\\Models\\Product', 2, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 42340, '[]', '[]', '[]', 12, '2019-10-04 00:59:57', '2019-10-04 00:59:57'),
(13, 'App\\Models\\Product', 10, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 67614, '[]', '[]', '[]', 13, '2019-10-04 00:59:58', '2019-10-04 00:59:58'),
(14, 'App\\Models\\Product', 4, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 28263, '[]', '[]', '[]', 14, '2019-10-04 00:59:58', '2019-10-04 00:59:58'),
(15, 'App\\Models\\Product', 9, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 62856, '[]', '[]', '[]', 15, '2019-10-04 00:59:59', '2019-10-04 00:59:59'),
(16, 'App\\Models\\Product', 13, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 30862, '[]', '[]', '[]', 16, '2019-10-04 01:00:00', '2019-10-04 01:00:00'),
(17, 'App\\Models\\Product', 1, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 31926, '[]', '[]', '[]', 17, '2019-10-04 01:00:00', '2019-10-04 01:00:00'),
(18, 'App\\Models\\Product', 17, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 62473, '[]', '[]', '[]', 18, '2019-10-04 01:00:01', '2019-10-04 01:00:01'),
(19, 'App\\Models\\Product', 6, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 5488, '[]', '[]', '[]', 19, '2019-10-04 01:00:02', '2019-10-04 01:00:02'),
(20, 'App\\Models\\Product', 8, 'products', '480', '480.jpeg', 'image/jpeg', 'public', 44073, '[]', '[]', '[]', 20, '2019-10-04 01:00:03', '2019-10-04 01:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(253, '2019_09_03_145003_create_users_table', 1),
(254, '2019_09_03_173845_create_categories_table', 1),
(255, '2019_09_03_185923_create_password_resets_table', 1),
(256, '2019_09_03_200924_create_products_table', 1),
(257, '2019_09_07_170013_create_media_table', 1),
(258, '2019_09_09_234737_create_orders_table', 1),
(259, '2019_09_09_235123_create_order_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_number` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL,
  `payment_status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_details` text COLLATE utf8mb4_unicode_ci,
  `operational_status` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `processed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_stock` tinyint(4) NOT NULL DEFAULT '1',
  `price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `slug`, `description`, `in_stock`, `price`, `sale_price`, `active`, `created_at`, `updated_at`) VALUES
(1, 8, 'Unde eveniet cupiditate enim.', 'unde-eveniet-cupiditate-enim', 'I do it again and again.\' \'You are all pardoned.\' \'Come, THAT\'S a good deal on where you want to go! Let me see: four times seven is--oh dear! I shall think nothing of the right-hand bit to try the.', 1, '956.00', NULL, 1, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(2, 9, 'Quis consectetur harum omnis.', 'quis-consectetur-harum-omnis', 'Cheshire Cat sitting on a crimson velvet cushion; and, last of all her riper years, the simple rules their friends had taught them: such as, that a moment\'s pause. The only things in the distance.', 1, '167.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(3, 7, 'Atque quo earum voluptas.', 'atque-quo-earum-voluptas', 'Alice had been all the things get used up.\' \'But what did the Dormouse began in a whisper, half afraid that it is!\' As she said to herself, as she went on for some time without hearing anything.', 1, '739.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(4, 9, 'Repellendus non et magnam.', 'repellendus-non-et-magnam', 'Alice glanced rather anxiously at the door--I do wish I could show you our cat Dinah: I think you\'d better ask HER about it.\' (The jury all wrote down on one knee as he came, \'Oh! the Duchess.', 1, '720.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(5, 2, 'Et sed atque quisquam magni.', 'et-sed-atque-quisquam-magni', 'CHORUS. (In which the cook had disappeared. \'Never mind!\' said the King. \'Nearly two miles high,\' added the Dormouse. \'Fourteenth of March, I think you\'d take a fancy to cats if you were or might.', 1, '365.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(6, 2, 'Voluptas nemo quidem omnis.', 'voluptas-nemo-quidem-omnis', 'Hatter with a teacup in one hand, and Alice was so ordered about by mice and rabbits. I almost wish I\'d gone to see how he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\'.', 1, '659.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(7, 10, 'Non in ut qui et.', 'non-in-ut-qui-et', 'Alice began, in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on their backs was the White Rabbit, with a kind of serpent, that\'s all I can find them.\' As she said to the.', 1, '382.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(8, 2, 'Voluptas ut magni dolores.', 'voluptas-ut-magni-dolores', 'Five. \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the Footman, and began bowing to the jury, who instantly made a snatch in the window, and on both sides of the garden: the.', 1, '109.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(9, 8, 'Sed et libero a amet maiores.', 'sed-et-libero-a-amet-maiores', 'They all returned from him to be two people. \'But it\'s no use denying it. I suppose it were nine o\'clock in the same thing,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and.', 1, '749.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(10, 2, 'Quis neque et omnis.', 'quis-neque-et-omnis', 'Alice. \'Come on, then!\' roared the Queen, in a low, timid voice, \'If you knew Time as well she might, what a long and a large one, but it puzzled her very much at first, but, after watching it a.', 1, '104.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(11, 5, 'Aut dolores minus numquam.', 'aut-dolores-minus-numquam', 'Alice loudly. \'The idea of the jury asked. \'That I can\'t put it into one of the lefthand bit of the other side will make you grow shorter.\' \'One side will make you grow shorter.\' \'One side of the.', 1, '191.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(12, 5, 'Et corrupti dolorum et.', 'et-corrupti-dolorum-et', 'Duchess said to the Gryphon. Alice did not wish to offend the Dormouse followed him: the March Hare. \'Then it ought to have lessons to learn! No, I\'ve made up my mind about it; and as for the.', 1, '995.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(13, 8, 'Sequi quia voluptates eum.', 'sequi-quia-voluptates-eum', 'Then it got down off the subjects on his slate with one finger pressed upon its forehead (the position in dancing.\' Alice said; \'there\'s a large pool all round her head. \'If I eat or drink something.', 1, '946.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(14, 6, 'Commodi non ex veniam rerum.', 'commodi-non-ex-veniam-rerum', 'I\'m not used to it in less than no time to begin lessons: you\'d only have to ask his neighbour to tell you--all I know is, it would be four thousand miles down, I think--\' (she was obliged to have.', 1, '732.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(15, 6, 'Ea consequuntur sint eos sit.', 'ea-consequuntur-sint-eos-sit', 'King sharply. \'Do you mean \"purpose\"?\' said Alice. \'Why, you don\'t even know what to do anything but sit with its head, it WOULD twist itself round and swam slowly back to finish his story. CHAPTER.', 1, '912.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(16, 5, 'Qui ullam sit animi et.', 'qui-ullam-sit-animi-et', 'Soup,\" will you, old fellow?\' The Mock Turtle replied, counting off the mushroom, and her face like the tone of great surprise. \'Of course they were\', said the King; and the words a little, \'From.', 1, '829.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(17, 9, 'Velit veniam esse quasi.', 'velit-veniam-esse-quasi', 'I can say.\' This was not here before,\' said the Duchess; \'I never thought about it,\' said Alice, \'how am I to do?\' said Alice. \'Why, there they lay on the slate. \'Herald, read the accusation!\' said.', 1, '699.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(18, 4, 'Aut est ea dolorem porro.', 'aut-est-ea-dolorem-porro', 'King and Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the King said, for about the twentieth time that day. \'A likely story indeed!\' said the Mouse, who.', 1, '863.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(19, 9, 'Quia est vero saepe culpa.', 'quia-est-vero-saepe-culpa', 'VERY unpleasant state of mind, she turned to the Hatter. \'Does YOUR watch tell you his history,\' As they walked off together, Alice heard the Queen\'s voice in the house if it had entirely.', 1, '280.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46'),
(20, 7, 'Ipsum dolor eius quas.', 'ipsum-dolor-eius-quas', 'Then the Queen said--\' \'Get to your little boy, And beat him when he sneezes: He only does it to half-past one as long as you can--\' \'Swim after them!\' screamed the Gryphon. \'--you advance twice--\'.', 1, '349.00', NULL, 1, '2019-10-04 00:59:46', '2019-10-04 00:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_points` tinyint(4) NOT NULL DEFAULT '0',
  `email_verified_at` date DEFAULT NULL,
  `email_verification_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `password`, `reward_points`, `email_verified_at`, `email_verification_token`, `facebook_id`, `google_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sim Smith', 'xbauch@gmail.com', '1-434-757-2498', '$2y$10$guR4KltxcvjnygJFwm8OZOJh9SVyWPR2W9h4tPsjYIicZhOuxm9le', 0, '2019-10-04', NULL, NULL, NULL, NULL, '2019-10-04 00:59:44', '2019-10-04 00:59:44'),
(2, 'Mr. Olaf Connelly', 'kaylah60@gmail.com', '480.473.9701 x7722', '$2y$10$1S7RlDcpBItc/2/1u//7DOAYqBCdSDgujf0hKGGFH/.bSWIQJOyom', 0, '2019-10-04', NULL, NULL, NULL, NULL, '2019-10-04 00:59:44', '2019-10-04 00:59:44'),
(3, 'Darron Dicki', 'zulauf.rubye@gmail.com', '1-860-455-3541', '$2y$10$YHvpWAzDzsbBVf612D8FwuTQN4qUxjAWbCt9QELAY4tcjLiMtwu9W', 0, '2019-10-04', NULL, NULL, NULL, NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(4, 'Mr. Adolf Harris I', 'giovanni36@towne.com', '1-519-890-8424 x61233', '$2y$10$.yiZrIs06ahiPErmfvNvt.OdMsB0Sdp2AOkuULQiuDnEdC22yBTyC', 0, '2019-10-04', NULL, NULL, NULL, NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(5, 'Hiram Effertz', 'annalise.jones@schuster.com', '580-298-4018', '$2y$10$O80UGb9aFWqLqxw6RxcvZez4TnECQXbcpIH95dHkMu.SaojfFpv5e', 0, '2019-10-04', NULL, NULL, NULL, NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(6, 'Brando Ankunding DDS', 'jakayla19@yahoo.com', '+1.689.625.4850', '$2y$10$BBCtnfEcsSDwHR/1Ev5qAuKU8XrObc1roFbTNVx1.HlFDamfIX97S', 0, '2019-10-04', NULL, NULL, NULL, NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(7, 'Anibal Kessler', 'ncronin@yahoo.com', '892.685.1082', '$2y$10$dHXLO2KmLefllZEjZAlacOFpaBXEhzhsTA3xUiB/ThDNgdrlo6ldO', 0, '2019-10-04', NULL, NULL, NULL, NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(8, 'Bo Homenick', 'raul83@gmail.com', '696-501-1085 x8659', '$2y$10$WJ2bClslln8/1Z9HDl8/weeqK7JfPAH7mNomXlyfkFHc44pXGiL1G', 0, '2019-10-04', NULL, NULL, NULL, NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(9, 'Cleo Feeney', 'luettgen.clay@yahoo.com', '+15728304686', '$2y$10$MeL.3kIXJGsO684zcOYtkeRUmTRXiWxZr2k/gSxJQKo7DOJmz9XWu', 0, '2019-10-04', NULL, NULL, NULL, NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45'),
(10, 'Dr. Ronny Grimes Sr.', 'xkuvalis@goodwin.com', '839.947.2357', '$2y$10$2WNvhsuRLSbghQdLYE1TD..cPuaTi5cQnEq2c8Es5n4U40R376beS', 0, '2019-10-04', NULL, NULL, NULL, NULL, '2019-10-04 00:59:45', '2019-10-04 00:59:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_processed_by_foreign` (`processed_by`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_processed_by_foreign` FOREIGN KEY (`processed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
