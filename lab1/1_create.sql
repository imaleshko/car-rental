CREATE DATABASE IF NOT EXISTS car_rental;
USE car_rental;

CREATE TABLE IF NOT EXISTS clients (
    client_id                     INT PRIMARY KEY AUTO_INCREMENT,
    first_name                    VARCHAR(20) NOT NULL,
    last_name                     VARCHAR(20) NOT NULL,
    patronymic                    VARCHAR(20) NULL,
    driving_licence_number        VARCHAR(10) NOT NULL,
    driving_licence_date_of_issue DATE        NOT NULL
);

CREATE TABLE IF NOT EXISTS models (
    model_id      INT PRIMARY KEY AUTO_INCREMENT,
    name          VARCHAR(20)             NOT NULL,
    make          VARCHAR(20)             NOT NULL,
    capacity      SMALLINT UNSIGNED       NOT NULL,
    price_per_day DECIMAL(10, 2) UNSIGNED NOT NULL DEFAULT 1000,
    body          VARCHAR(20)             NOT NULL
);

CREATE TABLE IF NOT EXISTS cars (
    car_id              INT PRIMARY KEY AUTO_INCREMENT,
    registration_plate  VARCHAR(10)                             NOT NULL UNIQUE,
    year_of_manufacture SMALLINT UNSIGNED                       NOT NULL CHECK (year_of_manufacture > 1900 AND year_of_manufacture < 2100),
    colour              VARCHAR(20)                             NOT NULL,
    car_condition       ENUM ('Чудовий', 'Гарний', 'В ремонті') NOT NULL DEFAULT 'Чудовий',
    mileage             MEDIUMINT UNSIGNED                      NOT NULL,
    model_id            INT,
    CONSTRAINT fk_cars_models FOREIGN KEY (model_id) REFERENCES models (model_id) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS rental_agreements (
    rental_agreement_id     INT PRIMARY KEY AUTO_INCREMENT,
    client_id               INT                     NOT NULL,
    car_id                  INT                     NOT NULL,
    agreement_date          DATE                    NOT NULL,
    agreement_duration_days SMALLINT UNSIGNED       NOT NULL CHECK (agreement_duration_days < 366),
    agreement_cost          DECIMAL(10, 2) UNSIGNED NOT NULL,
    return_date             DATE                    NULL,
    CONSTRAINT fk_rental_agreements_clients FOREIGN KEY (client_id) REFERENCES clients (client_id) ON DELETE RESTRICT,
    CONSTRAINT fk_rental_agreements_cars FOREIGN KEY (car_id) REFERENCES cars (car_id) ON DELETE RESTRICT
);
