USE car_rental;

SELECT *
FROM clients
WHERE client_id IN (SELECT client_id
                    FROM rental_agreements
                    WHERE agreement_cost > (SELECT AVG(agreement_cost) FROM rental_agreements));

INSERT INTO rental_agreements(client_id, car_id, agreement_date, agreement_duration_days, agreement_cost, return_date)
VALUES ((SELECT client_id FROM clients WHERE driving_licence_number = 'AO9876543'),
        4,
        '2026-10-22',
        5,
        5 * (SELECT price_per_day FROM models WHERE name = 'Yaris Cross'),
        '2026-10-27');

UPDATE rental_agreements
SET agreement_cost = agreement_cost - 1000
WHERE car_id IN (SELECT car_id FROM cars WHERE colour = 'Червоний');

UPDATE cars
SET mileage = mileage + (SELECT SUM(rental_agreements.agreement_duration_days) * 100
                         FROM rental_agreements
                         WHERE rental_agreements.car_id = cars.car_id)
WHERE car_id = 5;

DELETE
FROM cars
WHERE model_id IN (SELECT model_id FROM models WHERE body = 'suv')
