package java_buoi2;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Locale;

public class System_out_printf {
	public static void main (String[] arg) {
		
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
				account1.createDate = new Date(2017, 05, 16);
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
				
		//q1: Khai báo 1 số nguyên = 5 và sử dụng lệnh System out printf để in ra số nguyên đó
		
		int i=5;
		System.out.printf("%s %5d %n","This Number is:", i);
		
 		/*q2:Khai báo 1 số nguyên = 100 000 000 và sử dụng lệnh System out printf để in ra số
 nguyên đó thành định dạng như sau: 100,000,000*/
		
		System.out.printf(Locale.US, "%,d %n", 100000000);
		
 		/*q3:Khai báo 1 số thực = 5,567098 và sử dụng lệnh System out printf để in ra số
thực đó chỉ bao gồm 4 số đằng sau*/
		
		System.out.printf("%.4f %n", 5.567098);
		
		/*q4:Khai báo Họ và tên của 1 học sinh và in ra họ và tên học sinh đó theo định
dạng như sau:
Họ và tên: "Nguyễn Văn A" thì sẽ in ra trên console như sau:
Tên tôi là "Nguyễn Văn A" và tôi đang độc thân.*/
		
		String Name1 = "Nguyen Van A";
		System.out.printf("Tên tôi là %s và tôi đang độc thân%n",Name1);
		
		/*q5: Lấy thời gian bây giờ và in ra theo định dạng sau: 24/04/2020 11h:16p:20s*/
		String parten = "dd/MM/yyyy HH:mm:ss";
		SimpleDateFormat dateFormat = new SimpleDateFormat();
		String date = dateFormat.format(new Date());
		System.out.println(date);
		/*q6: In ra thông tin account (như Question 8 phần FOREACH) theo định dạng 
table (giống trong Database)*/
		account[]  accounts = {account1, account2, account3, account4, account5};
		for (account a : accounts) {
			System.out.printf ("%-20s %-25s %-25s %n",a.fullName,a.email, a.department.name);
		};
}
}