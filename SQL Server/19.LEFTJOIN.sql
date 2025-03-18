

SELECT
	count(DISTINCT(productkey))
FROM DimProduct

SELECT
	count(DISTINCT(productkey))
FROM FactSales

SELECT DISTINCT
	P.ProductKey,
	P.ProductName,
	S.ProductKey AS 'S.ProductKey'
FROM DimProduct AS P
LEFT JOIN FactSales AS S ON S.ProductKey=P.ProductKey
ORDER BY 3
