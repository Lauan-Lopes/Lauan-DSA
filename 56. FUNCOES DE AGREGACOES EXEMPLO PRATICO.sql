USE BikeStores

SELECT
	P.CATEGORYID,
	P.BRANDID,
	P.PRODUCTID,
	P.NAME,
	P.LISTPRICE,
	COUNT(*) OVER() AS PRODUTOS,
	COUNT(*) OVER(PARTITION BY P.BRANDID) AS PRODUTOS_BRAND,
	SUM(P.LISTPRICE) OVER() AS SOMA_PRECOS,
	SUM(P.LISTPRICE) OVER(PARTITION BY P.BRANDID) AS SOMA_PRECOS,
	AVG(P.LISTPRICE) OVER() AS PRECOS_AVG,
	MAX(P.LISTPRICE) OVER() AS PRECOS_MAX,
	MIN(P.LISTPRICE) OVER() AS PRECOS_MIN
FROM PRODUCTION.PRODUCT AS P
WHERE P.CategoryID = 1
ORDER BY BrandID