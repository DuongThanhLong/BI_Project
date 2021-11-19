-- Tao bang NguonDuLieu

create table NguonDuLieu
(
	MaNguon int primary key,
	TenNguonDuLieu varchar(50),
	NgayTao datetime,
	NgayCapNhat datetime
)

insert into NguonDuLieu (MaNguon, TenNguonDuLieu, NgayTao, NgayCapNhat)
values (1, 'BI_Data', getdate(), getdate())