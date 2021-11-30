USE test;

SELECT * FROM Products
ORDER BY Price ASC;

SELECT MIN(Price) AS SmallestPrice FROM Products;
SELECT MAX(Price) LargestPrice FROM Products;

-- 연습
SELECT MIN(BirthDate) EarllyBirth FROM Employees;
SELECT MAX(BirthDate) lateBirth FROM Employees;

-- 쿼리안에 쿼리(nested query)
SELECT * FROM Employees
WHERE BirthDate = (SELECT MIN(BirthDate) FROM Employees); -- 주의: = 연산자 사용시 subquery결과는 단일

-- 연습 : 가장 나중에 태어난 사람(들) 조회
SELECT * FROM Employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM Employees);

-- 연습 : 가장 저렴한 가격의 상품(들) 조회
SELECT * FROM Products
WHERE Price = (SELECT MIN(Price) FROM Products);

-- 연습 : 가장 비싼 가격의 상품 조회
SELECT * FROM Products
WHERE Price = (SELECT MAX(Price) FROM Products);
