-- 'city' ve 'country' tablolarını LEFT JOIN ile birleştiriyoruz. 
-- Bu sorgu, her şehir için ülke bilgisini getirir. 
-- Eğer şehirde bir ülke bilgisi yoksa, 'country' sütununda NULL değeri gösterilecektir.
SELECT city, country 
FROM city
LEFT JOIN country ON city.country_id = country.country_id;

-- 'customer' ve 'payment' tablolarını RIGHT JOIN ile birleştiriyoruz. 
-- Bu sorgu, her ödeme kaydını ve o ödemeye ait müşteri bilgilerini gösterir. 
-- Eğer bir müşteri ödemesi yoksa, 'customer' sütunlarında NULL değerleri görünecektir.
SELECT first_name, last_name, payment_id
FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;

-- 'customer' ve 'rental' tablolarını FULL JOIN ile birleştiriyoruz. 
-- Bu sorgu, tüm kiralama işlemleri ile ilgili müşteri bilgilerini gösterir. 
-- Hem kiralama kaydı hem de müşteri kaydı varsa bunlar eşleşir. 
-- Eğer bir müşteri kaydı yoksa, kiralama sütunlarında NULL değerleri, 
-- ya da bir kiralama kaydı yoksa müşteri sütunlarında NULL değerleri görünecektir.
SELECT rental_id, first_name, last_name
FROM customer
FULL JOIN rental ON rental.customer_id = customer.customer_id;
