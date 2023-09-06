------------- 1 -------------

SELECT s.salesman_id, s.name, SUM(o.purch_amt)
FROM salesman AS s
JOIN orders AS o USING(salesman_id)
GROUP BY s.salesman_id, s.name
HAVING SUM(o.purch_amt) > (
	SELECT AVG(purch_amt)
	FROM orders
);



------------- 2 -------------

SELECT s.salesman_id, s.name, SUM(o.purch_amt)
FROM salesman AS s
JOIN orders AS o USING(salesman_id)
GROUP BY s.salesman_id, s.name
HAVING SUM(o.purch_amt) > (
	SELECT SUM(o.purch_amt)
	FROM orders AS o
	JOIN salesman AS s USING(salesman_id)
	WHERE s.salesman_id = 5002
);



------------- 3 -------------

SELECT s.salesman_id, s.name, SUM(o.purch_amt)
FROM salesman AS s
JOIN orders AS o USING(salesman_id)
GROUP BY s.salesman_id, s.name
HAVING SUM(o.purch_amt) > ANY(
	SELECT SUM(o.purch_amt)
	FROM salesman AS s
	JOIN orders AS o USING(salesman_id)
	WHERE s.name ~ '^John [a-zA-Z]+$'
	GROUP BY s.salesman_id, s.name
);



------------- 4 -------------

-- База данных не включается в себя должности

------------- 5 -------------

-- База данных не включается в себя отделы, а остальное будет как в задаче 3

------------- 6 -------------

-- База данных не включается в себя должности
