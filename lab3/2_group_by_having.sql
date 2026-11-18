USE car_rental;

SELECT make,
       COUNT(*)           AS make_count,
       AVG(price_per_day) AS avg_price
FROM models
GROUP BY make;

SELECT agreement_duration_days,
       COUNT(*)            AS agreement_count,
       COUNT(return_date)  AS returned,
       SUM(agreement_cost) AS agreement_sum
FROM rental_agreements
GROUP BY agreement_duration_days
HAVING agreement_sum >= 10000;
