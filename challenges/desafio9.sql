SELECT COUNT(a.id_user) AS 'musicas_no_historico'
FROM `SpotifyClone`.playback_history AS a
INNER JOIN `SpotifyClone`.`user` AS b
ON a.id_user = b.id_user
WHERE b.name_user = 'Barbara Liskov';