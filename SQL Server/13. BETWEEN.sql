

USE ContosoRetailDW

SELECT
	EmailAddress,
	Gender,
	MaritalStatus,
	TotalChildren,
	NumberChildrenAtHome,
	NumberCarsOwned AS 'QUANTIDADE CARROS',
	Education,
	BirthDate
FROM DimCustomer
	WHERE 
	MaritalStatus IS NOT NULL
	--AND TotalChildren >= 2 AND TotalChildren <= 4
	AND TotalChildren BETWEEN 2 AND 4
	AND BirthDate BETWEEN '1950-01-01' AND '1960-01-02'
	order by BirthDate DESC
