------------- 1 -------------

SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employees AS e
JOIN departments AS d
USING(department_id)
JOIN locations AS l
USING(location_id)
WHERE l.city = 'Toronto';



------------- 2 -------------

SELECT employee_id, first_name, last_name, job_id
FROM employees 
WHERE salary < ANY(
	SELECT salary
	FROM employees
	WHERE job_id = 'MK_MAN'
);



------------- 3 -------------

SELECT employee_id, first_name, last_name, job_id
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);



------------- 4 -------------

SELECT SUM(e.salary) AS dep_salary
FROM employees AS e
JOIN departments AS d
USING(department_id)
GROUP BY department_name;



------------- 5 -------------

SELECT e.employee_id
FROM employees AS e
JOIN departments AS d
USING(department_id)
JOIN locations AS l
USING(location_id)
JOIN countries AS c
USING(country_id)
WHERE country_name = 'United Kingdom';



------------- 6 -------------

SELECT *
FROM employees
WHERE salary > (
	SELECT AVG(salary)
	FROM departments AS d
	JOIN employees AS e
	USING(department_id)
	WHERE department_name LIKE '%IT%'
);

