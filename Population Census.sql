select sum(ct.population) from city as ct join country as cn on ct.countrycode=cn.code where cn.continent='Asia';
