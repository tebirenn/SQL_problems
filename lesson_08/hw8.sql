------------- 1 -------------

SELECT *
FROM employees
WHERE department_id = (
	SELECT department_id FROM employees WHERE first_name = 'Tayler'
);



------------- 2 -------------

SELECT AVG(e.salary), COUNT(e.employee_id), d.department_name
FROM employees AS e
JOIN departments AS d
USING(department_id)
GROUP BY d.department_name;



------------- 3 -------------

SELECT d.department_name, l.city, c.country_name
FROM departments AS d
JOIN locations AS l
USING (location_id)
JOIN countries AS c
USING(country_id);



------------- 4 -------------

SELECT d.department_name, AVG(e.salary) AS avg_dep_salary
FROM employees AS e
JOIN departments AS d
USING(department_id)
GROUP BY d.department_name
ORDER BY avg_dep_salary;



------------- 5 -------------

SELECT d.department_name, COUNT(e.employee_id) AS cnt_of_emp
FROM employees AS e
JOIN departments AS d
USING(department_id)
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > (
	SELECT AVG(cnt_of_emp)
	FROM (
		SELECT COUNT(e.employee_id) AS cnt_of_emp
		FROM employees AS e
		JOIN departments AS d
		USING(department_id)
		GROUP BY d.department_name
	) AS deps_emps
);



------------- 6 -------------

SELECT e.first_name, d.department_name, e.job_id
FROM employees AS e
JOIN departments AS d
USING(department_id)
WHERE e.job_id IS NULL;
