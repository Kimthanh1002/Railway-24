package enity;

import java.time.LocalDate;
import java.util.Date;

public class Program {
	public static void main( String[] args) { 
		
		
//create department1 
		Department department1	= new Department();
		department1.id			= 1;
		department1.name		= "sale";
		
		Department	department2	= new Department();
		department2.id			= 2;
		department2.name		= "CEO";
		
		Department department3	= new Department();
		department3.id			= 3;
		department3.name		= "nhân sự";
		
		Department department4	= new Department();
		department4.id			= 4;
		department4.name		= "marketing";
		
		Department department5	= new Department();
		department5.id			= 5;
		department5.name		= "tài chính";
		
		Department department6	= new Department();
		department6.id			= 6;
		department6.name		= "giám đốc";
		
		Department department7	= new Department();
		department7.id			= 7;
		department7.name		= "thư kí";
		
		Department department8	= new Department();
		department8.id			= 8;
		department8.name		= "kế toán";
		
		Department department9	= new Department();
		department9.id			= 9;
		department9.name		= "waiting room";
		
		
// create position2 
		Position position1	= new Position();
		position1.id		= 1;
		position1.name		= "test";
		
		Position position2	= new Position();
		position2.id		= 2;
		position2.name		= "dev";
		
		Position position3	= new Position();
		position3.id		= 3;
		position3.name		="PM";
		
		Position position4	= new Position();
		position4.id 		= 4;
		position4.name		= "scrum master";
		
		
// create group3;
		Group group1 		= new Group();
		group1.id  	 		= 1;
		group1.groupName	= "sale";
		group1.createDate	= LocalDate.of(2018, 10, 11);
		
		Group group2 		= new Group();
		group2.id  	 		= 2;
		group2.groupName	= "developement";
		group2.createDate	= LocalDate.of(2020, 8, 05);
		
		Group group3 		= new Group();
		group3.id  	 		= 3;
		group3.groupName	= "sale1";
		group3.createDate	= LocalDate.of(2019, 9, 15);
		
		Group group4 		= new Group();
		group4.id  	 		= 4;
		group4.groupName	= "sale2";
		group4.createDate	= LocalDate.of(2020, 06, 8);
		
		Group group5 		= new Group();
		group5.id  	 		= 5;
		group5.groupName	= "CEO";
		group5.createDate	= LocalDate.of(2021, 02, 25);
		
// create account4
		Account account1 	= new Account();
		account1.setId(1);
		account1.setEmail("kimthanh@gmail.com");
		account1.userName 	= "thanh1";
		account1.setFullName( "Nguyen Kim Thanh"); 
		account1.department = department1;
		account1.position 	= position2;
		account1.createDate = new Date(2018, 05, 16);
		Group[] groupA1 	= {group3};
		account1.Groups 	= groupA1;
		group1.creator		= account1 ;
		
		Account account2 	= new Account();
		account2.setId (2);		
		account2.setEmail( "hanh18@gmail.com");
		account2.userName 	= "hanh18";
		account2.setFullName ( "Nguyen Thi Hanh");
		account2.department = department3;
		account2.position 	= position3;
		account2.createDate = new Date(2017, 01, 19);
		Group[] groupA2 	= {group2,group3};
		account1.Groups 	= groupA2;
		group3.creator		= account2 ;
		group4.creator		= account2 ;
		
		Account account3 	= new Account();
		account3.setId(3);
		account3.setEmail("thanh15@gmail.com"); 
		account3.userName 	= "thanh15";
		account3.setFullName("Nguyen Van Thanh");
		account3.department = department5;
		account3.position 	= position3;
		account3.createDate = new Date(2011, 11, 8);
		Group[] groupA3 	= {group2};
		account3.Groups 	= groupA3;
		group2.creator		= account3 ;
		
		Account account4 	= new Account();
		account4.setId(4);
		account4.setEmail( "phanhang@gmail.com");
		account4.userName 	= "han1";
		account4.setFullName("Phan Thi Hang");
		account4.department = department4;
		account4.position 	= position3;
		account4.createDate = new Date(2019, 12, 25);
		Group[] groupA4 	= {group1,group2};
		account4.Groups 	= groupA4;
		
		Account account5 	= new Account();
		account5.setId(5); 	
		account5.setEmail("nguyenhoang@gmail.com");
		account5.userName	= "hoang99";
		account5.setFullName("Nguyen Ba Hoang");
		account5.department = department7;
		account5.position 	= position2;
		account5.createDate = new Date(2021, 06, 14);
		account5.Groups 	= groupA3;
		
		Account account6 	= new Account();
		account6.setId(6);
		account6.setEmail("long12@gmail.com");
		account6.userName 	= "long21";
		account6.setFullName("Tran Kim Long"); 
		account6.department = department1;
		account6.position 	= position2;
		account6.createDate = new Date(2020, 05, 07);
		group5.creator		= account6 ;
		
		Account account7 	= new Account();
		account7.setId(7); 
		account7.setEmail("vananh@gmail.com");
		account7.userName 	= "anh1982";
		account7.setFullName( "Duong Van Anh");
		account7.department = department1;
		account7.position 	= position2;
		account7.createDate = new Date(2020, 03, 16);
		Group[] groupA7 	= {group4,group1};
		account7.Groups 	= groupA7;
		
		Account account8 	= new Account();
		account8.setId(8);
		account8.setEmail("toan@gmail.com");
		account8.userName	= "toan98";
		account8.setFullName("Vo Van Toan");
		account8.department = department1;
		account8.position 	= position2;
		account8.createDate = new Date(2021, 01, 10);
		account8.Groups 	= groupA3;
		
		Account account9 	= new Account();
		account9.setId(9);
		account9.setEmail("nam43@gmail.com");
		account9.userName 	= "vannam12";
		account9.setFullName("Nguyen Van Nam");
		account9.department = department1;
		account9.position 	= position2;
		account9.createDate = new Date(2018, 04, 17);
		Group[] groupA9 	= {group2,group4};
		account9.Groups 	= groupA9;
		
//create groupAccount
		Group_Account groupAc1 	= new Group_Account();
		groupAc1.group 			= group1;
		Account[] grAc1 		= {account4,account7};
		groupAc1.accounts 		= grAc1;
		groupAc1.joinDate 		= new Date(2019,04,25);
		
		Group_Account groupAc2 	= new Group_Account();
		groupAc2.group 			= group2;
		Account[] grAc2 		= {account4,account9,account3,account2,account8,account5};
		groupAc2.accounts 		= grAc2;
		groupAc2.joinDate 		= new Date(2020,8,20);
		
		Group_Account groupAc3 	= new Group_Account();
		groupAc3.group 			= group3;
		Account[] grAc3 		= {account1,account2};
		groupAc3.accounts 		= grAc3;
		groupAc3.joinDate 		= new Date(2021,04,16);
		
		Group_Account groupAc4 	= new Group_Account();
		groupAc4.group			= group4;
		Account[] grAc4 		= {account9,account7};
		groupAc4.accounts 		= grAc4;
		groupAc4.joinDate 		= new Date(2018,5,19);
		
		Group_Account groupAc5 	= new Group_Account();
		groupAc5.group 			= group5;
		Account[] grAc5 		= {};
		groupAc5.accounts 		= grAc5;
		groupAc5.joinDate 		= new Date(2021,10,30);
		
//create typeQuestion5
		Type_Question typeQuestion1 	= new Type_Question();
		typeQuestion1.id 			=1;
		typeQuestion1.typeName 		= typeName.MULTIPLE_CHOICE;
		
		Type_Question typeQuestion2 	= new Type_Question();
		typeQuestion2.id			= 2;
		typeQuestion2.typeName 		= typeName.ESSAY;
		
	
// create category6
		Category category1 		= new Category();
		category1.id 			= 1;
		category1.categoryName 	= "java";
		
		Category category2 		= new Category();
		category2.id 			= 2;
		category2.categoryName 	= "NET";
		
		Category category3 		= new Category();
		category3.id 			= 3;
		category3.categoryName 	= "javascript";
		
		Category category4 		= new Category();
		category4.id 			= 4;
		category4.categoryName 	= "SQL";
		
		
		Category category5 		= new Category();
		category5.id 			= 5;
		category5.categoryName 	= "HTML";
		
		Category category6 		= new Category();
		category6.id 			= 6;
		category6.categoryName 	= "PHP";
		
		Category category7 		= new Category();
		category7.id 			= 7;
		category7.categoryName 	= "CSS";
		
		
//create question7
		Question question1 		= new Question();
		question1.id 			= 1;
		question1.content 		= "3>5";
		question1.category 		= category2;
		question1.type 			= typeQuestion1;
		question1.creator 		= account5;
		question1.createDate 	= new Date(2020, 8, 19);
		
		Question question2 		= new Question();
		question2.id 			= 2;
		question2.content 		= "INT=TINYINT";
		question2.category 		= category3;
		question2.type 			=  typeQuestion2;
		question2.creator 		= account1;
		question2.createDate 	= new Date(2021, 05, 07);
		
		Question question3 		= new Question();
		question3.id 			= 3;
		question3.content 		= "INT!=TINYINT";
		question3.category 		= category3;
		question3.type 			= typeQuestion1;
		question3.creator 		= account3;
		question3.createDate 	= new Date(2020, 9, 15);
		
		Question question4 		= new Question();
		question4.id 			= 4;
		question4.content 		= "alert=console.log";
		question4.category 		= category5;
		question4.type 			= typeQuestion2;
		question4.creator 		= account3;
		question4.createDate 	= new Date(2021, 8, 16);
		
		Question question5 		= new Question();
		question5.id 			= 5;
		question5.content 		= "Null là kiểu chuỗi";
		question5.category 		= category4;
		question5.type 			= typeQuestion1;
		question5.creator 		= account4;
		question5.createDate 	= new Date(2019, 9, 19);
		
		Question question6 		= new Question();
		question6.id 			= 6;
		question6.content 		= "DATE!=DATETIME";
		question6.category 		= category4;
		question6.type 			= typeQuestion2;
		question6.creator 		= account1;
		question6.createDate 	= new Date(2021, 02, 9);
		
		Question question7 		= new Question();
		question7.id 			= 7;
		question7.content 		= "NaN là kiểu số";
		question7.category 		= category4;
		question7.type 			=typeQuestion2;
		question7.creator 		= account2;
		question7.createDate 	= new Date(2021,05, 25);
		
		Question question8 		= new Question();
		question8.id 			= 8;
		question8.content 		= "Null là gtri rỗng";
		question8.category 		= category4;
		question8.type 			=typeQuestion1;
		question8.creator 		= account6;
		question8.createDate 	= new Date(2020, 05, 27);
		
		Question question9 		= new Question();
		question9.id 			= 9;
		question9.content 		= "Câu hỏi 10";
		question9.category 		= category3;
		question9.type 			=typeQuestion1;
		question9.creator 		= account1;
		question9.createDate 	= new Date(2018, 10, 11);
		
		Question question10 	= new Question();
		question10.id 			= 10;
		question10.content 		= "NaN k phải kiểu số";
		question10.category 	= category4;
		question10.type 		= typeQuestion2;
		question10.creator 		= account3;
		question10.createDate 	= new Date(2017, 05, 19);
		
		
// create  answer8
		Answer answer1 		= new Answer();
		answer1.id 			= 1;
		answer1.content 	= "answer1";
		answer1.Question 	= question1;
		answer1.isCorrect 	= false;
		
		Answer answer2 		= new Answer();
		answer2.id 			= 1;
		answer2.content 	= "answer2";
		answer2.Question 	= question2;
		answer2.isCorrect 	= false;
		
		Answer answer3 		= new Answer();
		answer3.id 			= 3;
		answer3.content 	= "answer3";
		answer3.Question 	= question2;
		answer3.isCorrect 	= true;
		
		Answer answer4 		= new Answer();
		answer4.id 			= 4;
		answer4.content 	= "answer4";
		answer4.Question 	= question4;
		answer4.isCorrect 	= false;
		
		Answer answer5 		= new Answer();
		answer5.id 			= 5;
		answer5.content 	= "answer5";
		answer5.Question 	= question3;
		answer5.isCorrect 	= false;
		
		Answer answer6 		= new Answer();
		answer6.id 			= 6;
		answer6.content 	= "answer6";
		answer6.Question 	= question3;
		answer6.isCorrect 	= false;
		
		Answer answer7 		= new Answer();
		answer7.id 			= 7;
		answer7.content 	= "answer7";
		answer7.Question 	= question9;
		answer7.isCorrect 	= true;
		
		Answer answer8 		= new Answer();
		answer8.id 			= 8;
		answer8.content 	= "answer8";
		answer8.Question 	= question3;
		answer8.isCorrect 	= false;
		
		Answer answer9 		= new Answer();
		answer9.id 			= 9;
		answer9.content 	= "answer9";
		answer9.Question	= question4;
		answer9.isCorrect 	= true;
		
		Answer answer10 	= new Answer();
		answer10.id 		= 10;
		answer10.content 	= "answer10";
		answer10.Question 	= question3;
		answer10.isCorrect 	= true;
		
		
//create exam9
		Exam exam1 				= new Exam();
		exam1.id 				=	1;
		exam1.title 			= "HTML";
		exam1.category 			= category4;
		exam1.duration 			= 60;
		exam1.creator 			= account5;
		exam1.createDate 		= new Date(2020, 10, 11);
		Question[] questionE1 	= {question5,question7};
		exam1.Questions			= questionE1;
		
		Exam exam2 				= new Exam();
		exam2.id 				= 2;
		exam2.title 			= "SQL";
		exam2.category 			= category3;
		exam2.duration 			= 120;
		exam2.creator 			= account1;
		exam2.createDate 		= new Date(2017, 07, 12);
		Question[] questionE2 	= {question5,question9};
		exam2.Questions			= questionE2;
		
		Exam exam3 				= new Exam();
		exam3.id 				=	3;
		exam3.title 			= "PHP";
		exam3.category 			= category3;
		exam3.duration 			= 30;
		exam3.creator 			= account3;
		exam3.createDate 		= new Date(2020, 10, 11);
		Question[] questionE3 	= {question8};
		exam3.Questions			= questionE3;
		
		Exam exam4 				= new Exam();
		exam4.id 				=	4;
		exam4.title 			= "java";
		exam4.category 			= category1;
		exam4.duration 			= 90;
		exam4.creator 			= account4;
		exam4.createDate 		= new Date(2020,10,02);
		Question[] questionE4 	= {question5,question8};
		exam4.Questions			= questionE4;
		
		Exam exam5 				= new Exam();
		exam5.id 				=	5;
		exam5.title 			= "HTML";
		exam5.category 			= category4;
		exam5.duration 			= 120;
		exam5.creator 			= account5;
		exam5.createDate 		= new Date(2019, 05, 12);
		Question[] questionE5 	= {question3};
		exam5.Questions			= questionE5;

		Exam exam6 				= new Exam();
		exam6.id 				=	6;
		exam6.title 			= "SQL";
		exam6.category 			= category3;
		exam6.duration 			= 60;
		exam6.creator 			= account1;
		exam6.createDate 		= new Date(2021, 10, 31);
		Question[] questionE6 	= {question7,question8};
		exam6.Questions			= questionE6;
		

		Exam exam7 				= new Exam();
		exam7.id 				=	7;
		exam7.title 			= "PHP";
		exam7.category 			= category7;
		exam7.duration 			= 30;
		exam7.creator 			= account2;
		exam7.createDate 		= new Date(2020, 10, 11);
		Question[] questionE7 	= {question2};
		exam7.Questions			= questionE7;
		

		Exam exam8 				= new Exam();
		exam8.id 				=	8;
		exam8.title 			= "java";
		exam8.category 			= category1;
		exam8.duration 			= 90;
		exam8.creator 			= account4;
		exam8.createDate 		= new Date(2021, 8, 20);
		Question[] questionE8 	= {question1};
		exam8.Questions			= questionE8;
		
		Exam exam9 				= new Exam();
		exam9.id 				=	9;
		exam9.title 			= "NET";
		exam9.category 			= category5;
		exam9.duration 			= 45;
		exam9.creator 			= account2;
		exam9.createDate 		= new Date(2018, 02, 10);
		Question[] questionE9 	= {question3};
		exam9.Questions			= questionE9;
		
		Department[] arrayDep = { department1,department2,department3,department4,department5};
		
// in giá trị của mỗi đối tượng;
		
		System.out.println(" -- Department: \n Department Id: " + department1.id + 
										"\n Department Name: " 	+ department1.name
						   );
		System.out.println(" -- Position: \n Position Id: " 	+ position1.id + 
										"\n position Name: " 	+ position1.name
						   );
		System.out.println(" -- Account: \n Account ID: "	+ account7.getId()+
										"\n UserName: "		+ account7.userName + 
										"\n FullName: "		+ account7.getFullName() +
										"\n Email: "		+ account7.getEmail()	+
										"\n Department: "	+ account7.department.name+
										"\n Position: "		+ account7.position.name+
										"\n Groups: "		+ account7.Groups[0].groupName+ ","+
															  account7.Groups[1].groupName 
							);
			}

	}


