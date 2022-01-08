USE DB_Wibu;
GO

Use DB_Wibu
Grant All on 
select Dienthoai.madt from dienthoai, hoadon, chitiethoadon
WHERE dienthoai.madt = chitiethoadon
