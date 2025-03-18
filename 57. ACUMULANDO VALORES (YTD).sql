USE ContosoRetailDW;

WITH TOTAL_VENDAS(ANO, MES, VENDAS) AS
(
	SELECT	
	DATEPART(YEAR, S.DATEKEY) AS ANO,
	DATEPART(MONTH, S.DATEKEY) AS MES,
	SUM(S.SALESAMOUNT) AS VENDAS
	FROM FACTONLINESALES S
	GROUP BY DATEPART(YEAR, S.DATEKEY), DATEPART(MONTH, S.DATEKEY)
)
SELECT
	ANO, MES,
	FORMAT(VENDAS, 'C0') AS 'VENDAS',
	FORMAT(SUM(VENDAS) OVER(PARTITION BY ANO ORDER BY MES), 'C0') AS VENDAS_YTD,
	FORMAT(SUM(VENDAS) OVER(PARTITION BY ANO), 'C0') AS VENDAS_TOTAL_ANO
FROM TOTAL_VENDAS
ORDER BY ANO,MES