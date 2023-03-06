SELECT a.name_artist AS 'artista', 

CASE 
    WHEN COUNT(c.id_song) >= 5 THEN 'A'
    WHEN COUNT(c.id_song) <= 4 AND COUNT(c.id_song) >= 3 THEN 'B'
    WHEN COUNT(c.id_song) <= 3 AND COUNT(c.id_song) > 1 THEN 'C'
    ELSE '-'
 END AS 'ranking'

FROM `SpotifyClone`.artists AS a
LEFT JOIN `SpotifyClone`.song AS b
ON a.id_artist = b.id_artist
LEFT JOIN `SpotifyClone`.favorite_song AS c
ON b.id_song = c.id_song
GROUP BY a.name_artist
ORDER BY COUNT(c.id_song) DESC, artista;