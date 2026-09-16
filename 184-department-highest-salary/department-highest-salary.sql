select Department, Employee, salary from


(select d.name as [Department] , e.name as [Employee],e.salary as [Salary], rank() over(partition by e.departmentid order by e.salary desc) as asd from employee as e 
left join department as d
on e.departmentid=d.id)
as same
where same.asd =1

