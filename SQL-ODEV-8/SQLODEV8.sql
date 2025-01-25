-- İlk sorgu: employee tablosunda id'si 25 olan çalışanın adını 'Mustafa' olarak günceller.
UPDATE employee
SET name = 'Mustafa'
WHERE id = 25;

-- İkinci sorgu: employee tablosunda adı 'Joanie' olan çalışanların soyadını 'SEN' olarak günceller.
UPDATE employee
SET surname = 'SEN'
WHERE name = 'Joanie';

-- Üçüncü sorgu: employee tablosunda adı 'Mustafa' olan çalışanın doğum tarihini '1999-08-30' olarak günceller.
UPDATE employee
SET birthday = '1999-08-30'
WHERE name = 'Mustafa';

-- Dördüncü sorgu: employee tablosunda soyadı 'Pow' olan çalışanın adını 'Sener' olarak günceller.
UPDATE employee
SET name = 'Sener'
WHERE surname = 'Pow';

-- Beşinci sorgu: employee tablosunda adı 'Sener' olan çalışanın doğum tarihini '1969-10-23' olarak günceller.
UPDATE employee
SET birthday = '1969-10-23'
WHERE name = 'Sener';

-- Altıncı sorgu: employee tablosunda adı 'Lyn' olan çalışanı siler.
DELETE FROM employee
WHERE name = 'Lyn';

-- Yedinci sorgu: employee tablosunda id'si 31 olan çalışanı siler.
DELETE FROM employee
WHERE id = '31';

-- Sekizinci sorgu: employee tablosunda soyadı 'Morrill' olan çalışanı siler.
DELETE FROM employee
WHERE surname = 'Morrill';

-- Dokuzuncu sorgu: employee tablosunda doğum tarihi '2011-07-28' olan çalışanı siler.
DELETE FROM employee
WHERE birthday = '2011-07-28';

-- Onuncu sorgu: employee tablosunda e-posta adresi 'iadamou11@tiny.cc' olan çalışanı siler.
DELETE FROM employee
WHERE email = 'iadamou11@tiny.cc';

-- Son sorgu: employee tablosundaki tüm verileri görüntüler (sorgu sonrasında tablodaki güncel durumu kontrol eder).
SELECT * FROM employee;
