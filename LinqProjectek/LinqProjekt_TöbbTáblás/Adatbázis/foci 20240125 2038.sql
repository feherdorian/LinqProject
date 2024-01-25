﻿--
-- Script was generated by Devart dbForge Studio 2019 for MySQL, Version 8.1.22.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 2024. 01. 25. 20:38:42
-- Server version: 5.5.5-10.4.27-MariaDB
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set character set the client will use to send SQL statements to the server
--
SET NAMES 'utf8';

--
-- Set default database
--
USE foci;

--
-- Drop table `jatekosok`
--
DROP TABLE IF EXISTS jatekosok;

--
-- Drop table `csapatok`
--
DROP TABLE IF EXISTS csapatok;

--
-- Set default database
--
USE foci;

--
-- Create table `csapatok`
--
CREATE TABLE csapatok (
  id INT(11) NOT NULL AUTO_INCREMENT,
  csapatNev VARCHAR(50) NOT NULL,
  menendzser VARCHAR(50) DEFAULT NULL,
  orszag VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 21,
AVG_ROW_LENGTH = 819,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

--
-- Create table `jatekosok`
--
CREATE TABLE jatekosok (
  id INT(11) NOT NULL AUTO_INCREMENT,
  jatekosNev VARCHAR(50) NOT NULL,
  csapatId INT(11) DEFAULT NULL,
  pozicio VARCHAR(50) DEFAULT NULL,
  nemzetiseg VARCHAR(50) DEFAULT NULL,
  fizetes DECIMAL(10, 2) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 61,
AVG_ROW_LENGTH = 273,
CHARACTER SET utf8,
COLLATE utf8_hungarian_ci;

--
-- Create foreign key
--
ALTER TABLE jatekosok 
  ADD CONSTRAINT FK_jatekosok_csapatok_id FOREIGN KEY (csapatId)
    REFERENCES csapatok(id);

-- 
-- Dumping data for table csapatok
--
INSERT INTO csapatok VALUES
(1, 'Real Madrid', 'Carlo Ancelotti', 'Spanyolország'),
(2, 'Manchester City', 'Pep Guardiola', 'Anglia'),
(3, 'Bayern München ', 'Julian Nagelsmann', 'Németország'),
(4, 'Paris Saint-Germain', 'Mauricio Pochettino', 'Franciaország'),
(5, 'Liverpool', 'Jürgen Klopp', 'Anglia'),
(6, 'FC Barcelona', 'Xavi Hernandez', 'Spanyolország'),
(7, 'Juventus', 'Massimiliano Allegri', 'Olaszország'),
(8, 'Manchester United', 'Ralf Rangnick', 'Anglia'),
(9, 'Chelsea', 'Thomas Tuchel', 'Anglia'),
(10, 'Borussia Dortmund', 'Marco Rose', 'Németország'),
(11, 'Inter Milan', 'Simone Inzaghi', 'Olaszország'),
(12, 'Atletico Madrid', 'Diego Simeone', 'Spanyolország'),
(13, 'AC Milan', 'Stefano Pioli', 'Olaszország'),
(14, 'Arsenal', 'Mikel Arteta', 'Anglia'),
(15, 'Ajax', 'Erik ten Hag', 'Hollandia'),
(16, 'RB Leipzig', 'Jesse Marsch', 'Németország'),
(17, 'Sevilla FC', 'Julen Lopetegui', 'Spanyolország'),
(18, 'Napoli', 'Luciano Spalletti', 'Olaszország'),
(19, 'Tottenham Hotspur', 'Antonio Conte', 'Anglia'),
(20, 'AS Roma', 'Jose Mourinho', 'Olaszország');

-- 
-- Dumping data for table jatekosok
--
INSERT INTO jatekosok VALUES
(1, 'Karim Benzema', 1, 'Csatár', 'Francia', 99999999.99),
(2, 'Luka Modrić', 1, 'Középpályás', 'Horvát', 99999999.99),
(3, 'Vinícius Júnior', 1, 'Szélső', 'Brazil', 99999999.99),
(4, 'Kevin De Bruyne', 2, 'Középpályás', 'Belga', 99999999.99),
(5, 'Raheem Sterling', 2, 'Szélső', 'Angol', 99999999.99),
(6, 'Ruben Dias', 2, 'Védő ', 'Portugál', 99999999.99),
(7, 'Robert Lewandowski', 3, 'Csatár', 'Lengyel', 99999999.99),
(8, 'Joshua Kimmich', 3, 'Középpályás', 'Német', 99999999.99),
(9, 'Manuel Neuer', 3, 'Kapus', 'Német', 99999999.99),
(10, 'Kylian Mbappé', 4, 'Csatár', 'Francia', 99999999.99),
(11, 'Neymar Jr', 4, 'Szélső', 'Brazil', 99999999.99),
(12, 'Marco Verratt', 4, 'Középpályás', 'Olasz', 99999999.99),
(13, 'Mohamed Salah', 5, 'Szélső', 'Egyiptomi', 99999999.99),
(14, 'Virgil van Dijk', 5, 'Védő', 'Holland', 99999999.99),
(15, 'Sadio Mané', 5, 'Szélső', 'Szenegáli', 99999999.99),
(16, 'Lionel Messi', 6, 'Szélső', 'Argentin', 0.00),
(17, 'Frenkie de Jong', 6, 'Középpályás', 'Holland', 99999999.99),
(18, 'Ansu Fati', 6, 'Szélső', 'Spanyol', 2.00),
(19, 'Cristiano Ronaldo', 7, 'Csatár', 'Portugál', 99999999.99),
(20, 'Paulo Dybala', 7, 'Támadó középpályás', 'Argentin', 99999999.99),
(21, 'De Ligt', 7, 'Védő', 'Holland', 99999999.99),
(22, 'Bruno Fernandes', 8, 'Középpályás', 'Portugál', 99999999.99),
(23, 'Marcus Rashford', 8, 'Szélső', 'Angol', 99999999.99),
(24, 'Harry Maguire', 8, 'Védő', 'Angol', 99999999.99),
(25, 'N Golo Kanté', 9, 'Középpályás', 'Francia', 99999999.99),
(26, 'Mason Mount', 9, 'Középpályás', 'Angol', 99999999.99),
(27, 'Romelu Lukaku', 9, 'Csatár', 'Belgiumi', 99999999.99),
(28, 'Erling Haaland', 10, 'Csatár', 'Norvég', 99999999.99),
(29, 'Jadon Sancho', 10, 'Szélső', 'Angol', 99999999.99),
(30, 'Marco Reus', 10, 'Támadó középpályás', 'Német', 99999999.99),
(31, 'Lautaro Martínez', 11, 'Csatár', 'Argentín', 99999999.99),
(32, 'Milan Škriniar', 11, 'Védő', 'Szlovák', 99999999.99),
(33, 'Nicolò Barella', 11, 'Középpályás', 'Olasz', 99999999.99),
(34, 'João Félix', 12, 'Szélső', 'Portugál', 99999999.99),
(35, 'Luis Suárez', 12, 'Csatár', 'Uruguayi', 99999999.99),
(36, 'Koke', 12, 'Középpályás', 'Spanyol', 99999999.99),
(37, 'Zlatan Ibrahimović', 13, 'Csatár', 'Svéd', 99999999.99),
(38, 'Theo Hernández', 13, 'Balhátvéd', 'Francia', 99999999.99),
(39, 'Franck Kessié', 13, 'Középpályás', 'Elefántcsontparti', 99999999.99),
(40, 'Bukayo Saka', 14, 'Szélső', 'Angol', 99999999.99),
(41, 'Pierre-Emerick Aubameyang', 14, 'Csatár', 'Gaboni', 99999999.99),
(42, 'Thomas Partey', 14, 'Középpályás', 'Ghánai', 99999999.99),
(43, 'Dusan Tadić', 15, 'Támadó középpályás', 'Szerb', 99999999.99),
(44, 'Ryan Gravenberch', 15, 'Középpályás', 'Holland', 99999999.99),
(45, 'Antony', 15, 'Szélső', 'Brazil', 99999999.99),
(46, 'Christopher Nkunku', 16, 'Támadó középpályás', 'Francia', 99999999.99),
(47, 'Yussuf Poulsen', 16, 'Csatár', 'Dán', 99999999.99),
(48, 'Marcel Sabitzer', 16, 'Középpályás', 'Ausztriai', 99999999.99),
(49, 'Youssef En-Nesyri', 17, 'Csatár', 'Marokkói', 99999999.99),
(50, 'Jesús Navas', 17, 'Szélső', 'Spanyol', 99999999.99),
(51, 'Jules Koundé', 17, 'Védő ', 'Francia', 99999999.99),
(52, 'Lorenzo Insigne', 18, 'Szélső ', 'Olasz', 99999999.99),
(53, 'Victor Osimhen', 18, 'Csatár', 'Nigeri', 99999999.99),
(54, 'Kalidou Koulibaly', 18, 'Védő', 'Szenegáli', 99999999.99),
(55, 'Harry Kane', 19, 'Csatár', 'Angol', 99999999.99),
(56, 'Son Heung-min', 19, 'Szélső', 'Dél-koreai', 99999999.99),
(57, 'Pierre-Emile Højbjerg', 19, 'Középpályás', 'Dán', 99999999.99),
(58, 'Jordan Veretout', 20, 'Középpályás', 'Francia', 99999999.99),
(59, 'Tammy Abraham', 20, 'Csatár', 'Angol', 99999999.99),
(60, 'Leonardo Spinazzola', 20, 'Balhátvéd', 'Olasz', 99999999.99);

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;