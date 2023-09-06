------------- 1 -------------

UPDATE employees
SET phone_number = replace(phone_number, '124', '999');



------------- 2 -------------

SELECT *
FROM employees
WHERE length(first_name) >= 8;



------------- 3 -------------

SELECT *
FROM employees
WHERE first_name = upper(first_name);



------------- 4 -------------

SELECT right(phone_number, 4) AS last_part
FROM employees;



------------- 5 -------------

SELECT street_address
FROM locations
ORDER BY length(street_address);



------------- 6 -------------

SELECT format('%s@example.com', email) AS email_address
FROM employees;



------------- 7 -------------

SELECT first_name, length(first_name) AS name_length
FROM employees
WHERE substring(first_name for 1) IN ('A', 'J', 'M');



------------- 8 -------------

SELECT j.job_id, ARRAY_AGG(e.employee_id)
FROM jobs AS j
JOIN employees AS e USING(job_id)
GROUP BY j.job_id;
