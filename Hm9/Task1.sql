DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата и время создания записи',
  name_of_table VARCHAR(255) COMMENT 'Название таблицы',
  primary_key INT COMMENT 'Идентификатор первичного ключа',
  name VARCHAR(255) COMMENT 'Содержимое поле name'
  ) COMMENT = 'Таблица logs' ENGINE=Archive;
 
DROP TRIGGER IF EXISTS update_logs_users;
DROP TRIGGER IF EXISTS update_logs_catalogs;
DROP TRIGGER IF EXISTS update_logs_products;

DELIMITER //

CREATE TRIGGER update_logs_users AFTER INSERT ON users
FOR EACH ROW
BEGIN 
	INSERT IGNORE INTO logs (name_of_table, primary_key, name) VALUES ('users', NEW.id, NEW.name);
END//


CREATE TRIGGER update_logs_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN 
	INSERT IGNORE INTO logs (name_of_table, primary_key, name) VALUES ('catalogs', NEW.id, NEW.name);
END//


CREATE TRIGGER update_logs_products AFTER INSERT ON products
FOR EACH ROW
BEGIN 
	INSERT IGNORE INTO logs (name_of_table, primary_key, name) VALUES ('products', NEW.id, NEW.name);
END//




  