USE car_rental;

SELECT *
FROM rental_agreements
WHERE return_date IS NULL;

SELECT *
FROM rental_agreements
WHERE return_date IS NOT NULL;
