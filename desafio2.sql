SELECT COUNT(s.name_song) as cancoes, COUNT(DISTINCT(a.name_artist)) as artistas, COUNT(DISTINCT(ab.name_album)) as albuns
from song as s
JOIN album as ab on ab.album_id  = s.album_id
JOIN artist as a on a.artist_id = ab.artist_id;