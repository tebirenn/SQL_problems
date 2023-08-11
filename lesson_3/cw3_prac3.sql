------------- 1 -------------

-- Создайте базу данных prac3 через СУБД

------------- 2 -------------

CREATE TABLE employees(
	num SERIAL,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	middle_name VARCHAR(50),
	birth_date DATE
);



------------- 3 -------------

ALTER TABLE employees
ADD admin_group INT;



------------- 4 -------------

ALTER TABLE employees
ADD salary INT;



------------- 5 -------------

ALTER TABLE employees
ALTER admin_group TYPE BOOLEAN USING admin_group::boolean;



------------- 6 -------------

ALTER TABLE employees
ALTER admin_group SET DEFAULT false;



------------- 7 -------------

ALTER TABLE employees
ALTER salary SET DEFAULT 100000;



------------- 8 -------------

ALTER TABLE employees
ADD CONSTRAINT employees_num_pk
PRIMARY KEY (num);



------------- 9 -------------

CREATE TABLE jobs(
	num SERIAL,
	name VARCHAR(50),
	department_num INT,
	description VARCHAR(50)
);



------------- 10 -------------

DROP TABLE employees;
DROP TABLE jobs;



------------- 11 -------------

-- Удалите базу данных prac3 через СУБД
