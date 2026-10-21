USE car_rental;

SELECT first_name, last_name
FROM clients
WHERE EXISTS(SELECT * FROM rental_agreements WHERE rental_agreements.client_id = clients.client_id);

SELECT first_name, last_name
FROM clients
WHERE NOT EXISTS(SELECT * FROM rental_agreements WHERE rental_agreements.client_id = clients.client_id);

SELECT first_name, last_name, driving_licence_number
FROM clients AS c
WHERE EXISTS(SELECT * FROM rental_agreements AS a WHERE a.client_id = c.client_id AND return_date IS NULL);

SELECT agreement_cost
FROM rental_agreements
WHERE EXISTS(SELECT * FROM cars WHERE rental_agreements.car_id = cars.car_id AND cars.colour = 'Червоний');

UPDATE rental_agreements
SET agreement_cost = agreement_cost - 1000
WHERE EXISTS(SELECT * FROM cars WHERE rental_agreements.car_id = cars.car_id AND cars.colour = 'Червоний');
