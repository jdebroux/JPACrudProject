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
  `release_year` INT(4) NOT NULL,
  `artist` VARCHAR(45) NOT NULL,
  `album` VARCHAR(45) NOT NULL,
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
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`, `release_year`, `artist`, `album`) VALUES (1, 'Bad Moon Rising', 2.55, 'I see a bad moon rising', 1, 2, 2.99, 2019, 'John Fogerty', 'Wrote A Song For Everyone');
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`, `release_year`, `artist`, `album`) VALUES (2, 'Me and Julio Down by the Schoolyard', 2.45, 'Well I\'m on my way, I don\'t know where I\'m going', 2, 3, 3.99, 2018, 'Paul Simon', 'Paul Simon');
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`, `release_year`, `artist`, `album`) VALUES (3, 'Take it Easy', 3.00, 'Well I\'m runnin\' down the road, tryin\' to loosen my load, got seven women on my mind', 3, 4, 2.99, 1972, 'Eagles', 'The Eagles: Greatest Hits');
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`, `release_year`, `artist`, `album`) VALUES (4, 'Three Little Birds', 3.01, 'Three little birds, flew by my doorstep', 1, 5, 1.99, 1977, 'Bob Marley', 'Exodus');
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`, `release_year`, `artist`, `album`) VALUES (5, 'Learning to Fly', 4.03, 'I\'m learning to fly, but I ain\'t got wings', 4, 6, 1.99, 1984, 'Tom Petty and the HeartBreakers', 'Into the Great Wide Open');
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`, `release_year`, `artist`, `album`) VALUES (6, 'Comfortably Numb', 6.22, 'There is no pain you are receding, a distant ship smoke on the horizon', 1, 17, 5.99, 1977, 'Pink Floyd', 'The Wall');
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`, `release_year`, `artist`, `album`) VALUES (7, 'Divisions', 19.29, 'All my thoughts divided, all my friends divided, all my worlds divided, it\'s gone too far', 5, 14, 4.99, 1998, 'Umphreys McGee', 'The Bottom Half');
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`, `release_year`, `artist`, `album`) VALUES (8, 'Burning Down the house', 4.02, 'There has got to be a way, burning down the house', 1, 10, 3.99, 1983, 'Talking Heads', 'Burning Down the House - Single');
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`, `release_year`, `artist`, `album`) VALUES (9, 'Let It Be', 4.03, 'When I find myself in times of trouble, mother Mary comes to me, speaking words of wisdom, let it be', 6, 12, 2.99, 1970, 'The Beatles', 'Let It Be');
INSERT INTO `song` (`id`, `title`, `length`, `lyrics`, `language_id`, `genre_id`, `cost_amount`, `release_year`, `artist`, `album`) VALUES (10, 'Bohemian Rhapsody', 5.59, 'Thunder bolts and lightning, very very frightening', 1, 15, 4.99, 1975, 'Queen', 'A Night at the Opera');

COMMIT;

