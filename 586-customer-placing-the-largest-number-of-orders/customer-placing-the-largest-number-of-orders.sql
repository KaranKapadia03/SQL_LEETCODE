select customer_number from 
(select top 1 customer_number, count(*) as asd from Orders
group by customer_number
order by asd desc) as a