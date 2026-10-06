USE car_rental;

ALTER TABLE clients
    ADD COLUMN phone VARCHAR(15) NULL;

ALTER TABLE clients
    ADD CONSTRAINT uq_phone UNIQUE (phone);

ALTER TABLE clients
    MODIFY COLUMN first_name VARCHAR(25) NULL;

ALTER TABLE clients
    DROP COLUMN patronymic;

ALTER TABLE cars
    RENAME COLUMN colour TO body_color;

ALTER TABLE rental_agreements
    DROP CONSTRAINT fk_rental_agreements_clients;
