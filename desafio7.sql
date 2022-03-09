SELECT a.name_artist as artista, ab.name_album as album, COUNT(af.user_id) as seguidores
FROM artist as a
JOIN album as ab ON a.artist_id = ab.artist_id
JOIN artist_follower as af ON a.artist_id = af.artist_id
GROUP BY a.name_artist, ab.name_album
ORDER BY seguidores DESC, artista ,album; 