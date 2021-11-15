package java_buoi2;

import java.time.LocalDate;
import java.util.Date;

public class FlowControl {
	public static void main( String[] args) { 
		
		
	//create department1 
		department department1	= new department();
		department1.id			= 1;
		department1.name		= "sale";
		
		department	department2	= new department();
		department2.id			= 2;
		department2.name		= "CEO";
		
		department department3	= new department();
		department3.id			= 3;
		department3.name		= "nhân sự";
		
		department department4	= new department();
		department4.id			= 4;
		department4.name		= "marketing";
		
		department department5	= new department();
		department5.id			= 5;
		department5.name		= "tài chính";
		
		department department6	= new department();
		department6.id			= 6;
		department6.name		= "giám đốc";
		
		department department7	= new department();
		department7.id			= 7;
		department7.name		= "thư kí";
		
		department department8	= new department();
		department8.id			= 8;
		department8.name		= "kế toán";
		
		department department9	= new department();
		department9.id			= 9;
		department9.name		= "waiting room";
		
		
// create position2 
		position position1	= new position();
		position1.id		= 1;
		position1.name		= "test";
		
		position position2	= new position();
		position2.id		= 2;
		position2.name		= "dev";
		
		position position3	= new position();
		position3.id		= 3;
		position3.name		="PM";
		
		position position4	= new position();
		position4.id 		= 4;
		position4.name		= "scrum master";
		
		
// create group3;
		group group1 		= new group();
		group1.id  	 		= 1;
		group1.groupName	= "sale";
		group1.createDate	= LocalDate.of(2018, 10, 11);
		
		group group2 		= new group();
		group2.id  	 		= 2;
		group2.groupName	= "developement";
		group2.createDate	= LocalDate.of(2020, 8, 05);
		
		group group3 		= new group();
		group3.id  	 		= 3;
		group3.groupName	= "sale1";
		group3.createDate	= LocalDate.of(2019, 9, 15);
		
		group group4 		= new group();
		group4.id  	 		= 4;
		group4.groupName	= "sale2";
		group4.createDate	= LocalDate.of(2020, 06, 8);
		
		group group5 		= new group();
		group5.id  	 		= 5;
		group5.groupName	= "CEO";
		group5.createDate	= LocalDate.of(2021, 02, 25);
		
// create account4
		account account1 	= new account();
		account1.id 		= 1;
		account1.email 		= "kimthanh@gmail.com";
		account1.userName 	= "thanh1";
		account1.fullName 	= "Nguyen Kim Thanh";
		account1.department = department1;
		account1.position 	= position2;
		account1.createDate = new Date(2018, 05, 16);
		group[] groupA1 	= {group3};
		account1.groups 	= groupA1;
		group1.creator		= account1 ;
		
		account account2 	= new account();
		account2.id 		= 2;
		account2.email		= "hanh18@gmail.com";
		account2.userName 	= "hanh18";
		account2.fullName 	= "Nguyen Thi Hanh";
		account2.department = department3;
		account2.position 	= position3;
		account2.createDate = new Date(2017, 01, 19);
		group[] groupA2 	= {group2,group3};
		account1.groups 	= groupA2;
		group3.creator		= account2 ;
		group4.creator		= account2 ;
		
		account account3 	= new account();
		account3.id 		= 3;
		account3.email 		= "thanh15@gmail.com";
		account3.userName 	= "thanh15";
		account3.fullName 	= "Nguyen Van Thanh";
		account3.department = department5;
		account3.position 	= position3;
		account3.createDate = new Date(2011, 11, 8);
		group[] groupA3 	= {group2};
		account3.groups 	= groupA3;
		group2.creator		= account3 ;
		
		account account4 	= new account();
		account4.id 		= 4;
		account4.email 		= "phanhang@gmail.com";
		account4.userName 	= "han1";
		account4.fullName 	= "Phan Thi Hang";
		account4.department = department4;
		account4.position 	= position3;
		account4.createDate = new Date(2019, 12, 25);
		group[] groupA4 	= {group1,group2};
		account4.groups 	= groupA4;
		
		account account5 	= new account();
		account5.id 		= 5;
		account5.email 		= "nguyenhoang@gmail.com";
		account5.userName 	= "hoang99";
		account5.fullName 	= "Nguyen Ba Hoang";
		account5.department = department7;
		account5.position 	= position2;
		account5.createDate = new Date(2021, 06, 14);
		account5.groups 	= groupA3;
		
		account account6 	= new account();
		account6.id 		= 6;
		account6.email 		= "long12@gmail.com";
		account6.userName 	= "long21";
		account6.fullName 	= "Tran Kim Long";
		account6.department = department1;
		account6.position 	= position2;
		account6.createDate = new Date(2020, 05, 07);
		group5.creator		= account6 ;
		
		account account7 	= new account();
		account7.id 		= 7;
		account7.email 		= "vananh@gmail.com";
		account7.userName 	= "anh1982";
		account7.fullName 	= "Duong Van Anh";
		account7.department = department1;
		account7.position 	= position2;
		account7.createDate = new Date(2020, 03, 16);
		group[] groupA7 	= {group4,group1};
		account7.groups 	= groupA7;
		
		account account8 	= new account();
		account8.id 		= 8;
		account8.email 		="toan@gmail.com";
		account8.userName	= "toan98";
		account8.fullName 	= "Vo Van Toan";
		account8.department = department1;
		account8.position 	= position2;
		account8.createDate = new Date(2021, 01, 10);
		account8.groups 	= groupA3;
		
		account account9 	= new account();
		account9.id 		= 9;
		account9.email 		= "nam43@gmail.com";
		account9.userName 	= "vannam12";
		account9.fullName 	= "Nguyen Van Nam";
		account9.department = department1;
		account9.position 	= position2;
		account9.createDate = new Date(2018, 04, 17);
		group[] groupA9 	= {group2,group4};
		account9.groups 	= groupA9;
		
//create groupAccount
		groupAccount groupAc1 	= new groupAccount();
		groupAc1.groupId 		= group1;
		account[] grAc1 		= {account4,account7};
		groupAc1.accounts 		= grAc1;
		groupAc1.joinDate 		= new Date(2019,04,25);
		
		groupAccount groupAc2 	= new groupAccount();
		groupAc2.groupId 		= group2;
		account[] grAc2 		= {account4,account9,account3,account2,account8,account5};
		groupAc2.accounts 		= grAc2;
		groupAc2.joinDate 		= new Date(2020,8,20);
		
		groupAccount groupAc3 	= new groupAccount();
		groupAc3.groupId 		= group3;
		account[] grAc3 		= {account1,account2};
		groupAc3.accounts 		= grAc3;
		groupAc3.joinDate 		= new Date(2021,04,16);
		
		groupAccount groupAc4 	= new groupAccount();
		groupAc4.groupId 		= group4;
		account[] grAc4 		= {account9,account7};
		groupAc4.accounts 		= grAc4;
		groupAc4.joinDate 		= new Date(2018,5,19);
		
		groupAccount groupAc5 	= new groupAccount();
		groupAc5.groupId 		= group5;
		account[] grAc5 		= {};
		groupAc5.accounts 		= grAc5;
		groupAc5.joinDate 		= new Date(2021,10,30);
		
//create typeQuestion5
		typeQuestion typeQuestion1 	= new typeQuestion();
		typeQuestion1.id 			=1;
		typeQuestion1.typeName 		= typeName.MULTIPLE_CHOICE;
		
		typeQuestion typeQuestion2 	= new typeQuestion();
		typeQuestion2.id			= 2;
		typeQuestion2.typeName 		= typeName.ESSAY;
		
	
// create category6
		category category1 		= new category();
		category1.id 			= 1;
		category1.categoryName 	= "java";
		
		category category2 		= new category();
		category2.id 			= 2;
		category2.categoryName 	= "NET";
		
		category category3 		= new category();
		category3.id 			= 3;
		category3.categoryName 	= "javascript";
		
		category category4 		= new category();
		category4.id 			= 4;
		category4.categoryName 	= "SQL";
		
		
		category category5 		= new category();
		category5.id 			= 5;
		category5.categoryName 	= "HTML";
		
		category category6 		= new category();
		category6.id 			= 6;
		category6.categoryName 	= "PHP";
		
		category category7 		= new category();
		category7.id 			= 7;
		category7.categoryName 	= "CSS";
		
		
//create question7
		question question1 		= new question();
		question1.id 			= 1;
		question1.content 		= "3>5";
		question1.category 		= category2;
		question1.type 			= typeQuestion1;
		question1.creator 		= account5;
		question1.createDate 	= new Date(2020, 8, 19);
		
		question question2 		= new question();
		question2.id 			= 2;
		question2.content 		= "INT=TINYINT";
		question2.category 		= category3;
		question2.type 			=  typeQuestion2;
		question2.creator 		= account1;
		question2.createDate 	= new Date(2021, 05, 07);
		
		question question3 		= new question();
		question3.id 			= 3;
		question3.content 		= "INT!=TINYINT";
		question3.category 		= category3;
		question3.type 			= typeQuestion1;
		question3.creator 		= account3;
		question3.createDate 	= new Date(2020, 9, 15);
		
		question question4 		= new question();
		question4.id 			= 4;
		question4.content 		= "alert=console.log";
		question4.category 		= category5;
		question4.type 			= typeQuestion2;
		question4.creator 		= account3;
		question4.createDate 	= new Date(2021, 8, 16);
		
		question question5 		= new question();
		question5.id 			= 5;
		question5.content 		= "Null là kiểu chuỗi";
		question5.category 		= category4;
		question5.type 			= typeQuestion1;
		question5.creator 		= account4;
		question5.createDate 	= new Date(2019, 9, 19);
		
		question question6 		= new question();
		question6.id 			= 6;
		question6.content 		= "DATE!=DATETIME";
		question6.category 		= category4;
		question6.type 			= typeQuestion2;
		question6.creator 		= account1;
		question6.createDate 	= new Date(2021, 02, 9);
		
		question question7 		= new question();
		question7.id 			= 7;
		question7.content 		= "NaN là kiểu số";
		question7.category 		= category4;
		question7.type 			=typeQuestion2;
		question7.creator 		= account2;
		question7.createDate 	= new Date(2021,05, 25);
		
		question question8 		= new question();
		question8.id 			= 8;
		question8.content 		= "Null là gtri rỗng";
		question8.category 		= category4;
		question8.type 			=typeQuestion1;
		question8.creator 		= account6;
		question8.createDate 	= new Date(2020, 05, 27);
		
		question question9 		= new question();
		question9.id 			= 9;
		question9.content 		= "Câu hỏi 10";
		question9.category 		= category3;
		question9.type 			=typeQuestion1;
		question9.creator 		= account1;
		question9.createDate 	= new Date(2018, 10, 11);
		
		question question10 	= new question();
		question10.id 			= 10;
		question10.content 		= "NaN k phải kiểu số";
		question10.category 	= category4;
		question10.type 		= typeQuestion2;
		question10.creator 		= account3;
		question10.createDate 	= new Date(2017, 05, 19);
		
		
// create  answer8
		answer answer1 		= new answer();
		answer1.id 			= 1;
		answer1.content 	= "answer1";
		answer1.question 	= question1;
		answer1.isCorrect 	= false;
		
		answer answer2 		= new answer();
		answer2.id 			= 1;
		answer2.content 	= "answer2";
		answer2.question 	= question2;
		answer2.isCorrect 	= false;
		
		answer answer3 		= new answer();
		answer3.id 			= 3;
		answer3.content 	= "answer3";
		answer3.question 	= question2;
		answer3.isCorrect 	= true;
		
		answer answer4 		= new answer();
		answer4.id 			= 4;
		answer4.content 	= "answer4";
		answer4.question 	= question4;
		answer4.isCorrect 	= false;
		
		answer answer5 		= new answer();
		answer5.id 			= 5;
		answer5.content 	= "answer5";
		answer5.question 	= question3;
		answer5.isCorrect 	= false;
		
		answer answer6 		= new answer();
		answer6.id 			= 6;
		answer6.content 	= "answer6";
		answer6.question 	= question3;
		answer6.isCorrect 	= false;
		
		answer answer7 		= new answer();
		answer7.id 			= 7;
		answer7.content 	= "answer7";
		answer7.question 	= question9;
		answer7.isCorrect 	= true;
		
		answer answer8 		= new answer();
		answer8.id 			= 8;
		answer8.content 	= "answer8";
		answer8.question 	= question3;
		answer8.isCorrect 	= false;
		
		answer answer9 		= new answer();
		answer9.id 			= 9;
		answer9.content 	= "answer9";
		answer9.question	= question4;
		answer9.isCorrect 	= true;
		
		answer answer10 	= new answer();
		answer10.id 		= 10;
		answer10.content 	= "answer10";
		answer10.question 	= question3;
		answer10.isCorrect 	= true;
		
		
//create exam9
		exam exam1 				= new exam();
		exam1.id 				=	1;
		exam1.title 			= "HTML";
		exam1.category 			= category4;
		exam1.duration 			= 60;
		exam1.creator 			= account5;
		exam1.createDate 		= new Date(2020, 10, 11);
		question[] questionE1 	= {question5,question7};
		exam1.questions			= questionE1;
		
		exam exam2 				= new exam();
		exam2.id 				= 2;
		exam2.title 			= "SQL";
		exam2.category 			= category3;
		exam2.duration 			= 120;
		exam2.creator 			= account1;
		exam2.createDate 		= new Date(2017, 07, 12);
		question[] questionE2 	= {question5,question9};
		exam2.questions			= questionE2;
		
		exam exam3 				= new exam();
		exam3.id 				=	3;
		exam3.title 			= "PHP";
		exam3.category 			= category3;
		exam3.duration 			= 30;
		exam3.creator 			= account3;
		exam3.createDate 		= new Date(2020, 10, 11);
		question[] questionE3 	= {question8};
		exam3.questions			= questionE3;
		
		exam exam4 				= new exam();
		exam4.id 				=	4;
		exam4.title 			= "java";
		exam4.category 			= category1;
		exam4.duration 			= 90;
		exam4.creator 			= account4;
		exam4.createDate 		= new Date(2020,10,02);
		question[] questionE4 	= {question5,question8};
		exam4.questions			= questionE4;
		
		exam exam5 				= new exam();
		exam5.id 				=	5;
		exam5.title 			= "HTML";
		exam5.category 			= category4;
		exam5.duration 			= 120;
		exam5.creator 			= account5;
		exam5.createDate 		= new Date(2019, 05, 12);
		question[] questionE5 	= {question3};
		exam5.questions			= questionE5;

		exam exam6 				= new exam();
		exam6.id 				=	6;
		exam6.title 			= "SQL";
		exam6.category 			= category3;
		exam6.duration 			= 60;
		exam6.creator 			= account1;
		exam6.createDate 		= new Date(2021, 10, 31);
		question[] questionE6 	= {question7,question8};
		exam6.questions			= questionE6;
		

		exam exam7 				= new exam();
		exam7.id 				=	7;
		exam7.title 			= "PHP";
		exam7.category 			= category7;
		exam7.duration 			= 30;
		exam7.creator 			= account2;
		exam7.createDate 		= new Date(2020, 10, 11);
		question[] questionE7 	= {question2};
		exam7.questions			= questionE7;
		

		exam exam8 				= new exam();
		exam8.id 				=	8;
		exam8.title 			= "java";
		exam8.category 			= category1;
		exam8.duration 			= 90;
		exam8.creator 			= account4;
		exam8.createDate 		= new Date(2021, 8, 20);
		question[] questionE8 	= {question1};
		exam8.questions			= questionE8;
		
		exam exam9 				= new exam();
		exam9.id 				=	9;
		exam9.title 			= "NET";
		exam9.category 			= category5;
		exam9.duration 			= 45;
		exam9.creator 			= account2;
		exam9.createDate 		= new Date(2018, 02, 10);
		question[] questionE9 	= {question3};
		exam9.questions			= questionE9;
				
		
/* q1: Kiểm tra account thứ 2
	Nếu không có phòng ban (tức là department == null) thì sẽ in ra text
	"Nhân viên này chưa có phòng ban"
	Nếu không thì sẽ in ra text "Phòng ban của nhân viên này là ..." */
	if (account2.department == null) {
		System.out.println("q1 Nhân viên này chưa có phòng ban");
									}
	else {
		System.out.println("q1 Phòng ban của nhân viên này là "+ account2.department.name );
		}
	
	
/*q2: Kiểm tra account thứ 2
Nếu không có group thì sẽ in ra text "Nhân viên này chưa có group"
Nếu có mặt trong 1 hoặc 2 group thì sẽ in ra text "Group của nhân viên
này là Java Fresher, C# Fresher"
Nếu có mặt trong 3 Group thì sẽ in ra text "Nhân viên này là người
quan trọng, tham gia nhiều group"
Nếu có mặt trong 4 group trở lên thì sẽ in ra text "Nhân viên này là
người hóng chuyện, tham gia tất cả các group"*/
	if (account2.groups == null) {
		System.out.println("q2 Nhân viên này chưa có group");
								}
	else if (account2.groups.length == 1 || account2.groups.length == 2) {
		for(group group: groupA2){ 
			System.out.println("q2 "+ group.groupName);
								}
																			}
	else if(account2.groups.length == 3) {
		System.out.println("Nhân viên này là người quan trọng, tham gia nhiều group");
										}
	else {
		System.out.println("Nhân viên này là người hóng chuyện, tham gia tất cả các group");
		};
		
		
/*q3: Sử dụng toán tử ternary để làm Question 1*/
	System.out.println(
			account2.department == null ? "q3 Nhân viên này chưa có phòng ban" 
										: "q3 Phòng ban của nhân viên này là " + account2.department.name
						);
	
	
/*q4: Sử dụng toán tử ternary để làm yêu cầu sau:
Kiểm tra Position của account thứ 1
Nếu Position = Dev thì in ra text "Đây là Developer"
Nếu không phải thì in ra text "Người này không phải là Developer"*/
	System.out.println(
			account1.position.name == "dev" ? "q4 Đây là Developer" 
											: "q4 Người này không phải là Developer"
						);
	
	
/*Question 5:
Lấy ra số lượng account trong nhóm thứ 1 và in ra theo format sau:
Nếu số lượng account = 1 thì in ra "Nhóm có một thành viên"
Nếu số lượng account = 2 thì in ra "Nhóm có hai thành viên"
Nếu số lượng account = 3 thì in ra "Nhóm có ba thành viên"
Còn lại in ra "Nhóm có nhiều thành viên"*/
	switch ( groupAc1.accounts.length ) { 
	case 1:
		System.out.println("q5 nhóm có 1 thành viên ");
		break;
	case 2:
		System.out.println("q5 nhóm có 2 thành viên ");
		break;
	case 3:
		System.out.println("q5 nhóm có 3 thành viên ");
		break;
	default:
		System.out.println("q5 nhóm có nhiều thành viên ");
									};
									
									
// q6:Sử dụng switch case để làm lại Question 2 
									
	switch ( account2.groups.length) { 
	case 0:
		System.out.println("q6 Nhân viên này chưa có group");
		break;
	case 1:
		for(group group: groupA2) {
		System.out.println("q6 tham gia 1 group: "+ group.groupName);
		};
		break;
	case 2:
		for (group group: groupA2) {
			System.out.print("q6 \n"+ group.groupName);
		};
		break;
	case 3:
		System.out.println("q6 Nhân viên này là người quan trọng, tham gia nhiều group");
		break;
	case 4:
		System.out.println("q6 Nhân viên này là người hóng chuyện, tham gia tất cả các group");
		break;
		};
		
		
// q7: Sử dụng switch case để làm lại Question 4
		
	switch (account1.position.name) {
	case "dev":
		System.out.println("\nq7 Đây là Developer");
		break;
	default:
		System.out.println("\nq7 Người này không phải là Developer");
		
	};
									
									
//q8: In ra thông tin các account bao gồm: Email, FullName và tên phòng ban của họ
	
	account[]  accounts = {account1, account2, account3, account4, account5};
	for (account a : accounts) {
		System.out.println (" -- Account: \n FullName: "	+ a.fullName +
										 "\n Email: "		+ a.email	+
										 "\n Department: "	+ a.department.name
							);
	};
	
	
// q9: in ra thông tin các phòng ban bao gồm id và tên 
	
	department[] departments = {department1,department2,department3,department4};
	for(department d : departments) {
		System.out.println("-- department: \n Id:" 		+ d.id +
										  "\n Name:"	+ d.name
										  );
	};
	
	
/* q10: In ra thông tin các account bao gồm: Email, FullName và tên phòng ban của
họ theo định dạng như sau:
Thông tin account thứ 1 là:
Email: NguyenVanA@gmail.com
Full name: Nguyễn Văn A
Phòng ban: Sale*/
	
	account[] accArray = {account1,account2,account3,account4,account5};
	int i;
	for (i=0;i < accArray.length;i++) {
		int n=i+1;
		System.out.println("thong tin account " + n + " la:\n ID:"				+ accArray[i]+
															"\n FullName: "		+ accArray[i].fullName +
															"\n Email: "		+ accArray[i].email	+
															"\n Department: "	+ accArray[i].department.name);
		
	};
	
	
/* q11:In ra thông tin các phòng ban bao gồm: id và name theo định dạng sau:
Thông tin department thứ 1 là:
Id: 1
Name: Sale*/
	
	department[] depArray = {department1, department2, department3,department4,department5};
	for(int k=0; k< depArray.length;k++) {
		int n= k+1;
		System.out.println("-- department " + n+ " la: \n Id:" 		+ depArray[k].id +
				  									  "\n Name:"	+ depArray[k].name
				  );
	};
	
	
/*q12:Chỉ in ra thông tin 2 department đầu tiên theo định dạng như Question 10 */
	
	for(int k=0;k<2;k++) {
		System.out.println("-- 12 department " + (k+1)+ " la: \n Id:" 	+ depArray[k].id +
				  									  	"\n Name:"		+ depArray[k].name
				  		 );
	};
	
	
/*q13: In ra thông tin tất cả các account ngoại trừ account thứ 2*/
	
	for (i=0;i < accArray.length;i++) {
		int n=i+1;
		if (n==2) 
			continue;
		System.out.println("13 thong tin account " + n + " la:\n ID:"			+ accArray[i].id+
															"\n FullName: "		+ accArray[i].fullName +
															"\n Email: "		+ accArray[i].email	+
															"\n Department: "	+ accArray[i].department.name);
		
	};
	
	
/*q14: In ra thông tin tất cả các account có id < 4 */
	
	for (i=0;i < accArray.length;i++) {
		int n=i+1;
		if (n>=4) 
			break;
		System.out.println("14 thong tin account " + n + " la:\n ID:"			+ accArray[i].id+
															"\n FullName: "		+ accArray[i].fullName +
															"\n Email: "		+ accArray[i].email	+
															"\n Department: "	+ accArray[i].department.name
															);
	};
		// cach 2:
		
		/* for (i=0;i < 3;i++) {
			int n=i+1;
			System.out.println("15 thong tin account " + n + " la:\n ID:"			+ accArray[i].id+
																"\n FullName: "		+ accArray[i].fullName +
																"\n Email: "		+ accArray[i].email	+
																"\n Department: "	+ accArray[i].department.name
																);
		};*/
// q15:In ra các số chẵn nhỏ hơn hoặc bằng 20
	
		for(int k=0;k<=20;k+=2) {
			System.out.println(k);
		};
		// cach 2: 
		/* for (int k=0; k<=20; k++) {
			if (k%2==0) System.out.println(k);
			// else continue; dòng này có hay không đều ok 
		}; */
// q16: While 
		
		while (i < accArray.length) {
			int n=i+1;
			System.out.println("while thong tin account " + n + " la:\n ID:"		+ accArray[i].id +
																"\n FullName: "		+ accArray[i].fullName +
																"\n Email: "		+ accArray[i].email	+
																"\n Department: "	+ accArray[i].department.name);
			i++;
			
		};
//q17: do....while 
		i=0;
	do { 
		int n=i+1;
		System.out.println("dowhile thong tin account " +n+ " la:\n ID:"		+ accArray[i].id +
															"\n FullName: "		+ accArray[i].fullName +
															"\n Email: "		+ accArray[i].email	+
															"\n Department: "	+ accArray[i].department.name);
		i++;
	}
	while (i < accArray.length);
}
}