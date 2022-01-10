------------------------Rằng buộc------------------------

USE DB_Wibu;

GO

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
ALTER TABLE dbo.LOAI
ADD CONSTRAINT pk_loai PRIMARY KEY(Maloai);
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
ALTER TABLE dbo.MONAN
ADD CONSTRAINT fk_monan_loai FOREIGN KEY(Maloai) REFERENCES LOAI(Maloai);
ALTER TABLE DONDATHANG
ADD CONSTRAINT fk_dondathang_khachhang FOREIGN KEY (Makhachhang) REFERENCES KHACHHANG(Makhachhang);
ALTER TABLE DONDATHANG
ADD CONSTRAINT fk_dondathang_nhanvien FOREIGN KEY (Manhanvien) REFERENCES NHANVIEN(Manhanvien);
ALTER TABLE CHITIETDATHANG
ADD CONSTRAINT fk_chitietdathang_dondathang FOREIGN KEY (Sohoadon) REFERENCES DONDATHANG(Sohoadon);
ALTER TABLE CHITIETDATHANG
ADD CONSTRAINT fk_chitietdathang_monan FOREIGN KEY (Mamon) REFERENCES MONAN(Mamonan);
---------------------------------------------------------------------------------
SELECT * FROM TAIKHOAN
SELECT * FROM NHANVIEN
SELECT * FROM KHACHHANG
SELECT * FROM LOAI
SELECT * FROM MONAN
SELECT * FROM DONDATHANG
SELECT * FROM CHITIETDATHANG
