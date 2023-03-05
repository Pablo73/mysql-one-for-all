SELECT * FROM `SpotifyClone`.`user`;

SELECT * FROM `SpotifyClone`.playback_history;


SELECT a.name_user, IF(YEAR(b.date_playback) >= 2021, 'Ativa', 'Inativa')
FROM `SpotifyClone`.user AS a
INNER JOIN `SpotifyClone`.playback_history AS b
ON a.id_user = b.id_user
ORDER BY a.name_user;