SELECT
CASE 
    WHEN a.age <= 30 THEN 'Até 30 anos'
    WHEN a.age > 30 AND a.age <= 60 THEN 'Entre 31 e 60 anos'
    WHEN a.age > 60 THEN 'Maior de 60 anos'
    ELSE NULL
 END AS 'faixa_etaria',
 COUNT(DISTINCT a.id_user) AS 'total_pessoas_usuarias',
 COUNT(b.id_song) AS 'total_favoritadas'

FROM `SpotifyClone`.`user` AS a
LEFT JOIN `SpotifyClone`.favorite_song AS b
ON a.id_user = b.id_user

GROUP BY faixa_etaria
ORDER BY faixa_etaria;