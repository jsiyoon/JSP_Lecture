-- A 테이블의 내용을 읽을 때
-- SELECT 와 FROM의 조합으로 작성
-- SELECT : 조회할 열(columns) 명시
-- FROM : TABLE명 작성

SELECT * FROM Customers; -- Customers 테이블 조회

SELECT * FROM Employees; -- Employees 테이블 조회

-- 조회할 열 선택
SELECT LastName, FirstName FROM Employees;

-- 컬럼명은 대소문자 구분x, Table명은 대소문자 구분o
SELECT CustomerName, Country FROM Customers; 
SELECT customername, country FROM Customers;

-- 모든 컬럼 조회: *
SELECT * FROM Customers;

-- 테이블 컬럼(and 제약사항) 조회
DESCRIBE Customers;
DESC Customers;
DESC Employees;
DESC Categories;
