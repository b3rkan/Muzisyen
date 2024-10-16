CREATE DATABASE mydata;
USE mydata              /*Database oluşturma ve aktif hale getirme.*/


CREATE TABLE Muzisyenler (
muzisyen_id INT,
ad VARCHAR(50),
soy_ad VARCHAR(50),
album_sayisi INT,
album_tarihi DATE
);                             /*Muzisyenler adlı table ve içindeki verilerin kurulumu*/


INSERT INTO Muzisyenler
VALUES (1,"Şebnem","Ferah",17,"2018-01-03"),
(2,"Elvis", "Presley",70,"1977-04-02"),
(3,"Ogün","Sanlısoy",7,"2024-02-03"),
(4,"James","Hetfield","12","2023-01-01"),
(5,"Barry","White",14,"1983-04-12"),
(6,"Ozzy","Osbourne",12,"2018-04-05"),
(7, "Pink","Floyd",14,"2013-12-11"),
(8,"Led","Zeppelin",9,"1976-12-04"),
(9,"Jimi","Hendrix",11,"1980-06-04"),
(10,"John","Lennon",13,"1984-03-08");             /*Muzisyenler adlı tabledaki veriler*/
       
SELECT * FROM Muzisyenler;                



SELECT ad,soy_ad 
FROM Muzisyenler;   
/* 1. Sorgu: Muzisyenler tableından adı ve soyadı sorgulama.*/



SELECT * FROM Muzisyenler
WHERE muzisyen_id = 1
/*2.Sorgu: id si 1 olan müzisyeni gösteren sorgu.*/



SELECT * FROM Muzisyenler
WHERE ad = "James";
 /*3. Sorgu: Adı James olan müzisyeni(müzisyenleri) sorgulama.*/



SELECT * FROM Muzisyenler
WHERE album_sayisi >=10;
/*4. Sorgu: Albüm sayısı 10 veya 10dan büyük olan müzisyenlerin sorgusu.*/



SELECT * FROM Muzisyenler
WHERE album_sayisi <=10;
/*5. Sorgu: Albüm sayısı 10 veya 10dan küçük olan müzisyenlerin sorgusu.*/


SELECT * FROM Muzisyenler
WHERE muzisyen_id >= 5;
/*6. Sorgu: id si 5 veya 5 den yüksek olan müzisyenlerin sorgusu.*/


SELECT * FROM Muzisyenler
WHERE muzisyen_id < 5 ;
/*7. Sorgu: id si 5 den küçük olan müzisyenlerin sorgusu.*/


SELECT * FROM Muzisyenler
WHERE album_tarihi < "2020-01-01" ;
/*8. Sorgu: Albüm tarihi 2020'den önce çıkan müzisyenlerin sorgusu.*/


SELECT * FROM Muzisyenler
WHERE album_tarihi > "2020-01-01" ;
 /*9. Sorgu: Albüm tarihi 2020'den sonra çıkan müzisyenlerin sorgusu.*/


SELECT * FROM Muzisyenler
WHERE album_tarihi < "1990-01-01" ;
/*10. Sorgu: Albüm tarihi 1990'dan önce çıkan müzisyenlerin sorgusu.*/


SELECT soy_ad 
FROM Muzisyenler
/*11. Sorgu: Müzisyenlerin soy adını sorgulama.*/


SELECT muzisyen_id
FROM Muzisyenler
/*12.Sorgu:  Müzisyenlerin id sini sorgulama.*/



SELECT ad,soy_ad,album_sayisi
FROM Muzisyenler
/*13. Sorgu: Müzisyenlerin adını soyadını ve albüm sayılarını sorgulama.*/


SELECT ad,album_tarihi
FROM Muzisyenler
 /*14. Sorgu: Müzisyenlerin adını ve albüm tarihlerini sorgulama.*/



SELECT * FROM Muzisyenler
WHERE muzisyen_id in (2,3,5,7)
/*15.Sorgu: 2,3,5 ve7. iddeki müzisyenleri sorgulama.*/


SELECT * FROM Muzisyenler
WHERE muzisyen_id  between 1 and 5
/*16.Sorgu: 1 ve 5 arasındaki müzisyenleri sorgulama.*/


SELECT * FROM Muzisyenler
WHERE muzisyen_id  between 7 and 10
 /*17. Sorgulama: 7 ve 10 arasındaki müzisyenleri sorgulama.*/


SELECT * FROM Muzisyenler
WHERE album_tarihi  between "1977-01-01" and "1990-01-01"
 /*18. Sorgulama Albüm tarihleri 1977 ile 1984 arasında olan müzisyenleri sorgulama.*/


SELECT * FROM Muzisyenler
WHERE album_tarihi  between "1984-01-01" and "2018-01-01"
/*19. Sorgu: Albüm tarihleri 1984 ile 2018 tarihleri arasında olan müzisyenleri sorgulama.*/


SELECT * FROM Muzisyenler
ORDER BY muzisyen_id asc
/*20.Sorgu: id sayılarına göre müzisyenleri sorgulama.*/


SELECT * FROM Muzisyenler
ORDER BY album_tarihi
/*21.Sorgu: albüm tarihlerine göre müzisyenleri sorgulama.*/


SELECT * FROM Muzisyenler
ORDER BY album_sayisi
 /*22. Sorgu: albüm sayılarına göre müzisyenleri sorgulama.*/


SELECT * FROM Muzisyenler
ORDER BY soy_ad
/*23.Sorgu: soy adlarına göre müzisyenleri sorgulama*/


SELECT * FROM Muzisyenler
ORDER BY ad
 /*24. Sorgu: alfabetik şekilde adlarına göre müzisyenleri sorgulama*/


SELECT * FROM Muzisyenler
WHERE album_sayisi in (10,11,12,13,14) ORDER BY album_sayisi
/*25. Sorgu: 10,11,12,13,14 albümü olan müzisyenleri azdan çoğa doğru sıralayan sorgu.*/
