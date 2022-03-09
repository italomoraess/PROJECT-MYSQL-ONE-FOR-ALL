SELECT u.name_user as usuario,
IF(YEAR(MAX(r.date)) = 2021,'Usuário ativo','Usuário inativo') as condicao_usuario
FROM `user` as u
JOIN reproduction as r ON u.user_id = r.user_id
GROUP BY u.name_user
ORDER BY u.name_user;