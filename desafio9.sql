SELECT COUNT(p.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.played AS p
WHERE user_id = 3;