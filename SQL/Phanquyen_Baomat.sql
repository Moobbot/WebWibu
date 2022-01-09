GO
--------------------------------Cách 1------------------------------------
--Tạo tài khoản Login
--drop
CREATE LOGIN Admin1 WITH PASSWORD = '123';
CREATE LOGIN Nhanvien WITH PASSWORD = '123';
CREATE LOGIN Khach WITH PASSWORD = '123';

--Tạo User khai thác Database

CREATE USER ChuCuaHang FOR LOGIN Admin1;
CREATE USER NhanvienA FOR LOGIN Nhanvien;
CREATE USER KhachhangA FOR LOGIN Khach;

-- Phân quyền user khai thác DB_Wibu: 3 Admin như nhau
USE DB_Wibu;
--Quyền - Toàn quyền với DB_Wibu
ALTER ROLE [db_owner] ADD member ChuCuaHang;

------------------------------------------------------------------------------------------
--------------------------------Cách 2------------------------------------
GO
--Sử dụng thủ tục.
--Tạo tài khoản.
EXEC sp_addlogin 'Admin1','123';
EXEC sp_addlogin 'Quanly','123';
EXEC sp_addlogin 'Nhanvien','123';
EXEC sp_addlogin 'Khach','123';
--Tạo người dùng
--USE DB_Wibu
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
---------------------------Role----------------------------
--Định nghĩa role User defined role - Vai trò do người dùng xác định
--Database-level roles - Vai trò cấp Database
-- sp_addrole 'Tam'
-- sp_addrole 'Duy'
-- sp_addrole 'Phu'
-- Cấp quyền cho role
--GRANT [ALL, INSERT, UPDATE, DELETE, SELECT]
--ON [Tên bảng, procedure, funtion] to [Tên role]
--WITH GRANT OPTION -> Cho phép chia sẻ quyền cho người khác
-- Có quyền chuyển tiếp các quyền cho User khác
--GRANT INSERT, UPDATE, DELETE, SELECT ON CHITIETDATHANG to Tam
--Thêm user vào role
--sp_addrolemember [Tên role], [Tên User]
--Xóa role
--sp_droprole 'Tam'
--------------------Ghi chú----------------------
--1. Tùy chọn WITH ADMIN OPTION sẽ cho phép người được cấp role/quyền:
--Cấp lại role/quyền đó cho một user hoặc role khác
--(có hoặc không có tùy chọn WITH ADMIN OPTION).
--Thu hồi lại role/quyền đó từ một user hoặc role bất kỳ.
--Thay đổi role đó bằng lệnh ALTER ROLE.
--Xóa role đó.
--2. Dùng từ khóa ALL [PRIVILEGES] khi muốn cấp tất cả các quyền đối tượng
--mà user có trên 1 đối tượng nào đó
--(với điều kiện user phải có quyền cấp những quyền đó):
--Cấp quyền Admin C2: Khi dùng quyền Window authentification
--GRANT ALL PRIVILEGES TO Wibu_admin;