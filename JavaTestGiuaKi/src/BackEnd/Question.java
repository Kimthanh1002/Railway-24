package BackEnd;

import java.util.ArrayList;
import java.util.Scanner;

import Enity.Admin;
import Enity.Employee;
import Enity.User;

public class Question {
	public static Scanner scanner;
	private ArrayList<User> arrayUser;
	private ArrayList<Employee> arrayEmploy;
	private ArrayList<Admin> arrayAdmin;

	public Question() {
		scanner = new Scanner(System.in);
		arrayUser = new ArrayList<User>();
		arrayEmploy = new ArrayList<Employee>();
		arrayAdmin = new ArrayList<Admin>();

	}

// nhập vào số lượng account cần tạo là count và nhập tên skillPro nếu đó là employee
	public void question1CreateUserEmployeeByFor(int count, String skillPro) {
		for (int i = 1; i <= count; i++) {
			Employee employee = new Employee( "Employee Nguyen A" + i, "employee" + i, "A" + i + "@gmail.com",
					"Password" + i, skillPro);
			arrayUser.add(employee);
			arrayEmploy.add(employee);
		}
		System.out.println("create employee completed! ");
	}

	public void question1CreateUserAdminByFor(int count, int expInYear) {
		for (int i = 1; i <= count; i++) {
			Admin admin = new Admin( "Admin Tran A" + i, "admin_name" + i, "A" + i + "@gmail.com", "Password" + i,
					expInYear);
			arrayUser.add(admin);
			arrayAdmin.add(admin);
		}
		System.out.println("create Admin completed! ");

	}

	// tạo account từ bàn phím
	public void question1CreateUser() {
		ScannerUtils sc = new ScannerUtils(); // dòng này để thay cho dòng khởi tạo scanner.
		System.out.println("input full name of User: ");
		String inputName = ScannerUtils.inputString();
		System.out.println("input user name of User:");
		String inputUserName = inputUserName();
		System.out.println("input email  of User:");
		String inputEmail = ScannerUtils.inputString();
		System.out.println("input password  of User:");
		String inputPassWord = inputPass();

		while (true) {
			System.out.println("input 1,2 or 3(1.create Employee 2.create admin 3. exit)");
			int input = ScannerUtils.inputInt("input must be a number");
			switch (input) {
			case 1:
				System.out.println("input skill  of employee:");
				String inputProSkill = ScannerUtils.inputString();
				Employee employee = new Employee( inputName, inputUserName, inputEmail, inputPassWord,
						inputProSkill);
				// System.out.println(employee);
				arrayUser.add(employee);
				arrayEmploy.add(employee);
				System.out.println("create employee completed! ");
				break;
			case 2:
				System.out.println("input ExpInYear of Admin: ");
				int inputExpInYear = ScannerUtils.inputInt("input must be a number");
				Admin ad = new Admin( inputName, inputUserName, inputEmail, inputPassWord, inputExpInYear);
				// System.out.println(ad);
				arrayUser.add(ad);
				arrayAdmin.add(ad);
				System.out.println("create Admin completed! ");
				break;
			case 3:
				return;
			default:
				System.out.println("input only 1, 2 or 3, please try again!");
			}
		}
	}

	// showinfor theo dạng bảng
	public void question2ShowInforUser() {
		System.out.printf("%-5s %-25s %-20s %-25s %n", "Id", "FullName", "Username", "Email");
		for (User a : arrayUser) {
			System.out.printf("%-5s %-25s %-20s %-25s %n", a.getId(), a.getFullName(), a.getUserName(), a.getEmail());
		}
	}

	// search User by Id
	public void question3SearchById() {
		ScannerUtils sc = new ScannerUtils();
		System.out.println("nhập vào Id bạn muốn tìm: ");
		int inputId = ScannerUtils.inputInt("input must be a number");
		System.out.printf("%-5s %-25s %-20s %-25s %n", "Id", "FullName", "Username", "Email");
		for (User a : arrayUser) {
			if (a.getId() == inputId) {
				System.out.printf("%-5s %-25s %-20s %-25s %n", a.getId(), a.getFullName(), a.getUserName(), a.getEmail());
			}
		}
	}

	public void question4DeleteUser() {
		ScannerUtils sc = new ScannerUtils();
		System.out.println(" nhập vào id bạn muốn xoá: ");
		int inputId = ScannerUtils.inputInt("input a number!");
		arrayUser.removeIf(User -> User.getId() ==  inputId);
		System.out.println("delete completed!");
	}

	// cái này là để check pass lúc tạo User bằng cách nhập từ bàn phím
	public String inputPass() {
		while (true) {
			ScannerUtils sc = new ScannerUtils();
			// System.out.println("input pass of User: ");
			String inputPass = ScannerUtils.inputString();
			if (6 > inputPass.length() || inputPass.length() > 12
					|| inputPass.chars().filter((s) -> Character.isUpperCase(s)).count() == 0) {
				System.out.println("pass phải có từ 6 tới 12 ký tự, có ít nhất 1 ký tự viết hoa, mời nhập lại ");
			} else {
				return inputPass;
			}
		}
	}

// cái này là để check UserName lúc tạo User bằng cách nhập từ bàn phím
	public String inputUserName() {
		ScannerUtils sc = new ScannerUtils();
		while (true) {
			// System.out.println("input UserName of User: ");
			String inputUserName = ScannerUtils.inputString();
			if (inputUserName.length() < 8
					|| inputUserName.chars().filter((s) -> Character.isUpperCase(s)).count() > 0) {
				System.out.println("UserName phải có ít nhất 8 ký tự, không chứa ký tự viết hoa, mời nhập lại ");
			} else {
				return inputUserName;
			}
		}

	}

	public void question5And6Login() {
		System.out.println("----- Mời Bạn Đăng Nhập! ------");
		ScannerUtils sc = new ScannerUtils();
		System.out.println("input user name of User:");
		String inputUserName = ScannerUtils.inputString().trim();
		System.out.println("input password  of User:");
		String inputPass = ScannerUtils.inputString();
		// ghép 2 dòng lại thì hơi dài nên tách ra, cái method inputPass vs inputUser
		// hiện ra thông báo khác nên k dùng.
		if (6 > inputPass.length() || inputPass.length() > 12
				|| inputPass.chars().filter((s) -> Character.isUpperCase(s)).count() == 0) {
			System.out.println("User Name hoặc Pass không thoả mãn");
		} else if (inputUserName.length() < 8
				|| inputUserName.chars().filter((s) -> Character.isUpperCase(s)).count() > 0) {
			System.out.println("User Name hoặc Pass không thoả mãn");
		} else {
			for (Employee arrE : arrayEmploy) {
				if (arrE.getUserName().equals(inputUserName) && arrE.getPassWord().equals(inputPass)) {
					System.out.println(arrE.getFullName()+" Đăng nhập thành công! ");
					while (true) {
						System.out.println("*** Danh Sách chức năng trong hệ thống ***");
						System.out.println("=== 1.xem Danh sách nhân viên === ");
						System.out.println("=== 2.Cập Nhật Thông Tin cá nhân === ");
						System.out.println("=== 3.thoát khỏi hệ thống === ");
						System.out.println("input 1,2 or 3 ");
						int input = ScannerUtils.inputInt("input must be a number");
						switch (input) {
						case 1:
							System.out.printf("%-5s %-25s %-20s %-15s %-15s %n", "Id", "FullName", "Username", "Email",
									"ProSkill");
							for (Employee e : arrayEmploy) {
								System.out.printf("%-5s %-25s %-20s %-15s %-15s %n", e.getId(), e.getFullName(),
										e.getUserName(), e.getEmail(), e.getProSkill());
							}
							break;
						case 2:
							while (true) {
								System.out.println(
										"bạn muốn cập nhật info nào? (1.FullName 2.pass 3.Username 4.email 5.proskill 6.exit");
								System.out.println("nhập 1 số trong các lựa chọn từ 1 đến 6: ");
								int input1 = ScannerUtils.inputInt("input must be a number");
								switch (input1) {
								case 1:
									System.out.println("input new FullName: ");
									String newFullName = ScannerUtils.inputString();
									arrE.setFullName(newFullName);
									System.out.println("cập nhật thành công!");
									System.out.println(arrE.toString());
									break;
								case 2:
									System.out.println("input new Pass: ");
									String newPass = inputPass();
									arrE.setPassWord(newPass);
									System.out.println("cập nhật thành công!");
									System.out.println(arrE.toString());
									break;
								case 3:
									System.out.println("input new Pass: ");
									String newUserName = inputUserName();
									arrE.setUserName(newUserName);
									System.out.println("cập nhật thành công!");
									System.out.println(arrE.toString());
									break;
								case 4:
									System.out.println("input new Email: ");
									String newEmail = ScannerUtils.inputString();
									arrE.setEmail(newEmail);
									System.out.println("cập nhật thành công!");
									System.out.println(arrE.toString());
									break;
								case 5:
									System.out.println("input new proSkill: ");
									String newProSkill = ScannerUtils.inputString();
									arrE.setProSkill(newProSkill);
									System.out.println("cập nhật thành công!");
									System.out.println(arrE.toString());
									break;
								case 6:
									return;
								default:
									System.out.println("input only in from 1 to 6 !");

								}
							}

						case 3:
							return;

						}

					}

				} else {
					continue;
				}
			}
			for (Admin ad : arrayAdmin) {
				if (ad.getUserName().equals(inputUserName) && ad.getPassWord().equals(inputPass)) {
					System.out.println(ad.getFullName()+" Đăng nhập thành công! ");
					System.out.println("*** Danh Sách chức năng trong hệ thống ***");
					System.out.println("=== 1. Quản Trị Hệ Thống === ");
					System.out.println("=== 2. Quản Lí Nhân Viên === ");
					System.out.println("=== 3.	Quản lí dự án === ");
					break;
				} else {
					System.out.println("tên đăng nhập hoặc mật khẩu không đúng");
					return;
				}
			}
		}

	}

}
