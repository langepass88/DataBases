DROP TABLE IF EXISTS media_cat;
CREATE TABLE media_cat (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL COMMENT 'Аудио, видео или фото'
) COMMENT = 'Тип медиафайлов';

INSERT INTO media_cat VALUES
  (DEFAULT, 'Аудио'),
  (DEFAULT, 'Видео'),
  (DEFAULT, 'Фото');

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL COMMENT 'Имя пользователя'
) COMMENT = 'Принадлежность к пользователю';

DROP TABLE IF EXISTS keywords;
CREATE TABLE keywords (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL COMMENT 'Ключевое слово'
) COMMENT = 'Ключевые слова';

DROP TABLE IF EXISTS mediafiles;
CREATE TABLE mediafiles (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL COMMENT 'Название медиафайла',
  description TEXT COMMENT 'Описание файла',
  path_to_file TEXT NOT NULL COMMENT 'Путь к файлу',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата загрузки файла',
  type_id INT UNSIGNED,
  keyword_id INT UNSIGNED,
  user_id INT UNSIGNED,
  KEY index_of_type_id(type_id),
  KEY index_of_keyword_id(keyword_id),
  KEY index_of_user_id(user_id)
) COMMENT = 'Медиафайлы';