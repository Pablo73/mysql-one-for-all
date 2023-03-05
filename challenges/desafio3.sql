SELECT a.name_user AS 'pessoa_usuaria',
COUNT(b.id_song) AS 'musicas_ouvidas',
ROUND(SUM(c.duration_in_seconds) / 60, 2) AS 'total_minutos'
FROM `SpotifyClone`.`user` AS a
LEFT JOIN `SpotifyClone`.playback_history AS b
ON a.id_user = b.id_user
LEFT JOIN `SpotifyClone`.song AS c
ON b.id_song = c.id_song
GROUP BY a.id_user
ORDER BY a.name_user;