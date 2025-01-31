-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2025 at 04:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dayaksto_db_bengkel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username_adm` varchar(15) NOT NULL,
  `password_adm` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username_adm`, `password_adm`) VALUES
('admin', '79124251ea61de773683db73bbb83cf4');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `kode_jadwal` varchar(7) NOT NULL,
  `waktu` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`kode_jadwal`, `waktu`) VALUES
('kdjw001', '09:00 WIB'),
('kdjw002', '11:00 WIB'),
('kdjw003', '13:00 WIB'),
('kdjw004', '15:00 WIB');

-- --------------------------------------------------------

--
-- Table structure for table `motor`
--

CREATE TABLE `motor` (
  `no_polisi` varchar(10) NOT NULL,
  `jenis_motor` enum('Cub','Matic','Sport') NOT NULL,
  `merk_motor` enum('Honda','Yamaha','Suzuki','Kawasaki','Lainnya') NOT NULL,
  `nama_motor` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `motor`
--

INSERT INTO `motor` (`no_polisi`, `jenis_motor`, `merk_motor`, `nama_motor`, `username`) VALUES
('B1Ri', 'Sport', 'Kawasaki', 'Motor mainan', 'Miazory'),
('B5678CE', 'Sport', 'Yamaha', 'Motor Gue', 'Vava'),
('B5678CF', 'Sport', 'Honda', 'Motorku', 'rika'),
('F1202BC', 'Sport', 'Honda', 'CB150 Verza', 'tegardoa'),
('Jdjdjsbxh', 'Matic', 'Yamaha', 'Hduzbxhjzbxb', 'user50'),
('T4443LA', 'Matic', 'Yamaha', 'Mio', 'Reksi Firmansya');

-- --------------------------------------------------------

--
-- Table structure for table `pekerja`
--

CREATE TABLE `pekerja` (
  `id_pekerja` int(11) NOT NULL,
  `nama_pekerja` varchar(100) NOT NULL,
  `email_pekerja` varchar(100) NOT NULL,
  `password_pekerja` varchar(255) NOT NULL,
  `spesialisasi` varchar(100) DEFAULT NULL,
  `tanggal_bergabung` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pekerja`
--

INSERT INTO `pekerja` (`id_pekerja`, `nama_pekerja`, `email_pekerja`, `password_pekerja`, `spesialisasi`, `tanggal_bergabung`) VALUES
(1, 'Andi Pratama', 'andi@gmail.com', '$2y$10$N9qo8uLOickgx2ZMRZo5i.HjO.v.CID7mY7lr3Rpk9G5XDXZnxvO.', 'Programmer', '2023-01-15'),
(2, 'Budi Santoso', 'budi@gmail.com', '$2y$10$wH4IZaVGpVY9ZPsgApjrkeLhJj7N59BF9w.WJs4XWb9abnJc7F6EC', 'Desainer Grafis', '2023-03-22'),
(3, 'Citra Lestari', 'citra@gmail.com', '$2y$10$WqRTEUzEvUrTuqZoNlKH8uU5Tl5Z/C9qG/mMHwz4rEtTDkgp6PLmW', 'Content Writer', '2023-05-18'),
(4, 'Dian Sukma', 'dian@gmail.com', '$2y$10$NshNmrYdrFE2ITtRulCdheZNPSVD1KwqewkXcE3PyoN9FbbYNHYmi', 'Digital Marketing', '2023-07-01'),
(5, 'Eko Susanto', 'eko@gmail.com', '$2y$10$PpITFYOmkEXKwIHtJb7F8eh5u6v/XjMvZmQFIjDSIjC2N8uHb6NWK', 'Analyst', '2023-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_jadwal` varchar(7) NOT NULL,
  `username` varchar(15) NOT NULL,
  `no_polisi` varchar(10) NOT NULL,
  `status` enum('Belum','Proses','Selesai','Batal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `tanggal`, `kode_jadwal`, `username`, `no_polisi`, `status`) VALUES
('5b14c5185c6fe', '2018-06-05', 'kdjw002', 'Miazory', 'B1Ri', 'Selesai'),
('5b14cc4e35889', '2018-06-07', 'kdjw004', 'Reksi Firmansya', 'T4443LA', 'Selesai'),
('5b14d80944944', '2018-06-05', 'kdjw002', 'Vava', 'B5678CE', 'Proses'),
('5b14db37a7798', '2018-06-11', 'kdjw001', 'user50', 'Jdjdjsbxh', 'Belum'),
('5b14db5371412', '2018-06-05', 'kdjw004', 'user50', 'Jdjdjsbxh', 'Belum'),
('5b14f4852f327', '2018-06-06', 'kdjw003', 'rika', 'B5678CF', 'Selesai'),
('5b150e3ee22af', '2018-06-09', 'kdjw003', 'rika', 'B5678CF', 'Belum'),
('5b33aa7e3e4a4', '2018-06-29', 'kdjw002', 'tegardoa', 'F1202BC', 'Proses');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `block` enum('Blocked','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `tgl_lahir`, `jk`, `no_telp`, `alamat`, `block`) VALUES
('Miazory', '7a5bde8adaf60027e794a3af535dcaff', 'Miz', '2018-04-26', 'Pria', '081234456789', 'Jalan jalan', 'Tidak'),
('Reksi Firmansya', '202cb962ac59075b964b07152d234b70', 'Reksi Firmansyah', '1998-05-14', 'Pria', '08161415485', 'Perum Pemda', 'Tidak'),
('rika', '827ccb0eea8a706c4c34a16891f84e7b', 'Rika Fauziah', '1999-02-25', 'Wanita', '089656931847', 'Bekasi', 'Tidak'),
('simin', 'e10adc3949ba59abbe56e057f20f883e', 'simin', '2014-09-04', 'Pria', '089682612956', 'cikarang', 'Tidak'),
('tegardoa', 'd5b2e0291a5157c61c6867d31b235a71', 'Andy Yudithio', '0000-00-00', 'Pria', '085881742785', 'asdasd', 'Tidak'),
('user50', '5d68f62085335588b67cf713ed6b3cfb', 'User50', '2018-06-04', 'Pria', '0899999999', 'Telaga Murni', 'Tidak'),
('Vava', '674f3c2c1a8a6f90461e8a66fb5550ba', 'Vava Maharani', '2018-06-04', 'Wanita', '089654264514', 'Cipanas Cianjur', 'Tidak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username_adm`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`kode_jadwal`);

--
-- Indexes for table `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`no_polisi`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `pekerja`
--
ALTER TABLE `pekerja`
  ADD PRIMARY KEY (`id_pekerja`),
  ADD UNIQUE KEY `email_pekerja` (`email_pekerja`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `kode_jadwal` (`kode_jadwal`),
  ADD KEY `username` (`username`),
  ADD KEY `no_polisi` (`no_polisi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pekerja`
--
ALTER TABLE `pekerja`
  MODIFY `id_pekerja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `motor`
--
ALTER TABLE `motor`
  ADD CONSTRAINT `motor_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `motor_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `motor_ibfk_3` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `motor_ibfk_4` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`kode_jadwal`) REFERENCES `jadwal` (`kode_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`no_polisi`) REFERENCES `motor` (`no_polisi`),
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`no_polisi`) REFERENCES `motor` (`no_polisi`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_5` FOREIGN KEY (`no_polisi`) REFERENCES `motor` (`no_polisi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_6` FOREIGN KEY (`kode_jadwal`) REFERENCES `jadwal` (`kode_jadwal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
