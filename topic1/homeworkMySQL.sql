-- 1.	Установите СУБД MySQL. Создайте в домашней директории файл my.cnf, 
-- задав в нем логин и пароль, который указывался при установке.

Рабочую среду настроил. Вхожу без пароля, в файле my.cnf секцию [mysql] поменял на [client].

-- 2.	Создайте базу данных example, разместите в ней таблицу users,
-- состоящую из двух столбцов, числового id и строкового name. CREATE TABLE
CREATE DATABASE example;
USE example;
CREATE TABLE users(
	id INT,
	name VARCHAR(100)
);

-- 3.	Создайте дамп базы данных example из предыдущего задания, 
-- разверните содержимое дампа в новую базу данных sample. 

mysqldump example > exxample.sql --выгружаю базу данных в файл

CREATE DATABASE sample; --создаю новую таблицу

mysql sample < exxample.sql --загружаю в новую базу, данные из файла

-- 4.	(по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. 
-- Создайте дамп единственной таблицы help_keyword базы данных mysql. 
-- Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
mysqldump --where="true limit 100" mysql help_keyword > help_keyword3.sql -- выгрузил из базы mysql парвые 100 строк таблицы help_keyword 
help_keyword3 < help_keyword3.sql; -- загрузил в вновь созданную базу, но ничего не получилось
