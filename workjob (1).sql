-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 26, 2017 at 07:52 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 5.6.30-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workjob`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(4, 'dgdfg', 'fgfdgd', '2017-02-25 11:28:50', '2017-02-25 11:28:50'),
(5, 'dgdfg', 'fgfdgd', '2017-02-25 11:32:52', '2017-02-25 11:32:52'),
(7, 'fsdf', 'dsfsdfsdfsd', '2017-02-25 23:32:14', '2017-02-25 23:32:14'),
(8, 'fsdf', 'dsfsdfsdfsd', '2017-02-25 23:32:22', '2017-02-25 23:32:22'),
(9, 'hjhjjkhk', 'jjk', '2017-02-25 23:35:50', '2017-02-25 23:35:50'),
(10, 'aaaaaaaaa', 'aaaaa', '2017-02-25 23:36:09', '2017-02-26 01:38:52'),
(11, 'sfrs', 'sdsd', '2017-02-25 23:41:12', '2017-02-25 23:41:12'),
(12, 'jiu', 'jui', '2017-02-25 23:43:12', '2017-02-25 23:43:12'),
(13, 'dfgdf', 'fdgdfg', '2017-02-25 23:43:55', '2017-02-25 23:43:55'),
(14, 'dfgdf', 'fdgdfg', '2017-02-25 23:43:56', '2017-02-25 23:43:56'),
(15, 'dfgdf', 'fdgdfg', '2017-02-25 23:43:57', '2017-02-25 23:43:57'),
(16, 'dfgdf', 'fdgdfg', '2017-02-25 23:44:01', '2017-02-25 23:44:01'),
(17, 'dfsdfdf', 'dsfsdf', '2017-02-25 23:44:33', '2017-02-25 23:44:33'),
(18, 'dfsdfdf', 'dfsdfd', '2017-02-25 23:45:42', '2017-02-25 23:45:42'),
(19, 'testing email', 'fsdfdsf', '2017-02-26 02:07:45', '2017-02-26 02:07:45'),
(20, 'testing email', 'fsdfdsf', '2017-02-26 02:08:47', '2017-02-26 02:08:47'),
(21, 'testing email', 'dsfsdfsf', '2017-02-26 02:09:09', '2017-02-26 02:09:09'),
(22, 'testing email', 'dsfsdfsf', '2017-02-26 02:10:10', '2017-02-26 02:10:10'),
(23, 'testing email', 'dsfsdfsf', '2017-02-26 02:11:43', '2017-02-26 02:11:43'),
(24, 'testing email', 'dfsdfdsfsd', '2017-02-26 02:13:46', '2017-02-26 02:13:46'),
(25, 'testing email', 'dfsdfdsfsd', '2017-02-26 02:14:24', '2017-02-26 02:14:24'),
(26, 'testing email', 'sfsdfdsfs', '2017-02-26 02:24:01', '2017-02-26 02:24:01'),
(27, 'testing email', 'zxczxc', '2017-02-26 02:24:56', '2017-02-26 02:24:56'),
(28, 'fsdf', 'dsfsdf', '2017-02-26 03:12:33', '2017-02-26 03:12:33'),
(29, 'fsdf', 'dsfsdf', '2017-02-26 03:13:07', '2017-02-26 03:13:07'),
(30, 'kkkkkkk', 'ljkkkkkkkkkkkk', '2017-02-26 03:13:18', '2017-02-26 03:13:18'),
(31, 'rwerwrewrwe', 'rerwerwe', '2017-02-26 03:13:43', '2017-02-26 03:13:43'),
(32, 'rwerwrewrwe', 'rerwerwe', '2017-02-26 03:13:43', '2017-02-26 03:13:43'),
(33, 'fsdfs', 'dsfdfds', '2017-02-26 03:15:36', '2017-02-26 03:15:36'),
(34, 'testing email', 'fgdgdfd', '2017-02-26 03:17:04', '2017-02-26 03:17:04'),
(35, 'testing email', 'fgdgdfd', '2017-02-26 03:21:59', '2017-02-26 03:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 9, 4, NULL, NULL),
(4, 12, 6, NULL, NULL),
(5, 13, 5, NULL, NULL),
(6, 14, 5, NULL, NULL),
(7, 15, 5, NULL, NULL),
(8, 16, 5, NULL, NULL),
(9, 17, 7, NULL, NULL),
(10, 18, 8, NULL, NULL),
(21, 10, 10, NULL, NULL),
(22, 27, 11, NULL, NULL),
(23, 35, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fggfd', '2017-02-25 11:27:12', '2017-02-25 11:27:12'),
(2, 'rtyrtyr', '2017-02-25 11:28:02', '2017-02-25 11:28:02'),
(3, 'wwwwwwwwwww', '2017-02-25 11:28:51', '2017-02-25 11:28:51'),
(4, 'ghvhgvgh', '2017-02-25 23:35:51', '2017-02-25 23:35:51'),
(5, 'dfgdf', '2017-02-25 23:36:09', '2017-02-25 23:36:09'),
(6, 'oiioio', '2017-02-25 23:43:13', '2017-02-25 23:43:13'),
(7, 'dsfdsf', '2017-02-25 23:44:33', '2017-02-25 23:44:33'),
(8, 'dfsdf', '2017-02-25 23:45:42', '2017-02-25 23:45:42'),
(9, 'aaaaaaaaaaaa', '2017-02-26 01:38:52', '2017-02-26 01:38:52'),
(10, 'eeeeeeee', '2017-02-26 01:38:52', '2017-02-26 01:38:52'),
(11, 'xczxc', '2017-02-26 02:24:56', '2017-02-26 02:24:56'),
(12, 'erf', '2017-02-26 03:22:00', '2017-02-26 03:22:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
