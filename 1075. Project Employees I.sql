select p.project_id  , round(avg(cast(e.experience_years as decimal(10,2))) , 2 ) as [average_years]
from Employee e , Project p
where e.employee_id = p.employee_id 
group by p.project_id