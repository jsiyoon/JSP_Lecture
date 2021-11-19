SELECT * FROM Customers;

-- WHERE : 조건에 해당하는 행(row, record)만 필터

SELECT * FROM Customers WHERE Country = 'Brazil'; -- sql에서 문자열 작은 따옴표 사용

-- Customers 테이블에서 Country가 France인 행만 조회(컬럼명 대소문자 구분x)
SELECT * FROM Customers WHERE Country = 'France';
SELECT * FROM Customers WHERE Country = 'france';

-- where에서 사용할 수 있는 연산자들
SELECT * FROM Customers WHERE CustomerID > 50;
SELECT * FROM Customers WHERE CustomerID < 5;

SELECT * FROM Customers WHERE CustomerID >=89;
SELECT * FROM Customers WHERE CustomerID <= 5;

SELECT * FROM Customers WHERE CustomerID <> 1; -- 같지 않다
SELECT * FROM Customers WHERE CustomerID != 1; -- 같지 않다.

SELECT * FROM Employees WHERE EmployeeID < 5;
SELECT * FROM Employees WHERE EmployeeID >= 7;

SELECT * FROM Employees WHERE EmployeeID <> 3;
SELECT * FROM Employees WHERE EmployeeID != 9;

-- 비교 연산 사용시 주의
SELECT * FROM Customers WHERE CustomerID = 1; -- number와 string연산시 형변환 일어남(string --> number)
SELECT * FROM Customers WHERE CustomerID = '1';

SELECT * FROM Customers WHERE CUstomerID <= '3';

SELECT * FROM Customers WHERE Country >='Mexico'; -- 사전순(캐릭터 코드) 비교
SELECT * FROM Customers WHERE Country < 'Mexico';
SELECT * FROM Customers WHERE Country >= 'mexico'; -- 대소문자 구분x