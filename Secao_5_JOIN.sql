-- Seção 5: JOIN
-- 35. Utilizando o inner Join
-- 36. Filtrando com os Joins
-- 37. Adicionando um Alias
-- Eu quero os dados de Customer_ID, First_name, Last_name, Rental_ID, amont

SELECT 
    cus.customer_id,
    COUNT(pay.payment_id) AS ID_de_pagamento,
    cus.first_name,
    cus.last_name,
    AVG(pay.amount) AS Average_pay_amount,
    addr.address
FROM
    customer cus
        JOIN
    payment pay ON cus.customer_id = pay.customer_id
        JOIN
    address addr ON pay.customer_id = addr.address_id
GROUP BY cus.customer_id , cus.first_name , cus.last_name , addr.address;