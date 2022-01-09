-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 10:08 AM
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
(1, 1, 15000, 5, 0),
(1, 2, 17000, 3, 0),
(1, 3, 17000, 3, 0),
(2, 1, 15000, 5, 0),
(2, 2, 17000, 2, 0),
(2, 5, 25000, 4, 0),
(3, 1, 15000, 8, 0),
(3, 2, 17000, 3, 0),
(3, 5, 25000, 6, 0),
(4, 1, 15000, 7, 0),
(4, 2, 17000, 4, 0),
(4, 3, 20000, 6, 0),
(5, 5, 25000, 10, 0),
(5, 1, 15000, 2, 0),
(6, 1, 15000, 8, 0),
(7, 1, 15000, 9, 0),
(8, 1, 15000, 12, 0),
(8, 3, 20000, 8, 0),
(9, 1, 15000, 7, 0),
(10, 1, 15000, 4, 0),
(11, 1, 15000, 5, 0),
(12, 2, 17000, 6, 0),
(12, 3, 20000, 7, 0),
(13, 1, 15000, 8, 0),
(13, 2, 17000, 12, 0),
(13, 5, 25000, 9, 0),
(14, 1, 15000, 8, 0),
(14, 2, 17000, 4, 0),
(14, 3, 20000, 5, 0),
(14, 5, 25000, 7, 0),
(15, 1, 15000, 8, 0),
(15, 2, 17000, 9, 0),
(15, 3, 20000, 12, 0),
(16, 1, 15000, 9, 0),
(16, 2, 17000, 2, 0),
(16, 3, 20000, 4, 0),
(16, 5, 25000, 4, 0),
(17, 1, 15000, 2, 0),
(17, 2, 17000, 4, 0),
(17, 3, 20000, 2, 0),
(18, 1, 15000, 5, 0),
(18, 2, 17000, 2, 0),
(18, 3, 20000, 6, 0),
(19, 1, 15000, 3, 0),
(19, 2, 17000, 2, 0),
(19, 3, 20000, 1, 0),
(20, 1, 15000, 3, 0),
(20, 2, 17000, 5, 0),
(20, 3, 20000, 7, 0),
(20, 5, 25000, 8, 0),
(21, 1, 15000, 8, 0),
(21, 2, 17000, 9, 0),
(21, 3, 20000, 8, 0),
(21, 5, 25000, 6, 0),
(7, 3, 15000, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `Sohoadon` int(11) NOT NULL,
  `Makhachhang` int(11) NOT NULL,
  `Manhanvien` int(11) NOT NULL,
  `Thoigiandatdon` date DEFAULT current_timestamp(),
  `Thoigianhengiao` date DEFAULT NULL,
  `Thoigiangiaodon` date DEFAULT NULL,
  `Noigiaohang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`Sohoadon`, `Makhachhang`, `Manhanvien`, `Thoigiandatdon`, `Thoigianhengiao`, `Thoigiangiaodon`, `Noigiaohang`) VALUES
(1, 1, 1, '2022-01-01', '2022-01-04', '2022-01-04', 'Hà Nội'),
(2, 1, 2, '2021-12-01', '2021-12-05', '2021-12-05', 'Hà Nội'),
(3, 1, 3, '2021-12-11', '2021-12-01', '2021-12-01', 'Hà Nam'),
(4, 3, 1, '2021-10-04', '2021-10-14', '2021-10-14', 'Hà Nội'),
(5, 3, 2, '2021-10-01', '2021-10-09', '2021-10-09', 'Hà Nam'),
(6, 3, 3, '2021-08-01', '2021-08-05', '2021-08-05', 'Hà Nội'),
(7, 4, 4, '2021-08-03', '2021-08-11', '2021-08-11', 'Hà Nội'),
(8, 4, 4, '2021-12-03', '2021-12-11', '2021-12-11', 'Hà Nội'),
(9, 4, 5, '2021-06-15', '2021-06-25', '2021-06-25', 'Hà Nam'),
(10, 4, 3, '2021-04-11', '2021-03-16', '2021-06-16', 'Hà Nội'),
(11, 4, 2, '2021-02-11', '2021-02-16', '2021-06-16', 'Hà Nội'),
(12, 4, 1, '2021-01-11', '2021-01-16', '2021-06-16', 'Hà Nội'),
(13, 5, 1, '2021-04-16', '2021-04-19', '2021-04-19', 'Hà Nội'),
(14, 5, 2, '2022-01-01', '2021-01-07', '2021-01-07', 'Hà Nội'),
(15, 5, 3, '2021-02-01', '2021-02-19', '2021-02-19', 'Hà Nội'),
(16, 5, 4, '2021-03-08', '2021-03-12', '2021-03-12', 'Hà Nội'),
(17, 5, 5, '2021-06-18', '2021-06-19', '2021-06-19', 'Hà Nội'),
(18, 5, 1, '2022-01-05', '2022-01-07', '2022-01-07', 'Hà Nội'),
(19, 5, 2, '2022-01-07', '2022-01-09', '2022-01-09', 'Hà Nội'),
(20, 6, 2, '2022-01-07', '2022-01-09', '2022-01-09', 'Hà Nội'),
(21, 1, 1, '2022-01-09', '2022-01-10', '2022-01-09', 'Quảng Ninh');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `Makhachhang` int(11) NOT NULL,
  `Hoten` varchar(50) NOT NULL,
  `Diachi` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Dienthoai` varchar(12) NOT NULL,
  `Mataikhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`Makhachhang`, `Hoten`, `Diachi`, `Email`, `Dienthoai`, `Mataikhoan`) VALUES
(1, 'Ngô Đức Tâm', 'Hà Nội', 'mot@gmail.com', '0348123128', 7),
(2, 'Nguyễn Thu Hà', 'Hà Nam', 'hai@gmail.com', '0348123129', 8),
(3, 'Lương Thị Một', 'Nam Định', 'ba@gmail.com', '0348123127', 9),
(4, 'Trần Huyền Diệp', 'Thái Bình', 'bon@gmail.com', '0348123126', 10),
(5, 'Nguyễn Văn Hoàng', 'Hà Nội', 'hoangnv@gmail.com', '0348123381', 12),
(6, 'Nguyễn Văn Dương', 'Thái Bình', 'duongnv@gmail.com', '0348123322', 13),
(7, 'Nguyễn Văn Tùng', 'Hà Nội', 'tungnv@gmail.com', '0348123373', 14),
(8, 'Nguyễn Văn Phú', 'Hà Nội', 'phunv@gmail.com', '0348123324', 15),
(9, 'Nguyễn Văn Chiến', 'Thái Bình', 'chiennv@gmail.com', '0348123325', 16),
(10, 'Nguyễn Văn Công', 'Hà Nội', 'congnv@gmail.com', '0348123326', 17),
(11, 'Nguyễn Văn Lâm', 'Thái Bình', 'lamnv@gmail.com', '0348123327', 18),
(12, 'Đỗ Văn Thái', 'Nghệ An', 'thaidv@gmail.com', '0348123328', 19),
(13, 'Kiều Văn Mạnh', 'Thái Bình', 'manhkv@gmail.com', '0348123329', 20),
(14, 'Đỗ Thị Lan', 'Hà Nội', 'landt@gmail.com', '0348123330', 21),
(15, 'Đỗ Thị Mai', 'Hà Nội', 'maidt@gmail.com', '0348123331', 22),
(16, 'Đỗ Thị Ngân', 'Thái Bình', 'ngandt@gmail.com', '0348123332', 23),
(17, 'Nguyễn Văn Vở', 'Nghệ An', 'vonv@gmail.com', '0348123333', 24),
(18, 'Nguyễn Hoàng Anh', 'Hà Nội', 'anhnh@gmail.com', '0348123334', 25),
(19, 'Nguyễn Văn Chí', 'Thái Bình', 'chinv@gmail.com', '0348123335', 26),
(20, 'Nguyễn Văn Duy', 'Hà Nội', 'duynv@gmail.com', '0348123336', 27),
(21, 'Nguyễn Văn Đức', 'Thái Bình', 'ducnv@gmail.com', '0348123337', 28),
(22, 'Nguyễn Văn Tâm', 'Nghệ An', 'tamnv@gmail.com', '0348123338', 29),
(23, 'Nguyễn Văn Lợi', 'Nghệ An', 'loinv@gmail.com', '0348123339', 30);

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
(1, 'Mochi giọt nước', 1, '', 'Đứng đầu danh sách những loại bánh mochi thơm ngon của Nhật Bản phải kể đến chính là bánh mochi giọt nước khiến bao người mê mẩn với vẻ ngoài đẹp mắt. Chiếc bánh với ngọt ngào, trong suốt khác hẳn với những loại bánh mochi thường biết với lớp vỏ ngoài dẻo dai ăn cùng nhân bên trong. Từ những nguyên liệu đơn giản như bột rau câu, đậu nành, đường, nước bạn có thể làm ra chiếc mochi núng nính vị ngọt dịu, thanh mát. Xắn 1 miếng bánh thôi là sảng khoái cả người, cảm nhận được miếng bánh tan trong miệng thật tuyệt vời làm sao!', 10, 10000, '2022-01-09', '2022-04-30'),
(2, 'Mochi Đậu Đỏ', 1, '', 'Lớp vỏ bánh nếp dẻo dai, ngọt thơm mùi cốt dừa kết hợp cùng nhân đậu đỏ bùi béo, ngọt lịm. Tất cả tạo nên món bánh mochi với vẻ ngoài đáng yêu, tròn tròn, nhỏ nhỏ cùng hương vị lôi cuốn khiến bạn ăn 1 lần sẽ nhớ mãi.', 10, 20000, '2022-01-09', '2022-04-30'),
(3, 'Mochi trà xanh nhân kem', 1, '', 'Bột trà xanh thần thánh sao có thể vắng mặt trong công thức để làm ra một món bánh mochi chuẩn vị Nhật này chứ. Chiếc bánh với phần kem trà xanh thơm lừng, mát lạnh, beo béo ăn cùng lớp vỏ bánh mochi dẻo ngon lại còn ngọt thơm hấp dẫn cực kỳ! Vào những ngày nắng nóng, oi bức mùa hè mà được thưởng thức 1 chiếc bánh mochi kem trà xanh thì còn gì bằng.', 4, 12000, '2022-01-09', '2022-04-30'),
(4, 'Mochi nhân kem vani', 1, '', 'Với hình dáng xinh xắn, tròn tròn, nhỏ nhỏ cùng lớp vỏ ngoài mịn, dẻo kết hợp cùng lớp nhân kem vani mát lạnh, ngọt béo, chiếc bánh mochi này có thể chiều lòng vị giác của bạn hết mực đấy! Đặc biệt hơn cả đó là lớp bánh bông lan mềm, xốp, nhẹ như mây nằm bên trong đem lại sự thú vị và cực kì lạ miệng khi ăn. Được thưởng thức chiếc bánh mochi nhân kem vani này thì còn gì bằng phải không nào?', 10, 10000, '2022-01-09', '2022-04-30'),
(5, 'Mochi nhân kem dâu tây phô mai', 1, '', 'Vẻ ngoài ngọt ngào, đáng yêu với màu hồng nhẹ nhàng dễ dàng đánh gục bất cứ ai ngay lần nhìn đầu tiên. Nhân kem phô mai béo ngậy hòa quyện cùng kem dâu tây chua chua ngọt ngọt, thơm ngon cùng lớp socola trắng ngọt dịu. Tất cả tạo nên món bánh mochi nhân kem dâu tây phô mai cực lôi cuốn, ngon miệng. Bạn có thể làm món bánh xinh xắn này để tặng cho bạn bè người thân trong những dịp lễ hay ngày đặc biệt đấy!', 10, 15000, '2022-01-09', '2022-04-30'),
(6, 'Mochi nhân kem sầu riêng', 1, '', 'Các tín đồ của sầu riêng chắc chắn không thể bỏ qua món bánh mochi nhân kem sầu riêng này đâu nha. Nhân sầu riêng ngọt lịm, béo bùi, thơm lừng hòa quyện với phần kem tươi mát lạnh được bọc bên ngoài là lớp vỏ bánh dẻo, mịn thật ngon làm sao! Cắn 1 miếng là cảm nhận ngay được hương vị tuyệt hảo của chiếc bánh này sẽ khiến bạn vấn vương mãi trên đầu lưỡi không thôi.', 10, 15000, '2022-01-09', '2022-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `Manhanvien` int(11) NOT NULL,
  `Hoten` varchar(50) NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Ngaybatdaulamviec` date NOT NULL DEFAULT current_timestamp(),
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
(1, 'Admin', '2001-03-08', '2022-01-01', 'Hà Nội', '0342298409', 5000000, 0, 1),
(2, 'Nguyễn Văn Một', '1999-03-08', '2022-01-01', 'Hà Nam', '0345492120', 1100000, 0, 2),
(3, 'Nguyễn Văn Hai', '1999-03-08', '2022-01-01', 'Nam Định', '0312049123', 1200000, 0, 3),
(4, 'Lương Văn Ba', '1999-03-08', '2022-01-01', 'Quảng Nam', '0342238534', 1300000, 0, 4),
(5, 'Trần Văn Tư', '1999-03-08', '2022-01-01', 'Thái Nguyên', '0342204569', 1400000, 0, 5),
(6, 'Trần Văn Ngũ', '1999-03-08', '2022-01-01', 'Hà Nội', '0342290795', 1500000, 0, 6);

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
(1, 'admin', '123456', '2022-01-09', '1', b'1'),
(2, 'nv01', '123456', '2022-01-09', '2', b'1'),
(3, 'nv02', '123456', '2022-01-09', '2', b'1'),
(4, 'nv03', '123456', '2022-01-09', '2', b'1'),
(5, 'nv04', '123456', '2022-01-09', '2', b'1'),
(6, 'nv05', '123456', '2022-01-09', '2', b'1'),
(7, 'kh01', '123456', '2022-01-09', '3', b'1'),
(8, 'kh02', '123456', '2022-01-09', '3', b'1'),
(9, 'kh03', '123456', '2022-01-09', '3', b'1'),
(10, 'kh04', '123456', '2022-01-09', '3', b'1'),
(11, 'kh05', '123456', '2022-01-09', '3', b'1'),
(12, 'kh06', '123456', '2022-01-09', '3', b'1'),
(13, 'kh07', '123456', '2022-01-09', '3', b'1'),
(14, 'kh08', '123456', '2022-01-09', '3', b'1'),
(15, 'kh09', '123456', '2022-01-09', '3', b'1'),
(16, 'kh10', '123456', '2022-01-09', '3', b'1'),
(17, 'kh11', '123456', '2022-01-09', '3', b'1'),
(18, 'kh12', '123456', '2022-01-09', '3', b'1'),
(19, 'kh13', '123456', '2022-01-09', '3', b'1'),
(20, 'kh14', '123456', '2022-01-09', '3', b'1'),
(21, 'kh15', '123456', '2022-01-09', '3', b'1'),
(22, 'kh16', '123456', '2022-01-09', '3', b'1'),
(23, 'kh17', '123456', '2022-01-09', '3', b'1'),
(24, 'kh18', '123456', '2022-01-09', '3', b'1'),
(25, 'kh19', '123456', '2022-01-09', '3', b'1'),
(26, 'kh20', '123456', '2022-01-09', '3', b'1'),
(27, 'kh21', '123456', '2022-01-09', '3', b'1'),
(28, 'kh22', '123456', '2022-01-09', '3', b'1'),
(29, 'kh23', '123456', '2022-01-09', '3', b'1'),
(30, 'kh24', '123456', '2022-01-09', '3', b'1'),
(31, 'kh25', '123456', '2022-01-09', '3', b'1'),
(32, 'kh26', '123456', '2022-01-09', '3', b'1'),
(33, 'kh27', '123456', '2022-01-09', '3', b'1'),
(34, 'kh28', '123456', '2022-01-09', '3', b'1'),
(35, 'kh29', '123456', '2022-01-09', '3', b'1'),
(36, 'kh30', '123456', '2022-01-09', '3', b'1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_donhang_thongke`
-- (See below for the actual view)
--
CREATE TABLE `vw_donhang_thongke` (
`Sohoadon` int(11)
,`Makhachhang` int(11)
,`Somon` bigint(21)
,`Soluong` decimal(32,0)
,`Tongtiengoc` double
,`Tongtiengiam` double
,`Thanhtien` double
,`Thoigiandatdon` date
,`Thoigianhengiao` date
,`Thoigiangiaodon` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_khachhang_taikhoan_chuamuahang`
-- (See below for the actual view)
--
CREATE TABLE `vw_khachhang_taikhoan_chuamuahang` (
`Makhachhang` int(11)
,`Hoten` varchar(50)
,`Email` varchar(255)
,`Diachi` varchar(100)
,`Tentaikhoan` varchar(20)
,`Ngaytao` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_khachhang_tongtientieu`
-- (See below for the actual view)
--
CREATE TABLE `vw_khachhang_tongtientieu` (
`Makhachhang` int(11)
,`Hoten` varchar(50)
,`Tổng tiền tiêu` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_monan_thongtin`
-- (See below for the actual view)
--
CREATE TABLE `vw_monan_thongtin` (
`Mamonan` int(11)
,`Tenmonan` varchar(50)
,`Maloai` int(11)
,`soluongcon` int(11)
,`tongsoluongban` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_mon_chua_duoc_ban`
-- (See below for the actual view)
--
CREATE TABLE `vw_mon_chua_duoc_ban` (
`Mamonan` int(11)
,`Tenmonan` varchar(50)
,`Maloai` int(11)
,`Hinhanh` text
,`Mota` text
,`Soluong` int(11)
,`Giathanhpham` float
,`Ngaynhap` date
,`Hansudung` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_mon_sap_het_han`
-- (See below for the actual view)
--
CREATE TABLE `vw_mon_sap_het_han` (
`Mamonan` int(11)
,`Tenmonan` varchar(50)
,`Maloai` int(11)
,`Hinhanh` text
,`Mota` text
,`Soluong` int(11)
,`Giathanhpham` float
,`Ngaynhap` date
,`Hansudung` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_mon_thich`
-- (See below for the actual view)
--
CREATE TABLE `vw_mon_thich` (
`Mamon` int(11)
,`Tenmonan` varchar(50)
,`SoLanMua` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_nhanvien_thongtin`
-- (See below for the actual view)
--
CREATE TABLE `vw_nhanvien_thongtin` (
`Tentaikhoan` varchar(20)
,`Matkhau` varchar(20)
,`Hoten` varchar(50)
,`Ngaybatdaulamviec` date
,`Diachi` varchar(100)
,`Dienthoai` varchar(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_thongke_cuahang`
-- (See below for the actual view)
--
CREATE TABLE `vw_thongke_cuahang` (
`Tongsotaikhoan` bigint(21)
,`Tongsomonan` bigint(21)
,`Tongsonhanvien` bigint(21)
,`Tongsohoadon` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_donhang_thongke`
--
DROP TABLE IF EXISTS `vw_donhang_thongke`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_donhang_thongke`  AS SELECT `a`.`Sohoadon` AS `Sohoadon`, `a`.`Makhachhang` AS `Makhachhang`, count(`b`.`Mamon`) AS `Somon`, sum(`b`.`Soluong`) AS `Soluong`, sum(`b`.`Soluong` * `b`.`Giaban`) AS `Tongtiengoc`, sum(`b`.`Soluong` * `b`.`Giaban` * `b`.`Mucgiagiam`) AS `Tongtiengiam`, sum(`b`.`Soluong` * `b`.`Giaban` - `b`.`Soluong` * `b`.`Giaban` * `b`.`Mucgiagiam`) AS `Thanhtien`, `a`.`Thoigiandatdon` AS `Thoigiandatdon`, `a`.`Thoigianhengiao` AS `Thoigianhengiao`, `a`.`Thoigiangiaodon` AS `Thoigiangiaodon` FROM ((`dondathang` `a` join `chitietdathang` `b` on(`a`.`Sohoadon` = `b`.`Sohoadon`)) join `monan` `c` on(`b`.`Mamon` = `c`.`Mamonan`)) GROUP BY `a`.`Sohoadon`, `a`.`Makhachhang`, `a`.`Thoigiandatdon`, `a`.`Thoigianhengiao`, `a`.`Thoigiangiaodon` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_khachhang_taikhoan_chuamuahang`
--
DROP TABLE IF EXISTS `vw_khachhang_taikhoan_chuamuahang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_khachhang_taikhoan_chuamuahang`  AS SELECT `a`.`Makhachhang` AS `Makhachhang`, `a`.`Hoten` AS `Hoten`, `a`.`Email` AS `Email`, `a`.`Diachi` AS `Diachi`, `b`.`Tentaikhoan` AS `Tentaikhoan`, `b`.`Ngaytao` AS `Ngaytao` FROM (`khachhang` `a` join `taikhoan` `b` on(`a`.`Mataikhoan` = `b`.`Mataikhoan`)) WHERE !(`a`.`Makhachhang` in (select `dondathang`.`Makhachhang` from `dondathang`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_khachhang_tongtientieu`
--
DROP TABLE IF EXISTS `vw_khachhang_tongtientieu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_khachhang_tongtientieu`  AS SELECT `a`.`Makhachhang` AS `Makhachhang`, `a`.`Hoten` AS `Hoten`, sum(`c`.`Giaban` * `c`.`Soluong` - `c`.`Mucgiagiam`) AS `Tổng tiền tiêu` FROM ((`khachhang` `a` join `dondathang` `b` on(`a`.`Makhachhang` = `b`.`Makhachhang`)) join `chitietdathang` `c` on(`b`.`Sohoadon` = `c`.`Sohoadon`)) GROUP BY `a`.`Makhachhang`, `a`.`Hoten` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_monan_thongtin`
--
DROP TABLE IF EXISTS `vw_monan_thongtin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_monan_thongtin`  AS SELECT `monan`.`Mamonan` AS `Mamonan`, `monan`.`Tenmonan` AS `Tenmonan`, `monan`.`Maloai` AS `Maloai`, `monan`.`Soluong` AS `soluongcon`, sum(`chitietdathang`.`Soluong`) AS `tongsoluongban` FROM (`monan` left join `chitietdathang` on(`chitietdathang`.`Mamon` = `monan`.`Mamonan`)) GROUP BY `monan`.`Mamonan`, `monan`.`Tenmonan`, `monan`.`Maloai`, `monan`.`Soluong` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_mon_chua_duoc_ban`
--
DROP TABLE IF EXISTS `vw_mon_chua_duoc_ban`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_mon_chua_duoc_ban`  AS SELECT `monan`.`Mamonan` AS `Mamonan`, `monan`.`Tenmonan` AS `Tenmonan`, `monan`.`Maloai` AS `Maloai`, `monan`.`Hinhanh` AS `Hinhanh`, `monan`.`Mota` AS `Mota`, `monan`.`Soluong` AS `Soluong`, `monan`.`Giathanhpham` AS `Giathanhpham`, `monan`.`Ngaynhap` AS `Ngaynhap`, `monan`.`Hansudung` AS `Hansudung` FROM `monan` WHERE !(`monan`.`Mamonan` in (select `chitietdathang`.`Mamon` from `chitietdathang`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_mon_sap_het_han`
--
DROP TABLE IF EXISTS `vw_mon_sap_het_han`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_mon_sap_het_han`  AS SELECT `monan`.`Mamonan` AS `Mamonan`, `monan`.`Tenmonan` AS `Tenmonan`, `monan`.`Maloai` AS `Maloai`, `monan`.`Hinhanh` AS `Hinhanh`, `monan`.`Mota` AS `Mota`, `monan`.`Soluong` AS `Soluong`, `monan`.`Giathanhpham` AS `Giathanhpham`, `monan`.`Ngaynhap` AS `Ngaynhap`, `monan`.`Hansudung` AS `Hansudung` FROM `monan` WHERE to_days(curdate()) - to_days(`monan`.`Hansudung`) < 15 ;

-- --------------------------------------------------------

--
-- Structure for view `vw_mon_thich`
--
DROP TABLE IF EXISTS `vw_mon_thich`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_mon_thich`  AS SELECT `chitietdathang`.`Mamon` AS `Mamon`, `monan`.`Tenmonan` AS `Tenmonan`, count(`chitietdathang`.`Sohoadon`) AS `SoLanMua` FROM (`chitietdathang` join `monan` on(`chitietdathang`.`Mamon` = `monan`.`Mamonan`)) GROUP BY `chitietdathang`.`Mamon`, `monan`.`Tenmonan` HAVING count(`chitietdathang`.`Sohoadon`) > 10 ;

-- --------------------------------------------------------

--
-- Structure for view `vw_nhanvien_thongtin`
--
DROP TABLE IF EXISTS `vw_nhanvien_thongtin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_nhanvien_thongtin`  AS SELECT `taikhoan`.`Tentaikhoan` AS `Tentaikhoan`, `taikhoan`.`Matkhau` AS `Matkhau`, `nhanvien`.`Hoten` AS `Hoten`, `nhanvien`.`Ngaybatdaulamviec` AS `Ngaybatdaulamviec`, `nhanvien`.`Diachi` AS `Diachi`, `nhanvien`.`Dienthoai` AS `Dienthoai` FROM (`taikhoan` join `nhanvien`) WHERE `taikhoan`.`Mataikhoan` = `nhanvien`.`Mataikhoan` AND `taikhoan`.`Capdo` = 2 ;

-- --------------------------------------------------------

--
-- Structure for view `vw_thongke_cuahang`
--
DROP TABLE IF EXISTS `vw_thongke_cuahang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_thongke_cuahang`  AS SELECT `db1`.`Tongsotaikhoan` AS `Tongsotaikhoan`, `db2`.`Tongsomonan` AS `Tongsomonan`, `db3`.`Tongsonhanvien` AS `Tongsonhanvien`, `db4`.`Tongsohoadon` AS `Tongsohoadon` FROM ((((select count(`taikhoan`.`Mataikhoan`) AS `Tongsotaikhoan`,row_number() over ( order by count(`taikhoan`.`Mataikhoan`)) AS `RowNumber` from `taikhoan`) `db1` left join (select count(`monan`.`Mamonan`) AS `Tongsomonan`,row_number() over ( order by count(`monan`.`Mamonan`)) AS `RowNumber` from `monan`) `db2` on(`db1`.`RowNumber` = `db2`.`RowNumber`)) left join (select count(`nhanvien`.`Manhanvien`) AS `Tongsonhanvien`,row_number() over ( order by count(`nhanvien`.`Manhanvien`)) AS `RowNumber` from `nhanvien`) `db3` on(`db2`.`RowNumber` = `db3`.`RowNumber`)) left join (select count(`dondathang`.`Thoigianhengiao`) AS `Tongsohoadon`,row_number() over ( order by count(`dondathang`.`Thoigianhengiao`)) AS `RowNumber` from `dondathang` where `dondathang`.`Thoigianhengiao` < curdate()) `db4` on(`db3`.`RowNumber` = `db4`.`RowNumber`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD KEY `Sohoadon` (`Sohoadon`),
  ADD KEY `Mamon` (`Mamon`);

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
  ADD UNIQUE KEY `Mataikhoan` (`Mataikhoan`);

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
  ADD UNIQUE KEY `Tenmonan` (`Tenmonan`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Manhanvien`),
  ADD UNIQUE KEY `Dienthoai` (`Dienthoai`),
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
  MODIFY `Sohoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `Makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `Maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `monan`
--
ALTER TABLE `monan`
  MODIFY `Mamonan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `Manhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `Mataikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `chitietdathang_ibfk_1` FOREIGN KEY (`Sohoadon`) REFERENCES `dondathang` (`Sohoadon`),
  ADD CONSTRAINT `chitietdathang_ibfk_2` FOREIGN KEY (`Mamon`) REFERENCES `monan` (`Mamonan`);

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
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`Mataikhoan`) REFERENCES `taikhoan` (`Mataikhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
