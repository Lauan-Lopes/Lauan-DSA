
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
GROUP BY S.channelKey, S.PromotionKey
ORDER BY S.channelKey, S.PromotionKey
