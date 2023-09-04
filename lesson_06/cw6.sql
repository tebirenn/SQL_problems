------------- 1 -------------

SELECT cust_name AS name , city
FROM customer
WHERE city = 'London'
UNION
SELECT name, city
FROM salesman
WHERE city = 'London';



------------- 2 -------------

SELECT s.salesman_id, s.name AS s_name, s.city AS s_city, c.customer_id, c.cust_name, c.city AS c_city
FROM salesman AS s, customer AS c
WHERE s.city != c.city;



------------- 3 -------------

SELECT o.ord_no, o.customer_id, o.salesman_id, s.name AS salesman_name, c.cust_name AS customer_name
FROM orders AS o, customer AS c, salesman AS s
WHERE o.salesman_id = s.salesman_id AND o.customer_id = c.customer_id;



------------- 4 -------------

SELECT customer_id, city, 'high' AS rating
FROM customer
WHERE grade >= 300
UNION
SELECT customer_id, city, 'low' AS rating
FROM customer
WHERE grade < 300;



------------- 5 -------------

SELECT customer_id
FROM customer
EXCEPT
SELECT customer_id
FROM orders;



------------- 6 -------------

SELECT s.city
FROM orders AS o, salesman AS s
WHERE o.salesman_id = s.salesman_id
UNION
SELECT c.city
FROM orders AS o, customer AS c
WHERE o.customer_id = c.customer_id;



------------- 7 -------------

SELECT s.city
FROM orders AS o, salesman AS s
WHERE o.salesman_id = s.salesman_id
UNION
SELECT c.city
FROM orders AS o, customer AS c
WHERE o.customer_id = c.customer_id
ORDER BY city;