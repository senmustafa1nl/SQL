-- 1. actor ve customer tablolarındaki first_name sütunlarını birleştirerek (tekrarlar dahil) tüm verileri almak
(SELECT first_name 
FROM actor)
UNION ALL  -- Tüm verileri, tekrarları dahil alır
(SELECT first_name
FROM customer);

-- 2. actor ve customer tablolarındaki ortak (kesişen) first_name verilerini almak
(SELECT first_name 
FROM actor)
INTERSECT  -- Sadece her iki tabloda da bulunan verileri getirir
(SELECT first_name
FROM customer)
ORDER BY first_name;  -- Sonuçları first_name'e göre sıralar

-- 3. actor tablosundaki ancak customer tablosunda olmayan first_name verilerini almak
(SELECT first_name
FROM actor)
EXCEPT  -- İlk tabloda olup ikinci tabloda olmayan verileri getirir
(SELECT first_name
FROM customer)
ORDER BY first_name;  -- Sonuçları first_name'e göre sıralar

-- 4. actor ve customer tablolarındaki kesişen first_name verilerini almak (JOIN ile)
SELECT actor.first_name
FROM actor
JOIN customer ON actor.first_name = customer.first_name  -- Her iki tabloda da bulunan first_name değerleriyle eşleştir
ORDER BY first_name;  -- Sonuçları first_name'e göre sıralar

-- 5. actor tablosundaki tüm first_name'leri almak, customer tablosunda varsa göster
SELECT customer.first_name
FROM actor
LEFT JOIN customer ON actor.first_name = customer.first_name  -- Actor tablosundaki her first_name'e karşılık gelen customer.first_name değerlerini al
ORDER BY first_name;  -- Sonuçları first_name'e göre sıralar
