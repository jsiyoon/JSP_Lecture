USE test;

-- 중복과 NULL 가능한 피하기

-- 예제(1정규화, first normal form, 1NF)
CREATE TABLE mytable21Customer(
	customerID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(255) NOT NULL,
    surName VARCHAR(255) NOT NULL
);

CREATE TABLE mytable22Tel(
	id INT PRIMARY KEY AUTO_INCREMENT,
	customerID INT NOT NULL, -- mytable21Customer의 customerID와 같음
    tel VARCHAR(255) NOT NULL
);

-- 예제 (2정규화, second normal form, 2NF)

CREATE TABLE mytable23Employee(
	id INT PRIMARY KEY AUTO_INCREMENT,
	employee VARCHAR(255),
    location VARCHAR(255)
);

CREATE TABLE mytable24Skill(
	id INT PRIMARY KEY AUTO_INCREMENT,
	empoyeeID INT NOT NULL, -- mytable23Employee id참조
    skill VARCHAR(255)
);

-- 3정규화(third normal form, 3NF)

CREATE TABLE mytable25Winner(
	id INT PRIMARY KEY AUTO_INCREMENT,
	tournament VARCHAR(255),
    year CHAR(4),
    winner VARCHAR(255)
);

CREATE TABLE mytable26WinnnerBirth(
	id INT PRIMARY KEY AUTO_INCREMENT,
	winner VARCHAR(255),
    birth DATE
);