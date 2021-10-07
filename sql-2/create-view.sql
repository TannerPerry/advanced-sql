-- 1
CREATE VIEW rock AS
SELECT * FROM track
WHERE genre_id IN (
select genre_id from genre
WHERE name = 'Rock'
);

-- 2
CREATE VIEW classical_count AS
SELECT count(*) FROM track
WHERE track_id IN (
select track_id from playlist_track
WHERE playlist_id IN(
select playlist_id from playlist
WHERE name = 'Classical'
));