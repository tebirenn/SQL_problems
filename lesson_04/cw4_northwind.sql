------------- 1 -------------

SELECT COUNT(*) AS count_of_orders
FROM orders;



------------- 2 -------------

SELECT COUNT(DISTINCT country) as count_of_countries
FROM customers;



------------- 3 -------------

SELECT *
FROM orders
WHERE ship_country IN ('France', 'Austria', 'Spain');



------------- 4 -------------

SELECT MIN(units_in_stock) AS min_in_stock
FROM products
WHERE units_on_order >= 30;



------------- 5 -------------

SELECT AVG(shipped_date - order_date) AS avg_days_to_delivery
FROM orders
WHERE ship_country = 'USA';



------------- 6 -------------

SELECT units_in_stock * unit_price AS total_price
FROM products
WHERE discontinued = 0;



------------- 7 -------------

SELECT first_name, last_name, home_phone, region
FROM employees
WHERE region IS NOT NULL;



------------- 8 -------------

SELECT COUNT(*) AS cnt_cust_with_region
FROM customers
WHERE region IS NOT NULL;