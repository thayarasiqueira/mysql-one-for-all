SELECT t.track_name AS nome, COUNT(p.user_id) AS reproducoes
FROM SpotifyClone.tracks AS t
INNER JOIN SpotifyClone.played AS p ON p.track_id = t.track_id
INNER JOIN SpotifyClone.users AS u ON p.user_id = u.user_id
WHERE u.plan_id IN (1, 2)
GROUP BY nome
ORDER BY t.track_name; 