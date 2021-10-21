DROP DATABASE IF EXISTS testing_system_assignment_1;
CREATE DATABASE testing_system_assignment_1;
USE testing_system_assignment_1;
DROP TABLE IF EXISTS  department;
CREATE TABLE department(
Department_id   SMALLINT UNSIGNED PRIMARY KEY,
Department_name VARCHAR(50) UNIQUE
);
DROP TABLE IF EXISTS  `position`;
CREATE TABLE `position` ( 
Position_id     SMALLINT UNSIGNED ,
Position_name   VARCHAR(50) UNIQUE
);
DROP TABLE IF EXISTS  `account`;
CREATE TABLE `account` (
Account_id      SMALLINT UNSIGNED PRIMARY KEY,
Email           VARCHAR(50),
User_name       VARCHAR(50) UNIQUE NOT NULL,
Full_name       VARCHAR(50) NOT NULL,
Department_id   SMALLINT UNSIGNED,
Position_id     SMALLINT,
Create_date     DATE NOT NULL,
Sex             ENUM('male','fale','unknow'),
Age             TINYINT UNSIGNED NOT NULL check(Age>=18 AND Age<=45),
FOREIGN KEY (Department_id) REFERENCES department (Department_id)
);
DROP TABLE IF EXISTS  `group`;
CREATE TABLE `group` (
Group_id       SMALLINT UNSIGNED PRIMARY KEY,
Group_name      VARCHAR(50) UNIQUE,
Creator_id      SMALLINT UNSIGNED NOT NULL,
Create_date     DATE NOT NULL,
FOREIGN KEY (Creator_id) REFERENCES `account` (Account_id)
);
DROP TABLE IF EXISTS  group_account;
CREATE TABLE group_account(
Group_id        SMALLINT UNSIGNED PRIMARY KEY,
Account_id      SMALLINT,
Join_date       DATE
);