

USE ContosoRetailDW

SELECT TOP 100 WITH TIES
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'QUANTIDADE CARROS',
	Education
FROM DimCustomer
WHERE Education = 'High School'
ORDER BY 2 DESC, 3 DESC, 4 DESC, 'QUANTIDADE CARROS' DESC