create table NHACUNGCAP(
   MaNhaCC varchar(30) primary key ,
   TenNhaCC varchar(255) not null,
   DiaCHi text not null,
   SoDT varchar(11) not null unique,
   MaSoThue int not null
);
create table LOAIDICHVU(
  MaLoaiDV varchar(30) primary key ,
  Tenloaidichvu text not null
);
create table DONGXE(
   DongXe varchar(30) primary key,
   Hangxe text not null,
   SoChoNgoi int not null check(Sochongoi >1)
);
create table MUCPHI(
   MaMucPhi varchar(30) primary key,
   DonGia decimal(12,4) not null check(DonGia >= 0),
   MoTa varchar(255)

);
create table DANGKYCUNGCAP(
   MaDKCC varchar(30) primary key,
   NHACUNGCAP_MaNhaCC varchar(30) not null foreign key references NHACUNGCAP(MaNhaCC),
   LOAIDICHVU_MaloaiDV varchar(30) not null foreign key references LOAIDICHVU(MaLoaiDV),
   DONGXE_DongXe varchar(30) not null foreign key references DONGXE(DongXe),
   MUCPHI_MaMucPhi varchar(30) not null foreign key references MUCPHI(MaMucPhi),
   Ngaybatdaucungcap datetime not null check (Ngaybatdaucungcap <= getdate()),
   Ngayketthuccungcap datetime not null check (Ngayketthuccungcap <= getdate()),
   Soluongxedangky varchar(20) not null
);
/* Nhà cung c?p1 */
insert into NHACUNGCAP(MaNhaCC,TenNhaCC,DiaCHi,SoDT,MaSoThue)
values ('NCC001','Cty TNHH Toàn Pháp','Hai Chau','05113999888','568941'),
('NCC002','Cty C? ph?n ?ông Du','Lien Chieu','05113999889','568942'),
('NCC003','Ông Nguy?n V?n An','Hoa Thuan','05113999890','568943'),
('NCC004','Cty C? ph?n toàn c?u xanh','Thanh Khe','05113999891','568944'),
('NCC005','Cty TNHH AMA','Thanh Khe','05113999892','568945'),
('NCC006','Bà Tr?n Th? Bích Vân','Lieu Chieu','05113999893','568946'),
('NCC007','Cty TNHH Phan Thành','Thanh Khe','05113999894','568947'),
('NCC008','Ông Phan ?ình Nam','Hoa Thuan','05113999895','568948'),
('NCC009','T?p ?oàn ?ông Nam Á ','Lien Chieu','05113999896','568949'),
('NCC010','Cty C? ph?n R?ng ?ông','Lien Chieu','05113999897','568950');
select * from NHACUNGCAP;


/*Lo?i D?ch v? 2*/
insert into LOAIDICHVU(MaLoaiDV,Tenloaidichvu)
values ('DV01','D?ch V? Xe taxi'),
('DV02','D?ch V? Xe buýt công c?ng theo tuy?n c? ??nh'),
('DV03','D?ch V? Xe cho thuê theo h?p ??ng');
select * from LOAIDICHVU;

/*Lo?i Dòng xe 3*/
insert into DONGXE(DongXe,Hangxe,SoChoNgoi)
values ('Hiace','Toyota','16'),
('Vios','Toyota','5'),
('Escape','Ford','5'),
('Cerato','KIA','7'),
('Forte','KIA','5'),
('Starex','Huyndai','7'),
('Grand-i10','Huyndai','7');
select * from DONGXE;

/*M?c phí 4*/
insert into MUCPHI(MaMucPhi,DonGia,MoTa)
values ('MP01','10.000','Áp d?ng t? 1/2015'),
('MP02','15.000','Áp d?ng t? 2/2015'),
('MP03','20.000','Áp d?ng t? 1/2010'),
('MP04','25.000','Áp d?ng t? 2/2011');
select * from MUCPHI;

/*DK cung c?p 5 */
insert into  DANGKYCUNGCAP(MaDKCC,NHACUNGCAP_MaNhaCC,LOAIDICHVU_MaloaiDV,DONGXE_DongXe,MUCPHI_MaMucPhi,
Ngaybatdaucungcap,Ngayketthuccungcap,Soluongxedangky)
values('DK001','NCC001','DV01','Hiace','MP01','2015-11-20','2016-11-20',3),
('DK002','NCC002','DV02','Vios','MP02','2015-12-20','2016-12-20',3),
('DK003','NCC003','DV03','Escape','MP03','2015-10-20','2016-10-20',5),
('DK004','NCC005','DV01','Cerato','MP04','2014-11-20','2017-11-20',7),
('DK005','NCC002','DV02','Forte','MP03','2013-11-20','2019-11-20',1),
('DK006','NCC004','DV03','Starex','MP04','2014-11-20','2015-11-20',2),
('DK007','NCC005','DV01','Cerato','MP03','2012-11-20','2015-11-20',8),
('DK008','NCC006','DV01','Vios','MP02','2010-11-20','2019-11-20',9),
('DK009','NCC005','DV03','Grand-i10','MP02','2013-11-20','2015-11-20',10),
('DK010','NCC006','DV01','Forte','MP02','2012-11-20','2015-11-20',4),
('DK011','NCC007','DV01','Forte','MP01','2014-11-20','2019-11-20',5),
('DK012','NCC007','DV03','Cerato','MP01','2018-11-20','2019-11-20',6),
('DK013','NCC003','DV02','Cerato','MP01','2019-11-20','2020-11-20',8),
('DK014','NCC008','DV02','Cerato','MP01','2011-11-20','2019-11-20',1),
('DK015','NCC003','DV01','Hiace','MP02','2012-11-20','2015-11-20',6),
('DK016','NCC001','DV03','Grand-i10','MP02','2013-11-20','2014-11-20',8),
('DK017','NCC002','DV03','Cerato','MP03','2014-11-20','2019-11-20',4),
('DK018','NCC008','DV03','Escape','MP04','2015-11-20','2017-11-20',2),
('DK019','NCC003','DV03','Escape','MP03','2016-11-20','2018-11-20',8),
('DK020','NCC002','DV03','Cerato','MP04','2013-11-20','2019-11-20',7),
('DK021','NCC006','DV01','Forte','MP03','2014-11-20','2015-11-20',9),
('DK022','NCC003','DV02','Cerato','MP04','2012-11-20','2015-11-20',6),
('DK023','NCC002','DV01','Forte','MP03','2013-11-20','2019-11-20',5),
('DK024','NCC003','DV03','Forte','MP04','2014-11-20','2015-11-20',8),
('DK025','NCC003','DV03','Hiace','MP02','2012-11-20','2015-11-20',1);
select * from DANGKYCUNGCAP;

/* Bai tap */
-- bai 3
 select * from DONGXE where SoChoNgoi > 5

 -- bai 4
 
SELECT NCC.MaNhaCC, NCC.TenNhaCC
FROM NHACUNGCAP NCC JOIN DANGKYCUNGCAP DK
ON NCC.MaNhaCC = DK.nhacungcap_MaNhaCC
JOIN MUCPHI MP
ON MP.MaMp = DK.mucphi_MaMP
JOIN DONGXE DX
ON DX.DongXe = DK.dongxe_DongXe
WHERE (DX.HangXe = 'Toyota' and MP.DonGia = 15000) or (DX.HangXe = 'KIA' and MP.DonGia = 20000)

 -- bai 5
 select * from NHACUNGCAP order by TenNhaCC asc, MaSoThue desc;
 
SELECT *
FROM NHACUNGCAP NCC
ORDER BY NCC.TenNhaCC DESC, NCC.MaSoThue ASC

 -- bai 6
 SELECT NHACUNGCAP_MaNhaCC, COUNT(MaDKCC) AS Soluongxedangky
FROM DANGKYCUNGCAP
WHERE NgayBatDauCungCap = '2015-11-20'
GROUP BY NHACUNGCAP_MaNhaCC


-- cau 7
SELECT DISTINCT HangXe
FROM DONGXE


SELECT DX.Hangxe
FROM DONGXE DX
GROUP BY DX.HANGXE

--cau 8

SELECT MaDKCC, MaNhaCC, TenNhaCC, DiaChi, MaSoThue, TenLoaiDV, DonGia,
 NgayBatDauCungCap, NgayKetThucNgayCungCap
FROM NHACUNGCAP NCC JOIN DANGKYCUNGCAP DK 
ON NCC.MaNhaCC = DK.nhacungcap_MaNhaCC
JOIN MUCPHI MP 
ON MP.MaMP = DK.mucphi_MaMP
JOIN LOAIDICHVU DV
ON DV.MaLoaiDV = DK.loaidichvu_MaLoaiDV

-- Cau 9
SELECT NCC.MaNhaCC, NCC.TenNhaCC
FROM NHACUNGCAP NCC 
WHERE NCC.MaNhaCC in (
SELECT DK.nhacungcap_MaNhaCC
FROM DANGKYCUNGCAP DK
WHERE DK.dongxe_DongXe = 'Hiace' or DK.dongxe_DongXe = 'Cerato')

--cau 10
SELECT * FROM NHACUNGCAP
WHERE MaNhaCC NOT IN (SELECT NHACUNGCAP_MaNhaCC FROM DANGKYCUNGCAP)