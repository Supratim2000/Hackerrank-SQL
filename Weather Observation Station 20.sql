select round(tab1.lat_n,4) from (select (row_number() over(order by lat_n)) as num,lat_n from station) as tab1 where num=(select ceil(count(lat_n)/2) from station);
