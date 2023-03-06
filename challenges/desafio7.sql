SELECT a.name_artist AS 'artista', b.name_album AS 'album',
COUNT(c.id_user) AS 'pessoas_seguidoras'
FROM `SpotifyClone`.artists AS a
INNER JOIN `SpotifyClone`.album AS b
ON a.id_artist = b.id_artist
INNER JOIN `SpotifyClone`.following_artists AS c
ON a.id_artist = c.id_artist
GROUP BY b.id_album
ORDER BY pessoas_seguidoras DESC, a.name_artist, b.name_album;