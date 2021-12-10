package FrontEnd;

import BackEnd.Question;
import BackEnd.ScannerUtils;

public class Program {
public static void main(String[] args) {
	Question question = new Question();
	System.out.println("----- câu 1 -----");
	/* có 3 cách tạo: 1 là khởi tạo như bình thường 
	2 là dùng vòng lặp for 
	3 là yêu cầu người dùng nhập từ bàn phím*/
	
	question.question1CreateUserEmployeeByFor(2,"BrSE" );
	question.question1CreateUserEmployeeByFor(2,"Dev" );
	question.question1CreateUserAdminByFor(3,2);
	//question.createUser();
	
	System.out.println("----- câu 2 -----");
	//in ra theo dạng bảng
	 question.question2ShowInforUser();
	 
	System.out.println("----- câu 3 -----");
	question.question3SearchById();
	
	System.out.println("----- câu 4 -----");
	question.question4DeleteUser();
	// dòng dưới là để check lại xem đã xoá được chưa
	System.out.println("các id còn lại là: ");
	question.question2ShowInforUser();
	
	System.out.println("----- câu 5 và 6 -----");
	question.question5And6Login();
	ScannerUtils.scanner.close();

	
}
}
