

SELECT TOP 100

S.SalesKey,
S.SalesAmount,
ST.StoreKey,
ST.StoreName,
G.ContinentName

FROM FactSales AS S
INNER JOIN DimStore AS ST ON ST.StoreKey = S.StoreKey
INNER JOIN DimGeography AS G ON G.GeographyKey = ST.GeographyKey
WHERE G.ContinentName = 'Europe'
ORDER BY ST.StoreName DESC
