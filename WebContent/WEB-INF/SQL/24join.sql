USE test;

SELECT * FROM Categories;
SELECT * FROM Products;

SELECT p.ProductID, p.ProductName, c.CategoryName, p.Unit, p.Price
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
ORDER BY 1, 2;

SELECT  c.CategoryName, p.ProductName, p.Unit, p.Price
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
ORDER BY 1, 2;

-- 3개 테이블 조인(Orders, Customers, Employees)

SELECT c.CustomerName, o.OrderDate, o.EmployeeID, e.LastName, e.FirstName
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID
ORDER BY 1;

-- 어떤 고객이 어떤 배송자(shipper)를 사용했는지 조회
-- 컬럼 : 고객명, 주문날짜, 배송자명, 배송자 전화번호
-- 테이블 : Customers, Orders, Shippers

SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Shippers;

SELECT c.CustomerName, o.OrderDate, s.ShipperName, s.Phone , e.LastName, e.FirstName
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
				 JOIN Shippers s ON s.ShipperID = o.ShipperID
				 JOIN Employees e ON e.EmployeeID = o.EmployeeID
ORDER BY 2, 1;

-- 주문 상세 내용도 추가 조회
SELECT c.CustomerName, o.OrderDate, p.ProductName, ct.CategoryName, od.Quantity, s.ShipperName, s.Phone
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
				 JOIN Shippers s ON s.ShipperID = o.ShipperID
				 JOIN OrderDetails od ON o.OrderID = od.OrderID
                 JOIN Products p ON od.ProductID = p.ProductID
                 JOIN Categories ct ON p.CategoryID = ct.CategoryID
ORDER BY 2, 1;