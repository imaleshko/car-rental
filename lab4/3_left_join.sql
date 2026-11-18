USE car_rental;

SELECT c.registration_plate,
       a.agreement_date
FROM cars AS c
         LEFT JOIN rental_agreements AS a ON c.car_id = a.car_id
ORDER BY a.agreement_date;

SELECT c.first_name,
       c.last_name,
       a.agreement_date
FROM clients AS c
         LEFT JOIN rental_agreements AS a ON c.client_id = a.client_id
WHERE a.agreement_date IS NULL;
