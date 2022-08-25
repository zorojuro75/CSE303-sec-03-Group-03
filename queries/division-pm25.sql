use redsight;

select division,pm25
from location as l inner join weather_info as w
using(locID)
group by division
having avg(pm25)
;