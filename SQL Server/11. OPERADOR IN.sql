
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
	WHERE Education IN ('BACHELORS', 'GRADUATE DEGREE')
	AND NumberChildrenAtHome >= 2
	AND NOT MaritalStatus = 'M'
	AND TotalChildren IN(3, 4)
