USE test;

SELECT * FROM mytable27Customer; -- 3,4,5,6
SELECT * FROM mytable28Tel; -- 1,3,4

SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerID;

-- 주인없는 번호
SELECT * FROM mytable27Customer c RIGHT JOIN mytable28Tel t ON c.id = t.customerID WHERE c.id IS NULL;

SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM Orders;

-- 연습 : 주문한 적 없는 고객명 오름차순 조회
-- 사용테이블 : Customers, Orders
SELECT c.CustomerName
FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL;

-- 연습 : 주문받은 적 없는 직원명 오름차순 조회
-- 사용테이블 : Employees, Orders
SELECT e.LastName, e.FirstName
FROM Orders o RIGHT JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.EmployeeID IS NULL ORDER BY e.LastName, e.FirstName;