-- 새로운 DB 테이블 만들어서 사용하겠다 선언 하고 사용
CREATE DATABASE mytest1;
USE mytest1;

USE test; -- test 사용한다는 쿼리 선언
SELECT CustomerName FROM Customers WHERE CustomerID = 1;
SELECT CustomerName FROM Customers;

SELECT LastName From Employees;

SELECT CustomerName, ContactName FROM Customers WHERE CustomerID = 1;
SELECT CustomerName, ContactName, Address, City FROM Customers WHERE CustomerID = 1;
SELECT LastName, FirstName FROM Employees WHERE EmployeeID = 1;

SELECT LastName, FirstName FROM Employees;

SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM Suppliers;

SELECT SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, Phone FROM Suppliers;
SELECT
	EmployeeID, LastName, FirstName, BirthDate, Photo, Notes
FROM Employees;

SELECT * FROM Suppliers WHERE Country = 'USA';

DESC Suppliers;

SELECT DISTINCT
	country
FROM
	Suppliers;