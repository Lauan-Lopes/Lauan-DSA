

USE ContosoRetailDW

SELECT 
	StoreKey AS 'CÓDIGO DA LOJA', 
	StoreName AS 'NOME DA LOJA',
	EmployeeCount AS 'QUANTIDADE DE FUNCIONARIOS'

	FROM DimStore
