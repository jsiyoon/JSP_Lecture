SELECT * FROM Customers ORDER BY CustomerID DESC;
SELECT * FROM Suppliers ORDER BY SupplierID DESC;

UPDATE Customers
SET Address = "yeoksam"
WHERE CustomerID = 101;

UPDATE Customers
Set Address = "Missouri", City = "Kansas"
WHERE CustomerID = 102;

-- JDBC용
UPDATE Customers
SET
	CustomerName = ?,
    ContactName = ?,
    Address = ?,
    City = ?,
	PostalCode = ?,
    Country = ?
WHERE
	CustomerID = ?;
    
UPDATE Suppliers
SET
	SupplierName = ?,
    ContactName = ?,
    Address = ?,
    City = ?,
	PostalCode = ?,
    Country = ?,
    Phone = ?
WHERE
	SupplierID = ?;