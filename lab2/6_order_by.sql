USE car_rental;

SELECT *
FROM models
ORDER BY price_per_day;

SELECT *
FROM rental_agreements
ORDER BY agreement_duration_days DESC;

SELECT *
FROM models
ORDER BY capacity, body;

SELECT client_id,
       agreement_duration_days,
       agreement_cost
FROM rental_agreements
ORDER BY agreement_duration_days DESC, agreement_cost DESC;
