USE car_rental;

SELECT *
FROM models
WHERE name REGEXP 'C';

SELECT *
FROM models
WHERE name REGEXP '^C';

SELECT *
FROM models
WHERE name REGEXP '4$';

SELECT *
FROM models
WHERE name REGEXP '[16]';

SELECT *
FROM models
WHERE name REGEXP '[1-6]';
