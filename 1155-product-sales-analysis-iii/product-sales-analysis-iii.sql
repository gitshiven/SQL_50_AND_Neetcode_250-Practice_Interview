# Write your MySQL query statement below
select product_id, year as first_year, quantity, price from Sales
where (product_id, year) IN 
(select product_id, MIN(year)
from Sales
group by product_id)


#subquery concept is important

#subquery ka kaam hai ek specific set ya value nikalna jo main query ko filter karne mein help kare.

# for example mujhe 5 fruit mai se small orange batana hai, fruits hai big orange, small orange, small banana, small apple, big pear
#ab subquery se mai nikalunga ki bhai small or big batade alag alag and fir main query se orange choose karvadunga