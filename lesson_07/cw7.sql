------------- 1 -------------

SELECT s.name, c.cust_name, s.city
FROM salesman AS s
JOIN customer AS c
USING(city);



------------- 2 -------------

SELECT c.cust_name, c.city, s.name, s.commission
FROM salesman AS s
JOIN customer AS c
USING(salesman_id);



------------- 3 -------------

SELECT c.cust_name, c.city, s.name, s.commission
FROM salesman AS s
JOIN customer AS c
USING(salesman_id)
WHERE s.commission > 0.12;



------------- 4 -------------

SELECT o.*, c.cust_name, s.name
FROM orders AS o
JOIN salesman AS s
USING(salesman_id)
JOIN customer AS c
ON o.customer_id = c.customer_id;



------------- 5 -------------

SELECT c.customer_id, c.cust_name, c.city, c.grade, c.salesman_id, s.name, s.city
FROM salesman AS s
JOIN customer AS c
USING(salesman_id)
ORDER BY c.customer_id;



------------- 6 -------------

SELECT *
FROM customer
WHERE grade < 300
ORDER BY customer_id;



------------- 7 -------------

SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt
FROM orders AS o
JOIN customer AS c
USING(customer_id)
ORDER BY o.ord_date;



------------- 8 -------------

SELECT *
FROM salesman AS s
LEFT JOIN customer AS c
USING(salesman_id);

