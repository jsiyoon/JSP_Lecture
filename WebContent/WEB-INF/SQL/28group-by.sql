SELECT count(CustomerID) FROM Customers;

SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country ORDER BY 1;

-- 나라별 supplier수 조회
SELECT Country, count(SupplierID) FROM Suppliers
GROUP BY Country ORDER BY 1;

-- 가장 많은 고객이 있는 나라들 조회
SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country ORDER BY 2 DESC;

SELECT * FROM (SELECT Country, count(CustomerID) Count FROM Customers
GROUP BY Country)B
WHERE
	count = (SELECT MAX(Count) 
    FROM(
    SELECT Country, count(CustomerID) Count FROM Customers
    GROUP BY Country
) A);

-- 가장 적은 고객이 있는 나라들
SELECT * FROM(SELECT Country, count(CustomerID) Count FROM Customers
GROUP BY Country)B
WHERE count = (SELECT MIN(Count) FROM (SELECT count(CustomerID) Count FROM Customers
GROUP BY Country)A) ORDER BY Country DESC;

-- 연습 : 고객별 주문 수 조회
-- table : Customers, Orders
SELECT CustomerID, count(OrderID) '주문 수' FROM Orders
GROUP BY CustomerID ORDER BY 2;

-- 고객이름도 같이 조회
SELECT o.CustomerID, c.CustomerName, count(o.OrderID) '주문 수' 
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID ORDER BY 1;

-- 고객별로 총 주문한 수량
-- Orders , OrderDetails

SELECT o.CustomerID, c.CustomerName, sum(od.Quantity) '주문수량'
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY o.CustomerID ORDER BY 1;