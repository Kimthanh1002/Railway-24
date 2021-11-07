--- * Hoàn Thành Assignment 5 * ----
DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_1;
USE Testing_System_Assignment_1;
DROP TABLE IF EXISTS  	department;
CREATE TABLE 			department(
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
DROP TABLE IF EXISTS    `position`;
CREATE TABLE 			`position`( 
Position_id     SMALLINT 	UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Position_name   VARCHAR(50) UNIQUE 	NOT NULL
);
INSERT INTO `position`  ( Position_name     )
VALUE                   (   'Test'          ),
					    (   'Dev'           ),
                        (   'Scrum Master'	),
                        (   'PM'            );
  DROP TABLE IF EXISTS  `account`;
CREATE TABLE 			`account` (
Account_id      SMALLINT 	UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Email           VARCHAR(50),
User_name       VARCHAR(50) UNIQUE   NOT NULL,
Full_name       VARCHAR(50) 		 NOT NULL,
Department_id   SMALLINT    UNSIGNED,
Position_id     SMALLINT 	UNSIGNED,
Create_date     DATETIME 	DEFAULT NOW(),
FOREIGN KEY (Department_id) REFERENCES department (Department_id),
FOREIGN KEY (Position_id)	REFERENCES `position` (Position_id)
);
INSERT INTO `account`(    Email           , User_name , Full_name        , Department_id, Position_id , Create_date)
VALUE                ( 'kimthanh@gmail.com', 'Thanh'   , 'Nguyen Thanh'  ,      5       ,     1       ,'2021-10-20'),
					 ( '12ngan@gmail.com'  , 'Ngan'    , 'Tran thi Ngan' ,      1       ,     3       ,'2012-12-15'),
                     ( '67hanh@gmail.com'  , 'Hanh'    , 'Tran Thi Hanh' ,      3       ,     1       ,'2021-10-20'),
                     ( '23phong@gmail.com' , 'Phong'   , 'Hoang Phong'   ,      4       ,     1       ,'2015-01-10'),
                     ( '53thanh@gmail.com' , 'Thanh1'  , 'Dinh Van Thanh',      2       ,     2       ,'2021-10-20'),
                     ( '59hoang@gmail.com' , 'Hoangaf' , 'Dinh Van Hoang',      2       ,     4       ,'2020-08-29'),
                     ( '89huy@gmail.com'   , 'huy198'  , 'Hoang Van Huy' ,      6       ,     3       ,'2019-10-20'),
                     ( '98thanh@gmail.com' , 'Thanh2'  , 'Phan Van Thanh',      7       ,     2       ,'2021-01-08'),
                     ( 'Hoa89@gmail.com'   , 'Hoa89'   , 'Dinh Thi Hoa'  ,      1       ,     4       ,'2017-10-15'),
                     ( '24tuan@gmail.com'  , 'Tuan'    , 'Pham van Tuan' ,      3       ,     2       ,'2007-07-08');
DROP TABLE IF EXISTS  	`group`;
CREATE TABLE 			`group` (
Group_id       SMALLINT 	 UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Group_name      VARCHAR(50)  UNIQUE	  NOT NULL,
Creator_id      SMALLINT	 UNSIGNED NOT NULL,
Create_date     DATETIME 		 DEFAULT NOW(),
FOREIGN KEY (Creator_id) REFERENCES `account` (Account_id)
);
INSERT INTO  `group`( Group_name         , Creator_id , Create_date  )
VALUE               ( N'sale'            ,     1      , '2018-10-21' ),
				    ( N'developement'    ,     3      , '2020-08-05' ),
                    ( N'sale1'           ,     2      , '2019-11-25' ),
                    ( N'sale2'           ,     2      , '2020-09-01' ),
                    ( N'CEO'             ,     6      , '2015-10-21' );
DROP TABLE IF EXISTS  group_account;
CREATE TABLE 		  group_account(
Group_id        SMALLINT UNSIGNED,
Account_id      SMALLINT UNSIGNED NOT NULL,
Join_date       DATETIME DEFAULT NOW(),
FOREIGN KEY (Group_id)	 REFERENCES `group`		(Group_id),
FOREIGN KEY (Account_id) REFERENCES `account`   (Account_id)
);
INSERT INTO group_account ( Group_id  ,  Account_id ,  Join_date    )
VALUE                     (    1      ,      4      ,  '2021-10-21'  ),
                          (    2      ,      5      ,  '2020-08-05'  ),
                          (    2      ,      3      ,  '2021-07-18'  ),
                          (    4      ,      7      ,  '2021-10-05'  ),
                          (    2      ,      8      ,  '2021-08-05'  ),
                          (    4      ,      10     ,  '2019-07-16'  ),
                          (    3      ,      1      ,  '2020-11-08'  ),
                          (    1      ,      7      ,  '2021-08-21'  ),
                          (    2      ,      4      ,  '2020-09-05'  ),
                          (    3      ,      2      ,  '2018-03-22'  );
DROP TABLE IF EXISTS  type_question;
CREATE TABLE 		  type_question(
Type_id         TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Type_name		ENUM('Essay','Multipe-choice')
);
INSERT INTO type_question(Type_name		 )
VALUE					('Essay'  		 ),
						('Multipe-choice');
DROP TABLE IF EXISTS  category_question;
CREATE TABLE 		  category_question( 
Category_id     SMALLINT 	 UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Category_name   VARCHAR(50) UNIQUE 	NOT NULL
);
INSERT INTO category_question   ( Category_name     )
VALUE                           (   'java'          ),
								(   '.NET'          ),
								(   'SQL'			),
                                (	'HTML'			),
                                (	'CSS'			),
                                (	'Javascript'	),
                                (	'Postman'		),
                                (	'Ruby'			),
								(   'PHP'           );
DROP TABLE IF EXISTS question;                                
CREATE TABLE 		 question (
Question_id      SMALLINT 	UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Content          TEXT,
Category_id   	SMALLINT    UNSIGNED,
Type_id     	TINYINT 	UNSIGNED,
Creator_id		SMALLINT	UNSIGNED,
Create_date     DATETIME 	DEFAULT NOW(),
FOREIGN KEY (Category_id) REFERENCES  category_question(Category_id),
FOREIGN KEY (Type_id)	  REFERENCES  Type_question    (Type_id),
FOREIGN KEY (Creator_id)  REFERENCES  `account`		   (Account_id)
);
INSERT INTO question (    content     		, Category_id  , Type_id  	, creator_id ,Create_date)
VALUE                ( '３＞5'      	  		,   1 	 	   , 	1	  	,      5     ,'2020-10-20'),
					 ( 'INT=TINYINT'  		,   3		   ,  	2	    ,      1     ,'2019-12-15'),
                     ( 'DATE!=TIME '  		,   3    	   , 	1	    ,      3     ,'2020-10-15'),
                     ( 'alert=console.log'  ,   6   	   , 	1	    ,      4     ,'2018-01-10'),
                     ( 'NULL== FALSE'       ,   4		   , 	2		,      2     ,'2019-10-20'),
                     ( 'Null là kiểu chuỗi' , 	5 		   , 	1		,      2     ,'2020-08-29'),
                     ( 'DATE!=DATETIME'		,   4		   , 	1		,	   6	 ,'2018-07-24'),
                     ( 'NaN là kiểu số'     ,   6  	 	   , 	2		,      6     ,'2019-10-20'),
                     ( 'Null là gtri rỗng'	,   4		   , 	1		,	   6	 ,'2018-07-07'),
                     ( 'Câu hỏi 10'			,   4		   , 	1		,	   6	 ,'2018-07-07'),
                     ( 'NaN k phải kiểu số' ,   6  	       , 	2		,	   3	 ,'2019-08-29');
DROP TABLE IF EXISTS answer;            
CREATE TABLE 		 answer(
Answer_id	SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Content		TEXT,
Question_id SMALLINT UNSIGNED,
is_correct	ENUM('True','False'),
CONSTRAINT	fk_Question_id
FOREIGN KEY (Question_id) REFERENCES question (Question_id)
ON DELETE CASCADE);
INSERT INTO answer   ( Content				, Question_id  ,	is_correct  )
VALUE                (   'answer1'			,	1  		   ,	'False'	 	),
				     (   'answer2'		    ,   2		   ,  	'False'		),
                     (   'answer3'			,   2    	   , 	'True'		),
                     (   'answer4'			,   4   	   , 	'False'		),
                     (   'answer5'	        ,   3		   , 	'False'		),
                     (   'answer6'			, 	3 		   , 	'False'		),
                     (   'answer7'		    ,   9    	   , 	'True'		),
                     (   'answer8'		    ,   3   	   , 	'False'		),
                     ( 	 'answer9'			,   4		   , 	'True'		),
                     ( 	 'answer10'		    ,   3 	       , 	'True'		);					   
DROP TABLE IF EXISTS exam;
CREATE TABLE		 exam(
Exam_id 	SMALLINT 	UNSIGNED PRIMARY KEY AUTO_INCREMENT,
`Code`		TINYINT		UNSIGNED,
Title		VARCHAR(300),
Category_id SMALLINT 	UNSIGNED,
Duration 	TIME 		DEFAULT('60:00'),
Creator_id	SMALLINT	UNSIGNED,
Create_date DATETIME	DEFAULT NOW(),
FOREIGN KEY (Category_id) REFERENCES  category_question(Category_id),
FOREIGN KEY (Creator_id)  REFERENCES  `account`(Account_id)
);
INSERT INTO exam (`Code` , 	Title    ,Category_id, Duration, creator_id, Create_date)
VALUE            ( 01	 ,   'HTML'  , 	4	  	 ,'120:00' ,	5		,'2020-10-20'),
				 ( 02  	 ,   'SQL'	 ,  3	     , DEFAULT ,	1		,'2020-12-15'),
				 ( 03 	 ,   'PHP'   , 	9	     ,'30:00'  ,	3		,'2021-10-15'),
				 ( 04    ,   'Java'  , 	1	     ,'90:00'  ,	4		,'2018-01-10'),
                 ( 05	 ,   'HTML'  , 	4	  	 ,'120:00' ,	5		,'2020-10-15'),
				 ( 06  	 ,   'SQL'	 ,  3	     , DEFAULT ,	1		,'2021-03-18'),
				 ( 07 	 ,   'PHP'   , 	9	     ,'30:00'  ,	2		,'2020-10-15'),
				 ( 08    ,   'Java'  , 	1	     ,'90:00'  ,	4		,'2018-09-10'),
				 ( 09    ,   'Ruby'	 , 	8		 ,'45:00'  ,	2		,'2021-08-20'),
				 ( 10    ,   'Ruby'	 , 	8		 ,'90:00'  ,	3		,'2020-10-20');
DROP TABLE IF EXISTS exam_question;
CREATE TABLE		 exam_question(
Exam_id 	SMALLINT 	UNSIGNED,
Question_id	SMALLINT 	UNSIGNED,
FOREIGN KEY (Question_id) REFERENCES question(Question_id)
ON DELETE CASCADE,
CONSTRAINT fk_Exam_id
FOREIGN KEY (Exam_id) REFERENCES exam(Exam_id)
ON DELETE CASCADE);
INSERT INTO exam_question	(Exam_id,Question_id)
VALUE 						(	01	,	5	),
							(	01	,	7	),
                            (	02	,	9	),
                            (	03	,	8	),
                            (	02	,	5	),
                            (	04	,	5	),
                            (	06	,	8	),
                            (	06	,	7	),
                            (	05	,	3	),
                            (	07	,	2	),
                            (	08	,	1	),
                            (	10	,	10	),
                            (	04	,	8	),
                            (	09	,	3	);
							-- * bài tập * --
-- q1: tạo view có chứa danh sách nhân viên thuộc phòng ban sale
DROP VIEW IF EXISTS dsnv_SALE;
CREATE VIEW dsnv_SALE AS
SELECT a.Account_id,a.Full_name, d.Department_name
FROM `account` a 
JOIN department d
ON a.Department_id = d.Department_id
WHERE d.Department_name = 'sale';
-- q2: danh sách account tham gia nhiều group nhất 
-- * -- * -- cách 1: chỉ tạo 1 bảng view
 DROP VIEW IF EXISTS dstgn_group_nhất;
 CREATE VIEW dstgn_group_nhất AS
 SELECT a.Account_id,
 		a.Full_name,
         COUNT(ga.Group_id) AS số_lượng_Join,
        GROUP_CONCAT( g.Group_name) AS Group_name
 FROM group_account ga
 LEFT JOIN `account` a
 ON ga.Account_id = a.Account_id
 LEFT JOIN `group` g
 ON g.Group_id = ga.Group_id
 GROUP BY ga.Account_id
 HAVING COUNT(ga.Group_id) = (SELECT Max(số_lượng) 
 								FROM	(SELECT 	COUNT(ga.Group_id) AS số_lượng
 										FROM 		group_account ga
 										LEFT JOIN `account` a
  										ON 		ga.Account_id = a.Account_id
 										GROUP BY 	ga.Account_id) ks);
-- * -- * -- cách 2 : tạo 2 bảng view
DROP VIEW IF EXISTS account_joined_group; -- bảng view 1 là số lượng group đã tham gia của account
CREATE VIEW account_joined_group AS
SELECT 		a.Account_id, a.Full_name, 
		COUNT(ga.Group_id) AS số_lượng_Join, 
        GROUP_CONCAT( g.Group_name) AS Group_name
FROM 		group_account ga 
JOIN `account` a	-- ở đây có thể k dùng join nếu bạn chỉ in select ra ga.group_id, ga.Account_id và count số lượng
ON ga.Account_id = a.Account_id	-- tuy nhiên cho dễ nhìn thông tin nên mình muốn join vào, k join sẽ nhanh hơn, tiện dùng join để khỏi quên thôi ^^
JOIN `group` g
ON g.Group_id = ga.Group_id
GROUP BY 	ga.Account_id;
--
DROP VIEW IF EXISTS dstgn_group_nhất;	-- bảng view 2 là tìm account tham gia nhiều group nhất, sẽ sử dụng bảng view 1 trong điều kiện.
CREATE VIEW dstgn_group_nhất AS		
SELECT *
FROM account_joined_group 
WHERE số_lượng_Join = (SELECT Max(số_lượng_Join) 
								FROM	account_joined_group);
-- * -- * -- cách 3 dùng CTE: nhanh nhất và tốn ít dữ liệu nhất
DROP VIEW IF EXISTS dstgn_group_nhất;
CREATE VIEW dstgn_group_nhất AS
WITH account_joined_group AS(
					SELECT 	a.Account_id,
							a.Full_name,
							COUNT(ga.Group_id) AS số_lượng_Join,
                            GROUP_CONCAT( g.Group_name) AS Group_name
					FROM 		group_account ga
                    LEFT JOIN 	`account` a -- k dùng 2 join này nếu chỉ muốn in ra Account_id và Group_id
					ON 			ga.Account_id = a.Account_id
					LEFT JOIN 	`group` g
					ON 			g.Group_id = ga.Group_id
                    GROUP BY 	ga.Account_id)
SELECT	*
FROM	account_joined_group
WHERE 	số_lượng_Join = (SELECT MAX(số_lượng_Join) FROM	account_joined_group);
-- q3: tạo view có chứa câu hỏi có content quá dài và xoá nó đi 
DROP VIEW IF EXISTS long_content;
CREATE VIEW long_content AS 
SELECT	*,LENGTH(Content)
 FROM	question 
 WHERE LENGTH(Content) >20;
 DELETE FROM long_content;
-- q4: tạo view có chứa danh sách có phòng ban có nhiều nhân viên nhất
DROP VIEW IF EXISTS department_nhiều_nv_nhất;
CREATE VIEW department_nhiều_nv_nhất AS 
WITH số_nv_trong_từng_phòng_ban AS(
SELECT d.Department_name,
		COUNT(a.Account_id) AS số_lượng,
		GROUP_CONCAT(a.User_name) AS Thành_viên
FROM `account` a
JOIN department d ON a.Department_id = d.Department_id
GROUP BY a.Department_id)
SELECT *
FROM số_nv_trong_từng_phòng_ban 
WHERE số_lượng = (SELECT Max(số_lượng) FROM số_nv_trong_từng_phòng_ban);
-- q5: tạo view có chứa tất cả câu hỏi do user họ Nguyễn tạo
DROP VIEW IF EXISTS question_of_Nguyễn;
CREATE VIEW question_of_Nguyễn AS
SELECT a.Full_name,q.*
FROM question q
LEFT JOIN `account` a ON q.Creator_id =a.Account_id
WHERE a.Full_name LIKE 'Nguyen%'