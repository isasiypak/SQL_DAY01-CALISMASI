-- database olusturma islemini buradanda yapabiliriz
create database techproed; 
-- hangi datata calismak istiyorsaniz o datanin uzerine gelip browser yazisinin yanindaki query tool  isaretine basin tiklayin.


--DDL - DATA DEFINATION LANGUAGE
-- CREATE TABLO OLUSTURMA 

create table ogrenciler(
ogrenci_no char(4), -- EGER UZUNLUGUNU BILIYORSAK char data tipi kullaniyoruz
	Isim_soyisim varchar(50), -- uzunlugunu bilmiyorsak varchar kullaniriz
	not_ort real, -- kusaratli sayilari icin kullanilir tipki double gibi
	kayit_tarihi date --tarih kullaniminda bu sekilde yapariz ve en sondaki dataya virgul konulmaz
);
-- var olan tablodan baska bir tablo olusturmak icin kullaniriz yani yeniden tablo olusturmaya gerek yoktur.
create table ogrenci_ortalamalari 
as select Isim_soyisim,not_ort from ogrenciler;

-- tum fieldlara veri ekleme
INSERT INTO ogrenciler Values('2801','isa siypak',99.50,now());

INSERT INTO ogrenciler Values('2801','isa siypak',99.50,'2022-12-01');

-- parcali veri ekleme
--sadece ekleyecegimiz verilerin fieldlarini yazariz burada sadece isim soyisim ve ogrenci no ya ekleme
-- yaptigimiz icin sectik 
INSERT INTO ogrenciler(Isim_soyisim,ogrenci_no) Values ('Halenur Siypak','1535');

select * from ogrenciler; --tablolarin hepsini gosterir ogrenciler tablosundan tum verileri sec demektir
-- * isareti tum veriler demektir.














