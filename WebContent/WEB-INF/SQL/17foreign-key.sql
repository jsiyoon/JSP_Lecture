USE test;

-- foreign key (외래키, 참조키)

CREATE TABLE mytable27Customer(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(255),
    lastName VARCHAR(255)
);

CREATE TABLE mytable28Tel(
	 id INT PRIMARY KEY AUTO_INCREMENT,
     customerID INT,
     tel VARCHAR(255),
     FOREIGN KEY (customerID) REFERENCES mytable27Customer(id)
);

INSERT INTO mytable27Customer (firstName, lastName) VALUES ('hong','gildong');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('Min', 'suga');
SELECT * FROM mytable27Customer;

INSERT INTO mytable28Tel (customerID, tel) VALUES (1, '01099999999');
INSERT INTO mytable28Tel (customerID, tel) VALUES (2, '01088888888');
INSERT INTO mytable28Tel (customerID, tel) VALUES (2, '01077777777');
SELECT * FROM mytable28Tel;

INSERT INTO mytable28Tel (customerID, tel) VALUES (3, '01066666666'); -- 참조키가 존재하지 않는 오류 발생

-- 삭제
DELETE FROM mytable27Customer WHERE id = 2; -- mytable28Tel에서 참조하는 중이여서 삭제 안됨.

DELETE FROM mytable28Tel WHERE customerID = 2; -- 참조하고 있는 곳의 정보 먼저 삭제해야함.
DELETE FROM mytable27Customer WHERE id = 2;

SELECT * FROM mytable28Tel;
SELECT * FROM mytable27Customer;

-- foreign key 제약사항 삭제
SHOW CREATE TABLE mytable28Tel;

ALTER TABLE mytable28Tel DROP FOREIGN KEY mytable28Tel_ibfk_1;

-- 제약사항 삭제 후 고객테이블 먼저 삭제
DELETE FROM mytable27Customer WHERE id = 1;
