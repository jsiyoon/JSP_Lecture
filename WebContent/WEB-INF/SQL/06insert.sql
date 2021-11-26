USE test;

SELECT * FROM Customers;

SELECT * FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers VALUES(92, 'Kim', 'Kim', 'GangNam', 'Seoul', '88888', 'korea');

INSERT INTO Customers (CustomerID, CustomerName) VALUES(93, 'Lee');

INSERT INTO Customers (CustomerID, CustomerName) VALUES (94, 'choi');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES('95', 'Park', 'JiSung', 'yeoksam', 'Seoul', '77777', 'Korea');

INSERT INTO Customers VALUES('96', 'Jimin', 'Apartment', 'Seocho', 'Seoul', '12345', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('97', 'bts', 'CentralPark', 'Manhattan', 'NY', '54321', 'USA');

INSERT INTO Customers(CustomerName) VALUES('blockb');

INSERT INTO Customers(CustomerName, Address) VALUES('Steven','Apple');

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('bts', 'CentralPark', 'Manhattan', 'NY', '54321', 'USA');

SELECT * FROM Suppliers ORDER BY SupplierID DESC;

INSERT INTO Suppliers(SupplierName, ContactName, Address, City, PostalCode, Country, Phone)
VALUES('bts', 'CentralPark', 'Manhattan', 'NY', '54321', 'USA','1244789');

INSERT INTO Suppliers(SupplierName, Address)
VALUES('steven', 'USA');
