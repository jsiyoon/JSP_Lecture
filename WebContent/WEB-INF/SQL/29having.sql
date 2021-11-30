USE test;

SELECT Country, count(CustomerID) People FROM Customers
GROUP BY Country
HAVING count(CustomerID) >= 10;

SELECT Country, count(CustomerID) People FROM Customers
GROUP BY Country
HAVING People >= 10; -- GROUP함수의 조건은 WHERE로 사용불가, HAVING절로 사용

-- 연습 : 주문을 한번만 한사람들 조회(Customers, Orders테이블 사용)
SELECT c.CustomerID, c.CustomerName, count(o.CustomerID) Count
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
HAVING Count = 1;

-- 연습 : 주문을 한번만 또는 한번도 안한 사람들 조회(CstomerID, CustomerName, 주문수)
SELECT c.CustomerID, c.CustomerName, count(o.CustomerID) Count
FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP bY c.CustomerID
HAVING Count <= 1 ORDER BY Count;

-- 연습 :  주문을 한번 또는 0번 받은 직원들 조회
SELECT e.EmployeeID, e.LastName, e.FirstName, count(o.EmployeeID) Count
FROM Employees e LEFT JOIN Orders o ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
HAVING Count <= 1;

SELECT Country, City, Count(CustomerID)
FROM Customers
GROUP BY Country, City;

-- 연습 : 상품별 판매수량(OrderDetails, Products)
SELECT p.ProductID, p.ProductName, sum(od.Quantity) '판매수량'
FROM Products p JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductID;

-- 연습 : 상품별 매출액 (수량 * price)
SELECT p.productID, p.ProductName, sum(od.Quantity) * p.Price '매출액'
FROM Products p JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductID;

-- 연습 : 날짜별 매출액 (Orders, OrderDetails, products)
SELECT o.OrderDate, p.ProductName, od.Quantity '판매수량', sum(od.Quantity * p.Price) '매출액'
FROM Products p JOIN OrderDetails od ON p.ProductID = od.ProductID
JOIN Orders o ON o.OrderID = od.OrderID
GROUP BY o.OrderDate;