
USE ContosoRetailDW

SELECT
	S.channelKey, 
	C.ChannelName,
	S.PromotionKey,
	P.PromotionName,
	SUM(S.SalesAmount) AS SOMA,
	AVG(S.SalesAmount) AS MEDIA,
	MIN(S.SalesAmount) AS MINIMO,
	MAX(S.SalesAmount) AS MAXIMO,
	COUNT(S.SalesAmount) AS CONTAGEM

FROM FactSales AS S
INNER JOIN DimChannel AS C ON C.ChannelKey = S.channelKey
INNER JOIN DimPromotion AS P ON P.PromotionKey = S.PromotionKey

WHERE
	S.channelKey IN (1,2) AND
	S.PromotionKey BETWEEN 1 AND 5

GROUP BY S.channelKey,C.ChannelName, S.PromotionKey, P.PromotionName
ORDER BY S.channelKey, S.PromotionKey
