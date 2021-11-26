USE test;
CREATE TABLE mytable1 (
	col1 CHAR(1),
    col2 CHAR(2),
    col3 CHAR(3),
    col4 CHAR(4)
);

INSERT INTO mytable1 (col1, col2, col3, col4)
VALUES('a', 'ab', 'abc', 'abcd');

SELECT * FROM mytable1;

INSERT INTO mytable1 (col1)
VALUES ('ab'); -- 안됨 Char < 1 이여야함.

INSERT INTO mytable1 (col4)
VALUES('ab');


-- VARCHAR 가변길이
CREATE TABLE mytable2(
	c1 VARCHAR(1),
    c2 VARCHAR(2),
    c3 VARCHAR(3),
    c4 VARCHAR(4)
);

INSERT INTO mytable2 (c1, c2, c3, c4) VALUES('a', 'ab', 'abc', 'abcd');
INSERT INTO mytable2 (c2) VALUES('abc'); -- xxx
INSERT INTO mytable2 (c4) VALUES('ab');

SELECT * FROM mytable2;

CREATE TABLE mytable3(
	col1 CHAR(1),
    col2 CHAR(2),
    col3 CHAR(3),
    col4 CHAR(4)
);

INSERT INTO mytable3 (col1, col2, col3, col4) VALUES('c', 'ch', 'chr', 'chr4');
INSERT INTO mytable3 (col1, col2, col3, col4) VALUES('0', '0', '00', '00');
SELECT * FROM mytable3;

CREATE TABLE mytable4(
	c1 VARCHAR(1),
    c2 VARCHAR(2),
    c3 VARCHAR(3),
    c4 VARCHAR(4)
);
INSERT INTO mytable4 (c1, c2, c3, c4) VALUES('c', 'ch', 'chr', 'chr4');
INSERT INTO mytable4 (c1, c2, c3, c4) VALUES('0', '0', '0', '0');

SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
SET sql_mode = '';
SELECT * FROM mytable4;


