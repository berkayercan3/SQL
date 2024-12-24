
-- Kullanýlacak veritabanýna geçiþ
USE JoinUpdateSampleDB;

-- 'person' tablosunu oluþturma
CREATE TABLE person (
    person_id INT PRIMARY KEY,
    name NVARCHAR(50),
    city NVARCHAR(50)
);

-- 'orders' tablosunu oluþturma
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    person_id INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

-- 'person' tablosuna veri ekleme
INSERT INTO person (person_id, name, city) VALUES
(101, 'Ali', 'Istanbul'),
(102, 'Ayse', 'Ankara'),
(103, 'Mehmet', 'Izmir'),
(104, 'Zeynep', 'Bursa');

-- 'orders' tablosuna veri ekleme
INSERT INTO orders (order_id, person_id, total_amount) VALUES
(1, 101, 500),
(2, 102, 1200),
(3, 103, 800),
(4, 104, 1500);

-- Güncelleme sorgusu
-- 'orders' tablosundaki 'total_amount' 1000'den büyük olan müþterilerin þehir bilgisini 'Premium City' olarak güncelle
UPDATE person
SET city = 'Premium City'
FROM person
JOIN orders ON person.person_id = orders.person_id
WHERE orders.total_amount > 1000;

-- Sonuçlarý kontrol etme
SELECT * FROM person;
SELECT * FROM orders;
