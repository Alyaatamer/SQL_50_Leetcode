select r.contest_id  ,
round(cast((count(r.user_id)*100.0/(select count(u.user_id)from users u )) as decimal(10,2)) , 2) [percentage]
from Users u , Register r
where u.user_id = r.user_id 
group by r.contest_id 
order by percentage desc , r.contest_id 

