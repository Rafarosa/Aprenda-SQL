-- Seção 5: JOIN
-- 35. Utilizando o inner Join
-- 36. Filtrando com os Joins
-- 37. Adicionando um Alias
-- Eu quero os dados de Customer_ID, First_name, Last_name, Rental_ID, amont

select
	cus.customer_id,
	-- pay.payment_id ,
	cus.first_name,
	cus.last_name,
	-- pay.rental_id,
	max (pay.amount),
	addr.address 
from
	customer cus
join payment pay on
	cus.customer_id = pay.customer_id
join address addr on
	pay.customer_id  = addr.address_id;