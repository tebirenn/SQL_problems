------------- 1 -------------

SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employees AS e
JOIN departments AS d
USING(department_id);



------------- 2 -------------

SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employees AS e
JOIN departments AS d
USING(department_id)
WHERE d.department_id IN (40, 80);



------------- 3 -------------

SELECT employee_id, first_name
FROM employees
WHERE first_name LIKE '%z%';



------------- 4 -------------

SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employees AS e
RIGHT JOIN departments AS d
USING(department_id);



------------- 5 -------------

SELECT *
FROM employees
WHERE salary < (SELECT salary FROM employees WHERE employee_id = 182);



------------- 6 -------------

SELECT e.first_name AS emp_name, m.first_name AS man_name
FROM employees AS e
JOIN employees AS m
ON e.manager_id = m.employee_id;



------------- 7 -------------

SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employees AS e
LEFT JOIN departments AS d
USING(department_id);
