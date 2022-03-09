SELECT u.name_user as usuario, COUNT(r.song_id) as qtde_musicas_ouvidas, ROUND(SUM(s.duration / 60),2) as total_minutos
FROM `user` as u
JOIN reproduction as r ON u.user_id = r.user_id
JOIN song as s ON r.song_id = s.song_id
GROUP BY u.name_user 
ORDER BY u.name_user;