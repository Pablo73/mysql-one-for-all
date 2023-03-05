SELECT a.name_song AS 'cancao', COUNT(b.id_song) AS 'reproducoes'
FROM `SpotifyClone`.song AS a
INNER JOIN `SpotifyClone`.playback_history AS b
ON a.id_song = b.id_song
GROUP BY a.name_song
ORDER BY COUNT(b.id_song) DESC, a.name_song
LIMIT 2;