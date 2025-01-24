-- 'country' tablosundaki, adı 'a' ile başlayıp 'a' ile biten tüm ülkeleri seçer
SELECT *
FROM country
WHERE country ILIKE 'a%a';

-- 'country' tablosundaki, adı tam olarak 5 karakter uzunluğunda ve sonu 'N' ile biten tüm ülkeleri seçer
SELECT *
FROM COUNTRY 
WHERE COUNTRY ILIKE '_____N';

-- 'film' tablosundaki, film adlarında 't' harfini içeren tüm filmleri seçer (büyük/küçük harfe duyarsız)
SELECT title
FROM film
WHERE title ILIKE '%t%';

-- 'film' tablosundaki, film adı 'c' harfiyle başlayan, uzunluğu 90'dan büyük ve kiralama ücreti 2.99 olan filmleri seçer
SELECT * 
FROM FILM
WHERE title ILIKE 'c%' and (length > 90) and (rental_rate = 2.99);
