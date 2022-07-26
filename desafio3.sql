SELECT u.user_name AS usuario, COUNT(p.user_id) AS qtde_musicas_ouvidas, ROUND(SUM(t.length_in_seconds)/60, 2) AS total_minutos
FROM SpotifyClone.users AS u, SpotifyClone.played AS p, SpotifyClone.tracks AS t
WHERE u.user_id = p.user_id AND t.track_id = p.track_id
GROUP BY u.user_id
ORDER BY u.user_name;