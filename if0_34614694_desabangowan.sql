-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql201.infinityfree.com
-- Generation Time: Jul 27, 2023 at 07:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_34614694_desabangowan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(3) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `judul`, `deskripsi`, `gambar`, `date`) VALUES
(12, 'testing 1', 'hcsdjh', '7db7e0156893724ad4f94dbe95751bcf.jpg', '2023-07-23 07:10:40'),
(14, 'testing 2', 'kokok', '0e5d780740574ca40be71d695e9df99b.jpg', '2023-07-23 07:22:27'),
(15, 'testing 3', 'mencoba lagi', '4f12c0317de51a6b2124b98096ab53b3.jpg', '2023-07-27 06:28:44'),
(16, 'testing 4', 'mencoba kesekian kali', '4a5e24a26cece76793cbe6290a1cc34c.jpg', '2023-07-27 06:53:00'),
(17, 'testing 5', 'Pada contoh di atas, kami membuat class CSS baru yaitu .news-item, .img-container, dan .content-container untuk mengatur tata letak dan dimensi container dari setiap berita. Dengan menggunakan pendekatan ini, semua container berita akan memiliki tinggi yang sama (400px dalam contoh ini), sedangkan tinggi gambar dan konten akan diatur secara proporsional sesuai dengan container berita.\r\nAnda dapat menyesuaikan tinggi container berita sesuai kebutuhan Anda dengan mengubah nilai pada properti height di CSS.', '6f1498034f673a5f4f0bf747976f5daf.jpg', '2023-07-27 06:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `tb_img`
--

CREATE TABLE `tb_img` (
  `id` int(3) NOT NULL,
  `postimage` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `wisata` varchar(50) NOT NULL,
  `isActive` int(3) NOT NULL,
  `postDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_img`
--

INSERT INTO `tb_img` (`id`, `postimage`, `nama`, `caption`, `wisata`, `isActive`, `postDate`) VALUES
(8, 'ec5f831bbb542c847b9e5c558c5f138a.jpg', 'Dibawah kebun sawo', 'kegiatan eduwisata kebun sawo organik.', 'kebunsawo', 1, '2023-07-23 07:33:10'),
(9, '9b56b82f374e41478f9a52a2fc4e6793.jpg', 'Mengecat wayang Thengul', 'kegiatan eduwisata wayang thengul', 'wayangthengul', 1, '2023-07-22 04:00:00'),
(10, '19ea8f7f7fd8870a64c2fe3c049ed1a9.jpg', 'Pementasan wayang thengul', 'kegiatan pementasan wayang thengul', 'wayangthengul', 1, '2023-07-22 04:00:00'),
(11, 'd62fdcb860e7a4be68aa6fd5c375d918.jpg', 'Setelah memetik sawo', 'Kegiatan petik sawo', 'kebunsawo', 1, '2023-07-22 04:00:00'),
(12, 'f78d43b15c789860a08fef79882217d0.jpg', 'Setelah memetik sawo', 'Kegiatan petik sawo', 'kebunsawo', 1, '2023-07-22 04:00:00'),
(13, '0ee863dea3dbfb25c024b4933d4e6e7e.jpg', 'Acara pementasan wayang thengul', 'kegiatan pementasan wayang thengul', 'wayangthengul', 1, '2023-07-22 04:00:00'),
(14, '7b3a528e1f41f3e25819138cc82b37cc.jpg', 'Pementasan wayang thengul', 'kegiatan pementasan wayang thengul', 'wayangthengul', 1, '2023-07-22 04:00:00'),
(15, '5b33051d87a05feb896d5d3c8d267278.jpg', 'Mengecat wayang Thengul', 'kegiatan eduwisata wayang thengul', 'wayangthengul', 1, '2023-07-22 04:00:00'),
(16, 'f883fe383262c54bbd92705aa5770b1d.jpg', 'eduwisata wayang thengul', 'kegiatan eduwisata wayang thengul', 'wayangthengul', 1, '2023-07-22 04:00:00'),
(23, '71514e76fb5b60d4d14ba192f8c199ed.jpg', 'bukit kunci', 'foto pengunjung', 'bukitkunci', 1, '2023-07-23 07:43:35'),
(24, 'cfe9ce2da1991a88d0d898e600e637d7.jpg', 'bukit kunci', 'foto pemandangan dari atas bukit kunci', 'bukitkunci', 1, '2023-07-23 07:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`nama`, `username`, `password`, `level`) VALUES
('salma', 'admin', '$2y$10$vCr9JxroW0UBtU0NOFIsz.MFj2bPEx2o0uw3POBTCGSzO7qlvacni', 'admin'),
('santi', 'coba', '$2y$10$kP/CMha9wPbmGkYjX51Onel7jcIy7nvroatEhGrD49EoZhQzlxt.m', 'adminberita');

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisata`
--

CREATE TABLE `tb_wisata` (
  `id` int(3) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `status_wisata` varchar(255) NOT NULL,
  `nm_kecil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wisata`
--

INSERT INTO `tb_wisata` (`id`, `nama`, `lokasi`, `deskripsi`, `status_wisata`, `nm_kecil`) VALUES
(6, 'Bukit Kunci', 'Dukuh, Watugunung, Bangoan, Kec. Jiken, Kabupaten Blora, Jawa Tengah 58372', 'Wisata Bukit Kunci Desa Wisata Bangowan', 'aktif', 'bukitkunci'),
(7, 'Kebun Sawo', 'Dukuh, Watugunung, Bangoan, Kec. Jiken, Kabupaten Blora, Jawa Tengah 58372', 'Eduwisata Kebun Sawo Desa Wisata Bangowan', 'aktif', 'kebunsawo'),
(8, 'Wayang Thengul', 'Dukuh, Watugunung, Bangoan, Kec. Jiken, Kabupaten Blora, Jawa Tengah 58372', 'Wayang Thengul Desa Wisata Bangowan', 'aktif', 'wayangthengul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_img`
--
ALTER TABLE `tb_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_wisata`
--
ALTER TABLE `tb_wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_img`
--
ALTER TABLE `tb_img`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_wisata`
--
ALTER TABLE `tb_wisata`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
