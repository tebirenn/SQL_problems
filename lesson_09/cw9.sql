------------- 1 -------------

SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
	SELECT salary
	FROM employees
	WHERE employee_id = 163
);



------------- 2 -------------

SELECT first_name, last_name, department_id
FROM employees
WHERE salary > ANY (
	SELECT MIN(e.salary)
	FROM employees AS e
	JOIN departments AS d
	USING(department_id)
	GROUP BY department_name
);



------------- 3 -------------

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > (
	SELECT AVG(salary)
	FROM employees
);



------------- 4 -------------

SELECT e.employee_id, e.first_name, e.job_id, d.department_id, d.department_name
FROM employees AS e
JOIN departments AS d
USING(department_id)
WHERE d.department_name = 'Finance';



------------- 5 -------------

SELECT *
FROM employees
WHERE employee_id IN (134, 159, 183);



------------- 6 -------------

SELECT *
FROM employees
WHERE salary BETWEEN (
	SELECT MIN(salary)
	FROM employees
) AND 2500;



------------- 7 -------------

SELECT *
FROM employees
WHERE department_id IS NULL AND manager_id BETWEEN 100 AND 200;



------------- 8 -------------

SELECT first_name, last_name, hire_date, department_id
FROM employees AS e
WHERE department_id = (
	SELECT department_id
	FROM employees
	WHERE first_name = 'Clara'
);

