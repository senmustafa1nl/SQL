-- İlk sorgu: Tüm filmlerin ortalama kiralama bedelini hesaplar.
SELECT AVG(rental_rate)
FROM FILM;

-- İkinci sorgu: Başlığı 'C' harfiyle başlayan filmlerin sayısını döndürür.
SELECT COUNT(*)
FROM film
WHERE title LIKE 'C%';

-- Üçüncü sorgu: Kiralama bedeli 0.99 olan filmlerden en uzun olanının süresini getirir.
SELECT MAX(length)
FROM film
WHERE rental_rate = 0.99;

-- Dördüncü sorgu: Uzunluğu 150 dakikadan fazla olan filmlerin replacement_cost (değişim bedeli) sütununda 
-- kaç adet değer bulunduğunu sayar.
SELECT COUNT(replacement_cost)
FROM film
WHERE length > 150;
