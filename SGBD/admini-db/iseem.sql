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
  role_played VARCHAR(255) NOT NULL
);

-- DROP Table artist;
-- ajouter un FOREIGN key
ALTER TABLE `film` 
  ADD FOREIGN KEY (`id_artist`) 
  REFERENCES `artist`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT
;
-- ajouter un coloumn :
ALTER TABLE `film`
  ADD pays VARCHAR(255);

ALTER TABLE `film`
  MODIFY pays VARCHAR(120) NOT NULL;

ALTER TABLE `film`
  RENAME TO `movie`;

INSERT INTO `artist`(nom,role_played) VALUES('Oumnia Sabri', 'Aria stark');
INSERT INTO `artist`(id,nom,role_played) VALUES(1,'Hassan', 'Lord Stark');
INSERT INTO `artist`(id,nom,role_played) VALUES(2,'wizardy', 'wizardy');

UPDATE `artist`
  set role_played = 'lady of the North'
  WHERE id = 0
;

SELECT * FROM `artist` WHERE id = 0;







