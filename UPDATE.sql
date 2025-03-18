
use PRIMEIRO_BD

UPDATE CLIENTES
SET EMAIL = 'LAUAN@HOTMAIL.COM'
WHERE ID_CLIENTE = 1


update CLIENTES
set NOME = 'Lauan Edward',
	email = 'Lauan Lopes@hotmail.com'
WHERE ID_CLIENTE = 1


SELECT TOP (1000) [ID_CLIENTE]
      ,[NOME]
      ,[DATA_CADASTRO]
      ,[EMAIL]
  FROM [PRIMEIRO_BD].[dbo].[CLIENTES]