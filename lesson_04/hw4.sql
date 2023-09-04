------------- 1 -------------

SELECT cust_name
FROM customer
WHERE cust_name LIKE 'B%';



------------- 2 -------------

SELECT cust_name
FROM customer
WHERE cust_name LIKE '%a%';



------------- 3 -------------

INSERT INTO customer
VALUES (3010, 'Alan Rickman', 'Almaty', 200, 5007);



------------- 4 -------------

DELETE FROM customer
WHERE customer_id = 3010;



------------- 5 -------------

UPDATE salesman
SET commission = 0.22
WHERE commission = (SELECT MIN(commission) FROM salesman);

UPDATE salesman 
SET commission = 0.01
WHERE city = 'New York';



------------- 6 -------------

SELECT concat(city, ' - ', cust_name) AS grade
FROM customer;



------------- 7 -------------

SELECT MAX(grade) AS max_grade
FROM customer;



------------- 8 -------------

SELECT MAX(purch_amt) AS max_purch_amt
FROM orders
WHERE ord_date = '2012-08-17';