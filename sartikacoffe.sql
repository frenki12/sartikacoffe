-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 03 Jul 2024 pada 18.28
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sartikacoffe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Americano', 'Americano Hot', 'Espresso Base', 20000, 39, 'americanohot.jpg'),
(12, 'Espresso', 'Espresso Hot', 'Espresso Base', 18000, 96, 'espressohot1.jpg'),
(13, 'Doppio', 'Doppio Hot', 'Espresso Base', 20000, 98, 'doppio.jpg'),
(14, 'Long Black', 'Long Black Hot', 'Espresso Base', 21000, 99, 'long_black_espresso1.jpg'),
(15, 'V60', 'V60 Hot', 'Manual Brew', 26000, 100, 'v60_mb1.jpg'),
(16, 'Cold Brew', 'Cold Brew Hot', 'Manual Brew', 26000, 99, 'coldbrew_mb1.jpg'),
(17, 'Chemex', 'Chemex Hot', 'Manual Brew', 25000, 100, 'chemex_mb1.jpg'),
(18, 'French Press', 'French Press Hot', 'Manual Brew', 29500, 80, 'french_press_mb.jpg'),
(19, 'Green Tea', 'Green Tea Hot/Iced', 'Varian Tea', 15000, 29, 'varian_tea4.jpg'),
(20, 'Lemon Tea', 'Lemon Tea Hot/Iced', 'Varian Tea', 17000, 53, 'varian_tea3.jpg'),
(21, 'Earl Grey', 'Earl Grey Hot/Iced', 'Varian Tea', 16500, 32, 'varian_tea2.jpg'),
(22, 'Tea Papermint', 'Tea Papermint Hot/Iced', 'Varian Tea', 14700, 23, 'teapapermint.jpg'),
(23, 'Cappucino', 'Cappucino Hot/Iced', 'Milk Base', 29000, 25, 'cappucinoiced1.jpg'),
(24, 'Hazelnute Latte ', 'Huzelnute Latte Hot/Iced', 'Milk Base', 33000, 45, 'hazelnuteiced.jpg'),
(25, 'Latte', 'Latte Hot/Iced', 'Milk Base', 27000, 87, 'latteiced.jpg'),
(26, 'Caramel Machiato', 'Caramel Machiato Hot/Iced', 'Milk Base', 32000, 45, 'carameliced.jpg'),
(27, 'Sandwich', 'Chicken sandwich', 'Espresso Base', 30000, 65, 'sandwich_mc.jpg'),
(28, 'Pasta', ' Bolognese', 'Espresso Base', 28000, 28, 'pasta_mc1.jpg'),
(29, 'Burger', 'cheeseburger', 'Espresso Base', 25000, 53, 'burger_mc1.jpg'),
(30, 'Chicken Wings', 'Saus BBQ', 'Espresso Base', 37000, 21, 'chickenwings_mc1.jpg'),
(31, 'Rice Bowl', 'ayam teriyaki', 'Espresso Base', 38000, 76, 'ricebowl1.jpg'),
(32, 'Croisant', 'Corisant tipis dan renyah ', 'Espresso Base', 16000, 43, 'croisant2.jpg'),
(33, 'Chocolate Cake', 'Kue Tart', 'Espresso Base', 18000, 32, 'choclatecake1.jpg'),
(34, 'Cookies', 'Kue kering ', 'Espresso Base', 21000, 29, 'cookies1.jpg'),
(35, 'French Fries', 'Kentang Goreng', 'Espresso Base', 15000, 100, 'frenchfriesh_sc.jpg'),
(36, 'es jeruk', 'es jeruk enak ', 'Espresso Base', 700000, 45, 'carameliced.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `meja` varchar(50) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `meja`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'rayhan', '0', 'JL. J Buntu No.24 RT. 7 / RW. 12', '2024-06-24 01:39:59', '2024-06-25 01:39:59'),
(2, 'rayhan', '7', 'JL. J Buntu No.24 RT. 7 / RW. 12', '2024-06-24 02:07:02', '2024-06-25 02:07:02'),
(3, '17210951_muhammad rayhan', '0', '-', '2024-06-24 02:07:44', '2024-06-25 02:07:44'),
(4, '17210951_muhammad rayhan', '0', 'j ', '2024-06-24 14:52:43', '2024-06-25 14:52:43'),
(5, '17210951_muhammad rayhan', '8', 'Dewi Sartika 289', '2024-06-25 02:55:32', '2024-06-26 02:55:32'),
(6, '17210951_muhammad rayhan', '9', 'Dewi Sartika 289', '2024-06-25 11:37:27', '2024-06-26 11:37:27'),
(7, '', '', '', '2024-06-25 11:41:11', '2024-06-26 11:41:11'),
(8, '', '', '', '2024-06-26 05:11:28', '2024-06-27 05:11:28'),
(9, '17210951_muhammad rayhan', '7', 'Dewi Sartika 289', '2024-06-26 07:13:22', '2024-06-27 07:13:22'),
(10, '', '', '', '2024-06-27 16:14:41', '2024-06-28 16:14:41'),
(11, '', '', '', '2024-06-27 16:23:45', '2024-06-28 16:23:45'),
(12, '17210951_muhammad rayhan', '5', 'Dewi Sartika 289', '2024-06-27 16:36:28', '2024-06-28 16:36:28'),
(13, '17210951_muhammad rayhan', '5', '', '2024-07-03 23:04:17', '2024-07-04 23:04:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'americano', 1, 20000, ''),
(2, 1, 2, 'Espresso', 1, 15000, ''),
(3, 2, 1, 'americano', 1, 20000, ''),
(4, 3, 1, 'americano', 1, 20000, ''),
(5, 4, 1, 'americano', 1, 20000, ''),
(6, 5, 28, 'Pasta', 1, 28000, ''),
(7, 5, 1, 'Americano', 1, 20000, ''),
(8, 6, 1, 'Americano', 1, 20000, ''),
(9, 7, 1, 'Americano', 1, 20000, ''),
(10, 7, 12, 'Espresso', 1, 18000, ''),
(11, 8, 1, 'Americano', 3, 20000, ''),
(12, 8, 12, 'Espresso', 1, 18000, ''),
(13, 8, 13, 'Doppio', 1, 20000, ''),
(14, 8, 14, 'Long Black', 1, 21000, ''),
(15, 9, 1, 'Americano', 1, 20000, ''),
(16, 9, 13, 'Doppio', 1, 20000, ''),
(17, 10, 1, 'Americano', 1, 20000, ''),
(18, 10, 12, 'Espresso', 1, 18000, ''),
(19, 11, 1, 'Americano', 1, 20000, ''),
(20, 11, 12, 'Espresso', 1, 18000, ''),
(21, 12, 1, 'Americano', 1, 20000, ''),
(22, 12, 16, 'Cold Brew', 1, 26000, ''),
(23, 13, 1, 'Americano', 1, 20000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'rayhan', 'rayhan', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
