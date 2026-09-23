with data_new as (select p.project_id , sum(e.experience_years) as sums,count(*)  as emp from Project as p
left join Employee as e
on p.employee_id=e.employee_id
group by p.project_id
)

select project_id ,cast((sums * 1.0/emp) as decimal(5,2)) as average_years from data_new
order by project_id
