SELECT a.name_artist AS 'artista', b.name_album AS 'album'
FROM `SpotifyClone`.album AS b
INNER JOIN `SpotifyClone`.artists AS a
ON a.id_artist = b.id_artist
WHERE a.name_artist = 'Elis Regina'
ORDER BY a.name_artist;