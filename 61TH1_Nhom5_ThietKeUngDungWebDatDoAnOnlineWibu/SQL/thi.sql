
alter table monan
ADD Tongtien FLOAT
alter table monan
at
select * from monan

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
													--thêm 1 tổng tiền trong món ăn và khi bán ra 1 hóa đơn thì tự đông cập nhât tổng tiền
													declare @Tongtiencu float = (select tongtien from MONAN where Mamonan = @mamon);
													UPDATE MONAN SET Tongtien = @Tongtiencu + @Giaban where Mamonan = @mamon;
												END
										END
								END
						END
				END
		END
END

GO

create trigger tg_up_monan_tongtien
ON DONDATHANG
INSTEAD OF INSERT
AS
BEGIN