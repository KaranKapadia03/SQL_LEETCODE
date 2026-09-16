select e.name as [Employee] from employee as e
left join employee as r
on e.managerid=r.id
where e.salary>r.salary