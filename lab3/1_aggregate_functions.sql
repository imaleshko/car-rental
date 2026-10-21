USE car_rental;

SELECT AVG(price_per_day)
FROM models;

SELECT AVG(agreement_duration_days) AS Average_Duration
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

SELECT COUNT(*)                     AS Agreement_Count,
       COUNT(return_date)           AS Returned,
       AVG(agreement_duration_days) AS Average_Duration,
       SUM(agreement_cost)          AS Agreement_Sum
FROM rental_agreements;
