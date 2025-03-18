

USE ContosoRetailDW

SELECT
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'QUANTIDADE CARROS',
	Education
FROM DimCustomer
	WHERE 
	MaritalStatus IS NULL