USE test;

CREATE TABLE mytable5(
	name VARCHAR(255),
    age INT
);

DESC mytable5;

INSERT INTO mytable5 (name, age) VALUES('son', 77);

SELECT * FROM mytable5;

CREATE TABLE  mytable6(
	name VARCHAR(255),
    score DOUBLE
);

INSERT INTO mytable6 (name, score) VALUES ('park', 3.14);

SELECT * FROM mytable6;

-- 소수 점 이하의 사이즈
CREATE TABLE mytable7(
	col1 DECIMAL(3),
    col2 DECIMAL(5, 2) -- 소수점 이하 2자리를 포함한 5자리
);

INSERT INTO mytable7 (col1, col2) VALUES (100, 100.33);

SELECT * FROM mytable7;

INSERT INTO mytable7 (col1) VALUES (1100);

INSERT INTO mytable7 (col2) VALUES(100.123);

INSERT INTO mytable7 (col2) VALUES(100.127); -- 반올림되어서 올라감


CREATE TABLE mytable8(
	d1 DECIMAL(3,2),
    d2 DOUBLE
);

INSERT INTO mytable8 (d1, d2) VALUES(9.33, 100.333);

SELECT * FROM mytable8;