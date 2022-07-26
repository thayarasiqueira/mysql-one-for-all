SELECT COUNT(t.track_id) AS cancoes, COUNT(a.artist_id) AS artistas, COUNT(al.album_id) AS albuns
FROM SpotifyClone.tracks AS t, SpotifyClone.artists AS a, SpotifyClone.albuns AS al;