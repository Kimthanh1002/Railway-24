--- * Hoàn Thành Assignment 1 * ----
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
                          (    5      ,      10     ,  '2019-07-16'  ),
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
                     -- *---- BÀI TẬP ----* --
 -- question2:  lấy ra tất cả phòng ban
 SELECT *
 FROM   department;
 -- question3: lấy ra id của phòng ban sale
SELECT  Department_id
FROM 	department
WHERE 	Department_name = 'Sale';
 -- question4:  lấy ra thông tin account có fullname dài nhất
 SELECT *
 FROM `account`
 WHERE LENGTH(Full_name)=(SELECT MAX(LENGTH(Full_name)) FROM `account`);
 -- question5: lấy ra thông tin account có fullname dài nhất thuộc phòng ban có id=3
 SELECT *
 FROM  `account`
 WHERE LENGTH(Full_name)=(SELECT MAX(LENGTH(Full_name)) FROM `account`) AND Department_id=3 ;
 -- question6: lấy ra tên group đã tham gia trước ngày 20/12/2019
 SELECT Group_name
 FROM   `group`
 WHERE  Create_date <'2019-12-20';
 -- question7: lấy ra id của question có >= 4 câu trả lời 
 SELECT 	Question_id
 FROM   	answer
 GROUP BY 	Question_id
 HAVING  COUNT(Question_id)>=4;
 -- question8:lấy ra các mã thi có thời gian thi >= 60 phút và tạo ra trc ngày 20/12/2019
 SELECT `Code`
 FROM 	exam 
 WHERE 	Duration>='60:00:00' AND Create_date<'2019-12-20';
 -- question9: lấy ra 5 group được tạo gần đây nhất
 SELECT  *
 FROM 		`group`
 ORDER BY 	Create_date DESC
 LIMIT 5;
 -- question10: đếm số nhân viên thuộc department có Id=2
 SELECT COUNT(1) AS Số_Lượng,GROUP_CONCAT(User_name)
 FROM 	`account`
 WHERE 	Department_id =2;
 -- question11: lấy nhân viên có tên bắt đầu bằng D và kết thúc bằng o
      -- (vì không có tên nào như thế nên sẽ update 1 tên) ---
 UPDATE `account`
 SET 		Full_name= 'Dinh Thi Thao'
 WHERE 		Account_id=2;
 SELECT CONCAT(Full_name,'-',User_name,'-',Account_id)
 FROM 		`account`
 WHERE 		Full_name LIKE 'D%o';
 -- question12: xoá tất cả các exam được tạo trươc ngày 20/12/2019
DELETE FROM exam 
WHERE 		Create_date<'2019-12-20';
	-- *cách khác: dùng join (
					  -- DELETE e, ex
					  -- FROM	exam e JOIN exam_question ex
                      -- ON		e.Exam_id	=	ex.Exam_id
                      -- WHERE	Create_date<'2019-12-20')
	-- *cách khác: dùng alter table (
								-- ALTER TABLE exam_question
                                -- ADD CONSTRAINT fk_Exam_id
                                -- FOREIGN KEY (Exam_id) REFERENCES exam(Exam_id)
                                -- ON DELETE CASCADE sau đó xoá bình thường;)
-- question13: xoá tất cả các question có nội dung bắt đầu từ "câu hỏi"
DELETE FROM	question
WHERE 	content		LIKE 'câu hỏi%';
-- cách khác dùng join (
					-- DELETE	q , ex, a
					-- FROM	exam_question ex  
					-- JOIN question q
					-- ON		q.Question_id = ex.Question_id
					-- JOIN answer a
                    -- ON		q.Question_id = a.answer_id
					-- WHERE	q.content like 'câu hỏi%';)
-- cách khác: dùng alter table (
					-- ALTER TABLE .....ây, lười quá, thôi bỏ qua :v )
-- question14: UPDATE thông tin của id=5 thành Nguyen Ba Loc mail thànhloc.nguyenba@gmail.com
UPDATE 		`account`
SET 		Email= 'loc.nguyenba@gmail.com', Full_name='Nguyen Ba Loc'
WHERE 		Account_id= 5;
-- question15: update account có id=5 sẽ thuộc group có id =4
UPDATE 		group_account
SET 		Group_id = 4
WHERE 		Account_id=5
