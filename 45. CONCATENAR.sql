
DECLARE @USER VARCHAR(30)
SET @USER = ' Maria Maria '

DECLARE @USER2 VARCHAR(30)
SET @USER2 = ' Joao Joao '

SELECT @USER + @USER2 AS NAMES

SELECT CONCAT('BRUCE', @USER2, 'FONSECA', @USER)

SELECT CONCAT('BRUCE', ' ', 'FONSECA')