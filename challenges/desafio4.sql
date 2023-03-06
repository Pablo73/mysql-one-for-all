SELECT a.name_user AS 'pessoa_usuaria',
IF(MAX(YEAR(b.date_playback)) >= 2021, 'Ativa', 'Inativa')AS 'status_pessoa_usuaria'
FROM `SpotifyClone`.user AS a
LEFT JOIN `SpotifyClone`.playback_history AS b
ON a.id_user = b.id_user
GROUP BY a.name_user
ORDER BY a.name_user;