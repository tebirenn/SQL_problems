------------- 1 -------------

SELECT 'Это упражнение, практика и решение SQL' AS res;





------------- 2 -------------

SELECT name, commission
FROM salesman;





------------- 3 -------------

SELECT ord_date, customer_id, ord_no, purch_amt
FROM orders;





------------- 4 -------------

SELECT *
FROM customer
WHERE grade = 200;





------------- 5 -------------

SELECT ord_no, ord_date, purch_amt
FROM orders
WHERE salesman_id = 5001;