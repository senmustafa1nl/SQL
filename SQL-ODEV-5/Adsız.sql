-- İlk sorgu: Başlığı 'n' harfi ile biten filmleri seçer, film uzunluğuna göre azalan sırada sıralar.
select *
FROM film
WHERE TITLE LIKE '%n'
ORDER BY LENGTH DESC
LIMIT 5;

-- İkinci sorgu: Başlığı 'n' harfi ile biten filmleri seçer, film uzunluğuna göre artan sırada sıralar.
-- İlk 5 kaydı atlar (OFFSET 5) ve sonraki 5 kaydı getirir (LIMIT 5).
select *
FROM film
WHERE TITLE LIKE '%n'
ORDER BY LENGTH
OFFSET 5
LIMIT 5;

-- Üçüncü sorgu: store_id = 1 olan müşterileri seçer, soyadına göre azalan sırada sıralar
-- ve sadece 4 müşteri kaydını getirir.
select *
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
