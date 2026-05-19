# Write your MySQL query statement below
select product_name, sum(O.unit) as unit
from Products p
Join Orders O
ON p.product_id = O.product_id
where Month(O.order_date) = 2 AND Year(O.order_date) = 2020
group by O.product_id
having sum(O.unit) >=100


