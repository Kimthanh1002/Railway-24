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
Gender			VARCHAR(20),
Create_date     DATETIME 	DEFAULT NOW(),
FOREIGN KEY (Department_id) REFERENCES department (Department_id),
FOREIGN KEY (Position_id)	REFERENCES `position` (Position_id)
);
INSERT INTO `account`(    Email           , User_name , Full_name        , Department_id, Position_id , Gender 	, Create_date)
VALUE                ( 'kimthanh@gmail.com', 'Thanh'   , 'Nguyen Thanh'  ,      5       ,     1       , 'Male'	,'2021-10-20'),
					 ( '12ngan@gmail.com'  , 'Ngan'    , 'Tran thi Ngan' ,      1       ,     3       , 'Male'	,'2012-12-15'),
                     ( '67hanh@gmail.com'  , 'Hanh'    , 'Tran Thi Hanh' ,      3       ,     1       , 'Male'	,'2021-10-20'),
                     ( '23phong@gmail.com' , 'Phong'   , 'Hoang Phong'   ,      4       ,     1       ,'Female'	,'2015-01-10'),
                     ( '53thanh@gmail.com' , 'Thanh1'  , 'Dinh Van Thanh',      2       ,     2       ,'Female' ,'2021-10-20'),
                     ( '59hoang@gmail.com' , 'Hoangaf' , 'Dinh Van Hoang',      2       ,     4       ,'Female' ,'2020-08-29'),
                     ( '89huy@gmail.com'   , 'huy198'  , 'Hoang Van Huy' ,      6       ,     3       ,'Female'	,'2019-10-20'),
                     ( '98thanh@gmail.com' , 'Thanh2'  , 'Phan Van Thanh',      7       ,     2       ,'Female'	,'2021-01-08'),
                     ( 'Hoa89@gmail.com'   , 'Hoa89'   , 'Dinh Thi Hoa'  ,      1       ,     4       , 'Male'	,'2017-10-15'),
                     ( '24tuan@gmail.com'  , 'Tuan'    , 'Pham van Tuan' ,      3       ,     2       ,'Female'	,'2007-07-08');
DROP TABLE IF EXISTS  	`group`;
CREATE TABLE 			`group` (
Group_id       SMALLINT 	 UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Group_name      VARCHAR(50)  UNIQUE	  NOT NULL,
Creator_id      SMALLINT	 UNSIGNED NOT NULL,
Create_date     DATETIME 		 DEFAULT NOW(),
FOREIGN KEY (Creator_id) REFERENCES `account` (Account_id)
ON DELETE CASCADE
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
FOREIGN KEY (Group_id)	 REFERENCES `group`		(Group_id)
ON DELETE CASCADE,
FOREIGN KEY (Account_id) REFERENCES `account`   (Account_id)
ON DELETE CASCADE);
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
FOREIGN KEY (Category_id) REFERENCES  category_question(Category_id)
ON DELETE CASCADE,
FOREIGN KEY (Creator_id)  REFERENCES  `account`		   (Account_id)
ON DELETE CASCADE,
FOREIGN KEY (Type_id)	  REFERENCES  Type_question    (Type_id)
ON DELETE CASCADE);
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
FOREIGN KEY (Creator_id)  REFERENCES  `account`(Account_id)
ON DELETE CASCADE,
FOREIGN KEY (Category_id) REFERENCES  category_question(Category_id)
ON DELETE CASCADE
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
/*q1: tao trigger k cho phép nguời dùng nhập vào group có ngày tạo 1 năm trước*/

DROP TRIGGER IF EXISTS 	CannotInputGroup1YearAgo ;
DELIMITER $$
CREATE TRIGGER 			CannotInputGroup1YearAgo 
BEFORE	INSERT ON `group` 
FOR EACH ROW
BEGIN
	IF 	NEW.Create_date < DATE_SUB(NOW(),INTERVAL 1 YEAR)THEN
		SIGNAL SQLSTATE '12345'
		SET MESSAGE_TEXT = 'cannot insert into date less than 1 year before';
	END IF;
END $$
DELIMITER ;
INSERT INTO  `group`( Group_name         , Creator_id , Create_date  )
VALUE               ( '3sale'            ,     2      , '2018-10-11' );

/*q2: Tạo trigger Không cho phép người dùng thêm bất kỳ user nào vào
department "Sale" nữa, khi thêm thì hiện ra thông báo "Department
"Sale" cannot add more user" */
DROP TRIGGER IF EXISTS DSale_CannotaddMoreUser ;
DELIMITER $$
CREATE TRIGGER 		DSale_CannotaddMoreUser 
BEFORE INSERT ON 	`account`
FOR EACH ROW
BEGIN
	DECLARE DepartmentSale VARCHAR (50);
	SELECT 	Department_id INTO DepartmentSale
	FROM	department
	WHERE 	Department_name = 'sale';
	IF		NEW.Department_id =  DepartmentSale THEN
	SIGNAL SQLSTATE '12345'
	SET MESSAGE_TEXT = 'Department Sale cannot add more user';
	END IF;
END $$
DELIMITER ;
INSERT INTO `account`(    Email           , User_name , Full_name        , Department_id, Position_id , Create_date)
VALUE                ( 'h.hoang@gmail.com', 'Hoang'   , 'Nguyen Hoang '  ,      4       ,     1       ,'2021-10-20');
/*q3:Cấu hình 1 group có nhiều nhất là 5 user*/
DROP TRIGGER IF EXISTS Group5User ;
DELIMITER $$
CREATE TRIGGER 		Group5User
BEFORE INSERT ON 	group_account
FOR EACH ROW
BEGIN
DECLARE 	a INT;
SELECT 		COUNT(Account_id) INTO a
FROM 		group_account ga
GROUP BY	Group_id
HAVING 		Group_id = NEW.Group_id;
IF a>=5 THEN 
	SIGNAL SQLSTATE '12345'
	SET MESSAGE_TEXT = 'cannot add more user' ;
END IF;
END $$
DELIMITER ;
INSERT INTO group_account ( Group_id  ,  Account_id ,  Join_date    )
VALUE                     (    2      ,      1     ,  '2020-10-21'  );

/*q4:Cấu hình 1 bài thi có nhiều nhất là 3 Question*/
DROP TRIGGER IF EXISTS ExamMaxIs10 ;
DELIMITER $$
CREATE TRIGGER			ExamMaxIs10 
BEFORE INSERT ON exam_question
FOR EACH ROW 
BEGIN
DECLARE CountQuestionInExam TINYINT UNSIGNED;
SELECT COUNT(Question_id) INTO CountQuestionInExam 
FROM exam_question
GROUP BY Exam_id
HAVING Exam_id = NEW.Exam_id;
IF CountQuestionInExam > 2 THEN 
	SIGNAL SQLSTATE '12345'
	SET MESSAGE_TEXT = 'cannot add more question';
END IF;
END $$
DELIMITER ;
INSERT INTO exam_question	(Exam_id,Question_id)
VALUE 						(	2	,	4	);

/*q5Tạo trigger không cho phép người dùng xóa tài khoản có email là
admin@gmail.com (đây là tài khoản admin, không cho phép user xóa),
còn lại các tài khoản khác thì sẽ cho phép xóa và sẽ xóa tất cả các thông
tin liên quan tới user đó*/

DROP TRIGGER IF EXISTS CannotDeleteAccountAdmin ;
DELIMITER $$
CREATE TRIGGER CannotDeleteAccountAdmin
BEFORE DELETE ON `account`
FOR EACH ROW
BEGIN
IF OLD.Email = 'admin@gmail.com' THEN 
SIGNAL SQLSTATE '12345'
SET MESSAGE_TEXT = 'cannot delete account admin';
END IF;
END $$
DELIMITER ;
/*INSERT INTO `account`(    Email           , User_name , Full_name        , Department_id, Position_id , Create_date)
VALUE                ( 'admin@gmail.com'  , 'Hoang105'   , 'Nguyen Hoang ',      3       ,     1       ,'2021-10-20');
DELETE FROM `account`
WHERE Email = '12ngan@gmail.com';*/
/*q6:Không sử dụng cấu hình default cho field DepartmentID của table
Account, hãy tạo trigger cho phép người dùng khi tạo account không điền
vào departmentID thì sẽ được phân vào phòng ban "waiting Department"*/
INSERT INTO 	department(Department_name)
VALUE 						('Waiting Room');
DROP TRIGGER IF EXISTS DefaultDepartmentIsWaitingRoom;
DELIMITER $$
CREATE TRIGGER DefaultDepartmentIsWaitingRoom
BEFORE INSERT ON `account`
FOR EACH ROW
BEGIN
DECLARE DepartmentID TINYINT UNSIGNED;
SELECT Department_id INTO DepartmentID
FROM department
WHERE Department_name = 'Waiting Room';
IF NEW.Department_id IS NULL THEN 
SET NEW.Department_id = DepartmentID;
END IF;
END $$
DELIMITER ;
/*INSERT INTO `account`(    Email           , User_name , Full_name        , Position_id , Create_date)
VALUE                ( 'admin@gmail.com'  , 'Hoang105'   , 'Nguyen Hoang ',    1       ,'2021-10-20');
SELECT*
FROM `account`*/
/*q7:Cấu hình 1 bài thi chỉ cho phép user tạo tối đa 4 answers cho mỗi
question, trong đó có tối đa 2 đáp án đúng.*/
DROP TRIGGER IF EXISTS 	Answer4AndCorrectAnswer2;
DELIMITER $$
CREATE TRIGGER 			Answer4AndCorrectAnswer2
BEFORE INSERT ON answer
FOR EACH ROW
BEGIN
DECLARE ResultTrueInQuestion	TINYINT UNSIGNED;
DECLARE CountAnswerInQuestion 	TINYINT UNSIGNED;
SELECT 	COUNT(Answer_id) INTO CountAnswerInQuestion
FROM 	answer
GROUP BY Question_id
HAVING NEW.Question_id = Question_id;
SELECT 	COUNT(is_correct) INTO ResultTrueInQuestion
FROM 	answer
WHERE 	is_correct = NEW.is_correct AND NEW.Question_id = Question_id
GROUP BY Question_id;
IF (CountAnswerInQuestion >= 4) THEN
	SIGNAL SQLSTATE '12345'
	SET MESSAGE_TEXT = 'got 4 answers,cannot add more answer';
ELSEIF (ResultTrueInQuestion >= 2) THEN
	SIGNAL SQLSTATE '12345'
	SET MESSAGE_TEXT = 'got 2 correct answers ,cannot add more answer';
END IF;
END $$
DELIMITER ;
INSERT INTO answer   ( Content				, Question_id  ,	is_correct  )
VALUE                (   'answer28'			,	2 		   ,	'True'	 	);
SELECT *
FROM answer;
/*q8:Viết trigger sửa lại dữ liệu cho đúng:
Nếu người dùng nhập vào gender của account là nam, nữ, chưa xác định
Thì sẽ đổi lại thành M, F, U cho giống với cấu hình ở database*/
/*ALTER TABLE `account`
ADD COLUMN Gender NVARCHAR(20) AFTER Position_id;*/
DROP TRIGGER IF EXISTS 	SetGender;
DELIMITER $$
CREATE TRIGGER 			SetGender
after INSERT ON 		`account`
FOR EACH ROW
BEGIN
IF 				new.Gender = 'Nam' 				THEN 
			SET new.Gender = 'Male';
ELSEIF 			new.Gender = 'Nữ' 				THEN 
			SET new.Gender = 'Female';
ELSEIF 			new.Gender = 'Chưa xác định' 	THEN
			SET new.Gender = 'Unknown';
END IF;
END $$
DELIMITER ;
INSERT INTO `account`(    Email           , User_name , Full_name        , Position_id ,Gender , Create_date)
VALUE                ( 'admin@gmail.com'  , 'Hoang108'   , 'Nguyen Hoang ',    1       , 'Nam' ,'2021-10-20');
SELECT *
FROM `account`;
/*q9:Viết trigger không cho phép người dùng xóa bài thi mới tạo được 2 ngày*/
DROP TRIGGER IF EXISTS CannotDeleteExamCreateDate2DayAgo;
DELIMITER $$
CREATE TRIGGER 			CannotDeleteExamCreateDate2DayAgo
BEFORE DELETE ON exam
FOR EACH ROW
BEGIN
IF(DATEDIFF(NOW(),OLD.Create_date)) <= 2 THEN 
 SIGNAL SQLSTATE '12345'
 SET MESSAGE_TEXT = 'cannot delete the exam created 2 days ago';
END IF;
END $$
DELIMITER ;
INSERT INTO exam (`Code` , 	Title    ,Category_id, Duration, creator_id, Create_date)
VALUE            ( 11	 ,   'HTML'  , 	4	  	 ,'120:00' ,	5		,'2021-11-1');
SELECT *
From exam;
DELETE FROM exam
WHERE `Code` = 11;
/*q10:Viết trigger chỉ cho phép người dùng chỉ được update, delete các
question khi question đó chưa nằm trong exam nào*/
DROP TRIGGER IF EXISTS 	CannotDeleteQuestionInExam;
DELIMITER $$
CREATE TRIGGER 			CannotDeleteQuestionInExam
BEFORE DELETE ON question  -- nếu Update thì thay đây là Update
FOR EACH ROW
BEGIN
DECLARE CountExamInQuestion TINYINT UNSIGNED;
SELECT Count(e.Exam_id) INTO CountExamInQuestion
FROM question q
LEFT JOIN exam_question e ON e.Question_id = q.Question_id
GROUP BY q.Question_id
HAVING OLD.Question_id = Question_id;
IF  CountExamInQuestion >= 1 THEN
SIGNAL SQLSTATE '12345'
SET MESSAGE_TEXT = 'Cannot delete Question Already In Exam';
END IF;
END $$
DELIMITER ;
DELETE FROM question
WHERE Question_id = 4;
SELECT *
FROM question;


/*q12: Lấy ra thông tin exam trong đó:
Duration <= 30 thì sẽ đổi thành giá trị "Short time"
30 < Duration <= 60 thì sẽ đổi thành giá trị "Medium time"
Duration > 60 thì sẽ đổi thành giá trị "Long time"*/
SELECT     Exam_id,`Code`,Title, Category_id, 
(CASE WHEN Duration <= '30:00' THEN "Short time"
	WHEN Duration <= '60:00' THEN "Medium time"
	ELSE "long time"
  END) AS Duration,
			Creator_id, Create_date
FROM        exam;

/*q13:Thống kê số account trong mỗi group và in ra thêm 1 column nữa có tên
là the_number_user_amount và mang giá trị được quy định như sau:
Nếu số lượng user trong group =< 1 thì sẽ có giá trị là few
Nếu số lượng user trong group <= 3 và > 5 thì sẽ có giá trị là normal
Nếu số lượng user trong group > 3 thì sẽ có giá trị là higher*/
SELECT g.group_name,COUNT(ga.Account_id) AS số_Lượng, 
		(CASE WHEN COUNT(ga.Account_id)<=1 THEN 'Few'
			 WHEN COUNT(ga.Account_id)<=3 THEN 'Normal'
             ELSE 'Higher'
		END) AS the_number_user_amount
FROM group_account ga
RIGHT JOIN `group` g	ON g.Group_id 	= ga.Group_id
GROUP BY 	g.Group_id;
/*q13:Thống kê số mỗi phòng ban có bao nhiêu user, nếu phòng ban nào
không có user thì sẽ thay đổi giá trị 0 thành "Không có User"*/
INSERT INTO 	department(Department_name)
VALUE 						('Waiting Room');
SELECT d.Department_id,		(CASE WHEN COUNT(a.Account_id) =0 THEN 'không có User'
							ELSE COUNT(a.Account_id)
                            END) AS số_Lượng
FROM department d
LEFT JOIN `account` a ON d.Department_id = a.Department_id
GROUP BY d.Department_id;
