USE car_rental;

SELECT *
FROM clients
WHERE driving_licence_date_of_issue LIKE '2022%';

SELECT *
FROM models
WHERE name LIKE 'C%';

SELECT *
FROM models
WHERE name LIKE '%Cross';

SELECT *
FROM models
WHERE name LIKE 'A_';

SELECT *
FROM models
WHERE make LIKE '____';
