USE car_rental;

SELECT *
FROM models
WHERE price_per_day > (SELECT AVG(price_per_day) FROM models);

SELECT client_id, SUM(agreement_cost) AS total_spent
FROM rental_agreements
GROUP BY client_id
HAVING SUM(agreement_cost) > (SELECT AVG(agreement_cost)
                              FROM rental_agreements);
