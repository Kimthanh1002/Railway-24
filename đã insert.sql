-- bài tập 1_ tối ưu và thêm constraints vào bảng hôm trước.
DROP DATABASE IF EXISTS testing_system_assignment_1;
CREATE DATABASE IF NOT EXISTS testing_system_assignment_1;
USE testing_system_assignment_1;
DROP TABLE IF EXISTS  department;
CREATE TABLE department(
Department_id   SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Department_name VARCHAR(50) UNIQUE
);
INSERT INTO department( Department_name)
VALUE                 ( N'nhân sự'       ),
					  ( N'Marketing'     ),
			          ( N'tài chính'     ),
                      ( N'sale'          ),
                      ( N'Giám đốc'      ),
                      ( N'Thư Kí'        ),
                      ( N'kế toán'       );
DROP TABLE IF EXISTS  `position`;
CREATE TABLE `position`( 
Position_id     SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Position_name   VARCHAR(50) UNIQUE NOT NULL
);
INSERT INTO `position`  ( Position_name     )
VALUE                   (   'Test'          ),
					    (   'Dev'           ),
                        (   'PM'            );
  DROP TABLE IF EXISTS  `account`;
CREATE TABLE `account` (
Account_id      SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Email           VARCHAR(50),
User_name       VARCHAR(50) UNIQUE NOT NULL,
Full_name       VARCHAR(50) NOT NULL,
Department_id   SMALLINT UNSIGNED,
Position_id     SMALLINT UNSIGNED,
Create_date     DATE NOT NULL,

FOREIGN KEY (Department_id) REFERENCES department (Department_id),
FOREIGN KEY (Position_id) REFERENCES `position` (Position_id)
);
INSERT INTO `account`(    Email           , User_name , Full_name        , Department_id, Position_id , Create_date)
VALUE                ( 'kimthanh@gmail.com', 'Thanh'   , 'Nguyen Thanh'  ,      5       ,     1       ,'2021-10-20'),
					 ( '12ngan@gmail.com'  , 'Ngan'    , 'Tran thi Ngan' ,      1       ,     3       ,'2012-12-15'),
                     ( '67hanh@gmail.com'  , 'Hanh'    , 'Tran Thi Hanh' ,      3       ,     1       ,'2021-10-20'),
                     ( '23phong@gmail.com' , 'Phong'   , 'Hoang Phong'   ,      4       ,     1       ,'2015-01-10'),
                     ( '53thanh@gmail.com' , 'Thanh1'  , 'Dinh Van Thanh',      2       ,     2       ,'2021-10-20'),
                     ( '24tuan@gmail.com'  , 'Tuan'    , 'Pham van Tuan' ,      3       ,     2       ,'2007-07-08');
DROP TABLE IF EXISTS  `group`;
CREATE TABLE `group` (
Group_id       SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Group_name      VARCHAR(50) UNIQUE NOT NULL,
Creator_id      SMALLINT UNSIGNED NOT NULL,
Create_date     DATE NOT NULL,
FOREIGN KEY (Creator_id) REFERENCES `account` (Account_id)
);
INSERT INTO  `group`( Group_name         , Creator_id , Create_date  )
VALUE               ( N'sale'            ,     1      , '2021-10-21' ),
				    ( N'developement'    ,     3      , '2020-08-05' ),
                    ( N'CEO'             ,     6      , '2015-10-21' );
DROP TABLE IF EXISTS  group_account;
CREATE TABLE group_account(
Group_id        SMALLINT UNSIGNED PRIMARY KEY,
Account_id      SMALLINT UNSIGNED NOT NULL,
Join_date       DATE NOT NULL,
FOREIGN KEY (Account_id) REFERENCES `account` (Account_id)
);
INSERT INTO group_account ( Group_id  ,  Account_id ,  Join_date    )
VALUE                     (    1      ,      4      ,  '2021-10-21'  ),
                          (    2      ,      5      ,  '2020-08-05'  ),
                          (    3      ,      2      ,  '2018-03-22'  );
  
-- bài tập 2_tạo bảng mới
DROP TABLE IF EXISTS trainee;
CREATE TABLE trainee( 
Trainee_id      SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Full_name       VARCHAR(50),
Birth_date      DATE NOT NULL,
Gender          ENUM('male','female','unknow'),
ET_ID           TINYINT CHECK(ET_ID>=0 AND ET_ID<=20),
ET_Gmath        TINYINT CHECK(ET_Gmath>=0 AND ET_Gmath<=20),
ET_English      TINYINT CHECK(ET_English>=0 AND ET_English<=50),
Training_Class  VARCHAR(50),
Evaluation_Notes TEXT
);  
