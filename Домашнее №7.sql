-- 1.Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT * FROM users
WHERE EXISTS (SELECT id,user_id, created_at , updated_at  FROM orders WHERE user_id = users.id);


-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT 
id,
name,
(SELECT name FROM catalogs WHERE id = catalog_id) AS 'из каталога'
FROM
products;


/* 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и 
 таблица городов cities (label, name). Поля from, to и label содержат 
 английские названия городов, поле name — русское. Выведите список рейсов flights с рускими названиями городов
 Попытка решения
*/
 
SELECT 
	id, 
	name_id
FROM 
	flights  JOIN cities AS 'Города'
ON 
	name_id = cities.name;
	







