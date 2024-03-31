create database TK_CSDL
use TK_CSDL

create table NHANVIEN
(TenNV varchar (30) not null primary key,
SDT char (10) not null,
DiaChi varchar (50), NgaySinh date,
NgayBatDau date, MucLuong int not null , SoGioLam int,
TongLuong int)

create table DICHVU
(TenDV varchar (30) not null primary key,
DonViTinh varchar (10) not null,
DonGia int not null)

create table KHACHHANG 
(SDTKH char (10) not null primary key,
TenKH varchar (30) not null, 
DiaChiKH varchar (30))
 
create table HOADON 
(MaHD char(5) not null primary key,
SDTKH char (10), TenNV varchar (30),
TenDV varchar (30), SoLuong float, ThanhTien float, 
NgayTraHang date, PhuongThucTT bit, TrangThaiDH varchar (20))

alter table HOADON
add constraint KN1 foreign key (SDTKH) references KHACHHANG (SDTKH)

alter table HOADON
add constraint KN2 foreign key (TenNV) references NHANVIEN (TenNV)

alter table HOADON
add constraint KN3 foreign key (TenDV) references DICHVU (TenDV)

