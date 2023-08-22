-- MySQL Script generated by MySQL Workbench
-- Κυρ 03 Απρ 2022 04:07:19 μμ EEST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DB_HA_draft
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DB_HA_draft
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DB_HA_draft` ;
USE `DB_HA_draft` ;

-- -----------------------------------------------------
-- Table `DB_HA_draft`.`airport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`airport` (
  `airport_ID` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `town` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `international_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`airport_ID`),
  UNIQUE INDEX `airport_ID_UNIQUE` (`airport_ID` ASC) VISIBLE,
  UNIQUE INDEX `international_id_UNIQUE` (`international_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`aircraft_model`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`aircraft_model` (
  `manufacturer` VARCHAR(45) NOT NULL,
  `number_of_seats` INT UNSIGNED NOT NULL,
  `weight` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`manufacturer`, `number_of_seats`, `weight`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`airline`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`airline` (
  `international_airline_number` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `origin_country` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`international_airline_number`),
  UNIQUE INDEX `international_airline_number_UNIQUE` (`international_airline_number` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`aircraft`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`aircraft` (
  `id_number` INT UNSIGNED NOT NULL,
  `managing_airline` INT UNSIGNED NOT NULL,
  `aircraft_model_manufacturer` INT NOT NULL,
  `aircraft_model_number_of_seats` INT UNSIGNED NOT NULL,
  `aircraft_model_weight` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_number`),
  UNIQUE INDEX `aircraft_ID_UNIQUE` (`id_number` ASC) VISIBLE,
  INDEX `fk_aircraft_aircraft_model1_idx` (`aircraft_model_manufacturer` ASC, `aircraft_model_number_of_seats` ASC, `aircraft_model_weight` ASC) VISIBLE,
  INDEX `fk_aircraft_airline1_idx` (`managing_airline` ASC) VISIBLE,
  CONSTRAINT `fk_aircraft_aircraft_model1`
    FOREIGN KEY (`aircraft_model_manufacturer` , `aircraft_model_number_of_seats` , `aircraft_model_weight`)
    REFERENCES `DB_HA_draft`.`aircraft_model` (`manufacturer` , `number_of_seats` , `weight`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aircraft_airline1`
    FOREIGN KEY (`managing_airline`)
    REFERENCES `DB_HA_draft`.`airline` (`international_airline_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`flight`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`flight` (
  `daparture` DATETIME NOT NULL,
  `aircraft_id_number` INT UNSIGNED NOT NULL,
  `arrival` DATETIME NOT NULL,
  `managing_airline` INT UNSIGNED NOT NULL,
  `origin_airport` INT UNSIGNED NOT NULL,
  `destination_airport` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`daparture`, `aircraft_id_number`),
  INDEX `fk_flight_airline1_idx` (`managing_airline` ASC) VISIBLE,
  INDEX `fk_flight_airport1_idx` (`origin_airport` ASC) VISIBLE,
  INDEX `fk_flight_airport2_idx` (`destination_airport` ASC) VISIBLE,
  INDEX `fk_flight_aircraft1_idx` (`aircraft_id_number` ASC) VISIBLE,
  CONSTRAINT `fk_flight_airline1`
    FOREIGN KEY (`managing_airline`)
    REFERENCES `DB_HA_draft`.`airline` (`international_airline_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_airport1`
    FOREIGN KEY (`origin_airport`)
    REFERENCES `DB_HA_draft`.`airport` (`airport_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_airport2`
    FOREIGN KEY (`destination_airport`)
    REFERENCES `DB_HA_draft`.`airport` (`airport_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_aircraft1`
    FOREIGN KEY (`aircraft_id_number`)
    REFERENCES `DB_HA_draft`.`aircraft` (`id_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`airport_supports_aircraft_model`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`airport_supports_aircraft_model` (
  `airports_airport_ID` INT UNSIGNED NOT NULL,
  `aircraft_models_manufacturer` INT NOT NULL,
  `aircraft_models_number_of_seats` INT UNSIGNED NOT NULL,
  `aircraft_models_weight` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`airports_airport_ID`, `aircraft_models_manufacturer`, `aircraft_models_number_of_seats`, `aircraft_models_weight`),
  INDEX `fk_airports_has_aircraft_models_aircraft_models1_idx` (`aircraft_models_manufacturer` ASC, `aircraft_models_number_of_seats` ASC, `aircraft_models_weight` ASC) VISIBLE,
  INDEX `fk_airports_has_aircraft_models_airports1_idx` (`airports_airport_ID` ASC) VISIBLE,
  CONSTRAINT `fk_airports_has_aircraft_models_airports1`
    FOREIGN KEY (`airports_airport_ID`)
    REFERENCES `DB_HA_draft`.`airport` (`airport_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_airports_has_aircraft_models_aircraft_models1`
    FOREIGN KEY (`aircraft_models_manufacturer` , `aircraft_models_number_of_seats` , `aircraft_models_weight`)
    REFERENCES `DB_HA_draft`.`aircraft_model` (`manufacturer` , `number_of_seats` , `weight`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`airport_supports_airline`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`airport_supports_airline` (
  `airports_airport_ID` INT UNSIGNED NOT NULL,
  `airlines_international_airline_number` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`airports_airport_ID`, `airlines_international_airline_number`),
  INDEX `fk_airports_has_airlines_airlines1_idx` (`airlines_international_airline_number` ASC) VISIBLE,
  INDEX `fk_airports_has_airlines_airports1_idx` (`airports_airport_ID` ASC) VISIBLE,
  CONSTRAINT `fk_airports_has_airlines_airports1`
    FOREIGN KEY (`airports_airport_ID`)
    REFERENCES `DB_HA_draft`.`airport` (`airport_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_airports_has_airlines_airlines1`
    FOREIGN KEY (`airlines_international_airline_number`)
    REFERENCES `DB_HA_draft`.`airline` (`international_airline_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`seat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`seat` (
  `seat_class` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`seat_class`),
  UNIQUE INDEX `seat_class_UNIQUE` (`seat_class` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`workers_union`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`workers_union` (
  `name` VARCHAR(45) NOT NULL,
  `year_of_establishment` YEAR(4) NOT NULL,
  PRIMARY KEY (`name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`airport_personnel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`airport_personnel` (
  `id_number` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `home_address` VARCHAR(45) NOT NULL,
  `airport_ID` INT UNSIGNED NOT NULL,
  `workers_union_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_number`),
  INDEX `fk_airport_personnel_airport1_idx` (`airport_ID` ASC) VISIBLE,
  UNIQUE INDEX `id_number_UNIQUE` (`id_number` ASC) VISIBLE,
  INDEX `fk_airport_personnel_workers_union1_idx` (`workers_union_name` ASC) VISIBLE,
  CONSTRAINT `fk_airport_personnel_airport1`
    FOREIGN KEY (`airport_ID`)
    REFERENCES `DB_HA_draft`.`airport` (`airport_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_airport_personnel_workers_union1`
    FOREIGN KEY (`workers_union_name`)
    REFERENCES `DB_HA_draft`.`workers_union` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`technical_staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`technical_staff` (
  `airport_personnel_id_number` VARCHAR(45) NOT NULL,
  `telephone_number` INT UNSIGNED NOT NULL,
  `salary` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`airport_personnel_id_number`),
  UNIQUE INDEX `telephone_number_UNIQUE` (`telephone_number` ASC) VISIBLE,
  CONSTRAINT `fk_technical_staff_airport_personnel1`
    FOREIGN KEY (`airport_personnel_id_number`)
    REFERENCES `DB_HA_draft`.`airport_personnel` (`id_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`air_traffic_controller`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`air_traffic_controller` (
  `airport_personnel_id_number` VARCHAR(45) NOT NULL,
  `latest_medical_exam` DATE NULL,
  PRIMARY KEY (`airport_personnel_id_number`),
  CONSTRAINT `fk_air_traffic_controller_airport_personnel1`
    FOREIGN KEY (`airport_personnel_id_number`)
    REFERENCES `DB_HA_draft`.`airport_personnel` (`id_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`technical_staff_supports_aircraft_model`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`technical_staff_supports_aircraft_model` (
  `technical_staff_airport_personnel_id_number` VARCHAR(45) NOT NULL,
  `aircraft_model_manufacturer` INT NOT NULL,
  `aircraft_model_number_of_seats` INT UNSIGNED NOT NULL,
  `aircraft_model_weight` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`technical_staff_airport_personnel_id_number`, `aircraft_model_manufacturer`, `aircraft_model_number_of_seats`, `aircraft_model_weight`),
  INDEX `fk_technical_staff_has_aircraft_model_aircraft_model1_idx` (`aircraft_model_manufacturer` ASC, `aircraft_model_number_of_seats` ASC, `aircraft_model_weight` ASC) VISIBLE,
  INDEX `fk_technical_staff_has_aircraft_model_technical_staff1_idx` (`technical_staff_airport_personnel_id_number` ASC) VISIBLE,
  CONSTRAINT `fk_technical_staff_has_aircraft_model_technical_staff1`
    FOREIGN KEY (`technical_staff_airport_personnel_id_number`)
    REFERENCES `DB_HA_draft`.`technical_staff` (`airport_personnel_id_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_technical_staff_has_aircraft_model_aircraft_model1`
    FOREIGN KEY (`aircraft_model_manufacturer` , `aircraft_model_number_of_seats` , `aircraft_model_weight`)
    REFERENCES `DB_HA_draft`.`aircraft_model` (`manufacturer` , `number_of_seats` , `weight`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`aircraft_check`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`aircraft_check` (
  `civil_aviation_entry_id` INT UNSIGNED NOT NULL,
  `date` DATE NOT NULL,
  `aircraft_id_number` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  `score` INT UNSIGNED NOT NULL,
  `airport_airport_ID` INT UNSIGNED NOT NULL,
  `hours` INT UNSIGNED NOT NULL,
  `technical_staff_airport_personnel_id_number` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`civil_aviation_entry_id`),
  INDEX `fk_aircraft_check_aircraft1_idx` (`aircraft_id_number` ASC) VISIBLE,
  INDEX `fk_aircraft_check_airport1_idx` (`airport_airport_ID` ASC) VISIBLE,
  UNIQUE INDEX `civil_aviation_entry_id_UNIQUE` (`civil_aviation_entry_id` ASC) VISIBLE,
  UNIQUE INDEX `aircraft_id_number_UNIQUE` (`aircraft_id_number` ASC) VISIBLE,
  INDEX `fk_aircraft_check_technical_staff1_idx` (`technical_staff_airport_personnel_id_number` ASC) VISIBLE,
  CONSTRAINT `fk_aircraft_check_aircraft1`
    FOREIGN KEY (`aircraft_id_number`)
    REFERENCES `DB_HA_draft`.`aircraft` (`id_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aircraft_check_airport1`
    FOREIGN KEY (`airport_airport_ID`)
    REFERENCES `DB_HA_draft`.`airport` (`airport_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aircraft_check_technical_staff1`
    FOREIGN KEY (`technical_staff_airport_personnel_id_number`)
    REFERENCES `DB_HA_draft`.`technical_staff` (`airport_personnel_id_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`covid_certificate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`covid_certificate` (
  `QR_code` INT UNSIGNED NOT NULL,
  `doses` INT UNSIGNED NOT NULL,
  `last_dose_date` DATE NOT NULL,
  PRIMARY KEY (`QR_code`),
  UNIQUE INDEX `QR_code_UNIQUE` (`QR_code` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`passenger`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`passenger` (
  `passport_number` INT UNSIGNED NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` INT UNSIGNED NOT NULL,
  `home_address` VARCHAR(45) NOT NULL,
  `covid_certificate_QR_code` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`passport_number`),
  UNIQUE INDEX `passport_number_UNIQUE` (`passport_number` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE,
  INDEX `fk_passenger_covid_certificate1_idx` (`covid_certificate_QR_code` ASC) VISIBLE,
  UNIQUE INDEX `covid_certificate_QR_code_UNIQUE` (`covid_certificate_QR_code` ASC) VISIBLE,
  CONSTRAINT `fk_passenger_covid_certificate1`
    FOREIGN KEY (`covid_certificate_QR_code`)
    REFERENCES `DB_HA_draft`.`covid_certificate` (`QR_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`ticket_websites`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`ticket_websites` (
  `url` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`url`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`ticket_reservation_system`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`ticket_reservation_system` (
  `QR_code` INT UNSIGNED NOT NULL,
  `seat_seat_class` VARCHAR(45) NOT NULL,
  `passenger_passport_number` INT UNSIGNED NOT NULL,
  `passenger_first_name` VARCHAR(45) NOT NULL,
  `passenger_last_name` VARCHAR(45) NOT NULL,
  `ticket_websites_url` VARCHAR(45) NULL,
  `reservation_date` DATE NOT NULL,
  `comments` TEXT(100) NULL,
  PRIMARY KEY (`QR_code`),
  UNIQUE INDEX `reservation_code_UNIQUE` (`QR_code` ASC) VISIBLE,
  INDEX `fk_ticket_reservations_seat1_idx` (`seat_seat_class` ASC) VISIBLE,
  INDEX `fk_ticket_reservation_passenger1_idx` (`passenger_passport_number` ASC, `passenger_first_name` ASC, `passenger_last_name` ASC) VISIBLE,
  INDEX `fk_ticket_reservation_ticket_websites1_idx` (`ticket_websites_url` ASC) VISIBLE,
  UNIQUE INDEX `passenger_passport_number_UNIQUE` (`passenger_passport_number` ASC) VISIBLE,
  CONSTRAINT `fk_ticket_reservations_seat1`
    FOREIGN KEY (`seat_seat_class`)
    REFERENCES `DB_HA_draft`.`seat` (`seat_class`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ticket_reservation_passenger1`
    FOREIGN KEY (`passenger_passport_number` , `passenger_first_name` , `passenger_last_name`)
    REFERENCES `DB_HA_draft`.`passenger` (`passport_number` , `first_name` , `last_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ticket_reservation_ticket_websites1`
    FOREIGN KEY (`ticket_websites_url`)
    REFERENCES `DB_HA_draft`.`ticket_websites` (`url`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`ticket` (
  `ticket_reservation_QR_code` INT UNSIGNED NOT NULL,
  `ticket_reservation_passenger_first_name` VARCHAR(45) NOT NULL,
  `ticket_reservation_passenger_last_name` VARCHAR(45) NOT NULL,
  `ticket_reservation_reservation_date` DATE NOT NULL,
  PRIMARY KEY (`ticket_reservation_QR_code`),
  CONSTRAINT `fk_ticket_ticket_reservation1`
    FOREIGN KEY (`ticket_reservation_QR_code` , `ticket_reservation_passenger_first_name` , `ticket_reservation_passenger_last_name` , `ticket_reservation_reservation_date`)
    REFERENCES `DB_HA_draft`.`ticket_reservation_system` (`QR_code` , `passenger_first_name` , `passenger_last_name` , `reservation_date`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`ticket_search`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`ticket_search` (
  `title` VARCHAR(45) NOT NULL,
  `ticket_websites_url` VARCHAR(45) NOT NULL,
  `flight_type` VARCHAR(45) NULL,
  `flight_date` DATE NULL,
  `description` TEXT(100) NULL,
  PRIMARY KEY (`title`, `ticket_websites_url`),
  INDEX `fk_ticket_search_ticket_websites1_idx` (`ticket_websites_url` ASC) VISIBLE,
  CONSTRAINT `fk_ticket_search_ticket_websites1`
    FOREIGN KEY (`ticket_websites_url`)
    REFERENCES `DB_HA_draft`.`ticket_websites` (`url`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`flight_food_menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`flight_food_menu` (
  `seat_seat_class` VARCHAR(45) NOT NULL,
  `menu_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`menu_id`),
  INDEX `fk_flight_food_menu_seat1_idx` (`seat_seat_class` ASC) VISIBLE,
  CONSTRAINT `fk_flight_food_menu_seat1`
    FOREIGN KEY (`seat_seat_class`)
    REFERENCES `DB_HA_draft`.`seat` (`seat_class`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`menu_dishes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`menu_dishes` (
  `dish_name` TEXT(100) NOT NULL,
  `flight_food_menu_menu_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`dish_name`, `flight_food_menu_menu_id`),
  INDEX `fk_menu_dishes_flight_food_menu1_idx` (`flight_food_menu_menu_id` ASC) VISIBLE,
  CONSTRAINT `fk_menu_dishes_flight_food_menu1`
    FOREIGN KEY (`flight_food_menu_menu_id`)
    REFERENCES `DB_HA_draft`.`flight_food_menu` (`menu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`flight_has_flight_food_menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`flight_has_flight_food_menu` (
  `flight_daparture` DATETIME NOT NULL,
  `flight_aircraft_id_number` INT UNSIGNED NOT NULL,
  `flight_food_menu_menu_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`flight_daparture`, `flight_aircraft_id_number`, `flight_food_menu_menu_id`),
  INDEX `fk_flight_has_flight_food_menu_flight_food_menu1_idx` (`flight_food_menu_menu_id` ASC) VISIBLE,
  INDEX `fk_flight_has_flight_food_menu_flight1_idx` (`flight_daparture` ASC, `flight_aircraft_id_number` ASC) VISIBLE,
  CONSTRAINT `fk_flight_has_flight_food_menu_flight1`
    FOREIGN KEY (`flight_daparture` , `flight_aircraft_id_number`)
    REFERENCES `DB_HA_draft`.`flight` (`daparture` , `aircraft_id_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_has_flight_food_menu_flight_food_menu1`
    FOREIGN KEY (`flight_food_menu_menu_id`)
    REFERENCES `DB_HA_draft`.`flight_food_menu` (`menu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DB_HA_draft`.`flight_manifest`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DB_HA_draft`.`flight_manifest` (
  `ticket_reservation_QR_code` INT UNSIGNED NOT NULL,
  `flight_daparture` DATETIME NOT NULL,
  `flight_aircraft_id_number` INT UNSIGNED NOT NULL,
  INDEX `fk_ticket_reservation_has_flight_flight1_idx` (`flight_daparture` ASC, `flight_aircraft_id_number` ASC) VISIBLE,
  PRIMARY KEY (`ticket_reservation_QR_code`),
  CONSTRAINT `fk_ticket_reservation_has_flight_flight1`
    FOREIGN KEY (`flight_daparture` , `flight_aircraft_id_number`)
    REFERENCES `DB_HA_draft`.`flight` (`daparture` , `aircraft_id_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_manifest_ticket_reservation1`
    FOREIGN KEY (`ticket_reservation_QR_code`)
    REFERENCES `DB_HA_draft`.`ticket_reservation_system` (`QR_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
