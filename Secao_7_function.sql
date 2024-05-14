-- Seção 7 - Funções 

-- 48. introdução a funções
-- https://www.w3schools.com/mysql/mysql_ref_functions.asp
-- 49. Funções basicas
/* Quero saber qual é o maior valor de venda, o menor e a média

*/
use sakila;
select * from payment p;
-- retornar o maior valor, minimo, média
select
	max(amount) as 'Maior valor',
	min(amount) as 'Menor valor',
	avg(amount) as 'Media de valores'
from
	payment p; 

-- 50 utilizando o count e sum
select
	max(amount) as 'Maior valor',
	min(amount) as 'Menor valor',
	avg(amount) as 'Media de valores',
	sum(amount) as 'Tota de vendas',
	count(amount) as 'Numero de vendas' 
from
	payment p
where staff_id = 2;

-- 51. agrupando clientes
-- mostrar quanto cada cliente gastou
-- 
select
	p.customer_id,
	c.first_name,
	c.last_name,
	sum(amount) as Total,
	count(amount) as Compras 
from
	payment p
join customer c on
	p.customer_id = c.customer_id
group by c.customer_id
having Total >= 150 and Compras > 40
order by
	Total desc;



