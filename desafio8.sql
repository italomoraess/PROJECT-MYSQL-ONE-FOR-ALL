SELECT a.name_artist as artista, ab.name_album as album
FROM artist as a
JOIN album as ab ON a.artist_id = ab.artist_id
LIMIT 2;