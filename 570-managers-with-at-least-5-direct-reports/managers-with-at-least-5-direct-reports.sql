select name from Employee as e
inner join 
(select managerid, count(*) as boys from Employee
group by managerid
having  count(*)>=5
)
as a
on e.id=a.managerid