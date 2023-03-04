SELECT COUNT(a.id_artist) AS 'cancoes', COUNT(b.id_artist) AS 'artistas', COUNT(c.id_artist) AS 'albuns'
FROM `SpotifyClone`.song AS a
LEFT JOIN `SpotifyClone`.artists AS b
ON a.id_song = b.id_artist
LEFT JOIN `SpotifyClone`.album AS c
ON a.id_song = c.id_album;



