# Write your MySQL query statement below
Select query_name, Round(Sum(rating/position)/count(query_name),2) as quality, 
Round(sum(rating < 3)/count(query_name)*100,2) as poor_query_percentage
From Queries 
group by query_name