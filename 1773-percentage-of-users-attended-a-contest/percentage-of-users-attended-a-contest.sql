# Write your MySQL query statement below
select R.contest_id, Round((Count(R.user_id))/(Select Count(*) from users)*100,2) as percentage from Register R
Left Join Users U
On U.user_id = R.user_id
group by R.contest_id
order by percentage DESC, contest_id ASC