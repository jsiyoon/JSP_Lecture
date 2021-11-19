SELECT * FROM Customers WHERE CustomerID < 10;
SELECT * FROM CUstomers WHERE Country = 'Mexico';

-- AND : 두조건 모두 만족
SELECT * FROM Customers WHERE CustomerID < 10 AND Country = 'Mexico';

SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

SELECT CustomerName FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

-- OR : 두 조건 중 하나만 만족
SELECT * FROM Customers WHERE City = 'Paris' OR Country = 'UK';
SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Spain';

-- NOT : 조건에 해당하지 않은 것
SELECT * FROM Customers WHERE NOT Country = 'UK';
SELECT * FROM Customers WHERE NOT Country = 'Germany';


SELECT * FROM Customers WHERE Country = 'Germany' AND (City ='Berlin' OR City='Munchen');
SELECT * FROM Customers WHERE Country = 'Germany' AND NOT(City = 'Berlin' OR City= 'Munchen');
SELECT * FROM Customers
WHERE Country = 'Germany' AND (City != 'Berlin' AND City != 'Muchen');

SELECT * FROM Customers
WHERE NOT Country = 'Germany' AND NOT Country = 'USA';
SELECT * FROM Customers
WHERE NOT (Country = 'Germany' AND Country = 'USA');

SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'USA';
