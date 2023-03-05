SELECT * FROM `SpotifyClone`.`user`;

SELECT * FROM `SpotifyClone`.playback_history;

SELECT a.name_user AS 'pessoa_usuaria', 
CASE 
    WHEN YEAR(b.date_playback) >= 2021 THEN 'Ativa'
    ELSE 'Inativa'
 END AS 'status_pessoa_usuaria'
FROM `SpotifyClone`.user AS a
INNER JOIN `SpotifyClone`.playback_history AS b
ON a.id_user = b.id_user

ORDER BY a.name_user;