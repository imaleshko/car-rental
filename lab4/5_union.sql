USE car_rental;

SELECT rental_agreements.agreement_date,
       rental_agreements.agreement_duration_days,
       'Преміум' AS plan
FROM rental_agreements
WHERE rental_agreements.agreement_cost >= 5000
UNION
SELECT rental_agreements.agreement_date,
       rental_agreements.agreement_duration_days,
       'Звичайний' AS plan
FROM rental_agreements
WHERE rental_agreements.agreement_cost < 5000;

CREATE TABLE IF NOT EXISTS booking_agreements (
    booking_agreement_id    INT PRIMARY KEY AUTO_INCREMENT,
    agreement_date          DATE              NOT NULL,
    agreement_duration_days SMALLINT UNSIGNED NOT NULL CHECK (agreement_duration_days < 366)
);

INSERT INTO booking_agreements (agreement_date, agreement_duration_days)
VALUES ('2026-10-01', 5),
       ('2026-10-02', 3),
       ('2026-10-05', 7),
       ('2026-10-10', 2);

SELECT rental_agreements.agreement_date,
       rental_agreements.agreement_duration_days
FROM rental_agreements
UNION ALL
SELECT booking_agreements.agreement_date,
       booking_agreements.agreement_duration_days
FROM booking_agreements;
