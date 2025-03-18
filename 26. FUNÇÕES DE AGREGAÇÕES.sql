
USE ContosoRetailDW
--SELECT
SELECT 
	SalesAmount
FROM FactSales

--SOMANDO
SELECT 
	SUM(SalesAmount) AS SOMA
FROM FactSales

--M�DIA
SELECT 
	AVG(SalesAmount) AS MEDIA
FROM FactSales

--CONTAGEM
SELECT 
	COUNT(SalesAmount) AS QTD_LINHAS
FROM FactSales

--MAXIMO
SELECT 
	MAX(SalesAmount) AS MAXIMO
FROM FactSales

--MINIMO
SELECT 
	MIN(SalesAmount) AS MINIMO
FROM FactSales

--M�DIA V2
SELECT 
	SUM(SalesAmount)/COUNT(SalesAmount) AS MEDIA_V2
FROM FactSales

--M�DIA
SELECT 
	AVG(SalesAmount) AS MEDIA
FROM FactSales