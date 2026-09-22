DELETE
FROM rental_agreements
WHERE rental_agreement_id = 5;

DELETE
FROM rental_agreements
WHERE return_date < '2026-09-23';

DELETE
FROM clients
WHERE first_name = 'Дмитро'
  AND last_name = 'Шевченко';
