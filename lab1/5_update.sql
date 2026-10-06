USE car_rental;

UPDATE rental_agreements
SET return_date = '2026-12-01'
WHERE rental_agreement_id = 10;

UPDATE cars
SET car_condition = 'Чудовий'
WHERE car_condition = 'В ремонті';

UPDATE models
SET price_per_day = price_per_day * 0.9
WHERE make = 'Volkswagen';

UPDATE clients
SET driving_licence_number        = 'AO5566710',
    driving_licence_date_of_issue = '2026-09-23'
WHERE first_name = 'Марія'
  AND last_name = 'Коваленко';
