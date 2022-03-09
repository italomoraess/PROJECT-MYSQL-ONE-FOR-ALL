SELECT s.name_song as cancao, COUNT(r.song_id) as reproducoes
FROM reproduction as r 
JOIN song as s ON s.song_id = r.song_id
GROUP BY s.name_song
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;