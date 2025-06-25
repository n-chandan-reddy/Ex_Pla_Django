-- Active: 1750575018747@@127.0.0.1@3306@ex_pla_db
CREATE TABLE users(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) DEFAULT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    password VARCHAR(100) NOT NULL
);


--ALTER TABLE users ADD COLUMN address VARCHAR(200) DEFAULT NULL;
--if there are 2 address we cannot fit multiple address, so create a separate table
/*
forgot to add address, hence using alter table to add extra col
it also be done by using <> at the begining
DROP TABLE IF EXISTS users;
*/