# -S9-DML-con-filtros-funciones-escalares-y-ordenamientos
-- 1. Clientes de Brasil
-- Lista clientes de Brasil con nombre, apellido y correo, ordenados por apellido.
SELECT first_name, last_name, email
FROM customer
WHERE country = 'Brazil'
ORDER BY last_name ASC;

-- 2. Álbumes de AC/DC
-- Devuelve todos los álbumes cuyo artista es AC/DC.
SELECT a.title
FROM album a
JOIN artist ar ON a.artist_id = ar.artist_id
WHERE ar.name = 'AC/DC';

-- 3. Canciones con la palabra "love"
-- Busca canciones que contengan "love" en el nombre, sin importar mayúsculas/minúsculas.
SELECT track_id, name, album_id
FROM track
WHERE name ILIKE '%love%';

-- 4. Facturas mayores a 10 dólares
-- Muestra facturas con total mayor a 10, ordenadas de mayor a menor.
SELECT invoice_id, invoice_date, billing_country, total
FROM invoice
WHERE total > 10.00
ORDER BY total DESC;

-- 5. Últimos 5 clientes registrados
-- Obtiene los últimos 5 clientes según su ID.
SELECT customer_id, first_name, last_name, country
FROM customer
ORDER BY customer_id DESC
LIMIT 5;

-- 6. Canciones de más de 5 minutos
-- Convierte la duración de milisegundos a minutos y filtra las mayores a 5 min.
SELECT track_id, name, (milliseconds / 60000.0) AS duration_minutes
FROM track
WHERE milliseconds > 300000;

-- 7. Cantidad de clientes por país
-- Cuenta cuántos clientes hay en cada país y los ordena de mayor a menor.
SELECT country, COUNT(*) AS total_clientes
FROM customer
GROUP BY country
ORDER BY total_clientes DESC;

-- 8. Empleados con título específico
-- Lista empleados que tienen el título de "Sales Support Agent".
SELECT employee_id, first_name, last_name, title, hire_date
FROM employee
WHERE title = 'Sales Support Agent';

-- 9. Top 10 canciones más largas
-- Muestra las 10 canciones más largas, convirtiendo su duración a minutos.
SELECT track_id, name, (milliseconds / 60000.0) AS duration_minutes
FROM track
ORDER BY milliseconds DESC
LIMIT 10;

-- 10. Clientes cuyo apellido empieza con "S"
-- Lista clientes cuyo apellido comienza con la letra S.
SELECT customer_id, first_name, last_name, country
FROM customer
WHERE last_name LIKE 'S%';

Requisito	Consultas que lo cumplen
Al menos 2 consultas deben usar LIKE o ILIKE	3 (ILIKE '%love%'), 10 (LIKE 'S%')
Al menos 2 consultas deben usar funciones escalares u operaciones matemáticas	6 y 9 (conversión de milliseconds a minutos)
Al menos 3 consultas deben incluir ORDER BY	1 (apellidos Brasil), 4 (facturas >10), 5 (clientes recientes), 7 (clientes por país), 9 (top canciones)
Al menos 2 consultas deben usar LIMIT	5 (últimos 5 clientes), 9 (top 10 canciones más largas)
Al menos 1 operación matemática sobre columnas	6 y 9 (milliseconds / 60000.0)
