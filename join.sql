SELECT * FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
WHERE unit_price > 0.99;


SELECT i.invoice_date AS date, c.first_name AS first, c.last_name AS last, i.total AS total
FROM invoice i
JOIN customer c 
ON i.customer_id = c.customer_id;

SELECT c.first_name AS first, c.last_name AS last, e.first_name as rep_first, e.last_name as rep_last
FROM customer c 
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT a.title AS title, ar.name AS name
FROM album a
JOIN artist ar
ON a.artist_id = ar.artist_id;

SELECT pl.track_id AS track
FROM playlist_track pl
JOIN playlist p
ON p.playlist_id = pl.playlist_id
WHERE p.name LIKE 'Music';

SELECT t.name AS track_name
FROM track t 
JOIN playlist_track pl
ON t.track_id = pl.track_id
WHERE pl.playlist_id = 5;

SELECT pl.name AS playlist_name, t.name AS track_name
FROM playlist_track p
JOIN playlist pl ON pl.playlist_id = p.playlist_id
JOIN track t ON t.track_id = p.track_id;


SELECT t.name AS track_name, a.title AS album_title
FROM track t
JOIN genre g ON t.genre_id = g.genre_id
JOIN album a ON a.album_id = t.album_id
WHERE g.name LIKE 'Alternative & Punk';


