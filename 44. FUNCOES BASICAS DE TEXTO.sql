
DECLARE @USER VARCHAR(30)
SET @USER = ' Maria Maria '

SELECT 
@USER,
LEN(@USER), -- Mostra o número de caracteres 
RTRIM(@USER), -- Limpa o espaço a direita da variavel
LTRIM (@USER), -- limpa o espaço a esquerda da variavel
TRIM (@USER) -- Limpa todos os espaços

UPPER(TRIM(@USER) -- Deixar todo em maiúsculo a variavel e retira os espaços
LOWER(TRIM(@USER) -- Deixar todo em minúsculo a variavel e retira os espaços
UPPER(lOWER(TRIM(@USER)) -- Deixar minusculo e depois maisculo a variavel e retira os espaços


