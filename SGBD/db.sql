-- Active: 1678706437666@@127.0.0.1@3306@test_db
CREATE DATABASE test_db;

use test_db;

-- table adherent :
create table `adherent`(
  id_adh INT PRIMARY key AUTO_INCREMENT COMMENT 'Primary Key',
  nom VARCHAR(60) NOT NULL,
  prenom VARCHAR(60) NOT NULL,
  date_naissance DATE,
  create_time DATETIME COMMENT 'Create Time'
)

-- table responsable :
CREATE Table `responsable`(
  id_resp INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  prenom VARCHAR(50) NOT NULL,
  create_time DATETIME COMMENT 'Create Time'
)

-- table activite :
CREATE Table `activite`(
  id_act INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
  libelle VARCHAR(100) NOT NULL,
  max_part INT NOT NULL,
  tarif DOUBLE NOT NULL,
  id_adh INT,
  id_resp INT,
  create_time DATETIME COMMENT 'Create Time'
)

