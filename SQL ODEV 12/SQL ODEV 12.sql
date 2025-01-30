-- 1. Film tablosunda, filmlerin uzunluğunun (length) ortalamanın üzerinde olanların sayısını hesaplayan sorgu
SELECT count(*)  -- Toplamda kaç film olduğunu sayar
FROM film 
WHERE film.length > (  -- Filmin uzunluğunun, ortalamadan büyük olmasını şart koşar
    -- Alt sorgu: Film tablosundaki ortalama uzunluğu hesaplar
    SELECT AVG(film.length)  
    FROM film
);

-- 2. Film tablosunda, rental_rate değeri en yüksek olan filmlerin sayısını hesaplayan sorgu
SELECT COUNT(*)  -- Sayı olarak döndürür, en yüksek rental_rate'e sahip film sayısını
FROM film
WHERE rental_rate = (  -- rental_rate değeri, alt sorguda bulunan en yüksek değere eşit olmalı
    -- Alt sorgu: Film tablosundaki en yüksek rental_rate değerini bulur
    SELECT MAX(rental_rate)  
    FROM film
);

-- 3. Film tablosunda, en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri getirir
SELECT title, rental_rate, replacement_cost  -- Film başlığı, rental_rate ve replacement_cost döndürür
FROM film
WHERE rental_rate = (  -- En düşük rental_rate ile eşleşen filmleri seçer
    SELECT MIN(rental_rate)  -- Film tablosundaki en düşük rental_rate değerini bulur
    FROM film
)  
  AND replacement_cost = (  -- Aynı şekilde, en düşük replacement_cost ile eşleşen filmleri seçer
    SELECT MIN(replacement_cost)  -- Film tablosundaki en düşük replacement_cost değerini bulur
    FROM film
);

-- 4. Payment tablosunda, her müşterinin yaptığı ödeme sayısını ve en fazla ödeme yapan müşterileri listeler
SELECT customer_id, COUNT(*) AS num_payments  -- Müşteri ID'si ve yaptığı ödeme sayısını döndürür
FROM payment
GROUP BY customer_id  -- Ödemeleri müşteri bazında gruplar
ORDER BY num_payments DESC;  -- Ödeme sayısını azalan sırayla sıralar, böylece en fazla ödeme yapan müşteri(ler) ilk sırada yer alır
