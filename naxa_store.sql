-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2025 at 07:01 PM
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
-- Database: `naxa_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `kode_order` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT current_timestamp(),
  `total` int(11) NOT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `harga`, `image`) VALUES
(126, 'Jacket Urban Canvas', 'Jaket kerah hitam polos siap gaya', 350000, 'SRC/Jacket/jacket 1.png'),
(127, 'Jacket Royal Rebel', 'Jaket Denim Hitam Mahkota Besar Belakang', 350000, 'SRC/Jacket/jacket 2.png'),
(128, 'Jacket Dark Hue', 'Jacket Hitam Minimalis Nyaman', 300000, 'SRC/Jacket/jacket 3.png'),
(129, 'Jacket Pure Cloud', 'Jacket Putih Bersih Gaya Santai', 250000, 'SRC/Jacket/jacket 4.png'),
(130, 'Jacket Sweet Soul', 'Jacket Hitam Tulisan Unik Belakang', 350000, 'SRC/Jacket/jacket 5.png'),
(131, 'Jacket Cream Dream', 'Jacket Krem Lembut Hangat', 220000, 'SRC/Jacket/jacket 6.png'),
(132, 'Jacket Terracotta Comfort', 'Hoodie tebal dengan bahan fleece, cocok untuk cuaca dingin dan gaya kasual.', 300000, 'SRC/Jacket/jacket 7.png'),
(133, 'Jacket Indigo Spirit', 'Jacket Biru Tua Berani', 300000, 'SRC/Jacket/jacket 8.png'),
(134, 'Jacket Crimson Embrac', 'Jacket Merah Marun Hangat', 220000, 'SRC/Jacket/jacket 9.png'),
(145, 'Shoes Apexn', 'mewakili puncak desain minimalis', 400000, 'SRC/Shoes/Shoes 1.png'),
(146, 'Shoes Street Rhythm', 'Gaya urban Dengan penuh karakter', 450000, 'SRC/Shoes/Shoes 2.png'),
(147, 'NAXA Sport Lite', 'Sepatu olahraga ringan, cocok untuk gym dan jogging.', 750000, 'SRC/Shoes/Shoes 3.png'),
(148, 'Shoes Urban Samba X Gibran', 'Ikonik serbaguna gaya kota', 1000000, 'SRC/Shoes/Shoes 4.png'),
(149, 'NAXA Stealth Ground', 'Hitam Pekat Sol Kuat Siap Aksi', 650000, 'SRC/Shoes/Shoes 5.png'),
(150, 'NAXA Retro Runner', 'Santai Ringan Nuansa Pesisir', 600000, 'SRC/Shoes/Shoes 6.png'),
(151, 'Shoes Retro Runner', 'Warna Alami Sol Karet Langkah Mantap', 700000, 'SRC/Shoes/Shoes 7.png'),
(152, 'NAXA Night Dive', 'Biru Gelap Sol Karet Gaya Kasual', 850000, 'SRC/Shoes/Shoes 8.png'),
(153, 'Shoes Court Classic', 'Retro Basket Gaya Abadi Nyaman', 850000, 'SRC/Shoes/Shoes 9.png'),
(154, 'Shoes Verdant Edge', 'Desain Dinamis Sentuhan Hijau Sporty', 950000, 'SRC/Shoes/Shoes 10.png'),
(155, 'Onyx Peak Hat', 'Topi Hitam Kasual Logo Putih', 75000, 'SRC/Hat/hat 1.png'),
(156, 'White Crest Hat', 'Topi Putih Bersih Logo Kontras', 75000, 'SRC/Hat/Hat 2.png'),
(157, 'Sandstone Hat', 'Topi Krem Lembut Logo Minimalis', 75000, 'SRC/Hat/Hat 3.png'),
(158, 'Royal Halo Hatt', 'Topi Putih Mahkota Sederhana', 75000, 'SRC/Hat/Hat 4.png'),
(159, 'Caramel Crown Hat', 'Topi krem tulisan Caramel Boyz', 75000, 'SRC/Hat/Hat 5.png'),
(160, 'Ruby Guard Hat', 'Topi Merah Marun Logo Putih', 75000, 'SRC/Hat/Hat 6.png'),
(161, 'Indigo Gaze Hat', 'Topi Biru Tua Logo Klasik', 75000, 'SRC/Hat/Hat 7.png'),
(162, 'Earth Tone Hat', 'Topi Coklat Hangat Logo Putih', 75000, 'SRC/Hat/Hat 9.png'),
(163, 'Regal Red Hat', 'Topi Merah Marun Mahkota Putih', 75000, 'SRC/Hat/Hat 10.png'),
(164, 'Tshirt Alive Legacy Tee', 'Kenakan kebanggaan yang tak pernah padam', 130000, 'SRC/Tshirt/Tshirt 1.png'),
(165, 'Tshirt Soulful Dreams', 'Wujudkan impian hati dan jiwa', 130000, 'SRC/Tshirt/Tshirt 2.png'),
(166, 'Tshirt Patriot Tee', 'Rayakan semangat kemerdekaan', 125000, 'SRC/Tshirt/Tshirt 3.png'),
(167, 'Tshirt Cosmic Hue Tee', 'Esensi gaya dalam kesederhanaan', 120000, 'SRC/Tshirt/Tshirt 4.png'),
(168, 'Tshirt Bandung Boys', 'Representasi gaya khas Bandung', 130000, 'SRC/Tshirt/Tshirt 5.png'),
(169, 'Tshirt Earthy Tone Tee', ' Keseimbangan alami dalam gaya', 120000, 'SRC/Tshirt/Tshirt 6.png'),
(170, 'Tshirt Anthem Tee', 'Berani dengan pesan yang unik', 135000, 'SRC/Tshirt/Tshirt 7.png'),
(171, 'T Chillwear T-Shirt', 'Definisi santai yang sebenarnya', 130000, 'SRC/Tshirt/Tshirt 8.png'),
(172, 'Tshirt Navy Basic', 'Tunjukkan karakter Anda', 120000, 'SRC/Tshirt/Tshirt 9.png'),
(173, 'Tshirt Timeless Black Tee', 'Klasik yang tak pernah salah', 120000, 'SRC/Tshirt/Tshirt 10.png'),
(174, 'Tshirt BDG Drift City', 'Rasakan adrenalin Bandung', 200000, 'SRC/Tshirt/Tshirt 11.png'),
(175, 'Tshirt  Garage Drift Jersey', 'Siap untuk lintasan kota', 250000, 'SRC/Tshirt/Tshirt 12.png'),
(176, 'Tshirt JKT Drift', 'Taklukkan jalanan Jakarta', 200000, 'SRC/Tshirt/Tshirt 13.png'),
(177, 'Tshirt Garuda Retro', 'kebanggaan merah putih', 420000, 'SRC/Tshirt/Tshirt 14.png'),
(178, 'Tshirt Legacy Of 45 Globe', 'Warisan kebanggaan yang mendunia', 320000, 'SRC/Tshirt/Tshirt 15.png'),
(179, 'Tshirt X Phoenix Revival', 'Bangkitkan kembali kebesaran', 220000, 'SRC/Tshirt/Tshirt 16.png'),
(180, 'Tshirt X JKT48 Dreams White', 'Kenakan impianmu dan harapan', 250000, 'SRC/Tshirt/Tshirt 17.png'),
(181, 'Tshirt X JKT48 Dreams Red', 'Kenakan impianmu dan harapan', 250000, 'SRC/Tshirt/Tshirt 18.png'),
(182, 'Tshirt X JKT Dreams Black', 'Wujudkan mimpi dengan semangat', 250000, 'SRC/Tshirt/Tshirt 19.png'),
(183, 'Tshirt Tshirt X JKT48 Fan Legacy', 'Tunjukkan dukunganmu dengan gaya', 200000, 'SRC/Tshirt/Tshirt 20.png'),
(184, 'Tshirt Blue Tiger Champion ', 'Semangat juara dalam balutan budaya', 300000, 'SRC/Tshirt/Tshirt 21.png'),
(185, 'Tshirt Cultural Roar', 'Ketika budaya berpadu dengan kebanggaan', 300000, 'SRC/Tshirt/Tshirt 22.png'),
(186, 'Tshirt Maung Champions ', 'Rayakan kemenangan, kenakan kebanggaan', 350000, 'SRC/Tshirt/Tshirt 10.png');

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `waktu` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Burhanudin', 'Burhan123@gmail.com', '$2y$10$.8MqhUtuDlABHXyjNQBx6./uDMs3FYwa89bRw0DWdXT6SultQmR1O', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_order` (`kode_order`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`);

--
-- Constraints for table `tracking`
--
ALTER TABLE `tracking`
  ADD CONSTRAINT `tracking_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
