SELECT MIN(a.price) AS 'faturamento_minimo', 
MAX(a.price) AS 'faturamento_maximo',
ROUND(AVG(a.price), 2) AS 'faturamento_medio',
ROUND(SUM(a.price), 2) AS 'faturamento_total'
FROM `SpotifyClone`.hiring_plan AS a
INNER JOIN `SpotifyClone`.`user` AS b
ON a.id_plan = b.id_plan;
