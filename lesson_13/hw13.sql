------------- 1 -------------

CREATE TABLE departments(
	department_id SERIAL,
	department_name VARCHAR,
	location VARCHAR
);



------------- 2 -------------

INSERT INTO departments(department_name, location)
VALUES ('Sales', 'Almaty'),
       ('Finance', 'Astana'),
	   ('IT', 'Almaty');
	   
	   

------------- 3 -------------

UPDATE departments
SET department_name = 'Sales and Marketing'
WHERE department_id = 1;



------------- 4 -------------

DELETE FROM departments
WHERE department_id = 3



------------- 5 -------------

SELECT *
FROM departments
WHERE location = 'Los-Angeles';



------------- 6 -------------

SELECT d.department_name, COUNT(*) AS emp_count
FROM departments AS d
JOIN employees AS e USING(department_id)
GROUP BY d.department_name;



------------- 7 -------------

SELECT DISTINCT job_title
FROM jobs;



------------- 8 -------------

SELECT *
FROM employees
WHERE salary > 5000;



------------- 9 -------------

SELECT e.first_name || ' ' || e.last_name, j.job_title, d.department_name
FROM employees AS e
JOIN jobs AS j USING(job_id)
JOIN departments AS d USING(department_id);



------------- 10 -------------

SELECT *
FROM employees
WHERE hire_date IS NULL;
