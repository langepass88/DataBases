DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello ()
RETURNS TEXT DETERMINISTIC
BEGIN
	SET @hour = HOUR(NOW());
    # 15:24

	IF(@hour >= 0 AND @hour < 6) THEN 
	  RETURN 'Доброй ночи';
	ELSEIF(@hour >= 6 AND @hour < 12) THEN 
	  RETURN 'Доброе утро';
	ELSEIF(@hour >= 12 AND @hour < 18) THEN 
	  RETURN 'Добрый день';
	ELSE 
	  RETURN 'Добрый вечер';
	END IF;
END //

SELECT hello()//