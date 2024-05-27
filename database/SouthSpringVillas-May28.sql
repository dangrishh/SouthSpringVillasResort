-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 07:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ormss_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_list`
--

CREATE TABLE `activity_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_list`
--

INSERT INTO `activity_list` (`id`, `name`, `description`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Jet Skiing', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Etiam et massa ligula. Donec lacinia purus ut ex malesuada, at aliquam dolor laoreet. Proin hendrerit vestibulum quam. Praesent metus diam, volutpat sit amet leo nec, placerat facilisis quam. Pellentesque quis mauris ut erat tristique bibendum. Aliquam molestie massa quis libero vestibulum ultrices. Aliquam odio tellus, tincidunt ut arcu eu, efficitur fringilla leo.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Ut sed dui sed sapien tincidunt aliquet. Aenean sodales sollicitudin nibh a porta. Nullam ac commodo lorem. Duis tempus elit in turpis efficitur feugiat. Pellentesque semper auctor lacus, et ullamcorper magna pulvinar eget. Fusce molestie vitae elit ac ornare. Mauris rutrum a felis eget lacinia.&lt;/p&gt;', 1, 'uploads/activitys/1.png?v=1641618733', 0, '2022-01-08 13:12:13', '2022-01-08 13:13:40'),
(2, 'Snorkeling', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit est elit, vitae sagittis lorem lobortis in. Donec vulputate, metus vel hendrerit pulvinar, lectus arcu cursus ipsum, vitae tincidunt erat velit sit amet tortor. Integer sit amet ex pellentesque purus hendrerit rhoncus. Aliquam aliquet hendrerit turpis, ut imperdiet lacus condimentum at. Etiam aliquet non nunc a vehicula. Cras lobortis, velit sed sollicitudin bibendum, tellus arcu lobortis dolor, rutrum ullamcorper est ante vitae ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas non pretium sapien. Etiam a fermentum risus.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Ut tempus urna non consequat tincidunt. Vestibulum imperdiet ultrices malesuada. In consequat luctus nisl imperdiet convallis. Donec auctor tortor id nisl varius suscipit. Aliquam posuere ex risus, a laoreet risus vulputate nec. Ut fringilla nibh lacus, quis sagittis odio bibendum quis. Phasellus odio ipsum, accumsan vehicula diam ac, condimentum aliquam tellus.&lt;/p&gt;', 1, 'uploads/activitys/2.png?v=1641618857', 0, '2022-01-08 13:14:17', '2022-01-08 13:14:17'),
(3, 'Diving', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Etiam et massa ligula. Donec lacinia purus ut ex malesuada, at aliquam dolor laoreet. Proin hendrerit vestibulum quam. Praesent metus diam, volutpat sit amet leo nec, placerat facilisis quam. Pellentesque quis mauris ut erat tristique bibendum. Aliquam molestie massa quis libero vestibulum ultrices. Aliquam odio tellus, tincidunt ut arcu eu, efficitur fringilla leo.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Ut sed dui sed sapien tincidunt aliquet. Aenean sodales sollicitudin nibh a porta. Nullam ac commodo lorem. Duis tempus elit in turpis efficitur feugiat. Pellentesque semper auctor lacus, et ullamcorper magna pulvinar eget. Fusce molestie vitae elit ac ornare. Mauris rutrum a felis eget lacinia.&lt;/p&gt;', 1, 'uploads/activitys/3.png?v=1641618898', 0, '2022-01-08 13:14:58', '2022-01-08 13:14:58'),
(4, 'Island Hopping', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Ut tempus urna non consequat tincidunt. Vestibulum imperdiet ultrices malesuada. In consequat luctus nisl imperdiet convallis. Donec auctor tortor id nisl varius suscipit. Aliquam posuere ex risus, a laoreet risus vulputate nec. Ut fringilla nibh lacus, quis sagittis odio bibendum quis. Phasellus odio ipsum, accumsan vehicula diam ac, condimentum aliquam tellus.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Etiam et massa ligula. Donec lacinia purus ut ex malesuada, at aliquam dolor laoreet. Proin hendrerit vestibulum quam. Praesent metus diam, volutpat sit amet leo nec, placerat facilisis quam. Pellentesque quis mauris ut erat tristique bibendum. Aliquam molestie massa quis libero vestibulum ultrices. Aliquam odio tellus, tincidunt ut arcu eu, efficitur fringilla leo.&lt;/p&gt;', 1, 'uploads/activitys/4.png?v=1641618928', 0, '2022-01-08 13:15:27', '2022-01-08 13:15:28'),
(5, 'test', '&lt;p&gt;test&lt;/p&gt;', 0, 'uploads/activitys/5.png?v=1641618949', 1, '2022-01-08 13:15:49', '2022-01-08 13:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `message_list`
--

CREATE TABLE `message_list` (
  `id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation_list`
--

CREATE TABLE `reservation_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `room_id` int(30) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1 = Confirmed, 2=Cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation_list`
--

INSERT INTO `reservation_list` (`id`, `code`, `room_id`, `check_in`, `check_out`, `fullname`, `contact`, `email`, `address`, `status`, `date_created`, `date_updated`) VALUES
(4, '202405-0001', 1, '2024-05-28', '2024-05-29', 'John Franklin Mayad', '09123456789', 'mayadfranklin@gmail.com', '123213123', 0, '2024-05-28 01:07:20', NULL),
(5, '202405-0002', 1, '2024-05-30', '2024-05-31', 'John Franklin Mayad', '09123456789', 'mayadfranklin@gmail.com', '23213', 2, '2024-05-28 01:08:03', '2024-05-28 01:11:39'),
(6, '202405-0003', 4, '2024-05-28', '2024-05-29', 'Danilo De Torres', '09123456789', 'danblydetorres30@gmail.com', 'Jalandone Streetdas', 0, '2024-05-28 01:08:28', NULL),
(7, '202405-0004', 4, '2024-06-02', '2024-06-03', 'Danilo De Torres', '09123456789', 'danblydetorres30@gmail.com', 'dsadsa', 1, '2024-05-28 01:08:56', '2024-05-28 01:11:00'),
(8, '202405-0005', 6, '2024-05-28', '2024-05-30', 'Daniel Altoveros De Torres', '09167266833', 'danieldetorres.info@gmail.com', 'Purok 1, Jalandone St. Pansol Calamba City', 1, '2024-05-28 01:09:12', '2024-05-28 01:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `room_list`
--

CREATE TABLE `room_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `type` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `image_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_list`
--

INSERT INTO `room_list` (`id`, `name`, `type`, `description`, `price`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Golden Buddha Resort A', '10', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit est elit, vitae sagittis lorem lobortis in. Donec vulputate, metus vel hendrerit pulvinar, lectus arcu cursus ipsum, vitae tincidunt erat velit sit amet tortor. Integer sit amet ex pellentesque purus hendrerit rhoncus. Aliquam aliquet hendrerit turpis, ut imperdiet lacus condimentum at. Etiam aliquet non nunc a vehicula. Cras lobortis, velit sed sollicitudin bibendum, tellus arcu lobortis dolor, rutrum ullamcorper est ante vitae ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas non pretium sapien. Etiam a fermentum risus.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Ut tempus urna non consequat tincidunt. Vestibulum imperdiet ultrices malesuada. In consequat luctus nisl imperdiet convallis. Donec auctor tortor id nisl varius suscipit. Aliquam posuere ex risus, a laoreet risus vulputate nec. Ut fringilla nibh lacus, quis sagittis odio bibendum quis. Phasellus odio ipsum, accumsan vehicula diam ac, condimentum aliquam tellus.&lt;/p&gt;', 10000, 'uploads/rooms/1.png?v=1641606821', 1, 0, '2022-01-08 09:53:41', '2024-05-28 01:31:01'),
(2, 'Golden Buddha Resort B', '5', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Ut tempus urna non consequat tincidunt. Vestibulum imperdiet ultrices malesuada. In consequat luctus nisl imperdiet convallis. Donec auctor tortor id nisl varius suscipit. Aliquam posuere ex risus, a laoreet risus vulputate nec. Ut fringilla nibh lacus, quis sagittis odio bibendum quis. Phasellus odio ipsum, accumsan vehicula diam ac, condimentum aliquam tellus.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Etiam et massa ligula. Donec lacinia purus ut ex malesuada, at aliquam dolor laoreet. Proin hendrerit vestibulum quam. Praesent metus diam, volutpat sit amet leo nec, placerat facilisis quam. Pellentesque quis mauris ut erat tristique bibendum. Aliquam molestie massa quis libero vestibulum ultrices. Aliquam odio tellus, tincidunt ut arcu eu, efficitur fringilla leo.&lt;/p&gt;', 12000, 'uploads/rooms/2.png?v=1641608206', 1, 0, '2022-01-08 10:16:45', '2024-05-28 01:30:21'),
(3, 'Series 1 Resort', '7', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Ut sed dui sed sapien tincidunt aliquet. Aenean sodales sollicitudin nibh a porta. Nullam ac commodo lorem. Duis tempus elit in turpis efficitur feugiat. Pellentesque semper auctor lacus, et ullamcorper magna pulvinar eget. Fusce molestie vitae elit ac ornare. Mauris rutrum a felis eget lacinia.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;In a orci laoreet, convallis nibh sed, pellentesque elit. Mauris in ipsum justo. Aliquam maximus dapibus auctor. Nulla sodales varius dui, quis ultrices nulla vulputate et. Suspendisse id ligula justo. Etiam quis ligula sit amet purus hendrerit blandit. Mauris ut egestas magna. In tincidunt euismod tincidunt.&lt;/p&gt;', 13000, 'uploads/rooms/3.png?v=1641608243', 1, 0, '2022-01-08 10:17:23', '2024-05-28 01:31:32'),
(4, 'Royal Elizabeth', '4', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Etiam et massa ligula. Donec lacinia purus ut ex malesuada, at aliquam dolor laoreet. Proin hendrerit vestibulum quam. Praesent metus diam, volutpat sit amet leo nec, placerat facilisis quam. Pellentesque quis mauris ut erat tristique bibendum. Aliquam molestie massa quis libero vestibulum ultrices. Aliquam odio tellus, tincidunt ut arcu eu, efficitur fringilla leo.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Ut sed dui sed sapien tincidunt aliquet. Aenean sodales sollicitudin nibh a porta. Nullam ac commodo lorem. Duis tempus elit in turpis efficitur feugiat. Pellentesque semper auctor lacus, et ullamcorper magna pulvinar eget. Fusce molestie vitae elit ac ornare. Mauris rutrum a felis eget lacinia.&lt;/p&gt;', 15000, 'uploads/rooms/4.png?v=1641608280', 1, 0, '2022-01-08 10:17:59', '2024-05-28 01:32:01'),
(5, 'JBC Resort', '15', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit est elit, vitae sagittis lorem lobortis in. Donec vulputate, metus vel hendrerit pulvinar, lectus arcu cursus ipsum, vitae tincidunt erat velit sit amet tortor. Integer sit amet ex pellentesque purus hendrerit rhoncus. Aliquam aliquet hendrerit turpis, ut imperdiet lacus condimentum at. Etiam aliquet non nunc a vehicula. Cras lobortis, velit sed sollicitudin bibendum, tellus arcu lobortis dolor, rutrum ullamcorper est ante vitae ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas non pretium sapien. Etiam a fermentum risus.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;In a orci laoreet, convallis nibh sed, pellentesque elit. Mauris in ipsum justo. Aliquam maximus dapibus auctor. Nulla sodales varius dui, quis ultrices nulla vulputate et. Suspendisse id ligula justo. Etiam quis ligula sit amet purus hendrerit blandit. Mauris ut egestas magna. In tincidunt euismod tincidunt.&lt;/span&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 18000, 'uploads/rooms/5.png?v=1641608319', 1, 0, '2022-01-08 10:18:39', '2024-05-28 01:32:03'),
(6, 'SRJO Fun Central', '11', '&lt;p&gt;&lt;span style=&quot;color: rgb(191, 191, 191); font-family: &amp;quot;Google Sans&amp;quot;, arial, sans-serif; font-size: 16px; background-color: rgb(31, 31, 31);&quot;&gt;Defined as a desirable or useful feature of a building or place, amenities look to provide comfort and convenience for tenants occupying the property. Amenities encompass additions that are in excess of the basic needs of an individual, and usually include features such as pools, workout facilities, and internet.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 20000, '', 1, 0, '2024-05-28 00:07:21', '2024-05-28 01:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'South Spring Villas'),
(6, 'short_name', 'South Spring Villas'),
(11, 'logo', 'uploads/logo-1641604371.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1641604371.png'),
(15, 'content', 'Array'),
(16, 'email', 'info@xyzresorts.com'),
(17, 'contact', '09854698789 / 78945632'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'XYZ Street, There City, Here, 2306');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1639468007', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-14 15:47:08'),
(5, 'Daniel', NULL, 'De Torres', 'danieldt', '202cb962ac59075b964b07152d234b70', 'uploads/avatar-5.png?v=1641622906', NULL, 2, 1, '2022-01-08 14:21:46', '2024-05-28 00:47:43'),
(6, 'Franklin', NULL, 'Mayad', 'mayad', '202cb962ac59075b964b07152d234b70', NULL, NULL, 2, 1, '2024-05-28 00:51:20', NULL),
(7, 'Juan', NULL, 'Mayad', 'juan', '202cb962ac59075b964b07152d234b70', NULL, NULL, 2, 1, '2024-05-28 01:04:17', '2024-05-28 01:15:11'),
(8, 'Alice ', NULL, 'Guo', 'mayor-alice', '202cb962ac59075b964b07152d234b70', NULL, NULL, 1, 1, '2024-05-28 01:14:31', '2024-05-28 01:14:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_list`
--
ALTER TABLE `activity_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_list`
--
ALTER TABLE `message_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation_list`
--
ALTER TABLE `reservation_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `room_list`
--
ALTER TABLE `room_list`
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
-- AUTO_INCREMENT for table `activity_list`
--
ALTER TABLE `activity_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message_list`
--
ALTER TABLE `message_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reservation_list`
--
ALTER TABLE `reservation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `room_list`
--
ALTER TABLE `room_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation_list`
--
ALTER TABLE `reservation_list`
  ADD CONSTRAINT `reservation_list_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
