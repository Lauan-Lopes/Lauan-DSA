
SELECT 
'SQL PARA ANALISE DE DADOS',
REPLACE(' SQL PARA ANALISE DE DADOS', 'ANALISE', 'ANÁLISE'), -- TROCA UM TEXTO ESPECIFICADO APÓS PRIMEIRA VIRGULA
REPLACE(TRIM(' SQL PARA ANALISE DE DADOS'), 'DE DADOS', '') -- REMOVE O TEXTO ESPECIFICADO E REMOVE OS ESPAÇOS TAMBEM
