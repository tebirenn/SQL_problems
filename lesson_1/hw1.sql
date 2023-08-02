------------- 1, 2 -------------

-- Создаем 3 таблицы, каждой указываем как минимум по 5 столбцов

CREATE TABLE person (
	iin INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	age SMALLINT,
	country VARCHAR(255)
);


CREATE TABLE smartphone (
	phone_id SERIAL PRIMARY KEY,
	brand VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	memory_in_gb SMALLINT NOT NULL,
	ram_in_gb SMALLINT NOT NULL
);


CREATE TABLE university (
	university_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE,
	address TEXT NOT NULL,
	city VARCHAR(50) NOT NULL,
	country VARCHAR(255)
);





------------- 3 -------------

-- Вносим данные в созданные таблицы, по 10 записи

INSERT INTO person(iin, first_name, last_name, age, country)
VALUES (123456, 'Amir', 'Abayev', 22, 'Kazakhstan'),
	   (456123, 'Dina', 'Abisheva', 35, 'Kazakhstan'),
	   (001122, 'Dima', 'Ivanov', 19, 'Kazakhstan'),
	   (223344, 'Dana', 'Bekzatova', 21, 'Kazakhstan'),
	   (454545, 'Qairat', 'Ilesbekov', 42, 'Kazakhstan'),
	   (702764, 'Aruzhan', 'Konysbaeva', 29, 'Kazakhstan'),
	   (124124, 'Erlan', 'Amanov', 24, 'Kazakhstan'),
	   (777777, 'Ainur', 'Aibekova', 33, 'Kazakhstan'),
	   (010100, 'Ernar', 'Erkinov', 36, 'Kazakhstan'),
	   (100500, 'Madina', 'Ermekova', 20, 'Kazakhstan');


INSERT INTO smartphone(brand, model, memory_in_gb, ram_in_gb)
VALUES ('Apple', 'iPhone 14 Pro', 512, 16),
	   ('Samsung', 'Galaxy S23', 1024, 32),
	   ('Xiaomi', '13 Pro', 512, 12),
	   ('Google', 'Pixel 4', 128, 8),
	   ('Huawei', 'Mate XS', 512, 8),
	   ('Apple', 'iPhone 11', 64, 4),
	   ('Samsung', 'Note 20', 256, 8),
	   ('Xiaomi', 'Redmi 12', 256, 8),
	   ('Google', 'Pixel 6 Pro', 128, 12),
	   ('Nokia', 'XR20', 128, 6);


INSERT INTO university(name, address, city, country)
VALUES ('KBTU', 'Tole bi 59', 'Almaty', 'Kazakhstan'),
	   ('IITU', 'Manas 34/1', 'Almaty', 'Kazakhstan'),
	   ('AITU', 'Mangilik El C1', 'Astana', 'Kazakhstan'),
	   ('SDU', 'Abylaikhan 1/1', 'Almaty', 'Kazakhstan'),
	   ('Auezov', 'Tauke khan 5', 'Shymkent', 'Kazakhstan'),
	   ('Al-Farabi University', 'Al-Farabi 71', 'Almaty', 'Kazakhstan'),
	   ('NU', 'Kabanbai 53', 'Astana', 'Kazakhstan'),
	   ('ENU', 'Satpaeva 2', 'Almaty', 'Kazakhstan'),
	   ('KBU', 'Universitetskaya 28', 'Karaganda', 'Kazakhstan'),
	   ('KNMU', 'Tole Bi 94', 'Almaty', 'Kazakhstan');





------------- 4 -------------

-- Создайте базу данных NorthWind 
-- Создайте таблицы по предложенным запросам
-- Заполните таблицы по предложенным запросам
-- Изучите БД через СУБД