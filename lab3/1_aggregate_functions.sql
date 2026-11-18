USE car_rental;

SELECT AVG(price_per_day)
FROM models;

SELECT AVG(agreement_duration_days) AS average_duration
FROM rental_agreements;

SELECT COUNT(*)
FROM rental_agreements;

SELECT COUNT(return_date)
FROM rental_agreements;

SELECT MIN(price_per_day)
FROM models;

SELECT MAX(price_per_day)
FROM models;

SELECT SUM(agreement_cost)
FROM rental_agreements;

SELECT COUNT(DISTINCT make)
FROM models;

SELECT COUNT(ALL make)
FROM models;

SELECT COUNT(DISTINCT colour)
FROM cars;

SELECT COUNT(ALL colour)
FROM cars;

SELECT COUNT(*)                     AS agreement_count,
       COUNT(return_date)           AS returned,
       AVG(agreement_duration_days) AS average_duration,
       SUM(agreement_cost)          AS agreement_sum
FROM rental_agreements;
