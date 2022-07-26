SELECT t.track_name AS cancao, COUNT(p.track_id) AS reproducoes
FROM SpotifyClone.tracks AS t, SpotifyClone.played AS p
WHERE t.track_id = p.track_id
GROUP BY t.track_id
ORDER BY COUNT(p.track_id) DESC, t.track_name LIMIT 2;