

USE ContosoRetailDW

-- Buscando nome completo
SELECT 
	FirstName + '' + LastName AS 'FullName',
	*FROM DimEmployee
WHERE FirstName + '' + LastName LIKE 'Aaron Painter'

-- Começa com Aaron

SELECT 
	FirstName + '' + LastName AS 'FullName',
	*FROM DimEmployee
WHERE FirstName + '' + LastName LIKE 'Aaron%'

-- Que contém Paul em qualquer parte da string
SELECT 
	FirstName + '' + LastName AS 'FullName',
	*FROM DimEmployee
WHERE FirstName + '' + LastName LIKE '%paul%'

-- Termina com Allen
SELECT 
	FirstName + '' + LastName AS 'FullName',
	*FROM DimEmployee
WHERE FirstName + '' + LastName LIKE '%Allen'

-- Começa com Michael
SELECT 
	FirstName + '' + LastName AS 'FullName',
	*FROM DimEmployee
WHERE FirstName + '' + LastName LIKE 'Michael%'

-- Começa com Nur__
SELECT 
	FirstName + '' + LastName AS 'FullName',
	*FROM DimEmployee
WHERE FirstName + '' + LastName LIKE 'Nur__%'

-- Termina com Gonzalez
SELECT 
	FirstName + '' + LastName AS 'FullName',
	*FROM DimEmployee
WHERE FirstName + '' + LastName LIKE '%zal__'

-- Termina com Neves
SELECT 
	FirstName + '' + LastName AS 'FullName',
	*FROM DimEmployee
WHERE FirstName + '' + LastName LIKE '%nev__'

-- Contém Gonzales com Z ou S
SELECT 
	FirstName + '' + LastName AS 'FullName',
	*FROM DimEmployee
WHERE FirstName + '' + LastName LIKE '%gon[zs]ale[zs]%'
