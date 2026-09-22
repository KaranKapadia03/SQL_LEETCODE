
with data_new as (select max(num) as num from mynumbers
group by num
having count(num)=1)

select max(num) as num from (select num from data_new) as t




