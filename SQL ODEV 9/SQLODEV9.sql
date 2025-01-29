-- Şehir ve ülke bilgilerini birleştirip, sonuçları ülke adına göre sıralar
SELECT * 
FROM city  -- 'city' tablosundaki tüm verileri seçiyoruz
JOIN country ON country.country_id = city.country_id  -- 'country' ve 'city' tablolarını 'country_id' üzerinden birleştiriyoruz
ORDER BY country;  -- Sonuçları 'country' tablosuna göre sıralıyoruz, burada sıralama ülke adına göre yapılacak

-- Müşteri ve ödeme bilgilerini birleştirip, ödeme bilgilerini seçer
SELECT payment_id, first_name, last_name  -- Ödeme ID'si ve müşteri adı, soyadı bilgilerini seçiyoruz
FROM customer  -- 'customer' tablosundan verileri alıyoruz
JOIN payment ON payment.customer_id = customer.customer_id;  -- 'payment' ve 'customer' tablolarını 'customer_id' üzerinden birleştiriyoruz

-- Kiralama ve müşteri bilgilerini birleştirip, kiralama işlemlerini listeleyip, müşteri bilgilerini alır
SELECT rental_id, first_name, last_name  -- Kiralama ID'si ve müşteri adı, soyadı bilgilerini seçiyoruz
FROM rental  -- 'rental' tablosundaki verileri alıyoruz
INNER JOIN customer ON customer.customer_id = rental.customer_id;  -- 'rental' ve 'customer' tablolarını 'customer_id' üzerinden iç birleştirme yapıyoruz
