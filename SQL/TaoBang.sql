CREATE DATABASE DB_Wibu

GO

USE DB_Wibu;

GO

--Tạo bảng
--Tên bảng:  Viết hoa chữ cái đầu của từ Vd: NhanVien
--Thuộc tính: Viết in ví dụ MANHANVIEN
--Các loại mã cài đặt IDENTITY(1,1)

--Tài khoản
CREATE TABLE TaiKhoan(
	MATAIKHOAN INT IDENTITY(1,1) NOT NULL,
	TENTAIKHOAN CHAR(20) NOT NULL,
	MATKHAU NVARCHAR(20) NOT NULL,
	NGAYTAO DATETIME,
	CAPDO TINYINT NOT NULL,
	TRANGTHAI BIT
)
-- Cấp độ: Có 3 cấp độ. 1.Quản lý, 2.Nhân viên, 3. Khách hàng
-- Tài khoản khoản Quản lý cấp độ 1. Chỉ có  1 tài khoản là
-- TENTAIKHOAN: admin, MATKHAU: admin, CAPDO: 1
-- Tạo tài khoản do quản lý tạo thì Cấp độ là 2.
-- Tài khoản đăng ký thì Cấp độ là 3.

-- Bảng nhân viên 
CREATE TABLE NhanVien (
  MANHANVIEN INT IDENTITY(1,1) NOT NULL,
  HOTEN NVARCHAR(50) NOT NULL,
  NGAYSINH DATE NOT NULL,
  NGAYBATDAULAMVIEC DATE NOT NULL,
  DIACHI NVARCHAR(100),
  DIENTHOAI CHAR(11) NOT NULL,
  LUONGCOBAN MONEY NOT NULL,
  TIENTHUONG MONEY,
  MATAIKHOAN INT NOT NULL
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
  MAKHACHHANG INT IDENTITY(1,1) NOT NULL,
  HOTEN nvarchar(50) NOT NULL,
  DIACHI nvarchar(100),
  EMAIL varchar(255),
  DIENTHOAI CHAR(11) NOT NULL,
  MATAIKHOAN INT NOT NULL
)

--MAKHACHHANG IDENTITY(1,1)

--Bảng Loại món ăn
--CREATE TABLE LoaiMonAn (
--  MALOAIMON INT IDENTITY(1,1) NOT NULL,
--  TENLOAIMON NVARCHAR(50) NOT NULL
--)

-- Bảng Món ăn
CREATE TABLE MonAn (
  MAMONAN INT IDENTITY(1,1) NOT NULL,
  TENMONAN NVARCHAR(50) NOT NULL,
  HINHANH NVARCHAR(100),
  SOLUONG INT NOT NULL,
  GIATHANHPHAM MONEY NOT NULL, --Là giá khi hoàn thiện món(gồm giá nguyên liệu, giá nhân công)
  HANSUDUNG DATE NOT NULL
)

-- Bảng Đơn đặt hàng
CREATE TABLE DonDatHang (
  SOHOADON INT IDENTITY(1,1) NOT NULL,
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
  SOHOADON INT NOT NULL,
  MAMON INT NOT NULL,
  GIABAN MONEY NOT NULL,
  SOLUONG INT NOT NULL,
  MUCGIAGIAM MONEY
)
-- Giá bán = 150% Giá thành phẩm

--điều kiện
--Thêm thời gian tạo mặc định tài khoản
ALTER TABLE TaiKhoan
ADD DEFAULT getdate() FOR NGAYTAO;

--Thêm thời gian mặc định đặt đơn 
ALTER TABLE DonDatHang
ADD DEFAULT getdate() FOR THOIGIANDATDON;	

--Thêm thời gian mặc định ngày bắt đầu làm việc
ALTER TABLE NhanVien
ADD DEFAULT getdate() FOR NGAYBATDAULAMVIEC;	

--Thêm trạng thái mặc định khi tạo tài khoản

ALTER TABLE TaiKhoan
ADD DEFAULT 0 FOR TRANGTHAI;

--Thêm điều kiện check cấp độ: 1-ADMIN; 2-Nhân viên; 3: Khách hàng
ALTER TABLE TaiKhoan
ADD CONSTRAINT ck_capdo CHECK(CAPDO BETWEEN 1 AND 3);

--Tạo khóa chính
ALTER TABLE TaiKhoan
ADD CONSTRAINT pk_taikhoan PRIMARY KEY (MATAIKHOAN);
ALTER TABLE NhanVien
ADD CONSTRAINT pk_nhanvien PRIMARY KEY (MANHANVIEN);
ALTER TABLE KhachHang
ADD CONSTRAINT pk_khachhang PRIMARY KEY (MAKHACHHANG);
ALTER TABLE MonAn
ADD CONSTRAINT pk_monan PRIMARY KEY (MAMONAN);
ALTER TABLE DonDatHang
ADD CONSTRAINT pk_dondathang PRIMARY KEY (SoHoaDon);
ALTER TABLE ChiTietDatHang
ADD CONSTRAINT pk_chitietdathang PRIMARY KEY (SOHOADON, MAMON);

ALTER TABLE NhanVien
ADD CONSTRAINT fk_nhanvien_taikhoan FOREIGN KEY (MATAIKHOAN) REFERENCES TaiKhoan(MATAIKHOAN);
ALTER TABLE KhachHang
ADD CONSTRAINT fk_khachhang_taikhoan FOREIGN KEY (MATAIKHOAN) REFERENCES TaiKhoan(MATAIKHOAN);
ALTER TABLE DonDatHang
ADD CONSTRAINT fk_dondathang_khachhang FOREIGN KEY (MAKHACHHANG) REFERENCES KhachHang(MAKHACHHANG);
ALTER TABLE DonDatHang
ADD CONSTRAINT fk_dondathang_nhanvien FOREIGN KEY (MANHANVIEN) REFERENCES NhanVien(MANHANVIEN);
ALTER TABLE ChiTietDatHang
ADD CONSTRAINT fk_chitietdathang_dondathang FOREIGN KEY (SOHOADON) REFERENCES DonDatHang(SOHOADON);
ALTER TABLE ChiTietDatHang
ADD CONSTRAINT fk_chitietdathang_monan FOREIGN KEY (MAMON) REFERENCES MonAn(MAMONAN);

SELECT * FROM ChiTietDatHang
SELECT * FROM KhachHang
SELECT * FROM DonDatHang
SELECT * FROM MonAn
SELECT * FROM NhanVien
SELECT * FROM TaiKhoan

--TRIGGER check tuổi của nhân viên 16-35 tuổi
--Ràng buộc lương tối đa là 5 triệu
--Tiền thưởng không nhập mặc định là 0, tối đa là 25% lương/năm
--Tự động cập nhật số lượng món ăn từ mỗi hóa đơn
--