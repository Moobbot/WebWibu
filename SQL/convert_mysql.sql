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
-->mysql
CREATE OR REPLACE VIEW vw_Thongke_Cuahang
AS
	SELECT db1.Tongsotaikhoan, db2.Tongsomonan, db3.Tongsonhanvien, db4.Tongsohoadon FROM
	(SELECT COUNT(TAIKHOAN.Mataikhoan) AS Tongsotaikhoan, ROW_NUMBER() OVER(ORDER BY COUNT(TAIKHOAN.Mataikhoan)) AS RowNumber  FROM TAIKHOAN) AS db1
	LEFT OUTER JOIN
	(SELECT COUNT(MONAN.Mamonan) AS Tongsomonan, ROW_NUMBER() OVER(ORDER BY COUNT(MONAN.Mamonan)) AS RowNumber FROM MONAN) AS db2
	ON db1.RowNumber = db2.RowNumber LEFT OUTER JOIN
	(SELECT COUNT(NHANVIEN.Manhanvien) AS Tongsonhanvien, ROW_NUMBER() OVER(ORDER BY COUNT(NHANVIEN.Manhanvien)) AS RowNumber FROM NHANVIEN) AS db3
	ON db2.RowNumber = db3.RowNumber LEFT OUTER JOIN
	(SELECT COUNT(DONDATHANG.Thoigianhengiao) AS Tongsohoadon, ROW_NUMBER() OVER(ORDER BY COUNT(DONDATHANG.Thoigianhengiao)) AS RowNumber 
	FROM DONDATHANG WHERE Thoigianhengiao < CURRENT_DATE()) AS db4
	ON db3.RowNumber = db4.RowNumber

--Thay đổi: 1:GETDATE() ->CURRENT_DATE()
--2:ALTER -> REPLACE 
--3: DATEDIF(date1,date2)->date1-date 2
--5.3.2.	View thống kê thông tin tài khoản nhân viên
CREATE VIEW vw_nhanvien_thongtin
AS
	SELECT Tentaikhoan, Matkhau, Hoten, Ngaybatdaulamviec, Diachi, Dienthoai FROM TAIKHOAN, NHANVIEN
	WHERE TAIKHOAN.Mataikhoan = NHANVIEN.Mataikhoan AND TAIKHOAN.Capdo = 2;
-->mysql
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
-->mysql
CREATE VIEW vw_monan_thongtin
AS
	SELECT MONAN.Mamonan, Tenmonan, MONAN.Maloai , MONAN.Soluong AS soluongcon, SUM(CHITIETDATHANG.Soluong) AS tongsoluongban 
	FROM MONAN 
	LEFT JOIN CHITIETDATHANG ON CHITIETDATHANG.Mamon = MONAN.Mamonan
	GROUP BY MONAN.Mamonan, MONAN.Tenmonan, MONAN.Maloai, MONAN.Soluong

--5.3.4.	View thống kê món ăn được ưa thích
--Các món ăn có số hóa đơn lớn hơn 10.
CREATE VIEW vw_mon_thich 
AS
SELECT Mamon , Tenmonan, COUNT(Sohoadon) AS SoLanMua
	FROM CHITIETDATHANG 
	INNER JOIN MONAN ON CHITIETDATHANG.Mamon = MONAN.Mamonan
	GROUP BY Mamon, Tenmonan
	HAVING COUNT(Sohoadon)>10
-->mysql
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
-->mysql
CREATE VIEW vw_mon_chua_duoc_ban
AS
	SELECT * from MONAN
	WHERE Mamonan not in (SELECT Mamon FROM CHITIETDATHANG)
--5.3.6.	View thống kê thông tin món ăn sắp hết hạn
CREATE VIEW vw_mon_sap_het_han
AS
	SELECT * from MONAN
	WHERE DATEDIFF(day,GETDATE(), Hansudung) < 15
-->mysql
CREATE OR REPLACE VIEW vw_mon_sap_het_han
AS
    SELECT * from MONAN
    WHERE DATEDIFF(CURRENT_DATE(), Hansudung) < 15

--5.3.7.	View thống kê thông tin khách hàng với tổng tiền đã bỏ ra của họ
CREATE VIEW vw_Khachhang_Tongtientieu
AS
	SELECT a.Makhachhang, Hoten, SUM(Giaban*Soluong - Mucgiagiam) AS "Tổng tiền tiêu" FROM KHACHHANG AS a
	INNER JOIN DONDATHANG AS b ON a.Makhachhang = b.Makhachhang
	INNER JOIN CHITIETDATHANG AS c ON b.Sohoadon = c.Sohoadon
	GROUP BY a.Makhachhang, Hoten
-->mysql
CREATE VIEW vw_Khachhang_Tongtientieu
AS
	SELECT a.Makhachhang, Hoten, SUM(Giaban*Soluong - Mucgiagiam) AS "Tổng tiền tiêu" FROM KHACHHANG AS a
	INNER JOIN DONDATHANG AS b ON a.Makhachhang = b.Makhachhang
	INNER JOIN CHITIETDATHANG AS c ON b.Sohoadon = c.Sohoadon
	GROUP BY a.Makhachhang, Hoten

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
-->mysql
CREATE OR REPLACE VIEW vw_Donhang_Thongke
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
    GROUP BY a.Sohoadon, a.Makhachhang, a.Thoigiandatdon, a.Thoigianhengiao, a.Thoigiangiaodon;

--5.3.9.	View thống kê khách hàng đã đăng ký tài khoản nhưng chưa mua hàng
CREATE OR ALTER VIEW vw_Khachhang_Taikhoan_Chuamuahang
AS
	SELECT Makhachhang, Hoten, Email, Diachi, Tentaikhoan, Ngaytao
	FROM KHACHHANG AS a
	INNER JOIN TAIKHOAN AS b ON a.Mataikhoan = b.Mataikhoan
	WHERE a.Makhachhang not in (SELECT Makhachhang FROM DONDATHANG)
-->mysql
CREATE OR REPLACE VIEW vw_Khachhang_Taikhoan_Chuamuahang
AS
	SELECT Makhachhang, Hoten, Email, Diachi, Tentaikhoan, Ngaytao
	FROM KHACHHANG AS a
	INNER JOIN TAIKHOAN AS b ON a.Mataikhoan = b.Mataikhoan
	WHERE a.Makhachhang not in (SELECT Makhachhang FROM DONDATHANG)