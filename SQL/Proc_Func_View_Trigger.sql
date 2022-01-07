USE DB_Wibu;
--quy ước: view -> vw, Thủ tục -> sp, Hàm -> fn, Trigger -> tr
-------------------- THỦ TỤC -----------------------
--5.1.7.	Thủ tục lấy ra thông tin và tổng số lượng món ăn được đặt theo (tháng, năm)
CREATE OR ALTER PROC sp_Monan_Donhang_ThangNam(@thang int, @nam int)
AS
BEGIN
    SELECT Mamon, Tenmonan, Tenloai, SUM(CHITIETDATHANG.Soluong) AS Soluongdat FROM dbo.MONAN
	INNER JOIN dbo.LOAI ON LOAI.Maloai = MONAN.Maloai
	INNER JOIN dbo.CHITIETDATHANG ON CHITIETDATHANG.Mamon = MONAN.Mamonan
	INNER JOIN dbo.DONDATHANG ON DONDATHANG.Sohoadon = CHITIETDATHANG.Sohoadon
				AND MONTH(Thoigiandatdon) = @thang AND YEAR(Thoigiandatdon) = @nam
	GROUP BY Mamon, Tenmonan, Tenloai
END

SELECT * FROM dbo.DONDATHANG
SELECT * FROM dbo.CHITIETDATHANG

EXEC sp_monan_donhang_thangnam '10', '2021'
GO

--5.1.8.	Thủ tục tìm đơn hàng theo số điện thoại của khách hàng
CREATE OR ALTER PROC sp_Donhang_Khachhang (@dienthoai varchar(12))
AS
BEGIN
    SELECT Hoten, Dienthoai, Sohoadon, Manhanvien, Thoigiandatdon, Thoigianhengiao, Thoigiangiaodon, Noigiaohang FROM dbo.DONDATHANG
	INNER JOIN dbo.KHACHHANG ON KHACHHANG.Makhachhang = DONDATHANG.Makhachhang
	WHERE dbo.KHACHHANG.Dienthoai LIKE @dienthoai;
END
sp_Donhang_Khachhang '0348123128';
SELECT * FROM dbo.KHACHHANG;
SELECT * FROM dbo.DONDATHANG;
GO

--5.1.9.	Thủ tục thay đổi số lượng trong chi tiết đơn đặt hàng

CREATE PROC sp_Chitietdathang_Update_Soluong(@shd int, @mamon int,@soluong int)
AS
BEGIN
    UPDATE dbo.CHITIETDATHANG
	SET Soluong = @soluong
	WHERE Sohoadon = @shd AND Mamon = @mamon;
END
GO

-------------------- HÀM --------------------------
--5.2.1.	Hàm tính số tuổi của nhân viên – dùng cho trigger (5)
CREATE FUNCTION ft_Nhanvien_Sotuoi()
RETURNS @danhsach TABLE(MaNhanVien int, SoTuoi int)
AS BEGIN
	INSERT INTO @danhsach SELECT Manhanvien, (DATEPART(YEAR,GETDATE()) - DATEPART(YEAR,Ngaysinh) ) AS tuoi FROM NHANVIEN
	RETURN
END
--5.2.2.	Hàm tính thời gian làm việc của 1 nhân viên đầu vào là mã nhân viên
CREATE FUNCTION ft_Nhanvien_Tongthoigian(@manhanvien int)
RETURNS @danhsach TABLE(MaNhanVien int, ThoiGianDaLam int)
AS BEGIN
	INSERT INTO @danhsach SELECT Manhanvien, (DATEPART(DAY,GETDATE()) - DATEPART(DAY,Ngaybatdaulamviec) ) FROM NHANVIEN WHERE Manhanvien = @manhanvien;
	RETURN
END
--5.2.3.	Hàm trả về danh sách các nhân viên có lương cao hơn lương trung bình(trừ admin).
CREATE FUNCTION fn_Nhanvien_Luongcao()
RETURNS @danhsach TABLE(Manhanvien int, Hoten nvarchar(30), Luong money)
AS BEGIN
	DECLARE @luongtrungbinh money = (SELECT AVG(Luong) FROM NHANVIEN INNER JOIN TAIKHOAN
			ON NHANVIEN.Mataikhoan = TAIKHOAN.Mataikhoan WHERE TAIKHOAN.Capdo != 1)
	INSERT INTO @danhsach SELECT Manhanvien, Hoten , Luong FROM NHANVIEN WHERE Luong > @luongtrungbinh AND Manhanvien != 1;
	RETURN
END
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
--5.2.5.	Hàm tính tổng tiền các đơn hàng của 1 khách hàng.
CREATE FUNCTION fn_Donhang_Tongtien(@makhach INT)
RETURNS MONEY
AS
BEGIN
	DECLARE @tongtien MONEY 
	SET @tongtien = (select sum(Soluong*Giaban - Soluong*Giaban*Mucgiagiam) from CHITIETDATHANG
	INNER JOIN DONDATHANG on DONDATHANG.Sohoadon = CHITIETDATHANG.Sohoadon
	WHERE DONDATHANG.Sohoadon = @makhach)
	RETURN @tongtien
END
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
--5.2.8.	Hàm tính tổng số lượng món ăn có trong 1 đơn hàng là tham số truyền vào.
CREATE FUNCTION fn_MonAn_Chitietdathang(@Shd int)
RETURNS INT
AS
BEGIN
	DECLARE @soluong INT = (SELECT COUNT(Mamon) FROM CHITIETDATHANG WHERE Sohoadon = @Shd)
	RETURN @soluong
END
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

-------------------- VIEW -------------------------
--LEFT OUTER JOIN thực hiện phép nối bên trong của hai bảng (giả sử bảng A viết trước từ khóa nối và bảng B viết sau từ khóa nối trong câu lệnh SQL) 
--dựa trên điều kiện được chỉ định sau từ khóa ON. Nó trả về tất cả các hàng từ bảng A cũng như các hàng chưa khớp từ bảng B
SELECT * FROM vw_Thongke_Cuahang
--5.3.1.	View thống kê thông tin cửa hàng
View bao gồm (Tổng số tài khoản, Tổng  số món ăn, Tổng số nhân viên, Tổng số đơn hàng)
Tổng số hóa đơn là số hóa đơn đã giao.
CREATE VIEW vw_Thongke_Cuahang
AS
	SELECT db1.Tongsotaikhoan, db2.Tongsomonan, db3.Tongsonhanvien, db4.Tongsohoadon FROM
	(SELECT COUNT(TAIKHOAN.Mataikhoan) AS Tongsotaikhoan, ROW_NUMBER() OVER(ORDER BY COUNT(TAIKHOAN.Mataikhoan)) AS RowNumber  FROM TAIKHOAN) AS db1
	LEFT OUTER JOIN
	(SELECT COUNT(MONAN.Mamonan) AS Tongsomonan, ROW_NUMBER() OVER(ORDER BY COUNT(MONAN.Mamonan)) AS RowNumber FROM MONAN) AS db2
	ON db1.RowNumber = db2.RowNumber LEFT OUTER JOIN
	(SELECT COUNT(NHANVIEN.Manhanvien) AS Tongsonhanvien, ROW_NUMBER() OVER(ORDER BY COUNT(NHANVIEN.Manhanvien)) AS RowNumber FROM NHANVIEN) AS db3
	ON db2.RowNumber = db3.RowNumber LEFT OUTER JOIN
	(SELECT COUNT(DONDATHANG.Thoigianhengiao) AS Tongsohoadon, ROW_NUMBER() OVER(ORDER BY COUNT(DONDATHANG.Thoigianhengiao)) AS RowNumber FROM DONDATHANG WHERE Thoigianhengiao < GETDATE()) AS db4
	ON db3.RowNumber = db4.RowNumber
--5.3.2.	View thống kê thông tin tài khoản nhân viên
CREATE VIEW vw_nhanvien_thongtin
AS
	SELECT Tentaikhoan, Matkhau, Hoten, Ngaybatdaulamviec, Diachi, Dienthoai FROM TAIKHOAN, NHANVIEN
	WHERE TAIKHOAN.Mataikhoan = NHANVIEN.Mataikhoan AND TAIKHOAN.Capdo = 2;
--5.3.3.	View thống kê thông tin món ăn (View_monan_thongtin)
CREATE VIEW vw_monan_thongtin
AS
	SELECT MONAN.Mamonan, Tenmonan, MONAN.Maloai , MONAN.Soluong AS soluongcon, tongsoluongban = SUM(CHITIETDATHANG.Soluong)
	FROM MONAN 
	LEFT JOIN CHITIETDATHANG ON CHITIETDATHANG.Mamon = MONAN.Mamonan
	GROUP BY MONAN.Mamonan, MONAN.Tenmonan, MONAN.Maloai, MONAN.Soluong
--5.3.4.	View thống kê món ăn được ưa thích
Các món ăn có số hóa đơn lớn hơn 10.
CREATE VIEW vw_mon_thich 
AS
SELECT Mamon , Tenmonan, COUNT(Sohoadon) AS SoLanMua
FROM CHITIETDATHANG 
INNER JOIN MONAN ON CHITIETDATHANG.Mamon = MONAN.Mamonan
GROUP BY Mamon, Tenmonan
HAVING COUNT(Sohoadon)>10
--5.3.5.	View thống kê thông tin món ăn chưa từng được bán
CREATE VIEW vw_mon_chua_duoc_ban
AS
SELECT * from MONAN
WHERE Mamonan not in (SELECT Mamon FROM CHITIETDATHANG)
--5.3.6.	View thống kê thông tin món ăn sắp hết hạn
CREATE VIEW vw_mon_sap_het_han
AS
SELECT * from MONAN
WHERE DATEDIFF(day,GETDATE(), Hansudung) < 15
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
--5.3.9.	View thống kê
GO
-------------------- TRIGGER -------------------------
