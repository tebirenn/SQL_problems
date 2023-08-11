------------- 1 -------------

-- Создайте базу данных prac4 через СУБД

------------- 2 -------------

CREATE TABLE customers(
	customer_id SERIAL,
	cust_name VARCHAR(50),
	city VARCHAR(50),
	grade INT,
	salesman_id INT
);

CREATE TABLE orders(
	ord_no SERIAL,
	purch_amt DECIMAL,
	ord_date VARCHAR(50),
	customer_id INT,
	salesman_id INT
);

INSERT INTO customers
VALUES ( 3002, 'Nick Rimando', 'NY', 100, 5001),
       ( 3005, 'Graham Zusi', 'CA', 200, 5002),
       ( 3001, 'Brad Cuzan', 'London', null , 5005),
       ( 3003, 'Jhon Fabian', 'Paris', 300 , 5006),
       ( 3004, 'Fabian Johns', 'Paris', 200 , 5001),
       ( 3007, 'Brad Davison', 'NY', 200 , 5003),
       ( 3006, null, 'NY', 100, 5001);
	   
INSERT INTO orders
VALUES ( 3002, 150.5, '2012-10-05', 3006, 5002),
       ( 3005, 270.65, '2012-09-10', 3001, 5002),
       ( 3001, 65.26, '2012-10-05', 3002 , 5005),
       ( 3003, 110.5, '2012-08-17', 3003 , 5006),
       ( 3004, 948.5, '2012-09-10', 3005 , 5006),
       ( 3007, 2400.6, '2012-07-27', 3004 , 5001);



------------- 3 -------------

SELECT SUM(purch_amt) AS sum_of_purch_amt
FROM orders;



------------- 4 -------------

SELECT AVG(purch_amt) AS avg_of_purch_amt
FROM orders;



------------- 5 -------------

SELECT COUNT(cust_name)
FROM customers
WHERE cust_name IS NOT NULL;



------------- 6 -------------

SELECT MIN(purch_amt) AS min_purch
FROM orders;
 


------------- 7 -------------

SELECT *
FROM customers
WHERE cust_name ~ '^[a-zA-Z]+d [a-zA-Z]+$';



------------- 8, 9 -------------
-- Задания 8 и 9 требуют тему JOIN

------------- 10 -------------

SELECT SUM(grade) AS sum_grade
FROM customers;



------------- 11 -------------

SELECT *
FROM customers
WHERE cust_name IS NOT NULL;



------------- 12 -------------

SELECT MIN(grade) AS min_grade
FROM customers;