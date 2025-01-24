-- Film tablosundan sadece title (başlık) ve description (açıklama) sütunlarını seçiyoruz
select title, description
from film;

-- Film tablosundan uzunluğu 60 ile 75 dakika arasında olan filmleri seçiyoruz
select *
from film
where length > 60 AND length < 75;

-- Rental rate (kiralama ücreti) 0.99 ve replacement cost (yenileme maliyeti) ya 12.99 ya da 28.99 olan filmleri seçiyoruz
select *
from film
where rental_rate = 0.99 and (replacement_cost = 12.99 or replacement_cost = 28.99);

-- Customer tablosundan adı 'Mary' olan tüm müşterileri seçiyoruz
select *
from customer
where first_name = 'Mary';

-- Length (uzunluk) 50'den fazla olmayan ve rental_rate (kiralama ücreti) ya 2.99 ya da 4.99 olmayan filmleri seçiyoruz
select *
from film
where NOT (length > 50) AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);






