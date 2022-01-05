-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2022 at 01:24 PM
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
-- Table structure for table `chitietdathang`
--

CREATE TABLE `chitietdathang` (
  `Sohoadon` int(11) NOT NULL,
  `Mamon` int(11) NOT NULL,
  `Giaban` float DEFAULT NULL,
  `Soluong` int(11) DEFAULT NULL,
  `Mucgiagiam` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdathang`
--

INSERT INTO `chitietdathang` (`Sohoadon`, `Mamon`, `Giaban`, `Soluong`, `Mucgiagiam`) VALUES
(1, 1, 15000, 2, 0),
(1, 2, 17000, 2, 0),
(2, 1, 15000, 5, 0),
(2, 2, 17000, 2, 0),
(3, 1, 15000, 2, 0),
(3, 5, 25000, 2, 0),
(4, 1, 15000, 5, 0),
(4, 5, 25000, 6, 0),
(5, 1, 15000, 2, 0),
(6, 1, 15000, 2, 0),
(8, 1, 15000, 2, 0),
(9, 1, 15000, 10, 0),
(10, 1, 15000, 2, 0),
(11, 1, 15000, 2, 0),
(12, 1, 15000, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `Sohoadon` int(11) NOT NULL,
  `Makhachhang` int(11) NOT NULL,
  `Manhanvien` int(11) NOT NULL,
  `Thoigiandatdon` datetime DEFAULT current_timestamp(),
  `Thoigianhengiao` datetime DEFAULT NULL,
  `Thoigiangiaodon` datetime DEFAULT NULL,
  `Noigiaohang` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`Sohoadon`, `Makhachhang`, `Manhanvien`, `Thoigiandatdon`, `Thoigianhengiao`, `Thoigiangiaodon`, `Noigiaohang`) VALUES
(1, 1, 1, '2022-01-01 00:00:00', '2022-01-04 00:00:00', '2022-01-04 00:00:00', 'Hà Nội'),
(2, 1, 2, '2021-12-01 00:00:00', '2021-12-05 00:00:00', '2021-12-05 00:00:00', 'Hà Nội'),
(3, 1, 3, '2021-12-11 00:00:00', '2021-12-01 00:00:00', '2021-12-01 00:00:00', 'Hà Nam'),
(4, 3, 1, '2021-10-04 00:00:00', '2021-10-14 00:00:00', '2021-10-14 00:00:00', 'Hà Nội'),
(5, 3, 2, '2021-10-01 00:00:00', '2021-10-09 00:00:00', '2021-10-09 00:00:00', 'Hà Nam'),
(6, 3, 3, '2021-08-01 00:00:00', '2021-08-05 00:00:00', '2021-08-05 00:00:00', 'Hà Nội'),
(7, 4, 4, '2021-08-03 00:00:00', '2021-08-11 00:00:00', '2021-08-11 00:00:00', 'Hà Nội'),
(8, 4, 5, '2021-06-15 00:00:00', '2021-06-25 00:00:00', '2021-06-25 00:00:00', 'Hà Nam'),
(9, 4, 3, '2021-06-11 00:00:00', '2021-06-16 00:00:00', '2021-06-16 00:00:00', 'Hà Nội'),
(10, 5, 2, '2021-04-16 00:00:00', '2021-04-19 00:00:00', '2021-04-19 00:00:00', 'Hà Nội'),
(11, 5, 4, '2021-02-01 00:00:00', '2021-02-19 00:00:00', '2021-02-19 00:00:00', 'Hà Nội'),
(12, 5, 1, '2021-02-01 00:00:00', '2021-02-19 00:00:00', '2021-02-19 00:00:00', 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `Makhachhang` int(11) NOT NULL,
  `Hoten` varchar(50) NOT NULL,
  `Diachi` tinytext DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Dienthoai` varchar(12) NOT NULL,
  `Mataikhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`Makhachhang`, `Hoten`, `Diachi`, `Email`, `Dienthoai`, `Mataikhoan`) VALUES
(1, 'Ngô Đức Tâm', 'Hà Nội', 'mot@gmail.com', '348123128', 7),
(2, 'Nguyễn Thu Hà', 'Hà Nam', 'hai@gmail.com', '348123129', 8),
(3, 'Lương Thị Một', 'Nam Định', 'ba@gmail.com', '348123127', 9),
(4, 'Trần Huyền Diệp', 'Thái Bình', 'bon@gmail.com', '348123126', 10),
(5, 'Lê Văn Lương', 'Hà Nội', 'nam@gmail.com', '348123125', 11);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `Maloai` int(11) NOT NULL,
  `Tenloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`Maloai`, `Tenloai`) VALUES
(2, 'Dango'),
(5, 'Manju'),
(1, 'Mochi'),
(4, 'Wagashi'),
(3, 'Yokan');

-- --------------------------------------------------------

--
-- Table structure for table `monan`
--

CREATE TABLE `monan` (
  `Mamonan` int(11) NOT NULL,
  `Tenmonan` varchar(50) NOT NULL,
  `Maloai` int(11) NOT NULL,
  `Hinhanh` text DEFAULT NULL,
  `Mota` text DEFAULT NULL,
  `Soluong` int(11) NOT NULL,
  `Giathanhpham` float NOT NULL,
  `Ngaynhap` date DEFAULT current_timestamp(),
  `Hansudung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monan`
--

INSERT INTO `monan` (`Mamonan`, `Tenmonan`, `Maloai`, `Hinhanh`, `Mota`, `Soluong`, `Giathanhpham`, `Ngaynhap`, `Hansudung`) VALUES
(1, 'Mochi giọt nước', 1, '', 'Đứng đầu danh sách những loại bánh mochi thơm ngon của Nhật Bản phải kể đến chính là bánh mochi giọt nước khiến bao người mê mẩn với vẻ ngoài đẹp mắt. Chiếc bánh với ngọt ngào, trong suốt khác hẳn với những loại bánh mochi thường biết với lớp vỏ ngoài dẻo dai ăn cùng nhân bên trong. Từ những nguyên liệu đơn giản như bột rau câu, đậu nành, đường, nước bạn có thể làm ra chiếc mochi núng nính vị ngọt dịu, thanh mát. Xắn 1 miếng bánh thôi là sảng khoái cả người, cảm nhận được miếng bánh tan trong miệng thật tuyệt vời làm sao!', 10, 10000, '2022-01-05', '2022-04-30'),
(2, 'Mochi Đậu Đỏ', 1, '', 'Lớp vỏ bánh nếp dẻo dai, ngọt thơm mùi cốt dừa kết hợp cùng nhân đậu đỏ bùi béo, ngọt lịm. Tất cả tạo nên món bánh mochi với vẻ ngoài đáng yêu, tròn tròn, nhỏ nhỏ cùng hương vị lôi cuốn khiến bạn ăn 1 lần sẽ nhớ mãi.', 10, 20000, '2022-01-05', '2022-04-30'),
(3, 'Mochi trà xanh nhân kem', 1, '', 'Bột trà xanh thần thánh sao có thể vắng mặt trong công thức để làm ra một món bánh mochi chuẩn vị Nhật này chứ. Chiếc bánh với phần kem trà xanh thơm lừng, mát lạnh, beo béo ăn cùng lớp vỏ bánh mochi dẻo ngon lại còn ngọt thơm hấp dẫn cực kỳ! Vào những ngày nắng nóng, oi bức mùa hè mà được thưởng thức 1 chiếc bánh mochi kem trà xanh thì còn gì bằng.', 10, 12000, '2022-01-05', '2022-04-30'),
(4, 'Mochi nhân kem vani', 1, '', 'Với hình dáng xinh xắn, tròn tròn, nhỏ nhỏ cùng lớp vỏ ngoài mịn, dẻo kết hợp cùng lớp nhân kem vani mát lạnh, ngọt béo, chiếc bánh mochi này có thể chiều lòng vị giác của bạn hết mực đấy! Đặc biệt hơn cả đó là lớp bánh bông lan mềm, xốp, nhẹ như mây nằm bên trong đem lại sự thú vị và cực kì lạ miệng khi ăn. Được thưởng thức chiếc bánh mochi nhân kem vani này thì còn gì bằng phải không nào?', 10, 10000, '2022-01-05', '2022-04-30'),
(5, 'Mochi nhân kem dâu tây phô mai', 1, '', 'Vẻ ngoài ngọt ngào, đáng yêu với màu hồng nhẹ nhàng dễ dàng đánh gục bất cứ ai ngay lần nhìn đầu tiên. Nhân kem phô mai béo ngậy hòa quyện cùng kem dâu tây chua chua ngọt ngọt, thơm ngon cùng lớp socola trắng ngọt dịu. Tất cả tạo nên món bánh mochi nhân kem dâu tây phô mai cực lôi cuốn, ngon miệng. Bạn có thể làm món bánh xinh xắn này để tặng cho bạn bè người thân trong những dịp lễ hay ngày đặc biệt đấy!', 10, 15000, '2022-01-05', '2022-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `Manhanvien` int(11) NOT NULL,
  `Hoten` varchar(50) NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Ngaybatdaulamviec` date DEFAULT current_timestamp(),
  `Diachi` tinytext NOT NULL,
  `Dienthoai` varchar(12) NOT NULL,
  `Luong` float NOT NULL,
  `Tienthuong` float DEFAULT 0,
  `Mataikhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`Manhanvien`, `Hoten`, `Ngaysinh`, `Ngaybatdaulamviec`, `Diachi`, `Dienthoai`, `Luong`, `Tienthuong`, `Mataikhoan`) VALUES
(1, 'Admin', '2001-03-08', '2022-01-01', 'Hà Nội', '0342298409', 5000000, 0, 1),
(2, 'Nguyễn Văn Một', '1999-03-08', '2022-01-01', 'Hà Nam', '0345492120', 1000000, 0, 2),
(3, 'Nguyễn Văn Hai', '1999-03-08', '2022-01-01', 'Nam Định', '0312049123', 1000000, 0, 3),
(4, 'Lương Văn Ba', '1999-03-08', '2022-01-01', 'Quảng Nam', '0342238534', 1000000, 0, 4),
(5, 'Trần Văn Tư', '1999-03-08', '2022-01-01', 'Thái Nguyên', '0342204569', 1000000, 0, 5),
(6, 'Trần Văn Ngũ', '1999-03-08', '2022-01-01', 'Hà Nội', '0342290795', 1000000, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `Mataikhoan` int(11) NOT NULL,
  `Tentaikhoan` varchar(20) NOT NULL,
  `Matkhau` varchar(20) NOT NULL,
  `Ngaytao` date NOT NULL DEFAULT current_timestamp(),
  `Capdo` enum('1','2','3') NOT NULL,
  `Trangthai` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`Mataikhoan`, `Tentaikhoan`, `Matkhau`, `Ngaytao`, `Capdo`, `Trangthai`) VALUES
(1, 'admin', '123456', '2022-01-05', '1', b'1'),
(2, 'nv01', '123456', '2022-01-05', '2', b'0'),
(3, 'nv02', '123456', '2022-01-05', '2', b'0'),
(4, 'nv03', '123456', '2022-01-05', '2', b'0'),
(5, 'nv04', '123456', '2022-01-05', '2', b'0'),
(6, 'nv05', '123456', '2022-01-05', '2', b'0'),
(7, 'kh01', '123456', '2022-01-05', '3', b'0'),
(8, 'kh02', '123456', '2022-01-05', '3', b'0'),
(9, 'kh03', '123456', '2022-01-05', '3', b'0'),
(10, 'kh04', '123456', '2022-01-05', '3', b'0'),
(11, 'kh05', '123456', '2022-01-05', '3', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD KEY `Sohoadon` (`Sohoadon`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`Sohoadon`),
  ADD KEY `Makhachhang` (`Makhachhang`),
  ADD KEY `Manhanvien` (`Manhanvien`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Makhachhang`),
  ADD UNIQUE KEY `Dienthoai` (`Dienthoai`),
  ADD KEY `Mataikhoan` (`Mataikhoan`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`Maloai`),
  ADD UNIQUE KEY `Tenloai` (`Tenloai`);

--
-- Indexes for table `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`Mamonan`),
  ADD KEY `fk_monan_loai` (`Maloai`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Manhanvien`),
  ADD UNIQUE KEY `Mataikhoan` (`Mataikhoan`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`Mataikhoan`),
  ADD UNIQUE KEY `Tentaikhoan` (`Tentaikhoan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `Sohoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `Makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `Maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `monan`
--
ALTER TABLE `monan`
  MODIFY `Mamonan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `Manhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `Mataikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `chitietdathang_ibfk_1` FOREIGN KEY (`Sohoadon`) REFERENCES `dondathang` (`Sohoadon`);

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`Makhachhang`) REFERENCES `khachhang` (`Makhachhang`),
  ADD CONSTRAINT `dondathang_ibfk_2` FOREIGN KEY (`Manhanvien`) REFERENCES `nhanvien` (`Manhanvien`);

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`Mataikhoan`) REFERENCES `taikhoan` (`Mataikhoan`);

--
-- Constraints for table `monan`
--
ALTER TABLE `monan`
  ADD CONSTRAINT `fk_monan_loai` FOREIGN KEY (`Maloai`) REFERENCES `loai` (`Maloai`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_nhanvien_taikhoan` FOREIGN KEY (`Mataikhoan`) REFERENCES `taikhoan` (`Mataikhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
