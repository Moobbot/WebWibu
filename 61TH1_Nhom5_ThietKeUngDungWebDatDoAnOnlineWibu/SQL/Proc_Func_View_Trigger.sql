USE DB_Wibu;
--quy ước: view -> vw, Thủ tục -> sp, Hàm -> fn, Trigger -> tr
-------------------- THỦ TỤC -----------------------
--5.1.1.	Thủ tục trả về kết quả số lượng tài khoản
CREATE PROC sp_Taikhoan_Soluong
AS BEGIN
	DECLARE @soluong INT = (SELECT  COUNT(*) FROM TaiKhoan);
	PRINT N'Số lượng tài khoản hiện có là: ' + CONVERT(NVARCHAR(30), @soluong);
END
EXEC sp_Taikhoan_Soluong
--5.1.2.	Thủ tục đưa ra nhân viên có số lượng đơn lớn hơn "n"
CREATE PROC sp_Nhanvien_Soluongdon(@soluong INT)
AS BEGIN
	SELECT NHANVIEN.Manhanvien, NHANVIEN.Hoten, COUNT(DONDATHANG.Sohoadon) AS SoHoaDon
	FROM NHANVIEN INNER JOIN DONDATHANG ON NHANVIEN.Manhanvien = DONDATHANG.Manhanvien
	GROUP BY NHANVIEN.Manhanvien, NHANVIEN.Hoten
	HAVING  COUNT(DONDATHANG.Sohoadon) > @soluong
END

EXEC sp_Nhanvien_Soluongdon '2'
--5.1.3.	Thủ tục tăng lương cho nhân viên
CREATE PROC sp_Nhanvien_Tangluong (@manhanvien int, @sotien money)
AS BEGIN
	IF NOT EXISTS (SELECT * FROM NHANVIEN WHERE Manhanvien = @manhanvien)
	BEGIN
		PRINT N'Mã nhân viên không tồn tại!';
		ROLLBACK TRANSACTION;
	END
	ELSE BEGIN
		UPDATE NHANVIEN SET Luong += @sotien WHERE Manhanvien = @manhanvien;
	END
END


EXEC sp_Nhanvien_Tangluong '1', '900000'
--5.1.4.	Thủ tục đưa ra các món ăn đã gần hết hàng (hàng tồn <=5)
CREATE PROC sp_Monan_Saphet
AS
	BEGIN
		SELECT * FROM MONAN WHERE SOLUONG < =5
	END
EXEC sp_Monan_Saphet
--5.1.5.	Thủ tục đưa ra các đơn đặt hàng trong ngày "dd/mm/yyyy"
CREATE PROC sp_Donhang_Thongtin(@ngay DATE)
AS 
	BEGIN
		SELECT * FROM DONDATHANG WHERE Thoigiandatdon = @ngay
	END
EXEC sp_Donhang_Thongtin '2022-01-07'
--5.1.6.	Thủ tục lấy ra thông tin và tổng số lượng được đặt theo ngày
CREATE PROC sp_Monan_Donhang_Ngay(@ngay DATE)
AS 
BEGIN
	SELECT MONAN.Mamonan, Tenmonan, SUM(CHITIETDATHANG.Soluong) as TongSoDaBan FROM MONAN
	INNER JOIN CHITIETDATHANG ON MONAN.Mamonan = CHITIETDATHANG.Mamon
	INNER JOIN DONDATHANG ON DONDATHANG.Sohoadon = CHITIETDATHANG.Sohoadon
	WHERE Thoigiandatdon = @ngay
	GROUP BY MONAN.Mamonan, Tenmonan
END
select * from DONDATHANG
EXEC sp_Monan_Donhang_Ngay '2021-08-03'
----5.1.7.	Thủ tục lấy ra thông tin và tổng số lượng món ăn được đặt theo (tháng, năm)
CREATE PROC sp_Monan_Donhang_ThangNam(@thang int, @nam int)
AS
BEGIN
    SELECT Mamon, Tenmonan, Tenloai, SUM(CHITIETDATHANG.Soluong) AS Soluongdat FROM dbo.MONAN
	INNER JOIN dbo.LOAI ON LOAI.Maloai = MONAN.Maloai
	INNER JOIN dbo.CHITIETDATHANG ON CHITIETDATHANG.Mamon = MONAN.Mamonan
	INNER JOIN dbo.DONDATHANG ON DONDATHANG.Sohoadon = CHITIETDATHANG.Sohoadon
				AND MONTH(Thoigiandatdon) = @thang AND YEAR(Thoigiandatdon) = @nam
	GROUP BY Mamon, Tenmonan, Tenloai
END
EXEC sp_Monan_Donhang_ThangNam '10','2021'

SELECT * FROM dbo.DONDATHANG
SELECT * FROM dbo.CHITIETDATHANG

EXEC sp_monan_donhang_thangnam '10', '2021'
GO

----5.1.8.	Thủ tục tìm đơn hàng theo số điện thoại của khách hàng
CREATE PROC sp_Donhang_Khachhang (@dienthoai varchar(12))
AS
BEGIN
    SELECT Hoten, Dienthoai, Sohoadon, Manhanvien, Thoigiandatdon, Thoigianhengiao, Thoigiangiaodon, Noigiaohang FROM dbo.DONDATHANG
	INNER JOIN dbo.KHACHHANG ON KHACHHANG.Makhachhang = DONDATHANG.Makhachhang
	WHERE dbo.KHACHHANG.Dienthoai LIKE @dienthoai;
END
EXEC sp_Donhang_Khachhang '348123126'
SELECT * FROM dbo.KHACHHANG;
SELECT * FROM dbo.DONDATHANG;
GO

----5.1.9.	Thủ tục thay đổi số lượng trong chi tiết đơn đặt hàng

CREATE PROC sp_Chitietdathang_Update_Soluong(@shd int, @mamon int,@soluong int)
AS
BEGIN
    UPDATE dbo.CHITIETDATHANG
	SET Soluong = @soluong
	WHERE Sohoadon = @shd AND Mamon = @mamon;
END

EXEC sp_Chitietdathang_Update_Soluong '5', '1', '10'
GO

-------------------- HÀM --------------------------
--5.2.1.	Hàm tính số tuổi của nhân viên – dùng cho trigger (5)
CREATE FUNCTION fn_Nhanvien_Sotuoi()
RETURNS @danhsach TABLE(MaNhanVien int, SoTuoi int)
AS BEGIN
	INSERT INTO @danhsach SELECT Manhanvien, (DATEPART(YEAR,GETDATE()) - DATEPART(YEAR,Ngaysinh) ) AS tuoi FROM NHANVIEN
	RETURN
END

SELECT * FROM fn_Nhanvien_Sotuoi()

--5.2.2.	Hàm tính thời gian làm việc của 1 nhân viên đầu vào là mã nhân viên
CREATE FUNCTION fn_Nhanvien_Tongthoigian(@manhanvien int)
RETURNS @danhsach TABLE(MaNhanVien int, ThoiGianDaLam int)
AS BEGIN
	INSERT INTO @danhsach SELECT Manhanvien, (DATEPART(DAY,GETDATE()) - DATEPART(DAY,Ngaybatdaulamviec) ) FROM NHANVIEN WHERE Manhanvien = @manhanvien;
	RETURN
END


SELECT * FROM fn_Nhanvien_Tongthoigian('1')
--5.2.3.	Hàm trả về danh sách các nhân viên có lương cao hơn lương trung bình(trừ admin).
CREATE FUNCTION fn_Nhanvien_Luongcao()
RETURNS @danhsach TABLE(Manhanvien int, Hoten nvarchar(30), Luong money)
AS BEGIN
	DECLARE @luongtrungbinh money = (SELECT AVG(Luong) FROM NHANVIEN INNER JOIN TAIKHOAN
			ON NHANVIEN.Mataikhoan = TAIKHOAN.Mataikhoan WHERE TAIKHOAN.Capdo != 1)
	INSERT INTO @danhsach SELECT Manhanvien, Hoten , Luong FROM NHANVIEN WHERE Luong > @luongtrungbinh AND Manhanvien != 1;
	RETURN
END
SELECT * FROM fn_Nhanvien_Luongcao()
--5.2.4.	Hàm trả về danh sách các món ăn đã mua của khách hàng
CREATE FUNCTION fn_Monan_Khachhang(@sdt VARCHAR(12))
RETURNS @table TABLE(MaMonAn INT, TenLoai NVARCHAR(50), TenMonAn	NVARCHAR(50))
AS
BEGIN
	INSERT INTO @table 
	SELECT MONAN.Mamonan, LOAI.Tenloai, MONAN.Tenmonan FROM MONAN
	INNER JOIN LOAI ON MONAN.Maloai = LOAI.Maloai
	INNER JOIN CHITIETDATHANG ON CHITIETDATHANG.Mamon = MONAN.Mamonan
	INNER JOIN DONDATHANG ON DONDATHANG.Sohoadon = CHITIETDATHANG.Sohoadon
	INNER JOIN KHACHHANG ON KHACHHANG.Makhachhang = DONDATHANG.Makhachhang
	WHERE KHACHHANG.Dienthoai = @sdt
	GROUP BY MONAN.Mamonan, LOAI.Tenloai, MONAN.Tenmonan
	RETURN
END
SELECT * FROM fn_Monan_Khachhang('0348123128')
--5.2.5.	Hàm tính tổng tiền các đơn hàng của 1 khách hàng.
CREATE OR ALTER FUNCTION fn_Donhang_Tongtien(@makhach INT)
RETURNS MONEY
AS
BEGIN
	DECLARE @tongtien MONEY 
	SET @tongtien = (SELECT SUM(Soluong*Giaban - Mucgiagiam) FROM CHITIETDATHANG
	INNER JOIN DONDATHANG on DONDATHANG.Sohoadon = CHITIETDATHANG.Sohoadon
	WHERE DONDATHANG.Sohoadon = @makhach)
	RETURN @tongtien
END
PRINT dbo.fn_Donhang_Tongtien('2')
--5.2.6.	Hàm đưa ra tổng số lượng đơn trong năm nhập vào của nhân viên nhập vào
CREATE FUNCTION fn_Nhanvien_Soluongdon(@manv INT, @nam VARCHAR(4))
RETURNS INT
AS
BEGIN
	DECLARE @tong int 
	SET @tong = (SELECT COUNT(manhanvien) FROM dondathang 
	WHERE Manhanvien = @manv AND YEAR(Thoigiandatdon) = @nam
	GROUP BY Manhanvien)
	RETURN @tong
END
PRINT dbo.fn_Nhanvien_Soluongdon('1', '2021')
--5.2.7.	Hàm trả về những khách hàng thường xuyên mua nhất
CREATE FUNCTION fn_Khachhang_Donhang()
RETURNS TABLE
AS
RETURN(
    SELECT dbo.KHACHHANG.Makhachhang,Hoten, COUNT(Sohoadon) AS Soluonghoadon FROM dbo.KHACHHANG
	INNER JOIN dbo.DONDATHANG ON DONDATHANG.Makhachhang = KHACHHANG.Makhachhang
	GROUP BY dbo.KHACHHANG.Makhachhang, Hoten
	HAVING COUNT(Sohoadon) >= ALL (SELECT COUNT(Sohoadon) FROM dbo.KHACHHANG
	INNER JOIN dbo.DONDATHANG ON DONDATHANG.Makhachhang = KHACHHANG.Makhachhang
	GROUP BY dbo.KHACHHANG.Makhachhang, Hoten)
)
SELECT * FROM fn_Khachhang_Donhang()
--5.2.8.	Hàm tính tổng số lượng món ăn có trong 1 đơn hàng là tham số truyền vào.
CREATE FUNCTION fn_MonAn_Chitietdathang(@Shd int)
RETURNS INT
AS
BEGIN
	DECLARE @soluong INT = (SELECT COUNT(Mamon) FROM CHITIETDATHANG WHERE Sohoadon = @Shd)
	RETURN @soluong
END
PRINT dbo.fn_MonAn_Chitietdathang('1')
--5.2.9.	Hàm hàm tính tổng lãi theo từng tháng.
CREATE FUNCTION fn_Lai_Thang()
RETURNS TABLE
AS
RETURN(
	SELECT MONTH(c.Thoigiandatdon) AS "Tháng", SUM((Giaban*a.Soluong - Mucgiagiam) - b.Giathanhpham) AS "Lãi"
	FROM CHITIETDATHANG AS a
	INNER JOIN MONAN AS b ON b.Mamonan = a.Mamon
	RIGHT JOIN DONDATHANG AS c ON c.Sohoadon = a.Sohoadon
	GROUP BY MONTH(c.Thoigiandatdon)
)
SELECT * FROM fn_Lai_Thang()

-------------------- VIEW -------------------------
--LEfn OUTER JOIN thực hiện phép nối bên trong của hai bảng (giả sử bảng A viết trước từ khóa nối và bảng B viết sau từ khóa nối trong câu lệnh SQL) 
--dựa trên điều kiện được chỉ định sau từ khóa ON. Nó trả về tất cả các hàng từ bảng A cũng như các hàng chưa khớp từ bảng B
SELECT * FROM vw_Thongke_Cuahang
--SELECT dbo.fn_Sinhvien_diem(MaSV) FROM SINH_VIEN

--5.3.1.	View thống kê thông tin cửa hàng
--View bao gồm (Tổng số tài khoản, Tổng  số món ăn, Tổng số nhân viên, Tổng số đơn hàng)
--Tổng số hóa đơn là số hóa đơn đã giao.
CREATE VIEW vw_Thongke_Cuahang
AS
	SELECT db1.Tongsotaikhoan, db2.Tongsomonan, db3.Tongsonhanvien, db4.Tongsohoadon FROM
	(SELECT COUNT(TAIKHOAN.Mataikhoan) AS Tongsotaikhoan, ROW_NUMBER() OVER(ORDER BY COUNT(TAIKHOAN.Mataikhoan)) AS RowNumber  FROM TAIKHOAN) AS db1
	LEFT OUTER JOIN
	(SELECT COUNT(MONAN.Mamonan) AS Tongsomonan, ROW_NUMBER() OVER(ORDER BY COUNT(MONAN.Mamonan)) AS RowNumber FROM MONAN) AS db2
	ON db1.RowNumber = db2.RowNumber LEFT OUTER JOIN
	(SELECT COUNT(NHANVIEN.Manhanvien) AS Tongsonhanvien, ROW_NUMBER() OVER(ORDER BY COUNT(NHANVIEN.Manhanvien)) AS RowNumber FROM NHANVIEN) AS db3
	ON db2.RowNumber = db3.RowNumber LEFT OUTER JOIN
	(SELECT COUNT(DONDATHANG.Thoigianhengiao) AS Tongsohoadon, ROW_NUMBER() OVER(ORDER BY COUNT(DONDATHANG.Thoigianhengiao)) AS RowNumber 
	FROM DONDATHANG WHERE Thoigianhengiao < GETDATE()) AS db4
	ON db3.RowNumber = db4.RowNumber
SELECT * FROM vw_Thongke_Cuahang
--5.3.2.	View thống kê thông tin tài khoản nhân viên
CREATE VIEW vw_nhanvien_thongtin
AS
	SELECT Tentaikhoan, Matkhau, Hoten, Ngaybatdaulamviec, Diachi, Dienthoai FROM TAIKHOAN, NHANVIEN
	WHERE TAIKHOAN.Mataikhoan = NHANVIEN.Mataikhoan AND TAIKHOAN.Capdo = 2;
SELECT * FROM vw_nhanvien_thongtin

--5.3.3.	View thống kê thông tin món ăn (View_monan_thongtin)
CREATE VIEW vw_monan_thongtin
AS
	SELECT MONAN.Mamonan, Tenmonan, MONAN.Maloai , MONAN.Soluong AS soluongcon, tongsoluongban = SUM(CHITIETDATHANG.Soluong)
	FROM MONAN 
	LEFT JOIN CHITIETDATHANG ON CHITIETDATHANG.Mamon = MONAN.Mamonan
	GROUP BY MONAN.Mamonan, MONAN.Tenmonan, MONAN.Maloai, MONAN.Soluong
SELECT * FROM vw_monan_thongtin
--5.3.4.	View thống kê món ăn được ưa thích
--Các món ăn có số hóa đơn lớn hơn 10.
CREATE VIEW vw_mon_thich 
AS
SELECT Mamon , Tenmonan, COUNT(Sohoadon) AS SoLanMua
FROM CHITIETDATHANG 
INNER JOIN MONAN ON CHITIETDATHANG.Mamon = MONAN.Mamonan
GROUP BY Mamon, Tenmonan
HAVING COUNT(Sohoadon)>10

SELECT * FROM vw_mon_thich
--5.3.5.	View thống kê thông tin món ăn chưa từng được bán
CREATE VIEW vw_mon_chua_duoc_ban
AS
SELECT * from MONAN
WHERE Mamonan not in (SELECT Mamon FROM CHITIETDATHANG)

SELECT * FROM vw_mon_chua_duoc_ban
--5.3.6.	View thống kê thông tin món ăn sắp hết hạn
CREATE VIEW vw_mon_sap_het_han
AS
SELECT * from MONAN
WHERE DATEDIFF(day,GETDATE(), Hansudung) < 15

SELECT * FROM vw_mon_sap_het_han
--5.3.7.	View thống kê thông tin khách hàng với tổng tiền đã bỏ ra của họ
CREATE VIEW vw_Khachhang_Tongtientieu
AS
	SELECT a.Makhachhang, Hoten, SUM(Giaban*Soluong - Mucgiagiam) AS "Tổng tiền tiêu" FROM KHACHHANG AS a
	INNER JOIN DONDATHANG AS b ON a.Makhachhang = b.Makhachhang
	INNER JOIN CHITIETDATHANG AS c ON b.Sohoadon = c.Sohoadon
	GROUP BY a.Makhachhang, Hoten

SELECT * FROM vw_Khachhang_Tongtientieu
--5.3.8.	View thống kê hóa đơn
CREATE OR ALTER VIEW vw_Donhang_Thongke
AS
	SELECT a.Sohoadon, a.Makhachhang,
	COUNT(b.Mamon) AS Somon,
	SUM(b.Soluong) AS Soluong,
	SUM(b.Soluong*Giaban) AS Tongtiengoc,
	SUM(b.Soluong*Giaban*Mucgiagiam) AS Tongtiengiam,
	SUM(b.Soluong*Giaban - b.Soluong*Giaban*Mucgiagiam) AS Thanhtien,
	a.Thoigiandatdon, a.Thoigianhengiao, a.Thoigiangiaodon
	FROM DONDATHANG AS a
	INNER JOIN CHITIETDATHANG AS b ON a.Sohoadon = b.Sohoadon
	INNER JOIN MONAN AS c ON  b.Mamon = c.Mamonan
	GROUP BY a.Sohoadon, a.Makhachhang, a.Thoigiandatdon, a.Thoigianhengiao, a.Thoigiangiaodon

	SELECT * FROM vw_Donhang_Thongke
GO
--5.3.9.	View thống kê khách hàng đã đăng ký tài khoản nhưng chưa mua hàng
CREATE OR ALTER VIEW vw_Khachhang_Taikhoan_Chuamuahang
AS
	SELECT Makhachhang, Hoten, Email, Diachi, Tentaikhoan, Ngaytao
	FROM KHACHHANG AS a
	INNER JOIN TAIKHOAN AS b ON a.Mataikhoan = b.Mataikhoan
	WHERE a.Makhachhang not in (SELECT Makhachhang FROM DONDATHANG)

SELECT * FROM vw_Khachhang_Taikhoan_Chuamuahang
-------------------- TRIGGER -------------------------
--5.4.1.	Trigger kiểm tra điều kiện trước khi thêm, cập nhật nhân viên
CREATE TRIGGER tg_nhanvien_them_capnhat
ON NHANVIEN
INSTEAD OF INSERT
AS BEGIN
	IF EXISTS (SELECT Dienthoai FROM NHANVIEN WHERE Dienthoai = (SELECT Dienthoai FROM inserted))
	BEGIN
		PRINT N'Số điện thoại đã trùng với dữ liệu';
		ROLLBACK TRANSACTION;
	END
	ELSE IF ((SELECT Luong FROM inserted) > 5000000)
	BEGIN
		PRINT N'Lương cơ bản của nhân viên mới không được quá 5 triệu';
		ROLLBACK TRANSACTION;
	END
	ELSE IF EXISTS (SELECT * FROM inserted WHERE (DATEPART(YEAR, GETDATE()) - DATEPART(YEAR, Ngaysinh))< 16
		OR (DATEPART(YEAR, GETDATE()) - DATEPART(YEAR, Ngaysinh)) > 35)
	BEGIN
		PRINT N'Nhân viên phải trong độ tuổi từ 16 đến 35 tuổi';
		ROLLBACK TRANSACTION;
	END
	ELSE IF ((SELECT Tienthuong FROM inserted) > 0)
	BEGIN
		PRINT N'Tiền thưởng của nhân viên mới phải là 0 đồng';
		ROLLBACK TRANSACTION;
	END
	ELSE IF EXISTS (SELECT Mataikhoan FROM NHANVIEN WHERE Mataikhoan = (SELECT Mataikhoan FROM inserted))
	BEGIN
		PRINT N'Mã tài khoản đã thuộc một nhân viên nào đó';
		ROLLBACK TRANSACTION;
	END
	ELSE BEGIN
		INSERT INTO NHANVIEN(Hoten, Ngaysinh, Diachi, Dienthoai, Luong, Tienthuong, Mataikhoan) 
		SELECT Hoten, Ngaysinh, Diachi, Dienthoai, Luong, Tienthuong, Mataikhoan FROM inserted
		UPDATE TAIKHOAN SET Trangthai = 1 WHERE Mataikhoan = (SELECT Mataikhoan FROM inserted)
	END
END
--5.4.2.	Trigger kiểm tra điều kiện trước khi thêm món ăn 
CREATE TRIGGER tg_monan_them
ON MONAN
INSTEAD OF INSERT
AS BEGIN
	IF EXISTS (SELECT * FROM inserted WHERE (DATEPART(DAYOFYEAR, Hansudung) - DATEPART(DAYOFYEAR, GETDATE())) <= 90)
	BEGIN
		PRINT N'Hạn sử dụng của hàng phải lớn hơn 3 tháng tính từ ngày nhập';
		ROLLBACK TRANSACTION;
	END
	ELSE IF NOT EXISTS (SELECT Maloai FROM MONAN WHERE Maloai = (SELECT Maloai FROM inserted))
	BEGIN
		PRINT N'Món ăn không thuộc các loại món ăn có trong dữ liệu';
		ROLLBACK TRANSACTION;
	END
	ELSE IF ((SELECT Soluong FROM inserted) <= 10 )
	BEGIN
		PRINT N'Số lượng món ăn nhập về phải lớn hơn 10';
		ROLLBACK TRANSACTION;
	END
	ELSE BEGIN
		INSERT INTO MONAN(Tenmonan, Maloai, Mota, Soluong, Giathanhpham,Hansudung) (SELECT Tenmonan, Maloai, Mota, Soluong, Giathanhpham, Hansudung FROM inserted)
	END
END
--5.4.3.	Trigger kiểm tra điều kiện trước khi thêm đơn đặt hàng
CREATE TRIGGER tg_check_insert_donhang
ON DONDATHANG
FOR INSERT
AS
BEGIN
	DECLARE @dat date = (SELECT Thoigiandatdon FROM INSERTED )
	DECLARE @hen date = (SELECT Thoigianhengiao FROM INSERTED )
	DECLARE @giao date = (SELECT Thoigiangiaodon FROM INSERTED )
	IF(@dat > @hen or @dat > @giao OR DATEDIFF(day,@hen, @giao) > 3)
		BEGIN
			ROLLBACK TRAN
			PRINT N'Thời gian hẹn và giao phải sau thời gian đặt đơn. Và thời gian giao hàng có thể rỗng hoặc không quá 3 ngày so với thời gian hẹn.'
		END
END
GO

--5.4.4.	Trigger xóa đơn đặt hàng
CREATE TRIGGER tg_check_del_donhang
ON DONDATHANG
INSTEAD OF DELETE
AS
BEGIN
	DECLARE @mahd int = (SELECT Sohoadon FROM DELETED)
	DECLARE @ngaygiao date = (SELECT Thoigiangiaodon FROM DONDATHANG WHERE Sohoadon = @mahd)
	IF(@ngaygiao is null OR @ngaygiao > getdate())
	BEGIN
		DECLARE @mamon int
		DECLARE @solg int
		DECLARE myCursor CURSOR FOR 
		SELECT Mamon,sum(Soluong) FROM CHITIETDATHANG WHERE Sohoadon=@mahd group by Mamon
		OPEN myCursor
		FETCH NEXT FROM myCursor INTO @mamon, @solg
		WHILE @@FETCH_STATUS = 0
		BEGIN
			UPDATE MONAN set Soluong = Soluong + @solg 
			WHERE Mamonan = @mamon
			PRINT N'Đã cập nhật lại số lượng cho món ăn: ' + CAST(@mamon as nvarchar)
			FETCH NEXT FROM myCursor INTO @mamon, @solg
		END
		CLOSE myCursor
		DEALLOCATE myCursor

		DELETE FROM CHITIETDATHANG WHERE Sohoadon = @mahd
		DELETE FROM DONDATHANG WHERE Sohoadon = @mahd
		
	END
	ElSE BEGIN
		DELETE FROM CHITIETDATHANG WHERE Sohoadon = @mahd
		DELETE FROM DONDATHANG WHERE Sohoadon = @mahd
	END
END
GO

--5.4.5.	Trigger kiểm tra trước khi thêm chi tiết đặt hàng (Trigger)
--Kiểm tra món ăn có trong bảng món ăn không (thay thế cho khóa ngoại của bảng)
--Không bán đồ ăn quá hạn.
--Số lượng đặt lớn hơn 0.
--Số lượng bán không được nhiều hơn số lượng có trong kho.
--Giá bán = 150% giá thành phẩm.
--Mức giá giảm không quá 25%* (Giá bán * Số lượng bán).
--Thỏa mãn điều kiện cập nhật Số lượng trong kho = Số lương tồn – Số lượng bán.
CREATE OR ALTER TRIGGER tg_Ins_Chitietdathang
ON CHITIETDATHANG
INSTEAD OF INSERT
AS
BEGIN
	DECLARE @So_hd INT = (SELECT Sohoadon FROM INSERTED)
	IF NOT EXISTS (SELECT * FROM DONDATHANG WHERE Sohoadon = @So_hd) PRINT N'Không có hóa này'
	ELSE
		BEGIN
			DECLARE @mamon INT = (SELECT Mamon FROM INSERTED)
			IF NOT EXISTS (SELECT * FROM MONAN WHERE Mamonan = @mamon) PRINT N'Không có món ăn này'
			ELSE
				BEGIN
					IF EXISTS (SELECT * FROM MONAN WHERE Mamonan = @mamon AND Hansudung <= getdate()) PRINT N'Đồ ăn quá hạn'
					ELSE
						BEGIN
							DECLARE @Soluongban int = (SELECT Soluong FROM INSERTED)

							IF (@Soluongban < 1) PRINT N'Số lượng đặt phải lớn hơn 0'
							ELSE
								BEGIN
									DECLARE @Sl_Kho int = (SELECT Soluong FROM MONAN WHERE Mamonan = @mamon)

									IF (@Soluongban > @Sl_Kho) PRINT N'Số lượng trong kho không đủ. Còn' + Convert(varchar(5), @Sl_Kho)
									ELSE
										BEGIN
											DECLARE @Giagoc float = (SELECT Giathanhpham FROM MONAN WHERE Mamonan = @mamon)
											DECLARE @Giaban float = 1.5*@Giagoc
											DECLARE @Giagiam float = (SELECT Mucgiagiam FROM INSERTED)
											DECLARE @Tonggiahang float = @Giaban * @Soluongban
											IF(@Giagiam > 0.25 * @Tonggiahang) PRINT N'Mức giá giảm không quá 25%* (Giá bán * Số lượng bán)'
											ELSE
												BEGIN
													INSERT INTO CHITIETDATHANG SELECT * FROM INSERTED
													UPDATE CHITIETDATHANG SET Giaban = @Giaban WHERE Mamon = @mamon
													UPDATE MONAN SET SOLUONG = (@Sl_Kho - @Soluongban) WHERE Mamonan = @mamon
												END
										END
								END
						END
				END
		END
END



INSERT INTO ChiTietDatHang VALUES
(1, 1, 15000, 5, 0)
--5.4.6.	Trigger cập nhật một mặt hàng của một hóa đơn trong chi tiết đặt hàng
--Chỉ cho phép cập nhật trong ngày đặt hàng. Kiểm tra ngày đặt hàng có nhỏ hơn ngày cập nhật hay không ? Nếu có cho phép cập nhật. Nếu không thông báo.
--Số lượng hàng thay đổi không lớn hơn số hàng trong kho.
--drop trigger tg_Up_Chitietdathang

CREATE OR ALTER TRIGGER tg_Up_Chitietdathang
ON CHITIETDATHANG
FOR UPDATE
AS
BEGIN
	--Loại bỏ các đơn hàng đặt trước ngày cập nhật
	declare @a date = (SELECT Thoigiandatdon FROM DONDATHANG WHERE Sohoadon = (SELECT DISTINCT Sohoadon FROM deleted))
	IF DATEDIFF(DAY,@a, CONVERT (DATE,GETDATE())) != 0
		BEGIN
			PRINT N'Chỉ được cập nhật đơn hàng trong ngày'
			ROLLBACK TRAN
		END
	-- Còn lại các đơn trong ngày, kiểm tra xem đơn được giao chưa?
	ELSE
		BEGIN
			declare @b date = (SELECT Thoigiangiaodon FROM DONDATHANG WHERE Sohoadon =  (SELECT DISTINCT Sohoadon FROM deleted))
			IF DATEDIFF(DAY,@b, CONVERT (DATE,GETDATE())) = 0
				BEGIN
					PRINT N'Đơn hàng đã được giao'
					ROLLBACK TRAN
				END
			-- Đơn hàng trong ngày chưa giao
			ELSE
				BEGIN
					DECLARE @Sl_bannew int = (SELECT Soluong FROM inserted)
					DECLARE @Ma_mon int = (SELECT Mamon FROM inserted)
					DECLARE @So_hd int = (SELECT Sohoadon FROM inserted)
					DECLARE @Sl_trongkho int = (SELECT Soluong FROM MONAN WHERE Mamonan = @Ma_mon)
					DECLARE @sl_old int =(SELECT Soluong FROM deleted)
					DECLARE @Sum INT = @sl_bannew - @sl_old
					IF(@Sl_trongkho - @Sum < 0)
						BEGIN
							Print N'Số lượng trong kho không đủ. Còn: ' + convert(char(5), @Sl_trongkho);
							ROLLBACK TRAN
						END
					ELSE
						BEGIN
							UPDATE CHITIETDATHANG SET SOLUONG = @Sl_bannew WHERE SOHOADON = @So_hd	AND Mamon = @Ma_mon
							UPDATE MONAN SET SOLUONG = (@Sl_trongkho - @Sum) WHERE Mamonan = @Ma_mon
						END
				END
		END
END
UPDATE CHITIETDATHANG SET Soluong = 5 WHERE Sohoadon = 20 AND Mamon = 3
SELECT * FROM DONDATHANG
SELECT * FROM CHITIETDATHANG
SELECT * FROM MONAN

