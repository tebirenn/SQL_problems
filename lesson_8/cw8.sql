------------- 1 -------------

SELECT j.job_title, AVG(e.salary) AS job_avg_salary
FROM employees AS e
JOIN jobs AS j
USING(job_id)
GROUP BY j.job_title;



------------- 2 -------------

SELECT first_name, (SELECT MAX(min_salary) FROM jobs) - salary AS diff_salary
FROM employees;



------------- 3 -------------

SELECT j.job_title, 
	   e.first_name, 
	   (SELECT MAX(salary) FROM employees WHERE department_id = 80) - e.salary AS salary_diff
FROM employees AS e
JOIN jobs AS j
USING(job_id);



------------- 4 -------------

SELECT d.department_name, m.first_name || ' ' || m.last_name AS manager_full_name
FROM departments AS d
JOIN employees AS m 
ON d.manager_id = m.employee_id;
	
	

------------- 5 -------------

SELECT *
FROM job_history
JOIN departments
USING(department_id);



------------- 6 -------------

SELECT j.job_title, d.department_name, e.first_name, e.hire_date
FROM employees AS e
JOIN jobs AS j
USING(job_id)
JOIN departments AS d
USING(department_id)
WHERE e.hire_date <= '1993-01-01' OR e.hire_date >= '1997-08-31';



------------- 7 -------------

SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM departments AS d
JOIN employees AS e
USING(department_id);



------------- 8 -------------

SELECT *
FROM locations
CROSS JOIN countries;
