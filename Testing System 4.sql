--- * Hoàn Thành Assignment 4 * ----
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
						-- * Bài Tập * --
-- question1: Viết lệnh để lấy ra danh sách nhân viên và thông tin phong ban của họ sắp xếp theo thứ tự tăng dần 
SELECT  	`account`.Account_id		,			`account`.Full_name,
			department.Department_id	, 		department.Department_name
FROM 		department
JOIN 		`account` ON	`account`.Department_id		=	department.Department_id
ORDER BY 	Account_id ASC;
-- cách không dùng Join
SELECT  	`account`.Account_id		,			`account`.Full_name,
			department.Department_id	, 		department.Department_name
FROM 		`account`,department
WHERE 		`account`.Department_id		=	department.Department_id
ORDER BY 	Account_id ASC;
-- question2: viết lệnh để lấy ra thông tin các account được tạo ra sau ngày 20/12/2010
-- (SELECT`account`.Full_name, department.Department_name,`position`.Position_name,`account`.Create_date)
SELECT *
FROM  	`account`
LEFT JOIN 	department 	ON	`account`.Department_id = 	department.Department_id 
LEFT JOIN `position` 	ON	`account`.Position_id	= 	`position`.Position_id
WHERE   `account`.Create_date	> 	'2010-12-20';
-- Cáck khác không dùng Join
SELECT *
FROM  	`account`,department	, 	`position`	
WHERE 	`account`.Create_date	> 	'2010-12-20'
	AND	`account`.Department_id = 	department.Department_id 
    AND	`account`.Position_id	= 	`position`.Position_id;
-- question3: viết lệnh để lấy ra tất cả developer
SELECT	`account`.Account_id	, 	`account`.Full_name,
		`position`.Position_name	
FROM 	`position`	
JOIN 	`account`	ON 		`account`.Position_id		=	`position`.Position_id
WHERE	`position`.Position_name	=	'developer';
-- cách khác không dùng Join
SELECT	`account`.Account_id	, 	`account`.Full_name,
		`position`.Position_name	
FROM 	`account`	,	`position`	
WHERE 	`account`.Position_id		=	`position`.Position_id
	AND	`position`.Position_name	=	'developer';
-- question4: viết lệnh để lấy ra các phòng ban có >3 nhân viên
SELECT 	COUNT( a.Department_id) AS Số_Lượng , 
		d.Department_name,
        GROUP_CONCAT(a.User_name)
FROM	department   d  
JOIN 	`account` a ON	a.Department_id			=		d.Department_id 
GROUP BY Department_name
HAVING 	COUNT(a.Department_id)>3;
-- question5: viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều nhất 
SELECT	q.Content,COUNT(ex.Question_id) AS Số_Lượng
FROM	question q JOIN exam_question ex
ON		q.Question_id = ex.Question_id
GROUP BY ex.Question_id
HAVING COUNT(ex.Question_id) =(	SELECT COUNT(ex.Question_id) AS Số_Lượng
								FROM exam_question ex
								GROUP BY ex.Question_id
                                ORDER BY Số_Lượng DESC
                                LIMIT 1
								)  ;
	 -- bài này đau não dữ thần luôn ấyyy >.< --
 -- question6: thống kê mỗi category question được sử dụng trong bao nhiêu question
SELECT	c.Category_name, 
		COUNT(q.Question_id) AS Số_lượng,
        GROUP_CONCAT(q.Question_id)
FROM	 question q
JOIN	 category_question c 
ON		 q.Category_id = c.Category_id
GROUP BY q.Category_id;
-- question7: thống kê mỗi question được sử dụng trong bao nhiêu exam
SELECT	 q.Question_id,
		 COUNT(q.Question_id) AS Số_Lượng,
         GROUP_CONCAT(e.Title)
FROM	 exam_question ex
JOIN	 question q 
ON		 q.Question_id	=	ex.Question_id
JOIN	 exam e
ON		 e.Exam_id		=	ex.Exam_id
GROUP BY ex.question_id;
-- question8:  lấy ra question có nhiều câu trả lời nhất
SELECT 	q.Content,
		COUNT(a.Question_id)		AS Số_lượng,
        GROUP_CONCAT(a.Answer_id)	AS ID_trả_lời
FROM 	answer a
JOIN 	question q 
ON		a.Question_id	=	q.Question_id
GROUP BY a.Question_id
HAVING	COUNT(a.Question_id)	=	(SELECT COUNT(a.Question_id) AS Số_lượng
											 FROM 	answer a
											 GROUP BY a.Question_id
                                             ORDER BY Số_lượng DESC
                                             LIMIT		1);
-- question9: thống kê số lượng account trong mỗi group
SELECT	g.Group_name,
		COUNT(ga.Account_id) AS số_lượng,
        GROUP_CONCAT(ga.Account_id) AS JOINER
FROM	group_account ga
JOIN	`group` g
ON		g.Group_id	=	ga.Group_id
GROUP BY g.Group_id;
-- question10: tìm chức vụ có ít người nhất
SELECT	p.Position_name,
		COUNT(a.Account_id) AS số_lượng,
        GROUP_CONCAT(a.User_name) AS JOINER
FROM	`account` a
JOIN	`position` p
ON		a.Position_id	=	p.Position_id
GROUP BY a.Position_id
HAVING	COUNT(a.Account_id) = (SELECT MIN(số_lượng)
							  FROM (SELECT COUNT(a.Account_id) AS số_lượng
									FROM	`account` a
									JOIN	`position` p
									ON		a.Position_id	=	p.Position_id
									GROUP BY a.Position_id)res);
-- question11: thống kê mỗi phòng ban có bao nhiêu dev, test, PM,Scrum Master
SELECT  d.Department_name,
		COUNT(a.Position_id) AS số_lượng,
        GROUP_CONCAT(p.Position_name)
FROM	`account` a 
JOIN	`position` p 
ON		a.Position_id	=	p.Position_id
JOIN	department d
ON		d.Department_id	=	a.Department_id
GROUP BY a.Department_id;
-- question12: lấy. thông tin chi tiết của câu hỏi bao gồm thông tin cơ bản,..v..v.
SELECT 	DISTINCT	* -- em lười viết ra quá anh thông cảm T.T
FROM 		Question		q
LEFT JOIN	`account`		a 	ON a.Account_id		= q.Creator_id
LEFT JOIN	answer			an	ON an.Question_id	= q.Question_id
LEFT JOIN	type_question 	 t 	ON t.Type_id		= q.Type_id
LEFT JOIN	category_question c ON c.Category_id	= q.Category_id;
-- question13: lấy ra số lượng của mỗi loại câu hỏi tự luận hay trắc nghiệm
SELECT t.Type_name,
		COUNT(q.Question_id) AS Số_lượng,
        GROUP_CONCAT(q.Question_id) AS ID_Câu_hỏi
FROM question 		q 
JOIN type_question  t 
ON 	 q.Type_id	=	t.Type_id
GROUP BY (q.Type_id);
-- question14: lấy ra tên group không có account nào 
SELECT  g.Group_name,
		ga.account_id
FROM 	`group` g
lEFT JOIN group_account ga
 ON g.Group_id 	= ga.Group_id
WHERE ga.Group_id IS NULL;
-- question15: trùng 14
-- question16: lấy ra question không có answwer nào 
SELECT  q.Question_id,
		q.content,
        a.Answer_id
FROM answer a
RIGHT JOIN question q 
ON	 q.Question_id = a.Question_id
WHERE a.Answer_id IS NULL;
-- question17:
SELECT * -- lấy các account thuộc nhóm 1
FROM group_account ga
JOIN `group` g 
ON	ga.Group_id	= g.Group_id
WHERE ga.Group_id =1
UNION -- kết hợp sao cho không trùng nhau PS. đề ..., 1 bên id group = 1, 1 bên group = 2 sao trùng được :v
SELECT * -- lấy các account thuộc nhóm 2
FROM group_account ga
JOIN `group` g 
ON	ga.Group_id	= g.Group_id
WHERE ga.Group_id =2;
-- question18:
SELECT  COUNT(ga.Account_id), -- lấy group có > 2 thành viên
        g.Group_name,
		GROUP_CONCAT(ga.account_id)
FROM 	`group` g
JOIN group_account ga
 ON g.Group_id 	= ga.Group_id
 GROUP BY (g.Group_name)
 HAVING COUNT(ga.Account_id)> 2
 UNION -- kết hợp và không trùng , lấy tất cả thì UNION ALL, Except lấy kết quả tồn tại ở bảng 1 mà k có ở bảng 2
SELECT  COUNT(ga.Account_id), -- lấy group <7 thành viên
        g.Group_name,
		GROUP_CONCAT(ga.account_id)
FROM 	`group` g
JOIN group_account ga
 ON g.Group_id 	= ga.Group_id
 GROUP BY (g.Group_name)
 HAVING COUNT(ga.Account_id)< 7