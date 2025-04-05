select unique_id,name
from employees e left outer join employeeuni euni
on e.id=euni.id