select s.name from students as s join friends as f on s.id=f.id join packages as p on f.friend_id=p.id join packages as pp on s.id=pp.id where pp.salary<p.salary order by p.salary;
