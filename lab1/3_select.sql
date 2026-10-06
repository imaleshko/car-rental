USE car_rental;

SELECT *
FROM cars;

SELECT first_name
FROM clients;

SELECT name, make
FROM models
WHERE price_per_day > 1500;

SELECT registration_plate, colour, mileage
FROM cars
WHERE car_condition = 'В ремонті';

SELECT rental_agreement_id, agreement_date, agreement_duration_days, agreement_cost
FROM rental_agreements
WHERE agreement_duration_days > 5;
