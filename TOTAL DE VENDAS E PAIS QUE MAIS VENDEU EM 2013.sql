-- TOTAL DE VENDAS DE 2013
SELECT
FORMAT(SUM(SALESAMOUNT),'C0') AS TOTAL_DE_VENDAS,
CalendarYear AS ANO
FROM FactInternetSales
INNER JOIN DimDate ON DimDate.DateKey = FactInternetSales.ShipDateKey
WHERE CalendarYear = '2013'
GROUP BY CalendarYear

-- PAIS QUE MAIS VENDEU EM 2013
SELECT
SalesTerritoryCountry AS PAÍS,
FORMAT(SUM(SALESAMOUNT),'C0') AS TOTAL_DE_VENDAS
FROM FactInternetSales
INNER JOIN DimDate ON DimDate.DateKey = FactInternetSales.ShipDateKey
INNER JOIN DimSalesTerritory ON DimSalesTerritory.SalesTerritoryKey = FactInternetSales.SalesTerritoryKey
WHERE CalendarYear = '2013'
GROUP BY SalesTerritoryCountry
ORDER BY TOTAL_DE_VENDAS DESC