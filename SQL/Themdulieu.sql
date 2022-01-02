﻿--Thêm dữ liệu
INSERT INTO TAIKHOAN VALUES
('admin', '12345', '2022-1-1', 1, 1),
('nv01', '12345', '2022-1-1', 2, 0),
('nv02', '12345', '2022-1-1', 2, 0),
('nv03', '12345', '2022-1-1', 2, 0),
('nv04', '12345', '2022-1-1', 2, 0),
('nv05', '12345', '2022-1-1', 2, 0),
('kh01', '12345', '2022-1-1', 3, 0),
('kh02', '12345', '2022-1-1', 3, 0),
('kh03', '12345', '2022-1-1', 3, 0),
('kh04', '12345', '2022-1-1', 3, 0),
('kh05', '12345', '2022-1-1', 3, 0);

--select * from taikhoan
--delete from taikhoan
  
INSERT INTO NHANVIEN VALUES
('admin', '2001-03-08', '2022-01-01', N'Hà Nội', '0342298409', 5000000, 0, '1'),
(N'Nguyễn Văn Một', '1999-03-08', '2022-01-01', N'Hà Nam', '0345492120', 1000000, 0, '2'),
(N'Nguyễn Văn Hai', '1999-03-08', '2022-01-01', N'Nam Định', '0312049123', 1000000, 0, '3'),
(N'Lương Văn Ba', '1999-03-08', '2022-01-01', N'Quảng Nam', '0342238534', 1000000, 0, '4'),
(N'Trần Văn Tư', '1999-03-08', '2022-01-01', N'Thái Nguyên', '0342204569', 1000000, 0, '5'),
(N'Trần Văn Ngũ', '1999-03-08', '2022-01-01', N'Hà Nội', '0342290795', 1000000, 0, '6');

--select * from nhanvien

INSERT INTO KHACHHANG VALUES
(N'Ngô Đức Tâm', N'Hà Nội', 'mot@gmail.com', 0348123129, 7),
(N'Nguyễn Thu Hà', N'Hà Nam', 'hai@gmail.com', 0348123129, 8),
(N'Lương Thị Một', N'Nam Định', 'ba@gmail.com', 0348123129, 9),
(N'Trần Huyền Diệp', N'Thái Bình', 'bon@gmail.com', 0348123129, 10),
(N'Lê Văn Lương', N'Hà Nội', 'nam@gmail.com', 0348123129, 11);

--SELECT * FROM KhachHang

INSERT INTO MonAn(TENMONAN, HINHANH, MOTA, SOLUONG, GIATHANHPHAM, HANSUDUNG) VALUES
(N'Mochi Matcha', '', N'Bột gạo, Trà xanh', 10, 10000, '2022-04-30'),
(N'Mochi Socola', '', N'Bột gạo, Socola',  10, 12000, '2022-04-30'),
(N'Mochi Đậu Đỏ', '', N'Bột gạo, Đậu đỏ' , 10, 20000, '2022-04-30'),
(N'Mochi Khoai Lang', '', N'Bột gạo, Khoai lang', 10, 10000, '2022-04-30'),
(N'Mochi Kem', '', N'Bột gạo, Kem' ,10, 15000, '2022-04-30');

--select * from MonAn

INSERT INTO DonDatHang VALUES
(1, 1, '2022-01-01', '2022-01-04','2022-01-04', N'Hà Nội' ),
(1, 2, '2021-12-01', '2021-12-05','2021-12-05', N'Hà Nội' ),
(1, 3, '2021-12-11', '2021-12-01','2021-12-01', N'Hà Nam' ),
(3, 1, '2021-10-04', '2021-10-14','2021-10-14', N'Hà Nội' ),
(3, 2, '2021-10-01', '2021-10-09','2021-10-09', N'Hà Nam' ),
(3, 3, '2021-08-01', '2021-08-05','2021-08-05', N'Hà Nội' ),
(4, 4, '2021-08-03', '2021-08-11','2021-08-11', N'Hà Nội' ),
(4, 5, '2021-06-15', '2021-06-25','2021-06-25', N'Hà Nam' ),
(4, 3, '2021-06-11', '2021-06-16','2021-06-16', N'Hà Nội' ),
(5, 2, '2021-04-16', '2021-04-19','2021-04-19', N'Hà Nội' ),
(5, 4, '2021-02-01', '2021-02-19','2021-02-19', N'Hà Nội' ),
(5, 1, '2021-02-01', '2021-02-19','2021-02-19', N'Hà Nội' );

--select * from DonDatHang

INSERT INTO ChiTietDatHang VALUES
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

--select * from ChiTietDatHang
SELECT * FROM dbo.ChiTietDatHang
SELECT * FROM dbo.DonDatHang
SELECT * FROM dbo.KhachHang
SELECT * FROM dbo.MonAn
SELECT * FROM dbo.NhanVien