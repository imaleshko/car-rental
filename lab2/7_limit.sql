USE car_rental;

SELECT *
FROM models
ORDER BY price_per_day DESC
LIMIT 3;

SELECT *
FROM models
ORDER BY price_per_day DESC
LIMIT 3, 4;
