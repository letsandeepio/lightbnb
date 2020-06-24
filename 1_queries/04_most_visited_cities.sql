select city, count(*) as total_reservations
from properties
  join reservations on properties.id = property_id
group by city
order by total_reservations DESC;