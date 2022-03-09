SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM reproduction as r
INNER JOIN `user` as u ON r.user_id = u.user_id
WHERE u.name_user = 'Bill';