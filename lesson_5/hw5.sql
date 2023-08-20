------------- 1 -------------

SELECT date_part('month', hire_date) AS month, COUNT(*) AS count_of_emp
FROM employees
GROUP BY date_part('month', hire_date)
ORDER BY date_part('month', hire_date);



------------- 2 -------------

SELECT job_id, COUNT(*) AS job_emps_count
FROM employees
GROUP BY job_id;



------------- 3 -------------

SELECT date_part('year', hire_date) AS year, SUM(salary) AS total_salary
FROM employees
GROUP BY date_part('year', hire_date)
ORDER BY date_part('year', hire_date)
LIMIT 4;



------------- 4 -------------

SELECT department_id, COUNT(*) AS dep_count
FROM employees
GROUP BY department_id
HAVING department_id IN (20, 80, 90);



------------- 5 -------------

SELECT employee_id, COUNT(*)
FROM job_history
GROUP BY employee_id;



------------- 6 -------------

SELECT department_id, AVG(salary) AS avg_dep_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 10000;