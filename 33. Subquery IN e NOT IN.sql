-- ENCONTRAR O FATURAMENTO DOS PRODUTOS ACIMA DA MEDIA
USE ContosoRetailDW

-- NOT IN
SELECT 
*
FROM FactSales S
WHERE S.ProductKey NOT IN(
	SELECT 
	ProductKey
	FROM DimProduct
	WHERE UnitPrice <= (SELECT AVG(UnitPrice) FROM DimProduct)
)
ORDER BY UnitPrice ASC

-- ENCONTRAR O FATURAMENTO DOS PRODUTOS ABAIXO DA MEDIA
USE ContosoRetailDW

-- IN
SELECT 
*
FROM FactSales S
WHERE S.ProductKey IN(
	SELECT 
	ProductKey
	FROM DimProduct
	WHERE UnitPrice <= (SELECT AVG(UnitPrice) FROM DimProduct)
)
ORDER BY UnitPrice DESC