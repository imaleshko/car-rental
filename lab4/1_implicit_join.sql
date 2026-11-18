USE car_rental;

SELECT clients.last_name,
       rental_agreements.agreement_cost
FROM clients,
     rental_agreements
WHERE clients.client_id = rental_agreements.client_id;

SELECT m.name,
       m.make,
       c.colour,
       c.car_condition
FROM models AS m,
     cars AS c
WHERE m.model_id = c.model_id;

SELECT a.agreement_date,
       a.agreement_duration_days,
       m.name,
       m.make,
       c.registration_plate
FROM rental_agreements AS a,
     models AS m,
     cars AS c
WHERE a.return_date IS NULL
  AND a.car_id = c.car_id
  AND m.model_id = c.model_id;

SELECT rental_agreements.agreement_date,
       clients.last_name,
       clients.driving_licence_number,
       cars.registration_plate
FROM rental_agreements,
     clients,
     cars
WHERE rental_agreements.client_id = clients.client_id
  AND rental_agreements.car_id = cars.car_id;
