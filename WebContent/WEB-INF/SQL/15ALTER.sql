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