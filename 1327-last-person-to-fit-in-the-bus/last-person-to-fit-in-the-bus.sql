-- WITH cte AS (
--     SELECT
--         person_name,
--         turn,
--         SUM(weight) OVER (
--             ORDER BY turn
--         ) AS running_weight
--     FROM Queue
-- )

-- SELECT person_name
-- FROM cte
-- WHERE running_weight <= 1000
-- ORDER BY running_weight DESC
-- LIMIT 1;

-- #Window Function   --Interesting


#SELF_JOIN
SELECT 
q1.person_name
FROM Queue q1 JOIN Queue q2 ON q1.turn >= q2.turn
GROUP BY q1.turn
HAVING SUM(q2.weight) <= 1000
ORDER BY SUM(q2.weight) DESC
lIMIT 1