CREATE DATABASE DB_Wibu;
GO

USE DB_Wibu;

GO

--Tạo bảng
--Tên bảng:  Viết hoa chữ cái đầu của từ Vd: NhanVien
--Thuộc tính: Viết in ví dụ MANHANVIEN
--Các loại mã cài đặt IDENTITY(1,1)

--Tài khoản
CREATE TABLE TaiKhoan(
MATAIKHOAN INT NOT NULL,
TENTAIKHOAN CHAR(20) NOT NULL,
MATKHAU NVARCHAR(20) NOT NULL,
NGAYTAO DATETIME,
CAPDO TINYINT
)
-- Cấp độ: Có 3 cấp độ. 1.Quản lý, 2.Nhân viên, 3. Khách hàng
-- Tài khoản khoản Quản lý cấp độ 1. Chỉ có  1 tài khoản là
-- TENTAIKHOAN: admin, MATKHAU: admin, CAPDO: 1
-- Tạo tài khoản do quản lý tạo thì Cấp độ là 2.
-- Tài khoản đăng ký thì Cấp độ là 3.

-- Bảng nhân viên 
CREATE TABLE NhanVien (
  MANHANVIEN INT NOT NULL,
  HOTEN NVARCHAR(50) NOT NULL,
  NGAYSINH DATE NOT NULL,
  NGAYBATDAULAMVIEC DATE NOT NULL,
  DIACHI NVARCHAR(100),
  DIENTHOAI CHAR(11) NOT NULL,
  LUONGCOBAN MONEY NOT NULL,
  TIENTHUONG MONEY,
  MATAIKHOAN INT
)
--DROP TABLE dbo.NHANVIEN
--MANHANVIEN IDENTITY(1,1)
--NGAYBATDAULAMVIEC DEFAULT getdate()
--LUONGCOBAN DEFAULT 5.000.000
--TIENTHUONG DEFAULT 0 --Tiền thưởng không quá 25% lương
--ALTER TABLE dbo.NHANVIEN
--ADD DEFAULT (5000000) FOR LUONGCOBAN

--Nên có thông tin quả lý không?

--Bảng Khách hàng
CREATE TABLE KhachHang (
  MAKHACHHANG INT NOT NULL,
  HOTEN nvarchar(50) NOT NULL,
  DIACHI nvarchar(100),
  EMAIL varchar(255),
  DIENTHOAI CHAR(11) NOT NULL,
  THENGANHANG CHAR(15),
  MATAIKHOAN INT
)
--MAKHACHHANG IDENTITY(1,1)

--Bảng Loại món ăn
CREATE TABLE LoaiMonAn (
  MALOAIMON int NOT NULL,
  TENLOAIMON NVARCHAR(50) NOT NULL
)

-- Bảng Món ăn
CREATE TABLE MonAn (
  MAMONAN int NOT NULL,
  TENMONAN NVARCHAR(50) NOT NULL,
  MALOAIMON int NOT NULL,
  SOLUONG int NOT NULL,
  GIATHANHPHAM MONEY NOT NULL --Là giá khi hoàn thiện món(gồm giá nguyên liệu, giá nhân công)
)

-- Bảng Đơn đặt hàng
CREATE TABLE DonDatHang (
  SOHOADON INT NOT NULL,
  MAKHACHHANG INT NOT NULL,
  MANHANVIEN INT NOT NULL,
  THOIGIANDATDON DATETIME NOT NULL,
  THOIGIANNHANDON DATETIME,
  THOIGIANGIAODON DATETIME,
  NOIGIAOHANG NVARCHAR(100) NOT NULL
)
-- Thời gian đặt đơn là thời gian đơn hàng được tạo GETDATE()
-- Thời gian nhận đơn do khách hàng hẹn.
-- Thời gian gian giao hàng không quá 60 phút so với thời gian nhận đơn
-- Nơi giao hàng chỉ nhận đơn trong bán kính 10km

-- Bảng chi tiết đặt hàng

CREATE TABLE ChiTietDatHang (
  SOHOADON int NOT NULL,
  MAMON int NOT NULL,
  GIABAN MONEY,
  SOLUONG int,
  MUCGIAGIAM MONEY
)
-- Giá bán = 150% Giá thành phẩm