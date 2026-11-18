USE car_rental;

SELECT cars.registration_plate,
       cars.colour,
       cars.car_condition,
       rental_agreements.agreement_cost
FROM rental_agreements
         INNER JOIN cars ON rental_agreements.car_id = cars.car_id
ORDER BY rental_agreements.agreement_cost;

SELECT m.make,
       m.name,
       c.registration_plate
FROM models AS m
         JOIN cars AS c ON m.model_id = c.model_id
WHERE c.car_condition = 'Чудовий';

SELECT a.agreement_date,
       a.agreement_duration_days,
       a.agreement_cost,
       a.return_date,
       m.name,
       m.make,
       c.colour,
       c.year_of_manufacture,
       c.registration_plate
FROM rental_agreements AS a
         JOIN cars AS c ON a.car_id = c.car_id AND c.car_condition = 'Гарний'
         JOIN models AS m ON c.model_id = m.model_id;

SELECT clients.first_name,
       clients.last_name,
       clients.driving_licence_number,
       cars.registration_plate,
       rental_agreements.agreement_cost
FROM rental_agreements
         JOIN clients ON rental_agreements.client_id = clients.client_id
         JOIN cars ON rental_agreements.car_id = cars.car_id
ORDER BY rental_agreements.agreement_cost;
