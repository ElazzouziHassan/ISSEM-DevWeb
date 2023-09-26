-- Active: 1678706437666@@127.0.0.1@3306@iseem_db
-- commande pour creer une base de données :
CREATE DATABASE iseem_db;
-- commande pour utiliser ce base de données :
USE iseem_db;

-- pour creer une table :
CREATE TABLE `film`(
  id INT NOT NULL PRIMARY KEY,
  nom VARCHAR(255) NOT NULL,
  dure INT NOT NULL,
  anne_sortie INT NOT NULL,
  id_artist INT NOT NULL
);

CREATE TABLE `artist`(
  id INT NOT NULL PRIMARY KEY,
  nom VARCHAR(255) NOT NULL,
  role_played INT NOT NULL
);

-- DROP Table film;

ALTER TABLE `film` 
  ADD FOREIGN KEY (`id_artist`) 
  REFERENCES `artist`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT
;








