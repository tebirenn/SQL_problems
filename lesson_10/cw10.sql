------------- 1 -------------

SELECT employee_id, first_name, last_name
FROM employees
WHERE department_id IS NOT NULL AND first_name ~ '[Tt]';



------------- 2 -------------

SELECT c.country_name, l.city, STRING_AGG(department_name, ', ')
FROM departments AS d
JOIN locations AS l
USING(location_id)
JOIN countries AS c
USING(country_id)
GROUP BY c.country_name, l.city;



------------- 3 -------------

SELECT d.department_name, m.first_name||' '||m.last_name AS manager_full_name
FROM departments AS d
JOIN employees AS m
ON d.manager_id = m.employee_id;



------------- 4 -------------

SELECT e.employee_id, jh.start_date, jh.end_date, jh.job_id, e.department_id
FROM employees AS e
JOIN job_history AS jh
USING(job_id)
WHERE e.salary >= 12000;



------------- 5 -------------

SELECT e.first_name||' '||e.last_name AS emp_full_name, e.salary
FROM employees AS e
JOIN departments AS d USING(department_id)
JOIN locations AS l USING(location_id)
WHERE l.city = 'London';



------------- 6 -------------

SELECT d.department_name, m.first_name||' '||m.last_name AS manager_full_name, l.city
FROM departments AS d
JOIN employees AS m ON d.manager_id = m.employee_id
JOIN locations AS l USING(location_id);



------------- 7 -------------

SELECT d.department_name, d.department_id, COUNT(e.employee_id) AS count_of_emps
FROM departments AS d
JOIN employees AS e USING(department_id)
GROUP BY d.department_name, d.department_id;



------------- 8 -------------

SELECT c.country_name, l.city, COUNT(e.employee_id) AS count_of_emps
FROM departments AS d
JOIN employees AS e USING(department_id)
JOIN locations AS l USING(location_id)
JOIN countries AS c USING(country_id)
GROUP BY c.country_name, l.city
HAVING COUNT(e.employee_id) >= 2;

