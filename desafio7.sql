SELECT a.artist_name AS artista, al.album AS album, COUNT(f.artist_id_followed) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albuns AS al ON a.artist_id = al.artist_id
INNER JOIN SpotifyClone.follows AS f ON a.artist_id = f.artist_id_followed
GROUP BY a.artist_id, al.album_id
ORDER BY COUNT(f.user_id_following) DESC, a.artist_name, al.album;