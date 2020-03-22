DROP TRIGGER IF EXISTS tr_1;
DELIMITER //
CREATE TRIGGER tr_1 BEFORE INSERT ON products
FOR EACH ROW 
BEGIN
	IF NEW.name IS NULL and NEW.description IS NULL THEN 
	   SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Недопустимо значения полей name и description NULL одновременно';
	   DELETE FROM products WHERE NEW.id;
	 END IF;
END//