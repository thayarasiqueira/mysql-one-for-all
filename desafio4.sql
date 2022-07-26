SELECT u.user_name AS usuario, IF(MAX(YEAR(p.date_played)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario 
FROM SpotifyClone.users AS u, SpotifyClone.played AS p 
WHERE u.user_id = p.user_id
GROUP BY u.user_name
ORDER BY u.user_name;