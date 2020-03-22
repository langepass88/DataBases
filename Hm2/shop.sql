USE shop;
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NULL COMMENT 'Название раздела'
 -- UNIQUE unique_name(name(10))
 -- с UNIQUE не получится выполнить данное задание,
 -- так как он не даст присовить повторяющиеся значение,
) COMMENT = 'Разделы интернет-магазина';

-- Первое задание НАЧАЛО
INSERT INTO catalogs VALUES
  (DEFAULT, NULL),
  (DEFAULT, 'Мат. платы'),
  (DEFAULT, 'Видеокарты'),
  (DEFAULT, ''),
  (DEFAULT, 'Мониторы'),
  (DEFAULT, 'Клавиатуры'),
  (DEFAULT, NULL);

SELECT * FROM catalogs;

UPDATE catalogs
SET name = 'empty'
WHERE name IS NULL OR name = "";

SELECT * FROM catalogs;
-- Первое задание КОНЕЦ

-- Третье задание НАЧАЛО
USE sample;

DROP TABLE IF EXISTS cat;
CREATE TABLE cat (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NULL COMMENT 'Название раздела'
  -- UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO cat VALUES
  (DEFAULT, 'Intel');

SELECT * FROM cat;

REPLACE INTO
	cat
SELECT
	*
FROM 
	shop.catalogs;

SELECT * FROM cat;
-- Третье задание КОНЕЦ

USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (id, name, birthday_at) VALUES(1, 'hello','1979-01-27');
SELECT * FROM users;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id(catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products
	(name, description, price, catalog_id)
VALUES 
	('Intel Core i3-8100', 'Процессор для настольных компьютеров, основанных на платформе Intel', 7890.00, 1),
	('Intel Core i5-7400', 'Процессор для настольных компьютеров, основанных на платформе Intel', 12700.00, 1),
	('AMD FX-8320E', 'Процессор для настольных компьютеров, основанных на платформе AMD', 4700.00, 1),
	('AMD FX-8320', 'Процессор для настольных компьютеров, основанных на платформе AMD', 7120.00, 1),
	('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS S HERO, Z370, Socket 1151-V2, DDR4, ATX', 19210.00, 2),
	('Gigabyte H310M 52H', 'Материнская плата Gigabyte H310M 52H, Z370, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
	('MSI B250M CAMING PRO', 'Материнская плата MSI B25M GAMING PRO, Z370, Socket 1151-V2, DDR4, mATX', 5860.00, 2);
SELECT * FROM products;
	

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY,
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состав заказа';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  product_id INT UNSIGNED,
  discount FLOAT UNSIGNED COMMENT 'Величина скидки от 0.0 до 1.0',
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id),
  KEY index_of_product_id(product_id)
) COMMENT = 'Скидки';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Склады';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  ) COMMENT = 'Запасы на складе';