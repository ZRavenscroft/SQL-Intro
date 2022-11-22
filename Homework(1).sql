CREATE DATABASE Store

USE Store

CREATE TABLE Products(
Id INT,
PrName NVARCHAR(30),
Price DECIMAL(18,2)
)

ALTER TABLE Products
ADD BrandName NVARCHAR(40)

INSERT INTO Products
VALUES
(1, 'Coca-Cola 1Lt', 1.5, 'Coca-Cola'),
(2, 'Fanta 1Lt', 1.5, 'Coca-Cola'),
(3, 'Lays Kebab', 2.7, 'Lays'),
(4, 'Dirol Mentol', 0.6, 'Dirol'),
(5, 'Orbit Mentol', 0.6, 'Orbit'),
(6, 'Sobranie', 4, 'AZTABAK'),
(7, 'Corek', 0.65, 'BINA'),
(8, 'Bonaqua 1Lt', 1, 'Coca-Cola'),
(9, 'Snikers', 0.8, 'ShokolatFabrikasi'),
(10, 'Bounty', 0.8, 'ShokolatFabrikasi')

SELECT * FROM Products WHERE Price<(SELECT AVG(Price) FROM Products)

SELECT * FROM Products WHERE Price>10

SELECT * FROM Products WHERE LEN(BrandName)>5

ALTER TABLE Products
ALTER COLUMN BrandName NVARCHAR(40) NOT NULL

ALTER TABLE Products
ADD CHECK (LEN(BrandName)>2)