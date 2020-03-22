USE sample;
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  f_from VARCHAR(255) NULL COMMENT 'Город вылета',
  f_to VARCHAR(255) NULL COMMENT 'Город прилета'
  ) COMMENT = 'Вылеты';

INSERT INTO flights VALUES 
  (DEFAULT, 'moscow', 'omsk'),
  (DEFAULT, 'novgorod', 'kazan'),
  (DEFAULT, 'irkutsk', 'moscow'),
  (DEFAULT, 'omsk', 'irkutsk'), 
  (DEFAULT, 'moscow', 'kazan');

SELECT * FROM flights;

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255) NULL COMMENT 'Метка города',
  name VARCHAR(255) NULL COMMENT 'Название города на русском'
  ) COMMENT = 'Города';

INSERT INTO cities VALUES 
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'), 
  ('omsk', 'Омск');

SELECT * FROM cities;

SELECT
  f.id,
  f.f_from,
  c.name,
  f.f_to,
  (SELECT name FROM cities WHERE f.f_to = label) AS 'name'
FROM
  flights AS f
LEFT JOIN
  cities AS c
ON 
  f.f_from = c.label;