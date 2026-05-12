# Write your MySQL query statement below
select product_id, new_price as price
from products
where change_date  <= '2019-08-16'
AND (product_id, change_date) IN
(Select product_id, MAX(change_date)
from Products
where change_date <= '2019-08-16'
group by product_id)

UNION

select product_id, 10 AS price
from products
where product_id NOT IN (
    select product_id
    from products
    where change_date <= '2019-08-16'
)
order by product_id