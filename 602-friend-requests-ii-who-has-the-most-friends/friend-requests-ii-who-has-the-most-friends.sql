# Write your MySQL query statement below
select id, Count(*) as num
from(
    select requester_id as id from RequestAccepted
    union all
    select accepter_id as id from RequestAccepted
)
as all_connections
group by id
order by num DESC
limit 1


-- SELECT friend_id, COUNT(*) AS total_friends
-- FROM (
--     SELECT id AS friend_id FROM friendships
--     UNION ALL
--     SELECT id_1 AS friend_id FROM friendships
-- ) AS all_connections
-- GROUP BY friend_id
-- ORDER BY total_friends DESC
-- LIMIT 1;
