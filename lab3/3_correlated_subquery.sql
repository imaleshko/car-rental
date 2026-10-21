USE car_rental;

SELECT name, make, price_per_day, body
FROM models AS model
WHERE price_per_day > (SELECT AVG(price_per_day)
                       FROM models AS sub_model
                       WHERE sub_model.body = model.body);

SELECT agreement_date,
       return_date,
       (SELECT driving_licence_number
        FROM clients
        WHERE clients.client_id = rental_agreements.client_id) AS licence_number
FROM rental_agreements;
