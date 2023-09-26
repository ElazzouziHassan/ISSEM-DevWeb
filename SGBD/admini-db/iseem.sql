-- Active: 1678706437666@@127.0.0.1@3306@iseem_db
-- commande pour creer une base de données :
CREATE DATABASE iseem_db;
-- commande pour utiliser ce base de données :
USE iseem_db;

-- pour creer une table :
CREATE TABLE `class`(
   id INT NOT NULL PRIMARY KEY,
    nom_class VARCHAR(255) NOT NULL,
    nb_etd INT NOT NULL,
    nb_class INT NOT NULL
);



