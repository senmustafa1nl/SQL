
Tabii! Az önce yaptığın SQL projesi için uygun bir README.md dosyası örneği hazırlayabiliriz. Bu dosya, projenin amacını, içerdiği sorguları ve nasıl kullanılacağına dair bilgileri içerecek şekilde olacak.

İşte projen için uygun bir README.md dosyası:
# Film Kiralama Veritabanı SQL Sorguları

Bu proje, bir **film kiralama veritabanı** üzerinde çeşitli SQL sorguları yazmak amacıyla hazırlanmıştır. Veritabanı sorguları, film ve müşteri verileri üzerinde filtreleme, veri çekme ve analiz yapma işlemleri içerir.

## İçindekiler

- [Proje Açıklaması](#proje-açıklaması)
- [Sorgular](#sorgular)
- [Kullanım Talimatları](#kullanım-talimatları)
- [Gereksinimler](#gereksinimler)
- [Yazar](#yazar)

## Proje Açıklaması

Bu projede, SQL dilinde yazılmış birkaç sorgu örneği bulunmaktadır. Sorgular, **film kiralama** veritabanındaki çeşitli tablolardan veri çekmeye yönelik olarak tasarlanmıştır. Bu projede kullanılan veritabanı şeması, film ve müşteri bilgilerini içeren iki ana tablodan oluşmaktadır.

### Öne Çıkan Özellikler:
- Film başlıkları ve açıklamalarını çekmek.
- Film uzunluğu, kiralama ücreti ve yenileme maliyeti gibi kriterlere göre filtreleme yapmak.
- Belirli bir isme sahip müşterileri listelemek.
- Film uzunluğu ve kiralama ücretleriyle ilgili koşulları tersine çevirmek.

## Sorgular

Projede yer alan SQL sorguları aşağıda sıralanmıştır:

1. **Film Başlıkları ve Açıklamaları:**
   ```sql
   -- Film tablosundan sadece title (başlık) ve description (açıklama) sütunlarını seçiyoruz
   select title, description
   from film;
Bu sorgu, film tablosundaki tüm filmlerin başlık ve açıklamalarını getirir.
Film Uzunluğu 60 ile 75 Dakika Arasında Olanlar:
 ```sql

-- Film tablosundan uzunluğu 60 ile 75 dakika arasında olan filmleri seçiyoruz
 
select *
from film
where length > 60 AND length < 75;
Bu sorgu, film uzunluğu 60 ile 75 dakika arasında olan filmleri listelemek için kullanılır.
Kiralama Ücreti 0.99 ve Yenileme Maliyeti 12.99 veya 28.99 Olan Filmler:
 ```sql
-- Rental rate (kiralama ücreti) 0.99 ve replacement cost (yenileme maliyeti) ya 12.99 ya da 28.99 olan filmleri seçiyoruz
select *
from film
where rental_rate = 0.99 and (replacement_cost = 12.99 or replacement_cost = 28.99);
Bu sorgu, kiralama ücreti 0.99 ve yenileme maliyeti ya 12.99 ya da 28.99 olan filmleri listeleyecektir.
Adı 'Mary' Olan Müşteriler:
 ```sql
-- Customer tablosundan adı 'Mary' olan tüm müşterileri seçiyoruz
select *
from customer
where first_name = 'Mary';
Bu sorgu, customer tablosundan adı "Mary" olan tüm müşteri bilgilerini getirir.
Belirli Kiralama Ücretleri ve Film Uzunluğu Koşullarını Tersine Çevirmek:
 ```sql
-- Length (uzunluk) 50'den fazla olmayan ve rental_rate (kiralama ücreti) ya 2.99 ya da 4.99 olmayan filmleri seçiyoruz
select *
from film
where NOT (length > 50) AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);
Bu sorgu, uzunluğu 50'den fazla olmayan ve kiralama ücreti 2.99 veya 4.99 olmayan filmleri seçer.
Kullanım Talimatları

Veritabanı Kurulumu:
Projeyi çalıştırmadan önce bir SQL veritabanına ihtiyacınız olacak (MySQL, PostgreSQL veya başka bir SQL uyumlu sistem).
film ve customer tablolarını içeren veritabanı şemasını oluşturun.
SQL Sorgularını Çalıştırma:
Bu SQL sorgularını veritabanınıza aktarın ve çalıştırın. Her sorgu, belirli bir filtreleme veya veri çekme işlemi gerçekleştirecektir.
Sonuçları İnceleme:
Sorguları çalıştırdıktan sonra, sonuçları veritabanı istemciniz veya komut satırında inceleyebilirsiniz.
Gereksinimler

Veritabanı Yönetim Sistemi: MySQL, PostgreSQL veya herhangi bir SQL uyumlu sistem.
SQL Bilgisi: Temel SQL sorguları ve filtreleme işlemleri hakkında bilgi sahibi olmak.
Yazar




---

### Açıklamalar:

- **Başlıklar ve Alt Başlıklar:** Projenin genel açıklamasını ve sorguları kolayca ayırt edebilmek için başlıklar ve alt başlıklar kullanılmıştır.
- **Kod Bloğu:** SQL sorguları, GitHub üzerinde düzgün bir şekilde görüntülenebilmesi için ` ```sql` ve ` ``` ` ile kod bloğu içine alınmıştır.
- **Kısa Açıklamalar:** Her sorgunun altında, ne iş yaptığına dair kısa bir açıklama eklenmiştir.

### README.md Dosyasının Özellikleri:
- **Proje Açıklaması:** Projenin amacını ve kapsamını net bir şekilde açıklar.
- **SQL Sorguları:** Projede kullanılan SQL sorguları ve her birinin işlevi.
- **Kullanım Talimatları:** Kullanıcıların projeyi nasıl kullanacaklarına dair adımlar.
- **Gereksinimler:** Projeyi çalıştırmak için gereken araçlar ve bilgiler.
- **Yazar:** Projenin sahibi veya geliştiricisi hakkında bilgi.

Bu şekilde, projeni GitHub’a yüklediğinde, başkaları proje hakkında daha fazla bilgi edinebilir ve nasıl kullanacaklarına dair adımları takip edebilir.

