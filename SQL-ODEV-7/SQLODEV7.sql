-- İlk sorgu: Film tablosundaki tüm rating (değerlendirme) kategorilerini gruplar.
SELECT rating
FROM film
GROUP BY rating;

-- İkinci sorgu: Film tablosundaki her bir replacement_cost (değişim bedeli) değeri için,
-- 50'den fazla filme sahip olanları sayar. 
-- Yalnızca count(*) > 50 olan gruplar döndürülür.
SELECT replacement_cost, COUNT(*)
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

-- Üçüncü sorgu: customer tablosundaki store_id (mağaza kimliği) sütununa göre gruplama yapar
-- ve her mağaza için müşteri sayısını döndürür.
SELECT COUNT(store_id)
FROM customer
GROUP BY store_id;

-- Dördüncü sorgu: city tablosundaki her bir country_id (ülke kimliği) için, 
-- o ülkedeki şehir sayısını hesaplar. En fazla şehri olan ülke ilk sırada döndürülür.
SELECT country_id, COUNT(city)
FROM city
GROUP BY country_id
ORDER BY COUNT(city) DESC
LIMIT 1;
