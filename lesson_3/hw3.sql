------------- 1 -------------

CREATE TABLE customers(
	id INT PRiMARY KEY,
	full_name VARCHAR(50),
	time_stamp TIMESTAMP,
	delivery_address TEXT
);

CREATE TABLE orders(
	code INT PRIMARY KEY,
	customer_id INT,
	total_sum DOUBLE PRECISION,
	is_paid BOOLEAN
);

CREATE TABLE products(
	id VARCHAR PRIMARY KEY,
	name VARCHAR,
	description TEXT,
	price DOUBLE PRECISION
);

CREATE TABLE order_items(
	order_code INT,
	product_id VARCHAR,
	quantity INT
);


ALTER TABLE orders
ADD CONSTRAINT customer_id_fk
FOREIGN KEY (customer_id)
REFERENCES customers(id);

ALTER TABLE order_items
ADD CONSTRAINT order_code_fk
FOREIGN KEY (order_code)
REFERENCES orders(code);

ALTER TABLE order_items
ADD CONSTRAINT product_id_fk
FOREIGN KEY (product_id)
REFERENCES products(id);





------------- 2 -------------

INSERT INTO customers(id, full_name, time_stamp, delivery_address)
VALUES (1, 'Ernar Aitulov', now(), 'Almaty, Abay 52');

INSERT INTO products(id, name, description, price)
VALUES ('FFR', 'Bread', 'Very fresh bekery', 120),
       ('TNT', 'Apple', 'Fruit from India', 150);

INSERT INTO orders(code, customer_id, total_sum, is_paid)
VALUES (1000, 1, 450, true);

INSERT INTO order_items(order_code, product_id, quantity)
VALUES (1000, 'TNT', 3);


UPDATE customers
SET delivery_address = 'Almaty, Tole Bi 59'
WHERE id = 1;


DELETE FROM products
WHERE id = 'FFR';