-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema songdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `songdb` ;

-- -----------------------------------------------------
-- Schema songdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `songdb` DEFAULT CHARACTER SET utf8 ;
USE `songdb` ;

-- -----------------------------------------------------
-- Table `song`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `song` ;

CREATE TABLE IF NOT EXISTS `song` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `length` DECIMAL(5,2) NOT NULL,
  `lyrics` VARCHAR(5000) NULL,
  `language_id` INT(3) NOT NULL,
  `genre_id` INT(3) NOT NULL,
  `cost_amount` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS songuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'songuser'@'localhost' IDENTIFIED BY 'songuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'songuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `song`
-- -----------------------------------------------------
START TRANSACTION;
USE `songdb`;
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`) VALUES (1, 'goober', 5.29, 'gooberish-ish baby', 1, 2, 2.99);
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`) VALUES (2, 'foobie', 3.21, 'fooberish-ish baby', 2, 3, 3.99);

COMMIT;

