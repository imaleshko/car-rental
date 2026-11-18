USE car_rental;

SELECT m.make,
       m.name,
       c.registration_plate
FROM cars AS c
         RIGHT JOIN models AS m ON c.model_id = m.model_id
WHERE m.body = 'sedan';

SELECT c.first_name,
       c.last_name,
       a.agreement_date
FROM rental_agreements AS a
         RIGHT JOIN clients AS c ON c.client_id = a.client_id
WHERE a.agreement_date IS NULL;
