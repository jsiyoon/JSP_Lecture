USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;
SELECT * FROM Suppliers ORDER BY SupplierID DESC;

DELETE FROM Customers WHERE CustomerID = 98;
DELETE FROM Customers WHERE Address = 'Apple';

DELETE FROM Customers; -- xxxxx

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;