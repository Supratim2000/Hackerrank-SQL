select round(long_w,4) from station where lat_n=(select lat_n from station where lat_n-38.7780>0 order by lat_n limit 1);
