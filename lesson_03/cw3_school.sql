------------- 1 -------------

-- Создайте базу данных school через СУБД


------------- 2 -------------

CREATE TABLE teacher(
	teacher_id SERIAL,
	first_name VARCHAR,
	last_name VARCHAR,
	birthday DATE,
	phone VARCHAR,
	title VARCHAR
);



------------- 3 -------------

ALTER TABLE teacher
ADD middle_name VARCHAR;



------------- 4 -------------

ALTER TABLE teacher
DROP middle_name;



------------- 5 -------------

ALTER TABLE teacher
RENAME birthday TO birth_date;



------------- 6 -------------

ALTER TABLE teacher
ALTER phone TYPE VARCHAR(32);



------------- 7 -------------

CREATE TABLE exam(
	exam_id SERIAL,
	exam_name VARCHAR(255),
	exam_date DATE
);



------------- 8 -------------

INSERT INTO exam(exam_name, exam_date)
VALUES ('A', '2023-01-01'),
       ('B', '2023-01-02'),
	   ('C', '2023-01-03'),
	   ('D', '2023-01-04'),
	   ('E', '2023-01-05');
	   
	   
	   
------------- 9 -------------

SELECT * FROM exam;



------------- 10 -------------

UPDATE exam
SET exam_date = '2022-12-31'
WHERE exam_id = 1;



------------- 11 -------------

INSERT INTO teacher(first_name, last_name, birth_date, phone, title)
VALUES ('Ernar', 'Amanov', '1980-05-26', '+7 705 777 12 12', 'math teacher'),
       ('Dina', 'Almasova', '1988-11-17', '+7 701 111 11 11', 'english teacher'),
	   ('Erlan', 'Bakeshov', '1985-01-09', '+7 708 123 45 78', 'IT teacher');



------------- 12 -------------

DELETE FROM teacher;
ALTER SEQUENCE teacher_teacher_id_seq RESTART;



------------- 13 -------------

DROP TABLE teacher;



------------- 14 -------------

-- Удалите базу данных school через СУБД
