select hacker_id,name,sum(max_score) as total from
(
    select h.name,s.hacker_id,s.challenge_id,max(s.score) as max_score from hackers as h
    join submissions as s on h.hacker_id=s.hacker_id and score!=0 group by h.name,s.hacker_id,s.challenge_id
)
as tab1 group by hacker_id,name order by total desc, hacker_id;
