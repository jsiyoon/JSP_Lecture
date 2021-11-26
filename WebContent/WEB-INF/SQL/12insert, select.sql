USE test;

CREATE TABLE mytable10(
	col1 INT,
    col2 double,
    col3 DEC(10, 3),
    col4 CHAR(3),
    col5 VARCHAR(255),
    col6 DATE,
    col7 DATETIME
);

SELECT * FROM mytable10;

-- JDBC37Servlet, JDBC38Servlet
CREATE TABLE mytable11(
	name VARCHAR(255),
    age INT,
    birth DATE
);