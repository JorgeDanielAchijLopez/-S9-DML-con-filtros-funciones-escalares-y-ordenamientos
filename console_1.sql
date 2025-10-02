--Lista el first_name, last_name y email de todos los clientes cuyo country sea Brazil, ordenados alfabéticamente por last_name.
SELECT first_name, last_name, email
FROM customer
WHERE country = 'Brazil'
ORDER BY last_name ASC;

--Obtén todos los álbumes (title) del artista con name = 'AC/DC'.
SELECT a.title
FROM album a
JOIN artist ar ON a.artist_id = ar.artist_id
WHERE ar.name = 'AC/DC';

--Muestra el track_id, name y album_id de todas las canciones cuyo name contenga la palabra love (usa ILIKE).
SELECT track_id, name, album_id
FROM track
WHERE name ILIKE '%love%';

--Lista el invoice_id, invoice_date, billing_country y total de todas las facturas con total > 10.00, ordenadas de mayor a menor.
SELECT invoice_id, invoice_date, billing_country, total
FROM invoice
WHERE total > 10.00
ORDER BY total DESC;

--Muestra customer_id, first_name, last_name y country de los últimos 5 clientes según customer_id.
SELECT customer_id, first_name, last_name, country
FROM customer
ORDER BY customer_id DESC
LIMIT 5;

--Lista track_id, name y la duración en minutos (usa milliseconds / 60000) de todas las canciones cuya duración sea mayor a 300000 ms (5 minutos).

SELECT track_id, name, (milliseconds / 60000.0) AS duration_minutes
FROM track
WHERE milliseconds > 300000;


--Muestra el country y la cantidad de clientes (COUNT) que hay en cada país, ordenado por cantidad descendente.

SELECT country, COUNT(*) AS total_clientes
FROM customer
GROUP BY country
ORDER BY total_clientes DESC;

--Muestra el employee_id, first_name, last_name, title y hire_date de todos los empleados cuyo title = 'Sales Support Agent'.

SELECT employee_id, first_name, last_name, title, hire_date
FROM employee
WHERE title = 'Sales Support Agent';

--Lista el track_id, name y la duración en minutos (milliseconds / 60000) de las 10 canciones más largas, ordenadas de mayor a menor.

SELECT track_id, name, (milliseconds / 60000.0) AS duration_minutes
FROM track
ORDER BY milliseconds DESC
LIMIT 10;

--Obtén customer_id, first_name, last_name y country de todos los clientes cuyo last_name empiece con la letra S.

SELECT customer_id, first_name, last_name, country
FROM customer
WHERE last_name LIKE 'S%';


