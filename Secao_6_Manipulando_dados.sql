-- Seção 6: Manibulando dados 
-- 40. informações sobre a tabela 
-- 41. adicionando uma linha 
insert
	into
	`language`
values (default,
'Portugues',
'2006-02-15 05:02:19');

select
	*
from
	`language` l ;
-- 42. Adiconando multiplas linhas
insert
	into
	`language`
values (default,
'Portugues - PT',
'2006-02-15 05:02:19'),
(default,
'Spanish',
'2006-02-15 05:02:19'),
(default,
'Polish',
'2006-02-15 05:02:19');
select * from `language` l ;

-- 43. inserindo dados em multiplas tabelas

select * from city c ;

insert into country values (default, 'Brasil2','2022-02-15 05:02:19');
insert into city values(default, 'Curitiba', last_insert_id(), '2022-02-15 05:02:19');

-- 44. Copiar uma tabela completa (Fazer uma backup)
create table payment_backup as select * from payment p;

-- 45. Removendo uma tabela 
-- truncate table -  remove apenas os dados da tabela Ex: TRUNCATE TABLE sakila.payment_backup;
-- drop table - remos dados + Tabela  Ex: DROP TABLE sakila.payment_backup;

-- 46. Atualizando um valor 

update payment set amount = 15.99 where payment_id = 1;
select * from payment p;

-- 47. Deletar um registro
delete from payment where payment_id = 16044;
select * from payment p where payment_id = 16044;

