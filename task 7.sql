/*Find the number of suppliers in each country, and show the results in alphabetical order of country names.*/
SELECT (SELECT COUNT(supplier.location_id) FROM supplier, location, city 
	   WHERE supplier.location_id=location.location_id 
	   AND location.city_id=city.city_id
	   AND country.country_id=city.country_id),
	   *
FROM country
ORDER BY country;