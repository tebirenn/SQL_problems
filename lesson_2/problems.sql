------------- 1 -------------

SELECT * FROM customers;            -- Выбираем всё из таблицы customers(заказщики/клиенты)





------------- 2 -------------

SELECT contact_name, city           -- Выбираем колонки "имя контакта" и "город"
FROM customers;                     -- Из таблицы customers(заказщики/клиенты)





------------- 3 -------------
                                    -- Выбираем "идентификатор заказа" и разницу между датой отгрузки
                                    -- и датой формирования заказа(Это мы вычисляем через "-")
SELECT order_id, shipped_date - order_date AS days_to_ship
FROM orders;                        -- используется таблица orders(заказы)





------------- 4 -------------

SELECT DISTINCT city                -- Выбираем города, чтобы были уникальные результаты в запрос добавляем DISTINCT
FROM customers;                     -- Используется таблица customers(заказщики/клиенты)





------------- 5 -------------

SELECT order_id, customer_id, order_date, shipped_date      -- ID заказа, ID клиента, дата заказа и дата отправки 
FROM orders                                                 -- Из таблицы orders(заказы)
WHERE shipped_date - order_date > 30;                       -- Фильтурем чтобы разница между двумя датами было больше 30 дней





------------- 6 -------------

SELECT *                            -- Выбираем все колонки
FROM orders                         -- из таблицы orders(заказы)
WHERE ship_country LIKE 'U%';       -- где наименование страны отгрузки начинается с 'U'





------------- 7 -------------

SELECT DISTINCT city, country       -- Выбраем все уникальные сочетания городов и стран с помощью DISTINCT
FROM customers;                     -- Из таблицы customers(заказщики/клиенты)





------------- 8 -------------

SELECT product_name                 -- названия продуктов
FROM products                       -- из таблицы products(продукты)
WHERE discontinued = 1;             -- где discontinued будет 1(если 1 сняли с продажи, если 0 нет)





------------- 9 -------------

SELECT *                            -- Выбираем всё из таблицы suppliers(поставщики)
FROM suppliers                      -- Где название контакта 'Owner', а город начинается на букву M
WHERE contact_title = 'Owner' AND city LIKE 'M%';





------------- 10 -------------

SELECT order_id, customer_id, shipped_date      -- ID заказа, ID покупателя и дата отправки
FROM orders                                     -- из таблицы orders(заказы)
WHERE shipped_date > '1998-05-01';              -- Где дата будет после начала мая 1998 года





------------- 11 -------------

SELECT last_name || ', ' || first_name AS full_name     -- Для того чтобы сделать конкатенацию строк, нужно использовать символ || и через AS назовем колонку как полное имя
FROM employees;                                         -- используется таблица employees(сотрудники)





------------- 12 -------------

SELECT *                             -- Выбираем всё
FROM customers                       -- из таблицы customers(заказщики/клиенты)
WHERE contact_title LIKE '%Manager'; -- где название контакта будет заканчиваться на слово 'Manager'





------------- 13 -------------

SELECT customer_id, city, address, postal_code          -- ID клиента, город, адрес и почтовый индекс
FROM customers                                          -- из таблицы customers(заказщики/клиенты)
WHERE length(postal_code) = 5;                          -- Где почтовый индекс составляет 5 цифр
                                                        -- Почтовый индекс храниться как строка, длину вычисляем через функцию length()




------------- 14 -------------

SELECT company_name, contact_name, phone                -- Название компании, имя контактов и номер поставщиков
FROM suppliers                                          -- из таблицы suppliers(поставщики)
WHERE city = 'London' OR city = 'Sydney';               -- где город 'London' ИЛИ 'Sydney'





------------- 15 -------------

SELECT company_name, contact_name, contact_title,       -- Название компании, имя контакта и названия контактов
FROM suppliers                                          -- из таблицы suppliers(поставщики)
WHERE contact_title LIKE 'Sales%';                      -- Где названия контакта начинаются на слово 'Sales'
