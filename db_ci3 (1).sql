-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2026 at 08:15 AM
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
-- Database: `db_ci3`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `Nomor_anggota` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` text NOT NULL,
  `Telepon` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Tanggal_daftar` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`Nomor_anggota`, `Nama`, `Alamat`, `Telepon`, `Email`, `Tanggal_daftar`, `status`) VALUES
(1, 'Revani', 'jatiuwung', '089502801313', 'revaninurulfadilla@gmail.com', '2026-05-06', 'aktif'),
(2, 'Queen Nara', 'rajeg', '0843489375', 'queen@gmail.com', '2026-05-04', 'tidak aktif'),
(3, 'Elena Rosalina', 'Jakarta ', '08324973253', 'elenarosalina2@gmail.com', '2026-05-03', 'aktif'),
(4, 'Abian Stevanno', 'Bandung', '081316213495', 'abian@gmail.com', '2026-05-13', 'aktif'),
(5, 'Reva', 'bumi indah', '085719011180', 'reva@gmail.com', '2026-05-16', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(20) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `penulis` varchar(60) NOT NULL,
  `penerbit` varchar(60) NOT NULL,
  `tahun` int(5) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `stok` int(15) NOT NULL,
  `lokasi_rak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul_buku`, `penulis`, `penerbit`, `tahun`, `id_kategori`, `stok`, `lokasi_rak`) VALUES
('B001', 'Hujan', 'Tere Liye', 'PT. Sabak Grip Nusantara', 2016, 7, 54, ''),
('B002', 'Matematika', 'mavel erlangga', 'Pt. Anugrah', 2007, 5, 35, ''),
('B003', 'Pemprograman Dasar', 'Erlangga', 'Pt. sentosa', 2008, 6, 65, ''),
('B004', 'Biologi', 'Neil Allison Campbell', 'Elerlangga', 2023, 10, 48, ''),
('B005', 'Fisika', 'Argantara', 'Elerlangga', 2023, 10, 50, '');

-- --------------------------------------------------------

--
-- Table structure for table `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `id` int(11) NOT NULL,
  `peminjaman_id` int(11) DEFAULT NULL,
  `buku_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_peminjaman`
--

INSERT INTO `detail_peminjaman` (`id`, `peminjaman_id`, `buku_id`, `qty`) VALUES
(15, 19, 0, 1),
(16, 20, 0, 1),
(17, 21, 0, 1),
(18, 22, 0, 1),
(19, 23, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(5, 'Pendidikan'),
(6, 'Teknologi'),
(7, 'Novel'),
(8, 'Komik'),
(9, 'Sejarah'),
(10, 'Sains');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `kode_peminjaman` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `anggota_id` int(11) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_jatuh_tempo` date DEFAULT NULL,
  `status` enum('dipinjam','kembali') CHARACTER SET utf8mb4 DEFAULT 'dipinjam',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `kode_peminjaman`, `anggota_id`, `tanggal_pinjam`, `tanggal_jatuh_tempo`, `status`, `user_id`, `created_at`) VALUES
(19, 'PMJ-6a02dbbb71612', 1, '2026-05-12', '2026-05-16', 'dipinjam', 1, '2026-05-12 07:50:19'),
(20, 'PMJ-6a02dbcb64e9a', 3, '2026-05-12', '2026-05-14', 'kembali', 1, '2026-05-12 07:50:38'),
(21, 'PMJ-6a02dbed6ded6', 4, '2026-05-12', '2026-05-18', 'kembali', 1, '2026-05-12 07:51:19'),
(23, 'PMJ-6a0c1c561970d', 4, '2026-05-19', '2026-05-19', 'dipinjam', 1, '2026-05-19 08:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id` int(11) NOT NULL,
  `peminjaman_id` int(11) DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `terlambat` int(11) DEFAULT '0',
  `denda` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id`, `peminjaman_id`, `tanggal_kembali`, `terlambat`, `denda`) VALUES
(11, 20, '2026-05-12', 0, '0.00'),
(12, 21, '2026-05-12', 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `role` enum('admin','petugas') CHARACTER SET utf8mb4 DEFAULT 'petugas',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`, `last_login`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'admin', '2026-05-19 04:43:26', '2026-05-19 06:43:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`Nomor_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjaman_id` (`peminjaman_id`),
  ADD KEY `buku_id` (`buku_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_peminjaman` (`kode_peminjaman`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjaman_id` (`peminjaman_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `Nomor_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
