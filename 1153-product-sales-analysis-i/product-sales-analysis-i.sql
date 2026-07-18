# Write your MySQL query statement below
select Product.product_name, Sales.year, Sales.price
From Sales
LEFT JOIN Product ON Product.product_id = Sales.product_id

