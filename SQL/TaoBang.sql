CREATE DATABASE DB_Wibu
--DROP DATABASE DB_Wibu
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
	Tentaikhoan VARCHAR(20) NOT NULL,
	Matkhau NVARCHAR(20) NOT NULL,
	Ngaytao DATE,
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
  Dienthoai VARCHAR(12) NOT NULL UNIQUE,
  Luong MONEY NOT NULL,
  Tienthuong MONEY,
  Mataikhoan INT NOT NULL UNIQUE
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
  Dienthoai VARCHAR(12) NOT NULL UNIQUE,
  Mataikhoan INT NOT NULL UNIQUE
)
--Bảng Loại món ăn
CREATE TABLE LOAI (
  Maloai INT IDENTITY(1,1) NOT NULL,
  Tenloai NVARCHAR(50) NOT NULL UNIQUE
)
-- Bảng Món ăn
CREATE TABLE MONAN (
  Mamonan INT IDENTITY(1,1) NOT NULL,
  Tenmonan NVARCHAR(50) NOT NULL,
  Maloai INT NOT NULL,
  Hinhanh TEXT,
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
  Thoigiandatdon DATE,
  Thoigianhengiao DATE,
  Thoigiangiaodon DATE,
  Noigiaohang NTEXT NOT NULL

)
-- Thời gian đặt đơn là thời gian đơn hàng được tạo GETDATE()
-- Thời gian hẹn giao do khách hàng hẹn.

-- Bảng chi tiết đặt hàng

CREATE TABLE CHITIETDATHANG (
  Sohoadon INT NOT NULL,
  Mamon INT NOT NULL,
  Giaban MONEY,
  Soluong INT,
  Mucgiagiam MONEY
)
-- Giá bán = 150% Giá thành phẩm