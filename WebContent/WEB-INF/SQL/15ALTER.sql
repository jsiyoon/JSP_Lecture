USE test;

DESC mytable19Student;

-- add Column
ALTER TABLE mytable19Student ADD COLUMN (
	hieght DOUBLE
);

ALTER TABLE mytable19Student ADD COLUMN (
	weight DOUBLE,
    footsize DOUBLE
);

-- delete column
ALTER TABLE mytable19Student DROP COLUMN footsize;

CREATE TABLE mytable20(
	col1 INT,
    col2 INT
);
DESC mytable20;

-- not null 제약사항 추가, 이미 NULL인 컬럼이 있다면 실행되지않음.
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NOT NULL;
-- not null 제약사항 삭제
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NULL;

-- 제약사항 추가 전 제약사항을 위반하는 레코드가 있을 시 제약사항 추가하는 쿼리 실행안됨.
INSERT INTO mytable20 (col2) VALUES (3);
SELECT * FROM mytable20;

-- DEFAULT추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT DEFAULT 0;
-- DEFAULT 삭제
ALTER TABLE mytable20 ALTER col1 DROP DEFAULT;

DESC mytable20;

-- check  제약사항 추가
ALTER TABLE mytable20 ADD CHECK (col1 > 10);
-- 제약사항 확인
SHOW CREATE TABLE mytable20;
-- check 제약사항 삭제
ALTER TABLE mytable20 DROP CONSTRAINT CONSTRAINT_1;

DESC mytable20;

-- unique 제약사항 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT UNIQUE;
-- unique 제약사항 삭제
ALTER TABLE mytable20 DROP INDEX col1;

-- index없는 경우
SELECT * FROM mytable20 WHERE col1 = 10; -- 모든 레코드 탐색
-- index있는 경우
SELECT * FROM mytable20 WHERE col1 = 10; -- col1인덱스를 먼저 탐색(효율적 탐색)

TRUNCATE mytable20; -- 모든 레코드 삭제
-- primary key 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT PRIMARY KEY;

-- primary key 삭제
ALTER TABLE mytable20 DROP PRIMARY KEY;