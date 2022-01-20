--5.1.1.	Thủ tục trả về kết quả số lượng tài khoản
DELIMITER $$ 
DROP PROCEDURE IF EXISTS `sp_Taikhoan_Soluong`$$
CREATE PROCEDURE sp_Taikhoan_Soluong()
BEGIN
	DECLARE sl INT DEFAULT 0;
    SELECT COUNT(*) INTO sl FROM taikhoan;
    SELECT sl;
END
--5.1.2.	Thủ tục đưa ra nhân viên có số lượng đơn lớn hơn "n"

--5.1.3.	Thủ tục tăng lương cho nhân viên
--5.1.4.	Thủ tục đưa ra các món ăn đã gần hết hàng (hàng tồn <=5)
--Giải phóng để cho phép sử dụng ‘;’ trong thủ tục
DELIMITER $$ 
DROP PROCEDURE IF EXISTS `sp_Monan_Saphet`$$
CREATE PROCEDURE sp_Monan_Saphet()
BEGIN
   SELECT *  FROM monan WHERE soluong < 6;
END;

--5.1.5.	Thủ tục đưa ra các đơn đặt hàng trong ngày "dd/mm/yyyy"
DELIMITER $$
DROP PROCEDURE IF EXISTS `sp_Monan_Saphet`$$
CREATE PROCEDURE sp_Monan_Saphet(IN ngay DATE)
BEGIN
   SELECT * FROM DONDATHANG WHERE Thoigiandatdon = ngay;
END;
--5.1.6.	Thủ tục lấy ra thông tin và tổng số lượng được đặt theo ngày
--5.1.7.	Thủ tục lấy ra thông tin và tổng số lượng món ăn được đặt theo (tháng, năm)
--5.1.8.	Thủ tục tìm đơn hàng theo số điện thoại của khách hàng
--5.1.9.	Thủ tục thay đổi số lượng trong chi tiết đơn đặt hàng
DELIMITER $$
DROP PROCEDURE IF EXISTS `sp_Chitietdathang_Update_Soluong`$$
CREATE PROCEDURE sp_Chitietdathang_Update_Soluong(IN shd INT, IN Mmon INT, IN soluong INT)
BEGIN
UPDATE dbo.CHITIETDATHANG
	SET Soluong = soluong
	WHERE Sohoadon = shd AND mamon = Mmon;
END;