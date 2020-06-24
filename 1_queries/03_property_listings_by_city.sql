select properties.id, properties.title, properties.cost_per_night, avg(property_reviews.rating), properties.city
from properties
  join property_reviews on properties.id = property_id
where city = 'Vancouver'
group by properties.title
