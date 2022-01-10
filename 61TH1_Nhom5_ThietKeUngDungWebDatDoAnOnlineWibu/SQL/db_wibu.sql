-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 04:49 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wibu`
--

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `Manhanvien` int(11) NOT NULL,
  `Hoten` varchar(50) NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Ngaybatdaulamviec` date DEFAULT current_timestamp(),
  `Diachi` varchar(100) DEFAULT NULL,
  `Dienthoai` varchar(12) NOT NULL,
  `Luong` float NOT NULL,
  `Tienthuong` float DEFAULT 0,
  `Mataikhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`Manhanvien`, `Hoten`, `Ngaysinh`, `Ngaybatdaulamviec`, `Diachi`, `Dienthoai`, `Luong`, `Tienthuong`, `Mataikhoan`) VALUES
(1, 'Quản lý', '2001-03-08', '2022-01-01', 'Hà Nội', '0342298409', 5000000, 0, 1),
(2, 'Nguyễn Văn Một', '1999-03-08', '2022-01-01', 'Hà Nam', '0345492120', 1100000, 0, 2),
(3, 'Nguyễn Văn Hai', '1999-03-08', '2022-01-01', 'Nam Định', '0312049123', 1200000, 0, 3),
(4, 'Lương Văn Ba', '1999-03-08', '2022-01-01', 'Quảng Nam', '0342238534', 1300000, 0, 4),
(5, 'Trần Văn Tư', '1999-03-08', '2022-01-01', 'Thái Nguyên', '0342204569', 1400000, 0, 5),
(6, 'Trần Văn Ngũ', '1999-03-08', '2022-01-01', 'Hà Nội', '0342290795', 1500000, 0, 6),
(7, 'Ngô Đức Tâm', '2022-01-12', '2022-01-10', 's', '+84766366726', 2145, 0, 37);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Manhanvien`),
  ADD UNIQUE KEY `Dienthoai` (`Dienthoai`),
  ADD UNIQUE KEY `Mataikhoan` (`Mataikhoan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `Manhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`Mataikhoan`) REFERENCES `taikhoan` (`Mataikhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
