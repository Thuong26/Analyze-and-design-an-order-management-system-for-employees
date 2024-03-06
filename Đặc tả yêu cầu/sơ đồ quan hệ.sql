create database SoDoQuanHe
use SoDoQuanHe

create table HOADON (
MaHoaDon char(10) not null PRIMARY KEY, 
TenQuan varchar(50) not null, 
DiaChiQuan text not null, 
SoDienThoaiQuan char(10) not null, 
NgayOrder char(9) not null,
ID_Nhanvien char(3) not null,
MaDonHang char(5) not null,
MaMon char(2) not null, TenMon varchar(50) not null,
SoLuongMon int not null, Gia float not null,
TamTinh float not null, KhuyenMai float not null, 
TongTien float not null , TienKhachDua float not null, TienTraLai float not null)

create table NHANVIENPHUCVU (
ID_Nhanvien char(3) not null primary key, 
TenNhanVien varchar(50) not null , 
SoDienThoai char(10) not null, 
So_CCCD char(12) not null)

create table NHANVIENPHACHE (
ID_Nhanvien char(3) not null primary key,
TenNhanVien varchar(50) not null, 
SoDienThoai char(10) not null, So_CCCD char(12) not null)

create table QUANLY (TenQuanLy varchar(50) not null primary key, 
So_CCCD char(12) not null, 
SoDienThoai char(10) not null)

create table DONHANG ( MaDonHang char(5) not null primary key,
ID_Nhanvien char(3) not null,  
SoBan char(2) not null, MaMon char(2) not null, 
TenMon VARCHAR(50) not null, 
SoLuongMon int not null, TinhTrangDon bit not null)

create table MONNUOC (MaMon char(2) not null primary key, 
TenMon varchar(50) not null , MoTa text not null, 
HinhAnh binary , TinhTrangMon bit not null)

Alter table HOADON
add constraint FK_NHANVIENPHUCVU foreign key (ID_NhanVien) references NHANVIENPHUCVU(ID_NhanVien)
Alter table HOADON
add constraint FK_DONHANG foreign key (MaDonHang) references DONHANG(MaDonHang)
Alter table DONHANG
add constraint KK_NHANVIENPHUCVU foreign key (ID_NhanVien) references NHANVIENPHUCVU(ID_NhanVien)
Alter table DONHANG
add constraint KK_MONNUOC foreign key (MaMon) references MONNUOC(MaMon)
Alter table DONHANG
add constraint KK_NHANVIENPHACHE foreign key (ID_NhanVien) references NHANVIENPHACHE(ID_NhanVien)