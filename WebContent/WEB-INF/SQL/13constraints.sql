USE test;

CREATE TABLE mytable12(
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL
);

SELECT * FROM mytable12;

INSERT INTO mytable12 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable12 (col2) VALUES ('ghi');
INSERT INTO mytable12 (col1) VALUES ('ghi'); -- xxx 제약사항 NOT NULL : col2는 NULL 이여서 안됨.

-- UNIQUE
CREATE TABLE mytable13(
	col1 VARCHAR(5),
    col2 VARCHAR(5) UNIQUE
);

SELECT * FROm mytable13;

INSERT INTO mytable13 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable13 (col1, col2) VALUES ('abc', 'def'); -- col2 UNIQUE : col2에 저장되는 어떤값과도 중복되서는 안됨.
INSERT INTO mytable13 (col1, col2) VALUES ('abc', 'abc'); 
INSERT INTO mytable13 (col1, col2) VALUES ('abc', 'de');
INSERT INTO mytable13 (col1) VALUES ('abc');

-- NOT NULL, UNIQUE : 값이 NULL이여서도 중복되어서도 안됨.
CREATE TABLE mytable14(
	col1 VARCHAR(5),
    col2 VARCHAR(5) NOT NULL UNIQUE
);

SELECT * FROM mytable14;

INSERT INTO mytable14 (col1, col2) VALUES('abc','def');
INSERT INTO mytable14 (col1)  VALUES('abc'); -- xxx col2가 NULL임.
INSERT INTO mytable14 (col2)  VALUES('def'); -- xxx 중복됨.
INSERT INTO mytable14 (col2)  VALUES('de');

-- CHECK (제약사항, 범위지정)
CREATE TABLE mytable15(
	col1 INT,
    col2 INT NOT NULL CHECK (col2 >= 100 AND col2 <= 200)
);

SELECT * FROM mytable15;

INSERT INTO mytable15 (col1, col2) VALUES (-1000, 150);
INSERT INTO mytable15 (col1, col2) VALUES (-1000, 170);
INSERT INTO mytable15 (col1, col2) VALUES (-1000, 300); -- xxx col2지정된 범위 넘어감

-- DEFAULT : 아무런 값이 들어가지 않을때 기본값 지정
CREATE TABLE mytable16(
	col1 INT DEFAULT 0,
    col2 VARCHAR(5) DEFAULT 'a',
    col3 DATE DEFAULT now(),
    col4 DATETIME DEFAULT now()
);

SELECT * FROM mytable16;

INSERT INTO mytable16 VALUES();
INSERT INTO mytable16 (col1) VALUES (10);
INSERT INTO mytable16 (col3, col4) VALUES ('1999-11-16', '1999-11-11 11:22:33');
INSERT INTO mytable16 (col1) VALUES (00);
INSERT INTO mytable16 (col2) VALUES (00);
INSERT INTO mytable16 (col3) VALUES (00);
INSERT INTO mytable16 (col4) VALUES (00);

DESC mytable16;
DESC mytable14;
DESC mytable13;
DESC mytable12;