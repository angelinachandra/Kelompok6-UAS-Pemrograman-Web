-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 06:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catstore_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'angel', '0812341223', 'chandrangelina@gmail.com', 'cash on delivery', 'bahu, malalayang, manado, sulawesi utara', ', IAMS Cat Food Adult Tuna & Salmon 3kg - Makanan Kucing Dewasa (1) ', 275000, '13-Jun-2022', 'completed'),
(2, 1, 'andrew', '0812341223', 'chandrangelina@gmail.com', 'cash on delivery', 'jl sea, malalayang, manado, sulawesi utara', ', Mangkok Kucing Single Bowl (1) , Pet comb sisir kucing Anjing SR16 (1) ', 80000, '13-Jun-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(1, 'IAMS Cat Food Adult Tuna & Salmon 3kg - Makanan Kucing Dewasa', 'IAMS Cat Adult Tuna & Salmon\r\nKemasan Freshpack 3 Kilogram\r\nMakanan kering kucing untuk usia diatas 1 tahun\r\n\r\n* Omega 3 DHA membantu perkembangan otak\r\n* Prebiotik dan pulp bit untuk membantu mendukung sistem pencernaan anak kucing Anda yang sedang berkembang\r\n* Diformulasi dengan antioksidan sebagai bagian dari nutrisi seimbang untuk membantu mendukung sistem kekebalan tubuh yang berkembang\r\n* Dengan mineral penting untuk pengembangan tulang yang kuat\r\n* Protein berkualitas tinggi untuk memban', 275000, 'IAMS Cat Food Adult Tuna & Salmon 3kg.png'),
(2, 'IAMS Cat Food Adult Tuna & Salmon 1kg - Makanan Kucing Dewasa', 'AMS Cat Adult Tuna & Salmon\r\nKemasan Freshpack 1 Kilogram\r\nMakanan kering kucing untuk usia diatas 1 tahun\r\n\r\n* Omega 3 DHA membantu perkembangan otak\r\n* Prebiotik dan pulp bit untuk membantu mendukung sistem pencernaan anak kucing Anda yang sedang berkembang\r\n* Diformulasi dengan antioksidan sebagai bagian dari nutrisi seimbang untuk membantu mendukung sistem kekebalan tubuh yang berkembang\r\n* Dengan mineral penting untuk pengembangan tulang yang kuat\r\n* Protein berkualitas tinggi untuk membant', 115000, 'IAMS Cat Food Adult Tuna & Salmon 1kg .png'),
(3, 'IAMS Cat Food Adult Chicken & Salmon 3kg- Makanan Kucing Dewasa', 'IAMS Cat Adult Chicken& Salmon\r\nKemasan Freshpack 3 Kilogram\r\nMakanan kering kucing untuk usia diatas 1 tahun\r\n\r\n* Omega 3 DHA membantu perkembangan otak\r\n* Prebiotik dan pulp bit untuk membantu mendukung sistem pencernaan anak kucing Anda yang sedang berkembang\r\n* Diformulasi dengan antioksidan sebagai bagian dari nutrisi seimbang untuk membantu mendukung sistem kekebalan tubuh yang berkembang\r\n* Dengan mineral penting untuk pengembangan tulang yang kuat\r\n* Protein berkualitas tinggi untuk memb', 275000, 'IAMS Cat Food Adult Chicken & Salmon 3kg.png'),
(4, 'IAMS Cat Food Adult Chicken 3kg - Makanan Kucing Dewasa', 'IAMS Cat Adult Chicken\r\nKemasan Freshpack 3 Kilogram\r\nMakanan kering kucing untuk usia diatas 1 tahun\r\n\r\n* Omega 3 DHA membantu perkembangan otak\r\n* Prebiotik dan pulp bit untuk membantu mendukung sistem pencernaan anak kucing Anda yang sedang berkembang\r\n* Diformulasi dengan antioksidan sebagai bagian dari nutrisi seimbang untuk membantu mendukung sistem kekebalan tubuh yang berkembang\r\n* Dengan mineral penting untuk pengembangan tulang yang kuat\r\n* Protein berkualitas tinggi untuk membantu ana', 275000, 'IAMS Adult Chicken 3kg.png'),
(5, 'IAMS Cat Food Mother Kitten 3kg - Makanan Ibu dan Anak Kucing', 'IAMS Cat Food Mother & Kitten\r\nKemasan Freshpack 3 Kilogram\r\nUntuk usia dibawah 1 tahun\r\n\r\n*Direkomendasikan untuk anak kucing umur 1-12 bulan,\r\n* Omega 3 DHA membantu perkembangan otak\r\n* Prebiotik dan pulp bit untuk membantu mendukung sistem pencernaan anak kucing Anda yang sedang berkembang\r\n* Diformulasi dengan antioksidan sebagai bagian dari nutrisi seimbang untuk membantu mendukung sistem kekebalan tubuh yang berkembang\r\n* Dengan mineral penting untuk pengembangan tulang yang kuat\r\n* Prote', 295000, 'IAMS Cat Food Mother Kitten 3kg.png'),
(6, 'Whiskas Skin & Coat 1,1kg - Makanan Kucing Kering Premium', 'Bulu dan kulit yang indah adalah ciri khas kucing yang dirawat dengan baik dan sehat. Banyak faktor yang bisa menyebabkan kesehatan kulit & bulu yang jelek, seperti nutrisi yang buruk, berat badan yang berlebihan (yang mempersulit kucing Anda merawat tubuh mereka sendiri), usia tua dan bahkan terlalu sering dimandikan (yang bisa menghilangkan minyak alami dan menyebabkan iritasi kulit).\r\n\r\nHindari kerontokan rambut dan tampilkan keanggunan kucing Anda dengan WHISKAS® Skin & Coat. Kelebatan bulu ', 68000, 'Whiskas Skin & Coat 1,1kg.png'),
(7, 'Happy Cat Minkas Junior Care 1,5kg', 'For steady growth\r\nOur Happy Cat Minkas Junior Care contains valuable animal proteins and high-quality ingredients such as omega 3 and 6 fatty acids. The balanced recipe with tasty poultry is specially matched to the needs of young cats. This complete food is perfect from 13 weeks onwards and provides your four-legged friend with everything she needs for steady growth. Our recipe with its high proportion of valuable animal proteins is 100% balanced and natural. This tasty dry food contains lots ', 135000, 'Happy Cat Minkas Junior Care 1,5kg.png'),
(8, 'Royal Canin Baby Cat Milk - 300 gr', 'Royal Canin Baby Cat Milk (0 - 1 Month) adalah susu pengganti yang sempurna disesuaikan untuk anak kucing (kitten) dari lahir sampai disapih. Pada minggu pertama, anak kucing membutuhkan nutrisi yang tepat untuk tumbuh menjadi kucing dewasa yang kuat dan sehat. Ketika ibu menolak untuk memberi makan, susu pengganti sangat penting diberikan pada anak kucing. Royal Canin Baby Cat Milk menjamin keamanan yang baik untuk anak-anak kucing, karena penggunaan susu sebagai satu-satunya sumber protein.\r\n\r', 365000, 'Royal Canin Baby Cat Milk - 300 gr.png'),
(9, 'Pets Own Cat & Kitten 1 Liter - Susu Kucing', 'Pets Own Cat & Kitten 1 Liter non-lactose milk with glucosamine nett weight : 1 liter (susu cair untuk anak kucing dan kucing dewasa) product of australia. why pets own cat & kitten milk? pets own cat & kitten milk adalah susu natural yang di formulasi khusus untuk anak kucing yang sedang berkembang, dan juga untuk menjaga kesehatan serta daya tahan tubuh kucing dewasa. susu pets own mengandung protein dan asam lemak yang tinggi yang penting bagi pertumbuhan,yang tidak bisa di dapati pada makana', 100000, 'Pets Own Cat & Kitten 1 Liter.png'),
(10, 'Kandila Cat Litter Box Size L', 'Bak Pasir Kucing Size Large C192', 125000, 'Kandila Bak Pasir Kucing Size L.png'),
(11, 'Kandila Cat Litter Box Size M', 'Bak Pasir Kucing Size Medium C132', 75000, 'Kandila Bak Pasir Kucing Size M.png'),
(12, 'Mangkok Kucing Single Bowl', 'Bisa untuk minuman juga makanan', 30000, 'Mangkok Kucing Anjing.png'),
(13, 'Ubowl Europe Hilo Double Bowl Stainless', 'Ubowl Europe Hilo Double Bowl, Tempat makan untuk hewan peliharaan anda, dengan bahan yang aman digunakan sehari-hari. Dengan bentuk perhiasan Kotak dan warna terang, sangat cantik untuk hewan kesayangan anda. Serta memiliki 2 mangkok dengan beda ketinggian, bisa untuk hewan ukuran kecil dan sedang. Cocok untuk anjing, kucing, kelinci dan hewan peliharaan lainnya.', 83000, 'Ubowl Europe Hilo Double Bowl Stainless.png'),
(14, 'Volk Pets Dot Motif Backpack for Cat & Dog', 'Dengan tas ini, Anda tidak perlu repot-repot menggendong atau menuntun hewan Anda. Dilengkapi dengan ventilasi yang cukup, hewan kesayangan Anda akan merasa nyaman di dalam.\r\n\r\n- Untuk hewan berat 7kg atau kurang\r\n- Terdapat ventilasi udara yang cukup, tidak akan mengganggu pernafasan hewan\r\n- Cocok untuk anjing, kucing, kelinci, dan hewan peliharaan lainnya dengan ukuran kecil.', 400000, 'Volk Pets Dot Motif Backpack for Cat & Dog.png'),
(15, 'Hartz Hairball Control 444 ml - Shampo Anti Hairball', 'Shampo Cat Hairball Kontrol Terbaik Hartz Groomer memiliki formula lembut yang membantu mengurangi hairball sambil melembabkan dan mencegah kusut. Shampo ini mengandung microbeads yang dilengkapi dengan kondisioner untuk mantel yang halus dan mengkilap. Hartz Groomers Shampo kontrol bola rambut terbaik untuk kucing & anak kucing dalam mengurangi hairball pada kucing', 170000, 'Hartz Hairball Control 444 ml.png'),
(16, 'Cattyman Pet Hair Remover Brush', 'Kegunaan:\r\nDapat membersihkan bulu-bulu hewan yang menempel pada sofa, kasur ataupun pakaian anda, Bisa digunakan berulang-ulang.', 95000, 'Cattyman Pet Hair Remover Brush.png'),
(17, 'Spray grooming Anjing, kucing, kelinci - JUSZ Spray', 'CARA PENGGUNAAN\r\nCukup Semprotkan Ke bagian tubuh yang ada jamurnya, akan lebih efektif jika bulu di bagian yang terkena Jamur di cukur terlebih dahulu.', 150000, 'Spray kucing - JUSZ Spray.png'),
(18, 'Tropiclean Fresh Breath for Cat Drops 65ml', 'TropiClean digunakan untuk Kucing menjaga mulut kucing tetap sehat dan napasnya segar.\r\nCukup tambahkan 3 DROPS ke mangkuk airnya untuk memberikan nafas segar bagi kucing Anda.', 50000, 'Tropiclean Fresh Breath for Cat Drops 65ml.png'),
(19, 'Pure Vet Anti Bacterial 100 ml - Shampo Kucing Anjing', 'Shampo pure vet anti bacterial formulasi baru untuk hewan kesayangan anda. wangi buah leci menyegarkan, dan lembut untuk bulu hewan kesayangan anda.', 30000, 'Pure Vet Anti Bacterial 100 ml.png'),
(20, 'Pet comb sisir kucing Anjing SR16', 'Sisir ini berguna untuk bulu hewan kesayanagan Anda yg kusut dan sulit diatur. Sisir ini jg dapat digunakan untuk mengangkat bulu mati yg sudah rontok.', 50000, 'Pet comb sisir kucing Anjing SR16.png'),
(21, 'Petsy Grooming Brush - Sisir Hewan Otomatis', 'Sisir hewan otomatis mengangkat bulu-bulu mati yang sudah terlepas, dengan sistem pelepasan bulu yang sangat mudah, tinggal tekan jempol anda pada tombol', 60000, 'Petsy Grooming Brush.png'),
(22, 'Noona Turnable Egg Toys With Ball', 'Mainan kucing premium berbentuk telur bergulir dengan 2 bola di samping dan 1 antenna bola di atas\r\nDapat dimasukkan treat / camilan kucing ke dalam mainan ini', 120000, 'Noona Turnable Egg Toys With Ball.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'angel', 'chandrangelina@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(2, 'admin', 'admin1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
