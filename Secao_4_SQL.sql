-- Operador IN
select * from address a where district in ('Alberta', 'Texas', 'California');

-- Operador Between
select * from payment p where amount between 1.99 and 3.99;

-- Operador LIKE
select * from actor a where first_name like '%o';

-- 29. Operador IS NULL
select * from address a where address2 is null;

/* 
|address_id|address             |address2|district|city_id|postal_code|phone      |location                       |last_update        |
|----------|--------------------|--------|--------|-------|-----------|-----------|-------------------------------|-------------------|
|1         |47 MySakila Drive   |        |Alberta |300    |           |           |POINT (-112.8185647 49.6999986)|2014-09-25 22:30:27|
|2         |28 MySQL Boulevard  |        |QLD     |576    |           |           |POINT (153.1408538 -27.6333361)|2014-09-25 22:30:09|
|3         |23 Workhaven Lane   |        |Alberta |300    |           |14033335568|POINT (-112.8185673 49.6999951)|2014-09-25 22:30:27|
|4         |1411 Lillydale Drive|        |QLD     |576    |           |6172235589 |POINT (153.1913094 -27.6333373)|2014-09-25 22:30:09|

 */

-- 30. Operador Limit

-- Listar os 10 primeiros atores
select * from actor a limit 10;
/*
|actor_id|first_name|last_name   |last_update        |
|--------|----------|------------|-------------------|
|1       |PENELOPE  |GUINESS     |2006-02-15 04:34:33|
|2       |NICK      |WAHLBERG    |2006-02-15 04:34:33|
|3       |ED        |CHASE       |2006-02-15 04:34:33|
|4       |JENNIFER  |DAVIS       |2006-02-15 04:34:33|
|5       |JOHNNY    |LOLLOBRIGIDA|2006-02-15 04:34:33|
|6       |BETTE     |NICHOLSON   |2006-02-15 04:34:33|
|7       |GRACE     |MOSTEL      |2006-02-15 04:34:33|
|8       |MATTHEW   |JOHANSSON   |2006-02-15 04:34:33|
|9       |JOE       |SWANK       |2006-02-15 04:34:33|
|10      |CHRISTIAN |GABLE       |2006-02-15 04:34:33|

 */

-- Listar os 10 primeiros atores apartir do numero 5
select * from actor a limit 5, 10;

/*
|actor_id|first_name|last_name|last_update        |
|--------|----------|---------|-------------------|
|6       |BETTE     |NICHOLSON|2006-02-15 04:34:33|
|7       |GRACE     |MOSTEL   |2006-02-15 04:34:33|
|8       |MATTHEW   |JOHANSSON|2006-02-15 04:34:33|
|9       |JOE       |SWANK    |2006-02-15 04:34:33|
|10      |CHRISTIAN |GABLE    |2006-02-15 04:34:33|
|11      |ZERO      |CAGE     |2006-02-15 04:34:33|
|12      |KARL      |BERRY    |2006-02-15 04:34:33|
|13      |UMA       |WOOD     |2006-02-15 04:34:33|
|14      |VIVIEN    |BERGEN   |2006-02-15 04:34:33|
|15      |CUBA      |OLIVIER  |2006-02-15 04:34:33|

*/

-- 31. Operador REGEXP

select * from actor a where first_name regexp '^[gcr]a';
select * from actor a where first_name regexp '^[sp][aeiou]';
/*
|actor_id|first_name|last_name|last_update        |
|--------|----------|---------|-------------------|
|1       |PENELOPE  |GUINESS  |2006-02-15 04:34:33|
|23      |SANDRA    |KILMER   |2006-02-15 04:34:33|
|30      |SANDRA    |PECK     |2006-02-15 04:34:33|
|31      |SISSY     |SOBIESKI |2006-02-15 04:34:33|
|46      |PARKER    |GOLDBERG |2006-02-15 04:34:33|
|54      |PENELOPE  |PINKETT  |2006-02-15 04:34:33|
|72      |SEAN      |WILLIAMS |2006-02-15 04:34:33|
|90      |SEAN      |GUINESS  |2006-02-15 04:34:33|
|101     |SUSAN     |DAVIS    |2006-02-15 04:34:33|
|104     |PENELOPE  |CRONYN   |2006-02-15 04:34:33|
|105     |SIDNEY    |CROWE    |2006-02-15 04:34:33|
|110     |SUSAN     |DAVIS    |2006-02-15 04:34:33|
|120     |PENELOPE  |MONROE   |2006-02-15 04:34:33|
|122     |SALMA     |NOLTE    |2006-02-15 04:34:33|
*/

-- 32. Operadores Matemáticos
/*
Usando operadores aritméticos.
Para criar expressões aritméticas em uma consulta SQL usamos os operadores abaixo:

+ (somar)
- (subtrair)
* (multiplicar)
/ (dividir)

Os operadores acima podem ser usados apenas em colunas do tipo numérico.

exemplo
SELECT nome, salario, salario*12 As salario_anual
FROM empregados
*/

-- 33. Operador de comparação
/*
Operadores de comparação
Os operadores de comparação são usados em condições que comparam uma expressão a outro valor ou expressão. 
A tabela abaixo mostra os operadores:

= Igual a
> Maior que
>= Maior ou igual a que
< Menor que
<= Menor ou igual a que
<> Diferente de

exemplo
SELECT codigo_empregado, nome, salario
FROM empregados
WHERE codigo_empregado=12

No exemplo acima, usamos o igual para criar um filtro na cláusula where, 
este filtro diz que os dados retornados deverão ser do código de empregado IGUAL a 12. 
*/

-- 34. Operadores Lógicos
/*
Operadores lógicos

O uso de um operador lógico faz com que duas condições tenham de produzir um resultado único. 
Uma linha só poderá ser retornada se o resultado global da condição for verdadeiro.
A tabela abaixo mostra os operadores lógicos disponíveis em SQL:
AND Retorna TRUE se ambas as condições forem verdadeiras
OR Retorna TRUE se uma das condições for verdadeira
NOT Retorna TRUE se a condição seguinte for falsa

No exemplo abaixo uma linha será retornada se o empregado for do estado de SP e o seu salário maior que 2200.

SELECT nome, salário, cidade, estado
FROM empregados
WHERE estado=***SP*** and salario > 2200


Para produzir um resultado diferente basta alterar esta consulta, trocando o operador AND por OR.

SELECT nome, salário, cidade, estado
FROM empregados
WHERE estado=***SP*** or salario > 2200

Neste caso uma linha será retornado se o empregado for do estado de SP ou se o seu salário for maior que 2200.
*/