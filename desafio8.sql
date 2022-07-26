SELECT a.artist_name AS artista, al.album AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albuns AS al ON a.artist_id = al.artist_id
WHERE a.artist_name = 'Walter Phoenix'
GROUP BY a.artist_id, al.album_id
ORDER BY al.album;