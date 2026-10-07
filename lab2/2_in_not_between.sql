USE car_rental;

SELECT *
FROM models
WHERE make IN ('Toyota', 'Volkswagen');

SELECT *
FROM models
WHERE make NOT IN ('Toyota', 'Volkswagen');

SELECT *
FROM models
WHERE price_per_day BETWEEN 900 AND 1100;

SELECT *
FROM rental_agreements
WHERE agreement_duration_days * agreement_cost BETWEEN 30000 AND 50000;
