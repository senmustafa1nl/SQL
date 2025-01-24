-- Tüm sütunlardaki verileri, replacement_cost değeri 12.99 ile 16.99 arasında olan filmleri listele
SELECT * 
FROM FILM
WHERE replacement_cost BETWEEN 12.99 and 16.99;

-- Ed, Penelope ve Nick adlı aktörlerin first_name ve last_name bilgilerini getir
select first_name , last_name
from actor
where first_name IN ('Ed','Penelope','Nick' );

-- Rental rate 0.99, 2.99 ve 4.99 olan filmler ve replacement cost 12.99, 15.99, 28.99 olan filmleri listele
select *
from film
where rental_rate in (0.99,2.99,4.99) and replacement_cost in (12.99,15.99,28.99); 
