------------- 1 -------------

-- Создать базу данных almaty_tech
-- Базу данных создайте через СУБД





------------- 2 -------------

-- Cоздаем две таблицы через CREATE TABLE
CREATE TABLE suppliers (
    supplier_id SMALLINT PRIMARY KEY,
    company_name VARCHAR(40) NOT NULL,
    contact_name VARCHAR(30),
    contact_title VARCHAR(30),
    address VARCHAR(60),
    city VARCHAR(15),
    country VARCHAR(15),
    phone VARCHAR(24)
);


CREATE TABLE products (
    product_id SMALLINT PRIMARY KEY,
    product_name VARCHAR(40) NOT NULL,
    supplier_id SMALLINT REFERENCES suppliers(supplier_id),
    category_id SMALLINT,
    quantity_per_unit VARCHAR(20),
    unit_price REAL,
    units_in_stock SMALLINT,
    units_on_order SMALLINT,
    reorder_level SMALLINT,
    discontinued INT NOT NULL
);





------------- 3 -------------

-- Добавляем информацию в таблицу suppliers через INSERT INTO
INSERT INTO suppliers (supplier_id, company_name, contact_name, contact_title, address, city, country, phone)
VALUES (1, 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', 'UK', '(171) 555-2222'),
       (2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'USA', '(100) 555-4822'),
       (3, 'Grandma Kelly''s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'USA', '(313) 555-5735'),
       (4, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashino-shi', 'Tokyo', 'Japan', '(03) 3555-5011'),
       (5, 'Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Spain', '(98) 598 76 54'),
       (6, 'Mayumi''s', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko Chuo-ku', 'Osaka', 'Japan', '(06) 431-7877'),
       (7, 'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie Ponds', 'Melbourne', 'Australia', '(03) 444-2343'),
       (8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King''s Way', 'Manchester', 'UK', '(161) 555-4448'),
       (9, 'PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', 'Sweden', '031-987 65 43'),
       (10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'Sao Paulo', 'Brazil', '(11) 555 4640');


-- Добавляем информацию в таблицу products через INSERT INTO
INSERT INTO products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, reorder_level, discontinued)
VALUES (1, 'Chai', 8, 1, '10 boxes x 30 bags', 18, 39, 0, 10, 1),
       (2, 'Chang', 1, 1, '24 - 12 oz bottles', 19, 17, 40, 25, 1),
       (3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10, 13, 70, 25, 0),
       (4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22, 53, 0, 0, 0),
       (5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.3500004, 0, 0, 0, 1),
       (6, 'Grandma''s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25, 120, 0, 25, 0),
       (7, 'Uncle Bob''s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30, 15, 0, 10, 0),
       (8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40, 6, 0, 0, 0),
       (9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97, 29, 0, 0, 1),
       (10, 'Ikura', 4, 8, '12 - 200 ml jars', 31, 31, 0, 0, 0);





------------- 4 -------------

SELECT * FROM suppliers;    -- Выводим таблицу suppliers





------------- 5 -------------

SELECT * FROM products;     -- Выводим таблицу products





------------- 6 -------------

DROP TABLE suppliers;           -- Удаляем таблицы
DROP TABLE products;
DROP DATABASE almaty_tech;      -- Удаляем базу данных. Так же можете удалить базу данных через СУБД