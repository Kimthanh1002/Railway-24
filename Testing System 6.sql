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
Type_name		ENUM('Essay','Multiple-choice')
);
INSERT INTO type_question(Type_name		 )
VALUE					('Essay'  		 ),
						('Multiple-choice');
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
-- * q1: tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các account thuộc phòng ban đó
DROP PROCEDURE IF EXISTS AccountOfDepartmentName;
DELIMITER $$
CREATE PROCEDURE AccountOfDepartmentName( IN tên_phòng_ban	VARCHAR(30))
BEGIN
SELECT  d.Department_name, a.Full_name
FROM 	`account` a
JOIN 	department d ON a.Department_id = d.Department_id
WHERE 	d.Department_name = tên_phòng_ban;
END $$
DELIMITER ;
					-- có out --
		-- DROP PROCEDURE IF EXISTS InputAccountOfDepartment;
		-- DELIMITER $$
		-- CREATE PROCEDURE InputAccountOfDepartment (IN in_DepartmentName VARCHAR(30),OUT out_full_name VARCHAR(30))
		-- BEGIN 
		-- SELECT GROUP_CONCAT(a.Full_name) INTO out_full_name
		-- FROM	`account` a
		-- JOIN department d	ON	a.Department_id = d.Department_id
		-- WHERE d.Department_name = in_DepartmentName;
		-- END $$
		-- DELIMITER ;
        
					--  **** DÙNG FUNCTION **** --


DROP FUNCTION IF EXISTS AccountOfDepartmentName;
DELIMITER $$
CREATE FUNCTION AccountOfDepartmentName(InputDepartmentName VARCHAR(50)) RETURNS VARCHAR(50)
READS SQL DATA
DETERMINISTIC
BEGIN
DECLARE 	Account_D VARCHAR(50);
SELECT 		GROUP_CONCAT(a.Full_name) INTO Account_D
FROM 		`account` a
JOIN 		department d ON a.Department_id = d.Department_id
WHERE 		d.Department_name = InputDepartmentName;
RETURN 		Account_D;
END $$
DELIMITER ;
SELECT AccountOfDepartmentName('marketing') AS thành_viên_phòng_ban;
 
-- *q2: tạo store để in ra số lượng account trong mỗi group
 DROP PROCEDURE IF EXISTS AccountOfGroup;
 DELIMITER $$
 CREATE PROCEDURE AccountOfGroup()
 BEGIN
 SELECT 	COUNT(ga.Account_id) AS số_lượng_account,
			g.Group_name,
			GROUP_CONCAT(a.User_name) AS Joiner
 FROM 		group_account ga 
 JOIN 		`account` a 		ON a.Account_id = ga.Account_id
 RIGHT JOIN `group` g	ON g.Group_id 	= ga.Group_id
 GROUP BY 	g.Group_id;
 END $$
 DELIMITER ;
 
 CALL AccountOfGroup();
      -- người dùng nhập vào tên group cần tìm --
      
			 /*DROP PROCEDURE IF EXISTS AccountOfGroup;
			 DELIMITER $$
			 CREATE PROCEDURE AccountOfGroup(IN Input_GroupName VARCHAR(50)) 
			 BEGIN
			 SELECT 		COUNT(ga.Account_id) AS số_lượng_account,
			 			g.Group_name,
			 			GROUP_CONCAT(a.User_name) AS Joiner
			 FROM 		group_account ga
			 JOIN 		`account` a		ON a.Account_id = ga.Account_id
			 RIGHT JOIN 	`group` g		ON g.Group_id = ga.Group_id
			 GROUP BY (g.Group_id)
			 HAVING g.Group_name = Input_GroupName;
			 END $$
			 DELIMITER ;*/
            
            
-- *q3: tạo store để thống kê mỗi type question có bao nhiêu question đk tạo ra trong tháng hiện tại

DROP PROCEDURE IF EXISTS QuestionOfThisMonth;
DELIMITER $$
CREATE PROCEDURE QuestionOfThisMonth()
BEGIN
SELECT 	COUNT(q.Question_id),
		GROUP_CONCAT(q.Create_date),
        t.Type_name
FROM 	question q
JOIN 	type_question t ON t.Type_id = q.Type_id
WHERE 	MONTH(q.Create_date) = MONTH(NOW()) 
	AND YEAR(q.Create_date) = YEAR(NOW())
GROUP BY (t.Type_name);
END $$
DELIMITER ;

CALL QuestionOfThisMonth();


					/* để người dung nhập vào tháng cần tìm
			 DROP PROCEDURE IF EXISTS QuestionOfThisMonth;
			 DELIMITER $$
			 CREATE PROCEDURE QuestionOfThisMonth(IN InputYearAndMonth DATE ) 
			 BEGIN
			 SELECT COUNT(q.Type_id) AS Số_lượng,
			 		  GROUP_CONCAT(q.Create_date) AS Create_date,
			        t.Type_name
			 FROM  question  q
			 JOIN  Type_question t ON q.Type_id = t.Type_id
			 WHERE MONTH(q.Create_date) = MONTH(InputYearAndMonth) AND YEAR(q.Create_date)=YEAR(InputYearAndMonth) 
			 GROUP BY t.Type_name;
			 END $$
			 DELIMITER ; */
            
-- *q4: viết store để trả ra id của type question có nhiều câu hỏi nhất 

DROP PROCEDURE IF EXISTS TypeIdOfMaxCountQuestion;
DELIMITER $$
CREATE PROCEDURE 		TypeIdOfMaxCountQuestion(OUT out_TypeID TINYINT UNSIGNED) 
BEGIN
WITH 		số_lượng_question AS( 
SELECT 		Type_id, COUNT(Question_id) as số_lượng
FROM 		question
GROUP BY 	Type_id				)
SELECT 		Type_id INTO out_TypeID
FROM 		số_lượng_question
WHERE 		số_lượng = (SELECT max(số_lượng)FROM số_lượng_question);
END $$
DELIMITER ;

SET 	@out_TypeId = 0;
CALL 	TypeIdOfMaxCountQuestion(@out_TypeId);
SELECT 	@out_TypeId;

						-- **** sử dụng function **** --

DROP FUNCTION IF EXISTS TypeIdOfMaxCountQuestion;
DELIMITER $$
CREATE FUNCTION TypeIdOfMaxCountQuestion() RETURNS TINYINT UNSIGNED
READS SQL DATA
DETERMINISTIC
BEGIN
DECLARE MaxCount_Q TINYINT UNSIGNED ;
WITH 		số_lượng_question AS( 
SELECT 		Type_id, COUNT(Question_id) as số_lượng
FROM 		question
GROUP BY 	Type_id)
SELECT 	Type_id INTO MaxCount_Q
FROM 	số_lượng_question
WHERE 	số_lượng = (SELECT max(số_lượng)FROM số_lượng_question);
RETURN MaxCount_Q;
END $$
DELIMITER ;
SELECT TypeIdOfMaxCountQuestion();

-- *q5: sử dụng store ở q4 để tìm ra tên type question

SELECT 	Type_id, Type_name
FROM 	type_question
WHERE 	Type_id = @out_TypeId;

					-- **** từ function **** --
                    
SELECT 	Type_id, Type_name
FROM 	type_question
WHERE 	Type_id = TypeIdOfMaxCountQuestion();

/* q6: viết store cho phép người dùng nhập vào 1 chuỗi và trả về group có tên chứa chuỗi đk nhập
 		hoặc trả về user nếu username chứa chuỗi đk nhập */
DROP PROCEDURE IF EXISTS GroupOrUsername ;
DELIMITER $$
CREATE PROCEDURE GroupOrUsername (IN Group_OR_Username VARCHAR(50))
BEGIN 
WITH 		AllGroupaccAndAccount AS(
SELECT 		ga.Group_id ,a.User_name
FROM 		`account` a
LEFT JOIN 	group_account ga ON a.Account_id = ga.Account_id
UNION
SELECT 		ga.Group_id ,a.User_name		
FROM 		`account` a
RIGHT JOIN 	group_account ga ON a.Account_id = ga.Account_id),
		AllGroupAndUsername AS(
SELECT 		al.*,g.Group_name
FROM		AllGroupaccAndAccount al
LEFT JOIN	`group` g ON g.Group_id = al.Group_id
UNION
SELECT 		al.*,g.Group_name
FROM		AllGroupaccAndAccount al
RIGHT JOIN	`group` g ON g.Group_id = al.Group_id)
SELECT 		*
FROM		AllGroupAndUsername
WHERE 		Group_name LIKE CONCAT('%',Group_OR_Username,'%') 
OR 			User_name  LIKE CONCAT('%',Group_OR_Username,'%');
END $$
DELIMITER ;
CALL 		GroupOrUsername('a');
			/* cách khác */

DROP PROCEDURE IF EXISTS GroupOrUsername ;
DELIMITER $$
CREATE PROCEDURE GroupOrUsername (IN Group_OR_Username VARCHAR(50))
BEGIN
SELECT 		GROUP_CONCAT(Group_name	) AS group_and_user
FROM 		`group` 
WHERE 		Group_name LIKE CONCAT('%',Group_OR_Username,'%')
UNION
SELECT 		GROUP_CONCAT(User_name) AS group_and_user
FROM 		`account` 
WHERE 		User_name LIKE CONCAT('%',Group_OR_Username,'%');
END $$
DELIMITER ;
CALL GroupOrUsername('a');
		-- 		**** cách 2 **** --

DROP PROCEDURE IF EXISTS GroupOrUsername ;
DELIMITER $$
CREATE PROCEDURE GroupOrUsername (	IN Input_Group_OR_Username VARCHAR(50), 
									IN NameOfPrintColumns ENUM('group name','user name' )
								 )
BEGIN

	IF	 NameOfPrintColumns = 'group name'
	THEN
		SELECT Group_name
		FROM	`group` 
        WHERE Group_name LIKE CONCAT('%',Input_Group_OR_Username,'%');
	ELSE
        SELECT User_name
		FROM	`account` 
		WHERE User_name LIKE CONCAT('%',Input_Group_OR_Username,'%');
	END IF ;
END $$
DELIMITER ;
CALL 		GroupOrUsername('a','group name');

/*q7: viết 1 store cho phép người dùng nhập vào thông tin fullname, email và trong store sẽ tự động gán
User name sẽ giống email nhưng bỏ phần @gmail.com đi
PositionID sẽ có DEFAULT là developer
DepartmentID sẽ được cho vào 1 phòng chờ, sau đó in ra kết quả*/

INSERT INTO 	department(Department_name)
VALUE 						('Waiting Room');
DROP PROCEDURE IF EXISTS UserInput ;
DELIMITER $$
CREATE PROCEDURE UserInput( IN InputFullName VARCHAR(50) ,IN InputEmail VARCHAR(50))
BEGIN
DECLARE UserName 		VARCHAR(50) 		DEFAULT SUBSTRING_INDEX(InputEmail,'@',1);
DECLARE PositionID		SMALLINT UNSIGNED	;
DECLARE DepartmentID 	SMALLINT UNSIGNED	;
SELECT 	Position_id INTO PositionID
FROM	`position`
WHERE	Position_name = 'Dev';
SELECT 	Department_id INTO DepartmentID
FROM	department
WHERE	Department_name = 'Waiting Room';
INSERT INTO `account`(Email		, Full_name		, User_name, Department_id,	Position_id)
VALUES				 (InputEmail, InputFullName	, UserName , DepartmentID , PositionID );
END $$
DELIMITER ;
CALL UserInput( 'nguyen kim khanh', 'khanh120@gmail.com');

/*q8: Viết 1 store cho phép người dùng nhập vào Essay hoặc Multiple-Choice
để thống kê câu hỏi essay hoặc multiple-choice nào có content dài nhất*/
DROP PROCEDURE IF EXISTS MaxContentQuestionInType;
DELIMITER $$
CREATE PROCEDURE MaxContentQuestionInType (IN TypeQuestion ENUM('Essay','Multiple-choice'))
BEGIN 
DECLARE maxEssay 			TINYINT UNSIGNED;
DECLARE maxMultipleChoice 	TINYINT UNSIGNED;

SELECT MAX(LENGTH(q.Content))INTO maxEssay 			
FROM question q
JOIN type_question 	t ON q.Type_id = t.Type_id
WHERE t.Type_name = 'Essay' ;

SELECT MAX(LENGTH(q.Content)) INTO maxMultipleChoice
FROM question q
JOIN type_question 	t ON q.Type_id = t.Type_id
WHERE t.Type_name = 'Multiple-choice';

IF TypeQuestion = 'Essay'
THEN
	SELECT t.Type_name, q.content, LENGTH(q.Content) AS Length
    FROM question		q
    JOIN type_question 	t ON q.Type_id = t.Type_id
    WHERE t.Type_name = 'Essay' AND LENGTH(q.content)= maxEssay;
ELSE
	SELECT t.Type_name, q.content, LENGTH(q.Content) AS Length
    FROM question		q
    JOIN type_question 	t ON q.Type_id = t.Type_id
    WHERE t.Type_name = 'Multiple-Choice' AND LENGTH(q.content)= maxMultipleChoice;
    END IF;
    END $$
    DELIMITER ;
CALL MaxContentQuestionInType ('Essay');
/*q9:Viết 1 store cho phép người dùng xóa exam dựa vào ID*/
/*
DROP PROCEDURE IF EXISTS DeleteExamByID;
DELIMITER $$
CREATE PROCEDURE DeleteExamByID(IN Input_examID TINYINT UNSIGNED)
BEGIN 						
DELETE e,eq
FROM exam e
LEFT JOIN 	exam_question eq ON e.Exam_id = eq.Exam_id
WHERE		e.Exam_id = Input_examID;
END $$
DELIMITER ;
CALL DeleteExamByID(2);
					/* vì đã dùng On Delete cascade nên có thể xoá trực tiếp k cần join*/
DROP PROCEDURE IF EXISTS DeleteExamByID;
DELIMITER $$
CREATE PROCEDURE DeleteExamByID(IN Input_examID TINYINT UNSIGNED)
BEGIN 						
DELETE FROM exam
WHERE		Exam_id = Input_examID;
END $$
DELIMITER ;
           
           -- ******* -- ******* -- ******* -- ****** -- ****** --
           
/*q10:Tìm ra các exam được tạo từ 3 năm trước và xóa các exam đó đi (sử
dụng store ở câu 9 để xóa)
Sau đó in số lượng record đã remove từ các table liên quan trong khi
removing*/
DROP PROCEDURE IF EXISTS 	DeleteExam;
DELIMITER $$
CREATE PROCEDURE 			DeleteExam()
BEGIN
DECLARE a 				TINYINT UNSIGNED DEFAULT 1;
DECLARE k 				TINYINT UNSIGNED;
DECLARE CountDeleteInE 	TINYINT UNSIGNED;
DECLARE CountDeleteInEQ TINYINT UNSIGNED;
DROP TABLE IF EXISTS examid;
CREATE TABLE  		 examid(
	IDofExamID 	TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
	ExamID		TINYINT UNSIGNED);
INSERT INTO examid(ExamID)
SELECT 		Exam_id
FROM 		exam
WHERE YEAR	(NOW())-YEAR(Create_date) =3;

SELECT MAX(IDofExamID) INTO CountDeleteInE FROM examid;
WHILE (a <= CountDeleteInE) 
DO
  SELECT 	ExamID INTO k
  FROM 		examid 
  WHERE 	IDofExamID = a;
  /*CALL 	DeleteExamByID(k);*/
  SET 		a= a+1;
END WHILE;
SELECT 	COUNT(Exam_id) AS số_lượng INTO CountDeleteInEQ
FROM 	exam_question eq
JOIN 	examid e
WHERE 	Eq.Exam_id IN (e.ExamID);
SELECT 	CONCAT('số lượng xoá từ bảng exam là ',CountDeleteInE,'-'
			'số lượng xoá từ bảng exam_question là ',CountDeleteInEQ);
DROP TABLE  examid;
END $$
DELIMITER ;
CALL DeleteExam();
/*q11:Viết store cho phép người dùng xóa phòng ban bằng cách người dùng
nhập vào tên phòng ban và các account thuộc phòng ban đó sẽ được
chuyển về phòng ban default là phòng ban chờ việc*/
DROP PROCEDURE IF EXISTS DeleteDepartmentByName;
DELIMITER $$
CREATE PROCEDURE 		DeleteDepartmentByName( In InputDepartmentname VARCHAR(50))
BEGIN
DECLARE DepartmentId TINYINT UNSIGNED;
SELECT 	Department_id INTO DepartmentId
FROM	department
WHERE	Department_name = InputDepartmentname;
/*UPDATE `account` a
SET 	Department_id = 8
WHERE	Department_id = DepartmentId;
DELETE FROM	department 
WHERE 	Department_name = InputDepartmentname;*/
END $$
DELIMITER ;
CALL DeleteDepartmentByName('sale');
SELECT *
FROM department;
/*q12:Viết store để in ra mỗi tháng có bao nhiêu câu hỏi được tạo trong năm
nay*/
DROP PROCEDURE IF EXISTS CountQuestionEachMonth;
DELIMITER $$
CREATE PROCEDURE		 CountQuestionEachMonth()
BEGIN
SELECT 	MONTH(Create_date) AS Tháng,
		COUNT(1) AS Số_lượng
FROM	question
WHERE YEAR(Create_date) = 2020
GROUP BY MONTH(Create_date);
END $$
DELIMITER ;
CALL CountQuestionEachMonth();
 -- cách 2
/*DROP PROCEDURE IF EXISTS CountQuestionEachMonth;
DELIMITER $$
CREATE PROCEDURE		 CountQuestionEachMonth()
BEGIN
DROP TABLE IF EXISTS EachMonth;
CREATE TABLE EachMonth(
`Month`			TINYINT UNSIGNED);
INSERT INTO EachMonth(`Month`)
VALUES					 	(1),
							(2),
                            (3),
                            (4),
                            (5),
                            (6),
                            (7),
                            (8),
                            (9),
							(10),
                            (11),
							(12);
DROP TABLE IF EXISTS CountQuestion;
CREATE TABLE CountQuestion (
`Month` TINYINT UNSIGNED,
Count_question TINYINT UNSIGNED DEFAULT 0);
INSERT INTO CountQuestion(`Month`,Count_question)
SELECT 	MONTH(Create_date) AS Tháng,
		COUNT(1) AS Số_lượng
FROM	question
WHERE YEAR(Create_date) = 2018
GROUP BY MONTH(Create_date);
SELECT em.*,cq.Count_question
FROM EachMonth em
LEFT JOIN CountQuestion cq ON em.`Month` = cq.`Month`;
DROP TABLE CountQuestion;
DROP TABLE EachMonth;
END $$
DELIMITER ;
CALL CountQuestionEachMonth();*/

 -- **** --- **** --- **** ---
 
 /*q13:Viết store để in ra mỗi tháng có bao nhiêu câu hỏi được tạo trong 6
tháng gần đây nhất
(Nếu tháng nào không có thì sẽ in ra là "không có câu hỏi nào trong
tháng") */
/*SET		Create_date = '2021-10-20'
WHERE	Question_id = 2;*/
DROP PROCEDURE IF EXISTS CountQuestionin6Month;
DELIMITER $$
CREATE PROCEDURE		 CountQuestionin6Month()
BEGIN
DROP TABLE IF EXISTS EachMonth;
CREATE TABLE EachMonth(
`Month`			TINYINT UNSIGNED);
INSERT INTO EachMonth(`Month`)
VALUES					 	(1),
							(2),
                            (3),
                            (4),
                            (5),
                            (6),
                            (7),
                            (8),
                            (9),
							(10),
                            (11),
							(12);
DROP TABLE IF EXISTS 	CountQuestion;
CREATE TABLE 			CountQuestion (
`Month` 		TINYINT UNSIGNED,
Count_question 	TINYINT UNSIGNED DEFAULT 0);
INSERT INTO 	CountQuestion(`Month`,Count_question)
SELECT 	MONTH	(Create_date) AS Tháng,
				COUNT(1) AS Số_lượng
FROM	question
WHERE 	Create_date >= (SELECT DATE_SUB(NOW(), INTERVAL 6 MONTH))
GROUP BY MONTH(Create_date);
DROP TABLE IF EXISTS result;
CREATE TABLE 		 result (
`Month`			TINYINT UNSIGNED,
Count_question	VARCHAR(100) );
INSERT INTO result(`Month`,Count_question)
SELECT 		em.*,cq.Count_question
FROM 		EachMonth em
LEFT JOIN 	CountQuestion cq ON em.`Month` = cq.`Month`
WHERE 		em.`Month` >= (SELECT MONTH(DATE_SUB(NOW(), INTERVAL 6 MONTH))) 
	AND 	em.`Month` <= (SELECT MONTH(NOW()));
UPDATE 	result
SET		Count_question = 'không có câu hỏi nào trong tháng'
WHERE 	Count_question IS NULL;
SELECT *
FROM result;
DROP TABLE CountQuestion;
DROP TABLE EachMonth;
DROP TABLE result;
END $$
DELIMITER ;
CALL CountQuestionin6Month();

-- cách 2: dùng CASE WHEN

/*DROP PROCEDURE IF EXISTS CountQuestionin6Month;
DELIMITER $$
CREATE PROCEDURE		 CountQuestionin6Month()
BEGIN
DROP TABLE IF EXISTS EachMonth;
CREATE TABLE EachMonth(
`Month`			TINYINT UNSIGNED);
INSERT INTO EachMonth(`Month`)
VALUES					 	(1),
							(2),
                            (3),
                            (4),
                            (5),
                            (6),
                            (7),
                            (8),
                            (9),
							(10),
                            (11),
							(12);
DROP TABLE IF EXISTS CountQuestion;
CREATE TABLE CountQuestion (
`Month` TINYINT UNSIGNED,
Count_question TINYINT UNSIGNED DEFAULT 0);
INSERT INTO CountQuestion(`Month`,Count_question)
SELECT 	MONTH(Create_date) AS Tháng,
		COUNT(1) AS Số_lượng
FROM	question
WHERE 	Create_date >= (SELECT DATE_SUB(NOW(), INTERVAL 6 MONTH))
GROUP BY MONTH(Create_date);
SELECT em.*,(CASE 
				WHEN cq.Count_question IS NUll
				THEN 'k có question trong tháng'
			ELSE cq.Count_question
			END) AS Count_question
FROM EachMonth em
LEFT JOIN CountQuestion cq ON em.`Month` = cq.`Month`
WHERE 	em.`Month` >= (SELECT MONTH(DATE_SUB(NOW(), INTERVAL 6 MONTH))) 
	AND em.`Month` <= (SELECT MONTH(NOW()));
DROP TABLE CountQuestion;
DROP TABLE EachMonth;
END $$
DELIMITER ;
CALL CountQuestionin6Month();*/
