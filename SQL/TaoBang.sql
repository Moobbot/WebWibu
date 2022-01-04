CREATE DATABASE DB_Wibu

GO

USE DB_Wibu;

GO

--Tạo bảng
--Tên bảng:  Viết hoa chữ cái đầu của từ Vd: NHANVIEN
--Thuộc tính: Viết in ví dụ Manhanvien
--Các loại mã cài đặt IDENTITY(1,1)

--Tài khoản
CREATE TABLE TAIKHOAN(
	Mataikhoan INT IDENTITY(1,1) NOT NULL,
	Tentaikhoan CHAR(20) NOT NULL,
	Matkhau NVARCHAR(20) NOT NULL,
	Ngaytao DATETIME,
	Capdo TINYINT NOT NULL,
	Trangthai BIT
)

-- Cấp độ: Có 3 cấp độ. 1.Quản lý, 2.Nhân viên, 3. Khách hàng
-- Tài khoản khoản Quản lý cấp độ 1. Chỉ có  1 tài khoản là
-- Tạo tài khoản do quản lý tạo thì Cấp độ là 2.
-- Tài khoản đăng ký thì Cấp độ là 3.

-- Bảng nhân viên 
CREATE TABLE NHANVIEN (
  Manhanvien INT IDENTITY(1,1) NOT NULL,
  Hoten NVARCHAR(50) NOT NULL,
  Ngaysinh DATE NOT NULL,
  Ngaybatdaulamviec DATE NOT NULL,
  Diachi NVARCHAR(100),
  Dienthoai CHAR(11) NOT NULL,
  Luongcoban MONEY NOT NULL,
  Tienthuong MONEY,
  Mataikhoan INT NOT NULL
)

--Ngaybatdaulamviec getdate()
--Luongcoban <= 5.000.000
--Tienthuong DEFAULT 0 --Tiền thưởng không quá 25% lương

--Bảng Khách hàng
CREATE TABLE KHACHHANG (
  Makhachhang INT IDENTITY(1,1) NOT NULL,
  Hoten NVARCHAR(50) NOT NULL,
  Diachi NVARCHAR(100),
  Email VARCHAR(255),
  Dienthoai CHAR(11) NOT NULL,
  Mataikhoan INT NOT NULL
)
--Bảng Loại món ăn
CREATE TABLE LOAI (
  Maloai INT IDENTITY(1,1) NOT NULL,
  Tenloai NVARCHAR(50) NOT NULL
)
-- Bảng Món ăn
CREATE TABLE MONAN (
  Mamonan INT IDENTITY(1,1) NOT NULL,
  Tenmonan NVARCHAR(50) NOT NULL,
  Maloai INT NOT NULL,
  Hinhanh NVARCHAR(100),
  Mota NTEXT,
  Soluong INT NOT NULL,
  Giathanhpham MONEY NOT NULL,
  Ngaynhap DATE,
  Hansudung DATE NOT NULL
)

-- Bảng Đơn đặt hàng
CREATE TABLE DONDATHANG (
  Sohoadon INT IDENTITY(1,1) NOT NULL,
  Makhachhang INT NOT NULL,
  Manhanvien INT NOT NULL,
  Thoigiandatdon DATETIME NOT NULL,
  Thoigianhegiao DATETIME,
  Thoigiangiaodon DATETIME,
  Noigiaohang NVARCHAR(100) NOT NULL

)
-- Thời gian đặt đơn là thời gian đơn hàng được tạo GETDATE()
-- Thời gian nhận đơn do khách hàng hẹn.
-- Thời gian gian giao hàng không quá 60 phút so với thời gian nhận đơn
-- Nơi giao hàng chỉ nhận đơn trong bán kính 10km

-- Bảng chi tiết đặt hàng

CREATE TABLE CHITIETDATHANG (
  Sohoadon INT NOT NULL,
  Mamon INT NOT NULL,
  Giaban MONEY,
  Soluong INT,
  Mucgiagiam MONEY
)
-- Giá bán = 150% Giá thành phẩm