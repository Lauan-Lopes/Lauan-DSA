
USE ContosoRetailDW
SELECT TOP 100 
	SalesKey,
	DateKey,
	FactSales.channelKey,
	DimChannel.ChannelKey,
	DimChannel.ChannelName,
	DimChannel.*
FROM FactSales
INNER JOIN DimChannel ON DimChannel.ChannelKey = FactSales.channelKey
