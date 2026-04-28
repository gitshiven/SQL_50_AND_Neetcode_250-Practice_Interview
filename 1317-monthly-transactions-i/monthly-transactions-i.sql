# Write your MySQL query statement below
Select DATE_FORMAT(trans_date, '%Y-%m') as month, country, Count(amount) as trans_count, Count(CASE WHEN state = 'approved' THEN id END) AS approved_count, SUM(amount) as trans_total_amount, SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) as approved_total_amount 
FROM Transactions
group by month, country