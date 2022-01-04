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
--CREATE TABLE LoaiMonAn (
--  MALOAIMON INT IDENTITY(1,1) NOT NULL,
--  TENLOAIMON NVARCHAR(50) NOT NULL
--)

-- Bảng Món ăn
CREATE TABLE MONAN (
  Mamonan INT IDENTITY(1,1) NOT NULL,
  Tenmonan NVARCHAR(50) NOT NULL,
  Hinhanh NVARCHAR(100),
  Mota NTEXT,
  Soluong INT NOT NULL,
  Giathanhpham MONEY NOT NULL,
  Ngaynhap DATE,
  Hansudung DATE NOT NULL
)

-- Bảng Đơn đặt hàng
CREATE TABLE DONDATHANG (
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

CREATE TABLE CHITIETDATHANG (
  Sohoadon INT NOT NULL,
  Mamon INT NOT NULL,
  Giaban MONEY,
  Soluong INT,
  Mucgiagiam MONEY
)
-- Giá bán = 150% Giá thành phẩm

--------------------------Điều kiện---------------------------------------
--Thêm thời gian mặc định tạo tài khoản
ALTER TABLE TAIKHOAN
ADD DEFAULT getdate() FOR Ngaytao;

--Thêm điều kiện check cấp độ: 1-ADMIN; 2-Nhân viên; 3: Khách hàng
ALTER TABLE TAIKHOAN
ADD CONSTRAINT ck_capdo CHECK(Capdo BETWEEN 1 AND 3);

--Thêm trạng thái mặc định khi tạo tài khoản
ALTER TABLE TAIKHOAN
ADD DEFAULT 0 FOR Trangthai;

--Thêm trạng thái mặc định tiền thưởng là 0 khi thêm nhân viên
ALTER TABLE NHANVIEN
ADD DEFAULT 0 FOR Tienthuong;

--Thêm thời gian mặc định ngày bắt đầu làm việc
ALTER TABLE NHANVIEN
ADD DEFAULT getdate() FOR Ngaybatdaulamviec;

--Thêm thời gian mặc định ngày nhập món ăn
ALTER TABLE MONAN
ADD DEFAULT getdate() FOR Ngaynhap;

--Thêm thời gian mặc định đặt đơn
ALTER TABLE DONDATHANG
ADD DEFAULT getdate() FOR Thoigiandatdon;

--Thêm mức giá giảm mặc định là 0
ALTER TABLE CHITIETDATHANG
ADD DEFAULT 0 FOR Mucgiagiam;

-------------------------Tạo khóa chính---------------------------------------
ALTER TABLE TAIKHOAN
ADD CONSTRAINT pk_taikhoan PRIMARY KEY (Mataikhoan);
ALTER TABLE NHANVIEN
ADD CONSTRAINT pk_nhanvien PRIMARY KEY (Manhanvien);
ALTER TABLE KHACHHANG
ADD CONSTRAINT pk_khachhang PRIMARY KEY (Makhachhang);
ALTER TABLE MONAN
ADD CONSTRAINT pk_monan PRIMARY KEY (Mamonan);
ALTER TABLE DONDATHANG
ADD CONSTRAINT pk_dondathang PRIMARY KEY (SoHoaDon);
ALTER TABLE CHITIETDATHANG
ADD CONSTRAINT pk_chitietdathang PRIMARY KEY (Sohoadon, Mamon);

-------------------------Tạo khóa ngoại---------------------------------------
ALTER TABLE NHANVIEN
ADD CONSTRAINT fk_nhanvien_taikhoan FOREIGN KEY (Mataikhoan) REFERENCES TAIKHOAN(Mataikhoan);
ALTER TABLE KHACHHANG
ADD CONSTRAINT fk_khachhang_taikhoan FOREIGN KEY (Mataikhoan) REFERENCES TAIKHOAN(Mataikhoan);
ALTER TABLE DONDATHANG
ADD CONSTRAINT fk_dondathang_khachhang FOREIGN KEY (Makhachhang) REFERENCES KHACHHANG(Makhachhang);
ALTER TABLE DONDATHANG
ADD CONSTRAINT fk_dondathang_nhanvien FOREIGN KEY (Manhanvien) REFERENCES NHANVIEN(Manhanvien);
ALTER TABLE CHITIETDATHANG
ADD CONSTRAINT fk_chitietdathang_dondathang FOREIGN KEY (Sohoadon) REFERENCES DONDATHANG(Sohoadon);
ALTER TABLE CHITIETDATHANG
ADD CONSTRAINT fk_chitietdathang_monan FOREIGN KEY (Mamon) REFERENCES MONAN(Mamonan);
---------------------------------------------------------------------------------
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