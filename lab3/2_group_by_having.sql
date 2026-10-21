USE car_rental;

SELECT make,
       COUNT(*)           AS Make_Count,
       AVG(price_per_day) AS Avg_Price
FROM models
GROUP BY make;

SELECT agreement_duration_days,
       COUNT(*)            AS Agreement_Count,
       COUNT(return_date)  AS Returned,
       SUM(agreement_cost) AS Agreement_Sum
FROM rental_agreements
GROUP BY agreement_duration_days
HAVING Agreement_Sum >= 10000;
