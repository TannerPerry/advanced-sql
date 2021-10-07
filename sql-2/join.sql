-- 1
SELECT *
FROM invoice i
JOIN invoice_line ON invoice_line.invoice_id = i.invoice_id
WHERE invoice_line.unit_price > 0.99;

-- 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

-- 3 & 4
SELECT c.first_name"customer first name", c.last_name "customer last name", e.employee_id "employee number",e.first_name "employee first name", e.last_name "employee last name"
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

-- 5
Select a.title, ar.name 
from artist ar
join album a on a.artist_id = ar.artist_id

-- 6
Select pt.track_id, p.name
from playlist_track pt
join playlist p
on pt.playlist_id = p.playlist_id 
where p.name = 'Music'

-- 7
Select pt.track_id, p.name, p.playlist_id
from playlist_track pt
join playlist p
on pt.playlist_id = p.playlist_id 
where p.name = 'Music' 

-- 8
Select t.name "track name", p.name "playlist name"
from playlist_track pt
join playlist p
on pt.playlist_id = p.playlist_id 
join track t
on t.track_id = pt.track_id
where p.name = 'Music'


-- 9
SELECT track.name, album.title, genre.name
FROM track
JOIN album ON album.album_id = track.album_id
JOIN genre ON genre.genre_id = track.genre_id

where genre.name = 'Alternative' OR genre.name = 'Punk'

