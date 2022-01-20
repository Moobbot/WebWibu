USE DB_Wibu;
GO

--Thêm dữ liệu
INSERT INTO dbo.TAIKHOAN
(Tentaikhoan, Matkhau, Capdo, Trangthai)
VALUES
('admin', '123456', 1, 1),
('nv01', '123456',  2, 1),
('nv02', '123456',  2, 1),
('nv03', '123456',  2, 1),
('nv04', '123456',  2, 1),
('nv05', '123456',  2, 1),
('kh01', '123456',  3, 1),
('kh02', '123456',  3, 1),
('kh03', '123456',  3, 1),
('kh04', '123456',  3, 1),
('kh05', '123456',  3, 1),
('kh06', '123456',  3, 1),
('kh07', '123456',  3, 1),
('kh08', '123456',  3, 1),
('kh09', '123456',  3, 1),
('kh10', '123456',  3, 1),
('kh11', '123456',  3, 1),
('kh12', '123456',  3, 1),
('kh13', '123456',  3, 1),
('kh14', '123456',  3, 1),
('kh15', '123456',  3, 1),
('kh16', '123456',  3, 1),
('kh17', '123456',  3, 1),
('kh18', '123456',  3, 1),
('kh19', '123456',  3, 1),
('kh20', '123456',  3, 1),
('kh21', '123456',  3, 1),
('kh22', '123456',  3, 1),
('kh23', '123456',  3, 1),
('kh24', '123456',  3, 1),
('kh25', '123456',  3, 1),
('kh26', '123456',  3, 1),
('kh27', '123456',  3, 1),
('kh28', '123456',  3, 1),
('kh29', '123456',  3, 1),
('kh30', '123456',  3, 1);
GO
--select * from taikhoan
--delete from taikhoan
  
INSERT INTO dbo.NHANVIEN
(Hoten, Ngaysinh, Ngaybatdaulamviec, Diachi, Dienthoai,Luong,Tienthuong,Mataikhoan)
VALUES
('Admin', '2001-03-08', '2022-01-01', N'Hà Nội', '0342298409', 5000000, 0, '1'),
(N'Nguyễn Văn Một', '1999-03-08', '2022-01-01', N'Hà Nam', '0345492120', 1100000, 0, '2'),
(N'Nguyễn Văn Hai', '1999-03-08', '2022-01-01', N'Nam Định', '0312049123', 1200000, 0, '3'),
(N'Lương Văn Ba', '1999-03-08', '2022-01-01', N'Quảng Nam', '0342238534', 1300000, 0, '4'),
(N'Trần Văn Tư', '1999-03-08', '2022-01-01', N'Thái Nguyên', '0342204569', 1400000, 0, '5'),
(N'Trần Văn Ngũ', '1999-03-08', '2022-01-01', N'Hà Nội', '0342290795', 1500000, 0, '6');
GO

--select * from nhanvien

INSERT INTO dbo.KHACHHANG
(Hoten,Diachi,Email,Dienthoai,Mataikhoan)
VALUES
(N'Ngô Đức Tâm', N'Hà Nội', 'mot@gmail.com','0348123128', 7),
(N'Nguyễn Thu Hà', N'Hà Nam', 'hai@gmail.com','0348123129', 8),
(N'Lương Thị Một', N'Nam Định', 'ba@gmail.com','0348123127', 9),
(N'Trần Huyền Diệp', N'Thái Bình', 'bon@gmail.com','0348123126', 10),
(N'Nguyễn Văn Hoàng', N'Hà Nội', 'hoangnv@gmail.com','0348123381', 12),
(N'Nguyễn Văn Dương', N'Thái Bình', 'duongnv@gmail.com','0348123322', 13),
(N'Nguyễn Văn Tùng', N'Hà Nội', 'tungnv@gmail.com','0348123373', 14),
(N'Nguyễn Văn Phú', N'Hà Nội', 'phunv@gmail.com','0348123324', 15),
(N'Nguyễn Văn Chiến', N'Thái Bình', 'chiennv@gmail.com','0348123325', 16),
(N'Nguyễn Văn Công', N'Hà Nội', 'congnv@gmail.com','0348123326', 17),
(N'Nguyễn Văn Lâm', N'Thái Bình', 'lamnv@gmail.com','0348123327', 18),
(N'Đỗ Văn Thái', N'Nghệ An', 'thaidv@gmail.com','0348123328', 19),
(N'Kiều Văn Mạnh', N'Thái Bình', 'manhkv@gmail.com','0348123329', 20),
(N'Đỗ Thị Lan', N'Hà Nội', 'landt@gmail.com','0348123330', 21),
(N'Đỗ Thị Mai', N'Hà Nội', 'maidt@gmail.com','0348123331', 22),
(N'Đỗ Thị Ngân', N'Thái Bình', 'ngandt@gmail.com','0348123332', 23),
(N'Nguyễn Văn Vở', N'Nghệ An', 'vonv@gmail.com','0348123333', 24),
(N'Nguyễn Hoàng Anh', N'Hà Nội', 'anhnh@gmail.com','0348123334', 25),
(N'Nguyễn Văn Chí', N'Thái Bình', 'chinv@gmail.com','0348123335', 26),
(N'Nguyễn Văn Duy', N'Hà Nội', 'duynv@gmail.com','0348123336', 27),
(N'Nguyễn Văn Đức', N'Thái Bình', 'ducnv@gmail.com','0348123337', 28),
(N'Nguyễn Văn Tâm', N'Nghệ An', 'tamnv@gmail.com','0348123338', 29),
(N'Nguyễn Văn Lợi', N'Nghệ An', 'loinv@gmail.com','0348123339', 30);
GO

--SELECT * FROM KhachHang
INSERT INTO dbo.LOAI (Tenloai)
VALUES
(N'Mochi'),(N'Dango'),(N'Yokan'),(N'Wagashi'),(N'Manju')
GO
--select * from LOAI
INSERT INTO MonAn(Tenmonan, Maloai, Hinhanh, Mota, Soluong, Giathanhpham, Hansudung) VALUES
(N'Mochi giọt nước', '1', '', N'Đứng đầu danh sách những loại bánh mochi thơm ngon của Nhật Bản phải kể đến chính là bánh mochi giọt nước khiến bao người mê mẩn với vẻ ngoài đẹp mắt. Chiếc bánh với ngọt ngào, trong suốt khác hẳn với những loại bánh mochi thường biết với lớp vỏ ngoài dẻo dai ăn cùng nhân bên trong. Từ những nguyên liệu đơn giản như bột rau câu, đậu nành, đường, nước bạn có thể làm ra chiếc mochi núng nính vị ngọt dịu, thanh mát. Xắn 1 miếng bánh thôi là sảng khoái cả người, cảm nhận được miếng bánh tan trong miệng thật tuyệt vời làm sao!'
, 10, 10000, '2022-04-30'),
(N'Mochi Đậu Đỏ','1', '', N'Lớp vỏ bánh nếp dẻo dai, ngọt thơm mùi cốt dừa kết hợp cùng nhân đậu đỏ bùi béo, ngọt lịm. Tất cả tạo nên món bánh mochi với vẻ ngoài đáng yêu, tròn tròn, nhỏ nhỏ cùng hương vị lôi cuốn khiến bạn ăn 1 lần sẽ nhớ mãi.'
, 10, 20000, '2022-04-30'),
(N'Mochi trà xanh nhân kem','1', '', N'Bột trà xanh thần thánh sao có thể vắng mặt trong công thức để làm ra một món bánh mochi chuẩn vị Nhật này chứ. Chiếc bánh với phần kem trà xanh thơm lừng, mát lạnh, beo béo ăn cùng lớp vỏ bánh mochi dẻo ngon lại còn ngọt thơm hấp dẫn cực kỳ! Vào những ngày nắng nóng, oi bức mùa hè mà được thưởng thức 1 chiếc bánh mochi kem trà xanh thì còn gì bằng.'
,  4, 12000, '2022-04-30'),
(N'Mochi nhân kem vani','1', '', N'Với hình dáng xinh xắn, tròn tròn, nhỏ nhỏ cùng lớp vỏ ngoài mịn, dẻo kết hợp cùng lớp nhân kem vani mát lạnh, ngọt béo, chiếc bánh mochi này có thể chiều lòng vị giác của bạn hết mực đấy! Đặc biệt hơn cả đó là lớp bánh bông lan mềm, xốp, nhẹ như mây nằm bên trong đem lại sự thú vị và cực kì lạ miệng khi ăn. Được thưởng thức chiếc bánh mochi nhân kem vani này thì còn gì bằng phải không nào?'
, 10, 10000, '2022-04-30'),
(N'Mochi nhân kem dâu tây phô mai','1', '', N'Vẻ ngoài ngọt ngào, đáng yêu với màu hồng nhẹ nhàng dễ dàng đánh gục bất cứ ai ngay lần nhìn đầu tiên. Nhân kem phô mai béo ngậy hòa quyện cùng kem dâu tây chua chua ngọt ngọt, thơm ngon cùng lớp socola trắng ngọt dịu. Tất cả tạo nên món bánh mochi nhân kem dâu tây phô mai cực lôi cuốn, ngon miệng. Bạn có thể làm món bánh xinh xắn này để tặng cho bạn bè người thân trong những dịp lễ hay ngày đặc biệt đấy!'
,10, 15000, '2022-04-30'),
(N'Mochi nhân kem sầu riêng','1', '', N'Các tín đồ của sầu riêng chắc chắn không thể bỏ qua món bánh mochi nhân kem sầu riêng này đâu nha. Nhân sầu riêng ngọt lịm, béo bùi, thơm lừng hòa quyện với phần kem tươi mát lạnh được bọc bên ngoài là lớp vỏ bánh dẻo, mịn thật ngon làm sao! Cắn 1 miếng là cảm nhận ngay được hương vị tuyệt hảo của chiếc bánh này sẽ khiến bạn vấn vương mãi trên đầu lưỡi không thôi.'
,10, 15000, '2022-01-15');
GO
--select * from MonAn
INSERT INTO DonDatHang(Makhachhang,Manhanvien,Thoigiandatdon,Thoigianhengiao,Thoigiangiaodon,Noigiaohang)
VALUES
(1, 1, '2022-01-01', '2022-01-04','2022-01-04', N'Hà Nội'),
(1, 2, '2021-12-01', '2021-12-05','2021-12-05', N'Hà Nội'),
(1, 3, '2021-12-11', '2021-12-01','2021-12-01', N'Hà Nam'),
(3, 1, '2021-10-04', '2021-10-14','2021-10-14', N'Hà Nội'),
(3, 2, '2021-10-01', '2021-10-09','2021-10-09', N'Hà Nam'),
(3, 3, '2021-08-01', '2021-08-05','2021-08-05', N'Hà Nội'),
(4, 4, '2021-08-03', '2021-08-11','2021-08-11', N'Hà Nội'),
(4, 4, '2021-12-03', '2021-12-11','2021-12-11', N'Hà Nội'),
(4, 5, '2021-06-15', '2021-06-25','2021-06-25', N'Hà Nam'),
(4, 3, '2021-04-11', '2021-03-16','2021-06-16', N'Hà Nội'),
(4, 2, '2021-02-11', '2021-02-16','2021-06-16', N'Hà Nội'),
(4, 1, '2021-01-11', '2021-01-16','2021-06-16', N'Hà Nội'),
(5, 1, '2021-04-16', '2021-04-19','2021-04-19', N'Hà Nội'),
(5, 2, '2022-01-01', '2021-01-07','2021-01-07', N'Hà Nội'),
(5, 3, '2021-02-01', '2021-02-19','2021-02-19', N'Hà Nội'),
(5, 4, '2021-03-08', '2021-03-12','2021-03-12', N'Hà Nội'),
(5, 5, '2021-06-18', '2021-06-19','2021-06-19', N'Hà Nội'),
(5, 1, '2022-01-05', '2022-01-07','2022-01-07', N'Hà Nội'),
(5, 2, '2022-01-07', '2022-01-09','2022-01-09', N'Hà Nội'),
(6, 2, '2022-01-07', '2022-01-09','2022-01-09', N'Hà Nội'),
(1, 1, GETDATE(), DATEADD(day, 1, GETDATE()),GETDATE(), N'Quảng Ninh');
GO
--select * from DonDatHang
--Chạy trigger tg_Up_Chitietdathang tắt update số lượng trước
delete from CHITIETDATHANG
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(1, 1, 5, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(1, 2, 3, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(1, 3, 3, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(2, 1, 5, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(2, 2, 2, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(2, 5, 4, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(3, 1, 8, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(3, 2, 3, 0); 
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(3, 5, 6, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(4, 1, 7, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(4, 2, 4, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(4, 3, 6, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(5, 5, 10, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(5, 1, 2, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(6, 1, 8, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(7, 1, 9, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(8, 1, 12, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(8, 3, 8, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(9, 1, 7, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(10, 1, 4, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(11, 1, 5, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(12, 2, 6, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(12, 3, 7, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(13, 1, 8, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(13, 2, 12, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(13, 5, 9, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(14, 1, 8, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(14, 2, 4, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(14, 3, 5, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(14, 5, 7, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(15, 1, 8, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(15, 2, 9, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(15, 3, 12, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(16, 1, 9, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(16, 2, 2, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(16, 3, 4, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(16, 5, 4, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(17, 1, 2, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(17, 2, 4, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(17, 3, 2, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(18, 1, 5, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(18, 2, 2, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(18, 3, 6, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(19, 1, 3, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(19, 2, 2, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(19, 3, 1, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(20, 1, 3, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(20, 2, 5, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(20, 3, 7, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(20, 5, 8, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(21, 1, 8, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(21, 2, 9, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(21, 3, 8, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(21, 5, 6, 0);
GO
INSERT INTO ChiTietDatHang (Sohoadon, Mamon, Soluong, Mucgiagiam)
VALUES(7, 3, 5, 0);

GO

--select * from ChiTietDatHang
SELECT * FROM dbo.TAIKHOAN
SELECT * FROM dbo.NhanVien
SELECT * FROM dbo.KhachHang
SELECT * FROM dbo.LOAI
SELECT * FROM dbo.MonAn
SELECT * FROM dbo.DonDatHang
SELECT * FROM dbo.ChiTietDatHang