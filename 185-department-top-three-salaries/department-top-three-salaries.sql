select Department,Employee,Salary from


(select d.name as [Department] , e.name as [Employee],e.salary as [Salary], dense_rank() over(partition by e.departmentid order by e.salary desc) as asd from employee as e 
left join department as d
on e.departmentid=d.id)
as same
where same.asd in(1,2,3)