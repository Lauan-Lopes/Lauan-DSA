
USE ContosoRetailDW

-- TOP 5 PRODUTOS COM MAIOR VENDA
SELECT TOP 5
		S.ProductKey,
		SUM(S.SalesAmount) AS SALES
	FROM FactSales S
	GROUP BY S.ProductKey
	ORDER BY SALES DESC


-- TODAS AS VENDAS DOS PRODUTOS COM MAIOR VENDA (TOP5)
SELECT
	S2.*
FROM FactSales S2
INNER JOIN (
	SELECT TOP 5
		S.ProductKey,
		SUM(S.SalesAmount) AS SALES
	FROM FactSales S
	GROUP BY S.ProductKey
	ORDER BY SALES DESC
) AS TOP5 ON TOP5.ProductKey = S2.ProductKey


-- VALIDAÇÃO TOP 5
SELECT 
	DISTINCT(VAL.PRODUCTKEY)
FROM (
	SELECT
	S2.*
FROM FactSales S2
INNER JOIN (
	SELECT TOP 5
		S.ProductKey,
		SUM(S.SalesAmount) AS SALES
	FROM FactSales S
	GROUP BY S.ProductKey
	ORDER BY SALES DESC
) AS TOP5 ON TOP5.ProductKey = S2.ProductKey )
AS VAL
