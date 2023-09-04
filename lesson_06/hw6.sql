------------- 1 -------------

SELECT DISTINCT employee_id, first_name, job_id
FROM employees
ORDER BY first_name;



------------- 2 -------------

SELECT DISTINCT employee_id, first_name, job_id, department_id
FROM employees
WHERE department_id IS NOT NULL;



------------- 3 -------------

SELECT DISTINCT e.employee_id, e.first_name, e.salary, j.min_salary
FROM employees AS e, jobs AS j
WHERE e.job_id = j.job_id AND
	  e.salary >= 5000 AND j.min_salary <= 4000;



------------- 4 -------------

SELECT DISTINCT e.employee_id, e.first_name, j.job_title
FROM employees AS e, jobs AS j
WHERE e.job_id = j.job_id AND 
	  j.job_title LIKE '%Manager%' OR j.job_title LIKE '%Representative%';
	  


------------- 5 -------------

SELECT DISTINCT e.employee_id, e.first_name, e.salary, j.min_salary
FROM employees AS e, jobs AS j
WHERE e.job_id = j.job_id
ORDER BY e.salary ASC, j.min_salary DESC;



------------- 6 -------------

SELECT DISTINCT e.employee_id, e.first_name, j.job_title
FROM employees AS e, jobs AS j
WHERE e.job_id = j.job_id AND j.job_title LIKE 'S%'
ORDER BY e.first_name ASC, j.job_title ASC;



------------- 7 -------------

SELECT DISTINCT e.employee_id, e.first_name, j.job_title
FROM employees AS e, jobs AS j
WHERE e.job_id = j.job_id AND j.job_title LIKE '%Marketing%';