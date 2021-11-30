-- avg
SELECT AVG(Price) FROM Products;

-- sum
SELECT SUM(Price) FROM Products;

SELECT * FROM Products;
INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUES ('My Prod', 1, 1, '1KG', 0); -- 추가하면 price 평균(avg)바뀜

INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit)
VALUES ('My Prod', 1, 1, '1KG'); -- 추가하면 price null이기 때문에 price평균 바뀌지않음.(null은 평균계산에서 제외)

-- SubQuery사용해 평균값 이하인 상품 목록
SELECT * FROM Products
WHERE Price <= (SELECT AVG(Price) FROM Products)
ORDER BY Price;

-- SubQuery사용해 평균값 이상인 상품 목록
SELECT * FROM Products
WHERE price >= (SELECT AVG(Price) FROM Products)
ORDER BY Price;

-- 1996-07-08에 주문한상품의 총 수량
-- 사용테이블 : Orders, OrderDetails
SELECT count(o.OrderDate)
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
WHERE o.OrderDate = "1996-07-08";