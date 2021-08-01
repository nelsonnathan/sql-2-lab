SELECT COUNT(*), g.name
FROM track t
JOIN genre g 
ON t.genre_id = g.genre_id
GROUP BY g.name;

SELECT COUNT(*), g.name
FROM track t
JOIN genre g 
ON t.genre_id = g.genre_id
WHERE g.name LIKE 'Rock' OR g.name LIKE 'Pop' 
GROUP BY g.name;

SELECT COUNT(*), a.name
FROM artist a 
JOIN album al
ON a.artist_id = al.artist_id
GROUP BY a.name