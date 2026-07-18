# Write your MySQL query statement below
Select v.customer_id, Count(v.visit_id) AS count_no_trans from Visits v
LEFT Join Transactions
ON v.visit_id = Transactions.visit_id
WHERE Transactions.transaction_id IS NULL
GROUP BY v.customer_id;