SELECT a.name_album AS 'album', COUNT(c.id_song) AS 'favoritadas'
FROM `SpotifyClone`.album AS a
INNER JOIN `SpotifyClone`.song AS b
ON a.id_album = b.id_album
INNER JOIN `SpotifyClone`.favorite_song AS c
ON b.id_song = c.id_song
GROUP BY a.name_album
ORDER BY COUNT(c.id_song) DESC, a.name_album
LIMIT 3;
