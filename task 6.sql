/*Find the top 5 cities with the most customers.*/
SELECT *,
	   (SELECT COUNT(customer.location_id) FROM customer, location 
	   WHERE customer.location_id=location.location_id 
	   AND location.city_id=city.city_id)
FROM city
ORDER BY count DESC LIMIT 5;