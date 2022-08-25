use redsight;

select year(daily) as yyyy,avg(pm25) as pm
from location as l inner join weather_info as w
using(locID)
group by year(daily)