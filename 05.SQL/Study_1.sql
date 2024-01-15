--HOMEWORK 1--
/*
1) Tablo Oluşturma

filmler isminde bir tablo oluşturunuz.
film_isim(varchar(50)), tür(varchar(20)), 
süre(real), imdb(numeric(2,1)) 
sütunları olsun. 


2)  Data ekleme
a-filmler tablosuna tüm fieldlarıyla 3 tane kayıt ekleyiniz.
b-“ ogretmenler” isminde tablo olusturun.
Icinde “kimlik_no”, “isim”, “brans” ve “cinsiyet” field’lari olsun
(uygun data tiplerini kullanınız.).
“ogretmenler” tablosuna bilgileri asagidaki gibi olan kisileri ekleyin.
kimlik_no: 234431223, isim: Ayse Guler, brans : Matematik, cinsiyet: kadin.
kimlik_no: 234431224, isim: Ali Guler, brans : Fizik, cinsiyet: erkek.


3)Var olan tablodan yeni tablo oluşturmak 
 “film_imdb” isminde bir tabloyu  “filmler” tablosundan oluşturunuz.
İçinde “film_isim” ve “imdb” field’lari olsun



4) bazı fieldları olan kayıt ekleme
a-"filmler" tablosuna 
film_isim:"Ayla", “film_imdb”:9.87,
film_isim:"Shrek", “film_imdb”:9.83
olan kayıtları ekleyiniz.

b-“ogretmenler” tablosuna bilgileri 
kimlik_no: 567597624, isim: Veli Guler
olan kişiyi ekleyiniz.
*/


-- 1 
CREATE TABLE filmler (
film_isim varchar(50), 
tur varchar(20), 
süre real, 
imdb numeric(2,1) 
);

--2 

INSERT INTO filmler VALUES('Get Out', 'korku', 2.30, 8.3);
INSERT INTO filmler VALUES('21 Jump Street', 'komedi', 2.20, 6.7);
INSERT INTO filmler VALUES('The Father', 'dram', 3.00, 9.1);

SELECT * FROM filmler;

CREATE TABLE ogretmenler(
KIMLIK_NO REAL, 
ISIM VARCHAR(30), 
BRANS VARCHAR(20), 
CINSIYET VARCHAR(6) 
);

INSERT INTO ogretmenler VALUES(234431223, 'Ayse Guler', 'Matematik', 'kadin');
INSERT INTO ogretmenler VALUES(234431224, 'Ali Guler', 'Fizik', 'erkek');

-- 3 

CREATE TABLE film_imdb AS SELECT film_isim, imdb FROM filmler;

SELECT * FROM film_imdb;

-- 4 

INSERT INTO filmler(film_isim, imdb) VALUES('Ayla',9.87);
INSERT INTO filmler(film_isim, imdb) VALUES('Shrek',9.83);

SELECT * FROM filmler;

INSERT INTO ogretmenler(KIMLIK_NO, ISIM) VALUES(567597624, 'Veli Guler');

SELECT * FROM ogretmenler;
