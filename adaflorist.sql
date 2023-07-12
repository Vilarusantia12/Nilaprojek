-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 09:20 AM
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
-- Database: `adaflorist`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `Nama`, `password`) VALUES
(1, 'nila', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID_customer` int(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `notelfon` varchar(12) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `beli` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID_customer`, `nama`, `alamat`, `notelfon`, `email`, `password`, `beli`) VALUES
(54, 'rama', 'brebes', '087726851277', 'wisnu.ramadhan1277@gmail.', '8230f52055112e14fa3d05a89f83f3d8', 0),
(56, 'cyber', 'tegal', '08159610197', 'cyberlimit2@gmail.com', 'd759175de8ea5b1d9a2660e45554894f', 1),
(57, 'dewi', 'semarang timur', '081432453234', 'dewisukmowati0@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `transaksi_id` int(20) NOT NULL,
  `tanaman_id` int(20) NOT NULL,
  `jumlah_beli` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`transaksi_id`, `tanaman_id`, `jumlah_beli`) VALUES
(174, 21, 1),
(175, 23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tanaman`
--

CREATE TABLE `tanaman` (
  `ID_Tanaman` int(11) NOT NULL,
  `Nama_Tanaman` varchar(25) NOT NULL,
  `Harga_Tanaman` bigint(20) NOT NULL,
  `Deskripsi_Tanaman` varchar(500) NOT NULL,
  `Jumlah_Stok` int(11) NOT NULL,
  `Jenis_Tanaman` varchar(50) NOT NULL,
  `Gambar` varchar(100) NOT NULL,
  `Berat` float DEFAULT NULL,
  `Iklim` varchar(50) DEFAULT NULL,
  `Ukuran_Tanaman` varchar(50) DEFAULT NULL,
  `Media_Tanam` varchar(50) DEFAULT NULL,
  `Ukuranpot` varchar(50) DEFAULT NULL,
  `Penyiraman` varchar(50) DEFAULT NULL,
  `Kebutuhan_Sinar` varchar(50) DEFAULT NULL,
  `Pemupukan` varchar(100) DEFAULT NULL,
  `Asal_Bibit` varchar(100) DEFAULT NULL,
  `Kondisi_Tanaman` varchar(60) DEFAULT NULL,
  `jumlah_beli` int(20) NOT NULL DEFAULT 0,
  `jumlah_lihat` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tanaman`
--

INSERT INTO `tanaman` (`ID_Tanaman`, `Nama_Tanaman`, `Harga_Tanaman`, `Deskripsi_Tanaman`, `Jumlah_Stok`, `Jenis_Tanaman`, `Gambar`, `Berat`, `Iklim`, `Ukuran_Tanaman`, `Media_Tanam`, `Ukuranpot`, `Penyiraman`, `Kebutuhan_Sinar`, `Pemupukan`, `Asal_Bibit`, `Kondisi_Tanaman`, `jumlah_beli`, `jumlah_lihat`) VALUES
(19, 'Pupuk Urea', 10000, 'Pupuk Urea: Pupuk nitrogen yang sering digunakan untuk memberikan suplai nitrogen yang cukup pada bawang merah.', 25, 'Aromatherapy', 'pupuk-urea.jpg', 1, 'Subsidi', ' 285 kg urea/ha ', 'berbentuk butir', '1 kg', 'Siram tanaman sebelum dipupuk. Membuat lubang pemu', ' kandungan nitrogen (N) tinggi sekitar 45 – 46%', 'Membuat daun lebih hijau dan segar, sehingga secara tidak langsung berperan dalam proses fotosintesi', 'Dari Proses Pencampuran Antara Amonia Dan Karbon Dioksida', 'menyebabkan tanaman mudah layu dan membangun konsentrasi gar', 0, 0),
(20, 'Pupuk Kandang', 15000, 'Pupuk organik yang berasal dari kotoran hewan. Pupuk kandang memberikan nutrisi secara alami dan membantu meningkatkan kesuburan tanah.', 20, 'Tanaman Gantung', 'pupuk-kandang.jpg', 1, 'Subsidi', ' 5 hari sebelum tanam, 10 hari sebelum tanam, dan ', ' padat dan cair. Pupuk padat biasanya didapatkan d', '1 kg', ' 5 hari sebelum tanam, 10 hari sebelum tanam, dan ', 'mengandung unsur hara makro dan mikro', 'memperbaiki struktur fisik tanah, memacu aktivitas biologi tanah, dan membantu perkembangan kehidupa', 'didapatkan dari tahi (feses) sedangkan pupuk cair diambil dari air kencing (urine).', '1. Harus diberikan dalam jumlah yang besar. 2. Secara perban', 0, 0),
(21, 'Pupuk NPK (Nitrogen-Phosp', 35000, 'Pupuk komersial yang mengandung campuran nitrogen, fosfor, dan kalium dalam proporsi tertentu. NPK tersedia dalam berbagai formula, seperti NPK 16-16-16 atau NPK 20-10-10, dan dapat digunakan sesuai dengan kebutuhan tanaman.', 24, 'Aromatherapy', 'pupuk-npk.jpg', 1, 'Nonsubsidi', 'melarutkan 10 sendok makan pupuk NPK Mutiara ke da', 'berbentuk mutiara', '1', ' menyiapkan satu sendok makan pupuk atau sesuaikan', 'memilik kandungan tiga unsur hara makro, yaitu Nit', 'membantu pertumbuhan tanaman agar berkembang secara maksimal', 'dari Rusia', 'Kekurangan dari jenis pupuk ini adalah berpotensi mencemari ', 1, 1),
(22, 'Pupuk TSP (Triple Superph', 10000, 'Pupuk TSP (Triple Superphosphate): Pupuk fosfat yang kaya akan fosfor. Pupuk TSP digunakan untuk membantu pertumbuhan akar dan pembentukan umbi bawang merah.', 25, 'fosfor', 'pupuk-tsp.jpg', 1, 'Subsidi', 'dosisi 100 kg – 125 kg/ha', 'granular atau butiran', '1 kg', 'menaburkannya di area piringan atau sekitar bawang', 'mengandung 46% fosfat', 'mempercepat pertumbuhan sistem perakaran pada tanaman muda.', 'Dari  batuan fosfat', 'apat membuat tanah mengeras dan kehilangan porositasnya', 0, 0),
(23, 'Pupuk KCl (Kalium Klorida', 25000, 'Pupuk KCl (Kalium Klorida): Pupuk kalium yang mengandung klorida. Pupuk KCl membantu meningkatkan kualitas dan ketahanan bawang merah terhadap penyakit serta stres lingkungan.', 18, 'Tanaman Air', 'pupuk-kcl.jpg', 1, 'Subsidi', ' pada saat tanaman telah mulai memasuki masa berbu', 'serbuk kristal atau cair', '1 kg', 'Campur pupuk cair K dengan air dengan perbandingan', 'KCl 80 (mengandung 50% K2O) dan KCl 90 (mengandung', 'membuat tanaman lebih tahan terhadap risiko terjadinya stres serta kekeringan', 'a dasarnya Unsur Kalium (K) dalam tanah berasal dari: mineral-mineral yang terdiri dari primer tanah', 'tidak cocok digunakan untuk jenis tanaman kentang, tembakau,', 2, 1),
(24, 'Pupuk ZA (Amonium Sulfat)', 10000, 'Pupuk ZA (Amonium Sulfat): Pupuk yang mengandung nitrogen dalam bentuk amonium dan sulfat. Pupuk ZA memberikan sumber nitrogen yang baik untuk bawang merah.', 35, 'Aromatherapy', 'puuk-za.jpg', 1, 'Subsidi', 'diberikan setiap 7 hingga 10 hari sekali', 'butiran kristal mirip garam dapur dan terasa asin ', '1 kg', 'diberikan setiap 7 hingga 10 hari sekali', 'mengandung amonium sulfat', 'Meningkatkan kualitas warna, aroma, juga kelenturan daun (khusus pada tembakau), mencegah penyusutan', 'Pupuk ini dirancang untuk memberi tambahan hara nitrogen dan juga belerang bagi bawang', 'Kekurangan dari penggunaan pupuk ZA adalah mengancam kehidup', 0, 0),
(25, 'Pupuk Mikro', 25000, 'Pupuk Mikro: Pupuk yang mengandung unsur mikro seperti zat besi, mangan, tembaga, seng, dan boron. Pupuk mikro membantu memenuhi kebutuhan nutrisi mikro bawang merah yang penting untuk pertumbuhan dan perkembangan yang optimal.', 20, 'Aromatherapy', 'pupuk-mikro-.jpg', 1, 'Subsidi', 'pemberian pupuk mikro plus lewat daun dengan dosis', 'berbentuk butir', '1 kg', 'pupuk mikro ini adalah dengan menyemprotkan ke dau', 'Unsur Hara Mikro Boron (B) Boron memiliki kaitan e', '1) Sebagai penyusun jaringan tanaman. 2) Sebagai katalisator (stimulant). 3) Mempengaruhi proses oks', 'Unsur Hara Mikro Boron (B) Boron memiliki kaitan erat dengan proses pembentukan , pembelahan dan dif', 'Pembungaan terhambat, tanaman menjadi kerdil. Terjadinya ham', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Transaksi` int(9) NOT NULL,
  `Total_Biaya` bigint(20) NOT NULL,
  `Tanggal_transaksi` datetime NOT NULL DEFAULT current_timestamp(),
  `id_customer` int(11) NOT NULL,
  `Konfirmasi` tinyint(1) NOT NULL DEFAULT 0,
  `waktu_konfirmasi` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`ID_Transaksi`, `Total_Biaya`, `Tanggal_transaksi`, `id_customer`, `Konfirmasi`, `waktu_konfirmasi`) VALUES
(174, 35000, '2023-06-15 23:37:48', 56, 0, '2023-06-15 23:37:48'),
(175, 50000, '2023-06-15 23:44:24', 57, 0, '2023-06-15 23:44:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID_customer`),
  ADD UNIQUE KEY `notelfon` (`notelfon`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `tanaman_id` (`tanaman_id`);

--
-- Indexes for table `tanaman`
--
ALTER TABLE `tanaman`
  ADD PRIMARY KEY (`ID_Tanaman`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `id_customer` (`id_customer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID_customer` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tanaman`
--
ALTER TABLE `tanaman`
  MODIFY `ID_Tanaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `ID_Transaksi` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`tanaman_id`) REFERENCES `tanaman` (`ID_Tanaman`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`ID_Transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
