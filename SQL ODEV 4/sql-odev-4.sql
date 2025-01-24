-- 'film' tablosundaki 'replacement_cost' sütunundaki benzersiz (unique) değerleri listeler.
SELECT DISTINCT replacement_cost 
FROM film;

-- 'film' tablosundaki 'replacement_cost' sütunundaki benzersiz (unique) değerlerin sayısını döndürür.
SELECT COUNT(DISTINCT replacement_cost) 
FROM film;

-- 'film' tablosunda, başlığı 'T' harfi ile başlayıp, rating'i 'G' olan filmlerin sayısını döndürür.
SELECT COUNT(*)
FROM film 
WHERE title ILIKE 'T%' AND rating = 'G';

-- 'city' tablosundaki 'city' sütununda adı 'R' harfi ile biten şehirlerin sayısını döndürür.
SELECT COUNT(*)
FROM CITY
WHERE CITY ILIKE '%R';
