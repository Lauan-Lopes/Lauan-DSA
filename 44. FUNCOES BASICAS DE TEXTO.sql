
DECLARE @USER VARCHAR(30)
SET @USER = ' Maria Maria '

SELECT 
@USER,
LEN(@USER), -- Mostra o n�mero de caracteres 
RTRIM(@USER), -- Limpa o espa�o a direita da variavel
LTRIM (@USER), -- limpa o espa�o a esquerda da variavel
TRIM (@USER) -- Limpa todos os espa�os

UPPER(TRIM(@USER) -- Deixar todo em mai�sculo a variavel e retira os espa�os
LOWER(TRIM(@USER) -- Deixar todo em min�sculo a variavel e retira os espa�os
UPPER(lOWER(TRIM(@USER)) -- Deixar minusculo e depois maisculo a variavel e retira os espa�os


