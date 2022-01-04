﻿USE DB_Wibu;
GO

--Thêm dữ liệu
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
GO

--select * from taikhoan
--delete from taikhoan
  
INSERT INTO NHANVIEN VALUES
('Admin', '2001-03-08', '2022-01-01', N'Hà Nội', '0342298409', 5000000, 0, '1'),
(N'Nguyễn Văn Một', '1999-03-08', '2022-01-01', N'Hà Nam', '0345492120', 1000000, 0, '2'),
(N'Nguyễn Văn Hai', '1999-03-08', '2022-01-01', N'Nam Định', '0312049123', 1000000, 0, '3'),
(N'Lương Văn Ba', '1999-03-08', '2022-01-01', N'Quảng Nam', '0342238534', 1000000, 0, '4'),
(N'Trần Văn Tư', '1999-03-08', '2022-01-01', N'Thái Nguyên', '0342204569', 1000000, 0, '5'),
(N'Trần Văn Ngũ', '1999-03-08', '2022-01-01', N'Hà Nội', '0342290795', 1000000, 0, '6');
GO

--select * from nhanvien

INSERT INTO KHACHHANG VALUES
(N'Ngô Đức Tâm', N'Hà Nội', 'mot@gmail.com', 0348123128, 7),
(N'Nguyễn Thu Hà', N'Hà Nam', 'hai@gmail.com', 0348123129, 8),
(N'Lương Thị Một', N'Nam Định', 'ba@gmail.com', 0348123127, 9),
(N'Trần Huyền Diệp', N'Thái Bình', 'bon@gmail.com', 0348123126, 10),
(N'Lê Văn Lương', N'Hà Nội', 'nam@gmail.com', 0348123125, 11);
GO

--SELECT * FROM KhachHang
INSERT INTO dbo.LOAI
VALUES
(N'Mochi'),(N'Dango'),(N'Yokan'),(N'Wagashi'),(N'Manju'),(N'Yokan')
GO

INSERT INTO MonAn(TENMONAN, Maloai, HINHANH, MOTA, SOLUONG, GIATHANHPHAM, HANSUDUNG) VALUES
(N'Mochi giọt nước', '1', '', N'Đứng đầu danh sách những loại bánh mochi thơm ngon của Nhật Bản phải kể đến chính là bánh mochi giọt nước khiến bao người mê mẩn với vẻ ngoài đẹp mắt. Chiếc bánh với ngọt ngào, trong suốt khác hẳn với những loại bánh mochi thường biết với lớp vỏ ngoài dẻo dai ăn cùng nhân bên trong. Từ những nguyên liệu đơn giản như bột rau câu, đậu nành, đường, nước bạn có thể làm ra chiếc mochi núng nính vị ngọt dịu, thanh mát. Xắn 1 miếng bánh thôi là sảng khoái cả người, cảm nhận được miếng bánh tan trong miệng thật tuyệt vời làm sao!'
, 10, 10000, '2022-04-30'),
(N'Mochi Đậu Đỏ','1', '', N'Lớp vỏ bánh nếp dẻo dai, ngọt thơm mùi cốt dừa kết hợp cùng nhân đậu đỏ bùi béo, ngọt lịm. Tất cả tạo nên món bánh mochi với vẻ ngoài đáng yêu, tròn tròn, nhỏ nhỏ cùng hương vị lôi cuốn khiến bạn ăn 1 lần sẽ nhớ mãi.'
, 10, 20000, '2022-04-30'),
(N'Mochi trà xanh nhân kem','1', '', N'Bột trà xanh "thần thánh" sao có thể vắng mặt trong công thức để làm ra một món bánh mochi chuẩn vị Nhật này chứ. Chiếc bánh với phần kem trà xanh thơm lừng, mát lạnh, beo béo ăn cùng lớp vỏ bánh mochi dẻo ngon lại còn ngọt thơm hấp dẫn cực kỳ! Vào những ngày nắng nóng, oi bức mùa hè mà được thưởng thức 1 chiếc bánh mochi kem trà xanh thì còn gì bằng.'
,  10, 12000, '2022-04-30'),
(N'Mochi nhân kem vani','1', '', N'Với hình dáng xinh xắn, tròn tròn, nhỏ nhỏ cùng lớp vỏ ngoài mịn, dẻo kết hợp cùng lớp nhân kem vani mát lạnh, ngọt béo, chiếc bánh mochi này có thể "chiều lòng" vị giác của bạn hết mực đấy! Đặc biệt hơn cả đó là lớp bánh bông lan mềm, xốp, nhẹ như mây nằm bên trong đem lại sự thú vị và cực kì lạ miệng khi ăn. Được thưởng thức chiếc bánh mochi nhân kem vani này thì còn gì bằng phải không nào?'
, 10, 10000, '2022-04-30'),
(N'Mochi nhân kem dâu tây phô mai','1', '', N'Vẻ ngoài ngọt ngào, đáng yêu với màu hồng nhẹ nhàng dễ dàng đánh gục bất cứ ai ngay lần nhìn đầu tiên. Nhân kem phô mai béo ngậy hòa quyện cùng kem dâu tây chua chua ngọt ngọt, thơm ngon cùng lớp socola trắng ngọt dịu. Tất cả tạo nên món bánh mochi nhân kem dâu tây phô mai cực lôi cuốn, ngon miệng. Bạn có thể làm món bánh xinh xắn này để tặng cho bạn bè người thân trong những dịp lễ hay ngày đặc biệt đấy!'
,10, 15000, '2022-04-30');
GO

--select * from MonAn

INSERT INTO DonDatHang VALUES
(1, 1, '2022-01-01', '2022-01-04','2022-01-04', N'Hà Nội'),
(1, 2, '2021-12-01', '2021-12-05','2021-12-05', N'Hà Nội'),
(1, 3, '2021-12-11', '2021-12-01','2021-12-01', N'Hà Nam'),
(3, 1, '2021-10-04', '2021-10-14','2021-10-14', N'Hà Nội'),
(3, 2, '2021-10-01', '2021-10-09','2021-10-09', N'Hà Nam'),
(3, 3, '2021-08-01', '2021-08-05','2021-08-05', N'Hà Nội'),
(4, 4, '2021-08-03', '2021-08-11','2021-08-11', N'Hà Nội'),
(4, 5, '2021-06-15', '2021-06-25','2021-06-25', N'Hà Nam'),
(4, 3, '2021-06-11', '2021-06-16','2021-06-16', N'Hà Nội'),
(5, 2, '2021-04-16', '2021-04-19','2021-04-19', N'Hà Nội'),
(5, 4, '2021-02-01', '2021-02-19','2021-02-19', N'Hà Nội'),
(5, 1, '2021-02-01', '2021-02-19','2021-02-19', N'Hà Nội');
GO

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
GO

--select * from ChiTietDatHang
SELECT * FROM dbo.TAIKHOAN
SELECT * FROM dbo.NhanVien
SELECT * FROM dbo.KhachHang
SELECT * FROM dbo.LOAI
SELECT * FROM dbo.MonAn
SELECT * FROM dbo.DonDatHang
SELECT * FROM dbo.ChiTietDatHang