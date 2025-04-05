select product_name,year,price
from sales s inner join product p
on p.product_id=s.product_id