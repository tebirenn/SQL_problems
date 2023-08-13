------------- 1 -------------

SELECT country, COUNT(*) AS suppliers_from
FROM suppliers
GROUP BY country;



------------- 2 -------------

SELECT city
FROM customers
GROUP BY city;



------------- 3 -------------

SELECT country
FROM customers
GROUP BY country
ORDER BY country;



------------- 4 -------------

SELECT order_id, customer_id, freight, ship_country
FROM orders
WHERE ship_country LIKE 'N%'
ORDER BY freight DESC
LIMIT 10;



------------- 5 -------------

SELECT product_id, product_name, units_in_stock, units_on_order, reorder_level, discontinued
FROM products
WHERE units_in_stock + units_on_order <= reorder_level
ORDER BY product_id;



------------- 6 -------------

SELECT order_id
FROM orders
WHERE order_date IS NOT NULL AND shipped_date IS NULL



------------- 7 -------------

SELECT ship_country, AVG(freight) AS avg_freight
FROM orders
WHERE order_date < '2017-01-01'
GROUP BY ship_country;



------------- 8 -------------

SELECT product_name, SUM(unit_price) AS sum_of_price
FROM products
WHERE product_name LIKE 'A%' AND unit_price > 30
GROUP BY product_name;