-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: 29 Apr 2020 pada 07.35
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `penderita`
--

CREATE TABLE `penderita` (
  `no` int(5) NOT NULL,
  `Country` varchar(30) NOT NULL,
  `Total_Cases` int(15) NOT NULL,
  `New_Cases` int(15) NOT NULL,
  `Total_Deaths` int(15) NOT NULL,
  `New_Deaths` int(15) NOT NULL,
  `Total_Recovered` int(15) NOT NULL,
  `Active_Cases` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penderita`
--

INSERT INTO `penderita` (`no`, `Country`, `Total_Cases`, `New_Cases`, `Total_Deaths`, `New_Deaths`, `Total_Recovered`, `Active_Cases`) VALUES
(1, 'World', 3127951, 68005, 216987, 5538, 950878, 1960086),
(2, 'USA', 1029878, 19522, 58640, 1843, 140138, 831100),
(3, 'Spain', 232128, 2706, 23822, 301, 123903, 84403),
(4, 'Italy', 201505, 2091, 27359, 382, 68941, 105205),
(5, 'France', 165911, 2638, 23660, 367, 46886, 95365),
(6, 'UK', 161145, 3996, 21678, 586, 0, 139123),
(7, 'Germany', 159431, 673, 6215, 89, 117400, 35816),
(8, 'Turkey', 114653, 2392, 2992, 92, 38809, 72852),
(9, 'Russia', 93558, 6411, 867, 73, 8456, 84235),
(10, 'Iran', 92584, 1112, 5877, 71, 72439, 14268),
(11, 'China', 82836, 6, 4633, 0, 77555, 648);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penderita`
--
ALTER TABLE `penderita`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penderita`
--
ALTER TABLE `penderita`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
