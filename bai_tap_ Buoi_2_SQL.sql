-- bài tập 1_ tối ưu và thêm constraints vào bảng hôm trước.
DROP DATABASE IF EXISTS testing_system_assignment_1;
CREATE DATABASE IF NOT EXISTS testing_system_assignment_1;
USE testing_system_assignment_1;
DROP TABLE IF EXISTS  department;
CREATE TABLE department(
Department_id   SMALLINT UNSIGNED PRIMARY KEY,
Department_name VARCHAR(50) UNIQUE
);
DROP TABLE IF EXISTS  `position`;
CREATE TABLE `position` ( 
Position_id     SMALLINT UNSIGNED PRIMARY KEY,
Position_name   VARCHAR(50) UNIQUE NOT NULL
);
DROP TABLE IF EXISTS  `account`;
CREATE TABLE `account` (
Account_id      SMALLINT UNSIGNED PRIMARY KEY,
Email           VARCHAR(50),
User_name       VARCHAR(50) UNIQUE NOT NULL,
Full_name       VARCHAR(50) NOT NULL,
Department_id   SMALLINT UNSIGNED,
Position_id     SMALLINT UNSIGNED,
Create_date     DATE NOT NULL,
Sex             ENUM('male','female','unknow'),
Age             TINYINT UNSIGNED NOT NULL check(Age>=18 AND Age<=45),
FOREIGN KEY (Department_id) REFERENCES department (Department_id),
FOREIGN KEY (Position_id) REFERENCES `position` (Position_id)
);
DROP TABLE IF EXISTS  `group`;
CREATE TABLE `group` (
Group_id       SMALLINT UNSIGNED PRIMARY KEY,
Group_name      VARCHAR(50) UNIQUE NOT NULL,
Creator_id      SMALLINT UNSIGNED NOT NULL,
Create_date     DATE NOT NULL,
FOREIGN KEY (Creator_id) REFERENCES `account` (Account_id)
);
DROP TABLE IF EXISTS  group_account;
CREATE TABLE group_account(
Group_id        SMALLINT UNSIGNED PRIMARY KEY,
Account_id      SMALLINT UNSIGNED NOT NULL,
Join_date       DATE NOT NULL,
FOREIGN KEY (Account_id) REFERENCES `account` (Account_id)
);
-- bài tập 2_tạo bảng mới
DROP TABLE IF EXISTS trainee;
CREATE TABLE trainee( 
Trainee_id      SMALLINT UNSIGNED PRIMARY KEY,
Full_name       VARCHAR(50),
Birth_date      DATE NOT NULL,
Gender          ENUM('male','female','unknow'),
ET_ID           TINYINT CHECK(ET_ID>=0 AND ET_ID<=20),
ET_Gmath        TINYINT CHECK(ET_Gmath>=0 AND ET_Gmath<=20),
ET_English      TINYINT CHECK(ET_English>=0 AND ET_English<=50),
Training_Class  VARCHAR(50),
Evaluation_Notes TEXT
);  
