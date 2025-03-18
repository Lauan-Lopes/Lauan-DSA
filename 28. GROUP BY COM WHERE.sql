
USE ContosoRetailDW

SELECT
	S.channelKey, 
	S.PromotionKey,
	SUM(S.SalesAmount) AS SOMA,
	AVG(S.SalesAmount) AS MEDIA,
	MIN(S.SalesAmount) AS MINIMO,
	MAX(S.SalesAmount) AS MAXIMO,
	COUNT(S.SalesAmount) AS CONTAGEM

FROM FactSales AS S

WHERE
	S.channelKey IN (1,2) AND
	S.PromotionKey BETWEEN 1 AND 5

GROUP BY S.channelKey, S.PromotionKey
ORDER BY S.channelKey, S.PromotionKey