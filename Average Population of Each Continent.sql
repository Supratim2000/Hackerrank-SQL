select cn.continent,FLOOR(AVG(ct.population)) from country as cn join city as ct on cn.code=ct.countrycode group by cn.continent;
