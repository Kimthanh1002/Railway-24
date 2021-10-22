CREATE DATABASE testing_system_assignment_1;
USE testing_system_assignment_1;
CREATE TABLE department(
Department_Id      INT,
Department_name VARCHAR(20)
);
CREATE TABLE position ( 
Position_id     INT,
Position_name VARCHAR(20)
);
CREATE TABLE account (
Account_id    INT,
Email              VARCHAR(30),
User_name    VARCHAR(30),
Full_name       VARCHAR(30),
Department_id     INT,
Position_id        INT,
Creare_date      DATE
);
CREATE TABLE group_ (
Group_id     INT,
Group_name VARCHAR(30),
Creator_id INT,
Create_date DATE
);
CREATE TABLE group_account(
Group_id     INT,
Account_id INT,
Join_date    DATE
)