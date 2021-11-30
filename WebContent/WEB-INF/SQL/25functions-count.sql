USE test;

-- count : 개수
-- customers테이블의 row수
SELECT count(*) FROM Customers;
SELECT * FROM Customers;
SELECT  count(CustomerID) FROM Customers;
SELECT count(ContactName) FROM Customers; -- null은 count안함
SELECT * FROM Customers WHERE ContactName IS NULL;

SELECT * FROM Customers ORDER BY Country;
SELECT count(DISTINCT Country) FROM Customers;

-- 연습 : Suppliers 의 city컬럼의 값이 중복없이 몇개 있는지
SELECT count(DISTINCT City) FROM Suppliers;

-- 연습 : Suppliers의 country컬럼의 값이 중복없이 몇개 있는지
SELECT count(DISTINCT Country) FROM Suppliers;

-- 연습 : seafood가 몇번 주문되었는지 조회
SELECT count(ct.CategoryName)
FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
                 JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = "Seafood";

SELECT * FROM Customers;
SELECT * FROM Suppliers;
SELECT * FROM Products;
SELECT * FROM OrderDetails;
SELECT * FROM Categories;
-- 연습 : seafood를 한번이라도 주문한적 있는 고객수
SELECT count(DISTINCT c.CustomerName)
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
				 JOIN OrderDetails od ON o.OrderID = od.OrderID
                 JOIN Products p ON od.ProductID = p.ProductID
                 JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = "Seafood";
