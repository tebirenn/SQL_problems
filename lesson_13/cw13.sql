------------- 1 -------------

CREATE TABLE persons(
	person_id SERIAL,
	first_name VARCHAR(50),
	city VARCHAR(30),
	salary DOUBLE PRECISION DEFAULT 1000,
	birth_date DATE
);



------------- 2 -------------

INSERT INTO persons(first_name, city, salary, birth_date)
VALUES ('Erlan', 'Astana', 456, '2000-10-24'),
       ('Dayana', 'Uralsk', 789, '2003-04-21'),
	   ('Ernar', 'Taldyqorgan', 741, '2004-12-12'),
	   ('Almira', 'Almaty', 145, '2002-07-14'),
       ('Qairat', 'Almaty', 123, '2002-01-01');



------------- 3 -------------

ALTER TABLE persons
ALTER COLUMN birth_date TYPE VARCHAR;



------------- 4 -------------

DROP TABLE persons;



------------- 5 -------------

SELECT *
FROM salesman;



------------- 6 -------------

SELECT *
FROM customer
WHERE grade > 100;



------------- 7 -------------

SELECT *
FROM salesman
WHERE city IN ('Paris', 'Rome');



------------- 8 -------------

SELECT *
FROM customer
WHERE cust_name ~ '^[A-Za-z]+ [Gg][A-Za-z]*$';



------------- 9 -------------

SELECT city, grade
FROM customer
WHERE grade = (SELECT MAX(grade) FROM customer);



------------- 10 -------------

SELECT o.ord_no, c.cust_name, c.customer_id, s.salesman_id
FROM orders AS o
JOIN customer AS c
USING(customer_id)
JOIN salesman AS s
ON o.salesman_id = s.salesman_id
WHERE s.city != c.city;



------------- 11 -------------

SELECT s.salesman_id AS id, s.name
FROM salesman AS s
JOIN orders AS o USING(salesman_id)
GROUP BY s.salesman_id, s.name
HAVING COUNT(*) > 1
UNION
SELECT c.customer_id, c.cust_name
FROM customer AS c
JOIN orders AS o USING(customer_id)
GROUP BY c.customer_id, c.cust_name
HAVING COUNT(*) > 1;



------------- 12 -------------

SELECT MAX(purch_amt), salesman_id
FROM orders
GROUP BY salesman_id;



------------- 13 -------------

SELECT c.cust_name, c.city, c.grade, s.name, s.salesman_id
FROM customer AS c
JOIN salesman AS s
USING(salesman_id)
ORDER BY c.customer_id;



------------- 14 -------------

SELECT MAX(purch_amt), salesman_id
FROM orders
GROUP BY salesman_id;

