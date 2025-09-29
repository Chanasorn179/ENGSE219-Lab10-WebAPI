-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 04:41 AM
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
-- Database: `lab10_webapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `stock`, `description`, `image`, `created_at`) VALUES
(1, 'Elden Ring', 'Game', 1790.00, 10, 'Action RPG open world', 'eldenring.jpg', '2025-09-29 02:34:10'),
(2, 'Final Fantasy XVI', 'Game', 2390.00, 5, 'JRPG with action combat', 'ff16.jpg', '2025-09-29 02:34:10'),
(3, 'The Legend of Zelda: Tears of the Kingdom', 'Game', 1990.00, 8, 'Adventure open world on Switch', 'zelda-totk.jpg', '2025-09-29 02:34:10'),
(4, 'Honkai: Star Rail Jade Pack', 'In-game Item', 350.00, 999, 'Premium gacha currency', 'hsr-jade.jpg', '2025-09-29 02:34:10'),
(5, 'PlayStation 5 Slim', 'Console', 18990.00, 3, 'Sony next-gen console', 'ps5.jpg', '2025-09-29 02:34:10'),
(6, 'Nintendo Switch OLED', 'Console', 13990.00, 4, 'Portable hybrid console', 'switch-oled.jpg', '2025-09-29 02:34:10'),
(7, 'Xbox Series X', 'Console', 17990.00, 2, 'Powerful Microsoft console', 'xbox.jpg', '2025-09-29 02:34:10'),
(8, 'Razer DeathAdder V3 Pro', 'Accessory', 4990.00, 15, 'Wireless gaming mouse', 'razer.jpg', '2025-09-29 02:34:10'),
(9, 'Xbox Wireless Controller', 'Accessory', 2490.00, 10, 'Official Xbox controller', 'xbox-controller.jpg', '2025-09-29 02:34:10'),
(10, 'PS5 DualSense Controller', 'Accessory', 2490.00, 12, 'Adaptive triggers controller', 'ps5-controller.jpg', '2025-09-29 02:34:10'),
(11, 'Steam Deck 512GB', 'Console', 24990.00, 6, 'Valve handheld PC gaming', 'steamdeck.jpg', '2025-09-29 02:34:10'),
(12, 'Cyberpunk 2077', 'Game', 890.00, 20, 'Open-world RPG futuristic', 'cyberpunk.jpg', '2025-09-29 02:34:10'),
(13, 'Monster Hunter Rise', 'Game', 1590.00, 12, 'Co-op action hunting', 'mhr.jpg', '2025-09-29 02:34:10'),
(14, 'Genshin Impact Genesis Crystals', 'In-game Item', 600.00, 999, 'Premium currency pack', 'genshin-crystals.jpg', '2025-09-29 02:34:10'),
(15, 'Logitech G Pro Keyboard', 'Accessory', 3990.00, 7, 'Mechanical gaming keyboard', 'logitech-keyboard.jpg', '2025-09-29 02:34:10'),
(16, 'Asus ROG Strix Gaming Laptop', 'PC', 39990.00, 5, 'High performance gaming laptop', 'rog-laptop.jpg', '2025-09-29 02:34:10'),
(17, 'Call of Duty: Modern Warfare III', 'Game', 2290.00, 9, 'First-person shooter', 'codmw3.jpg', '2025-09-29 02:34:10'),
(18, 'Diablo IV', 'Game', 2490.00, 6, 'Dark fantasy action RPG', 'diablo4.jpg', '2025-09-29 02:34:10'),
(19, 'Starfield', 'Game', 2190.00, 4, 'Space exploration RPG', 'starfield.jpg', '2025-09-29 02:34:10'),
(20, 'Forza Horizon 5', 'Game', 1590.00, 7, 'Open world racing', 'forza5.jpg', '2025-09-29 02:34:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
