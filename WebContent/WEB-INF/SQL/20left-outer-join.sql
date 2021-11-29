USE test;

SELECT * FROM mytable27Customer; -- 3,4,5,6
SELECT * FROM mytable28Tel; -- 1,3,4

SELECT * FROM mytable27Customer c LEFT OUTER JOIN mytable28Tel t ON c.id = t.customerId;

-- 전화번호 없는 고객
SELECT *
FROM mytable27Customer c LEFT JOIN mytable28Tel t ON c.id = t.customerId
WHERE t.id IS NULL;

-- 연습 : 주문한적 없는 고객명 조회
-- 사용테이블 : Customers, Orders
SELECT *
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL
ORDER BY c.CustomerName;
SELECT * FROM Employees;
SELECT * FROM Orders;
-- 연습 : 주문 받은 적 없는 직원명 오름차순 조회
-- 사용테이블 : Employees, Orders
SELECT e.LastName, e.FirstName
FROM Employees e LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE o.EmployeeID IS NULL
ORDER BY e.LastName, e.FirstName;