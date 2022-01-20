--Sử dụng thủ tục.
--Tạo tài khoản.
EXEC sp_addlogin 'Admin1','123';
EXEC sp_addlogin 'Quanly','123';
EXEC sp_addlogin 'Nhanvien','123';
EXEC sp_addlogin 'Khach','123';
--Tạo người dùng
USE DB_Wibu
GO
EXEC sp_grantdbaccess 'Admin1', 'Wibu_admin'
EXEC sp_grantdbaccess 'Quanly', 'QuanlyA'
EXEC sp_grantdbaccess 'Nhanvien', 'NhanvienA'
EXEC sp_grantdbaccess 'Khach', 'KhachhangA'
--Tạo role
--Tạo role quyền Quản lý
EXEC  sp_addrole 'Wibu_Quanly';
--Tạo role quyền Nhân viên
EXEC sp_addrole 'Wibu_Nhanvien';
--Tạo role quyền Khách hàng
EXEC sp_addrole 'Wibu_Khach';

--Phân quyền
	--Cấp quyền role
		--Cấp quyền role Wibu_Quanly
		GRANT INSERT, UPDATE, DELETE ON LOAI TO Wibu_Quanly
		GRANT INSERT, UPDATE, DELETE ON MONAN TO Wibu_Quanly
		GRANT INSERT, UPDATE, DELETE, SELECT ON NHANVIEN TO Wibu_Quanly
		GRANT SELECT ON KHACHHANG TO Wibu_Quanly
		GRANT SELECT ON DONDATHANG TO Wibu_Quanly
		GRANT SELECT ON CHITIETDATHANG TO Wibu_Quanly
		GRANT UPDATE(Mucgiagiam) ON CHITIETDATHANG TO Wibu_Quanly
		--Cấp quyền role Wibu_Nhanvien
		GRANT SELECT ON DONDATHANG TO Wibu_Nhanvien
		GRANT SELECT ON CHITIETDATHANG TO Wibu_Nhanvien;
		GRANT  UPDATE(Thoigiangiaodon) ON DONDATHANG TO Wibu_Nhanvien;
		GRANT  UPDATE(Thoigiangiaodon) ON DONDATHANG TO Wibu_Nhanvien;
		--Cấp quyền role Wibu_Khach
		GRANT INSERT ON CHITIETDATHANG TO Wibu_Khach
		DENY SELECT(Soluong, Giathanhpham, Ngaynhap) ON MONAN TO Wibu_Khach;
	--Các quyền chung
	GRANT SELECT ON LOAI TO PUBLIC
	GRANT SELECT ON MONAN TO PUBLIC
	--Cấp quyền cho từng đối tượng
		--Cấp quyền admin -- cấp tất cả quyền hệ thống cho admin
			ALTER ROLE [db_owner] ADD member Wibu_admin;
		--Cấp quyền Quản lý
		--Thêm user QuanlyA vào role Wibu_Quanly
		EXEC sp_addrolemember 'Wibu_Quanly', 'QuanlyA'
		--Cấp quyền nhân viên
		--Thêm user NhanvienA vào role Wibu_Nhanvien
		EXEC sp_addrolemember 'Wibu_Nhanvien', 'NhanvienA'
		 --Cấp quyền khách
		--Thêm user KhachhangA vào role Wibu_Khach
		EXEC sp_addrolemember 'Wibu_Khach', 'KhachhangA'
