package Inheritance;

import java.util.ArrayList;
import java.util.Scanner;

public class QuanLiCanBo {
	private ArrayList<CanBo> arrayCanBo;
	private Scanner scanner;
	public Object setArrayCanBo;
	
	

	public QuanLiCanBo() {
		arrayCanBo = new ArrayList<CanBo>();
		scanner = new Scanner(System.in);
	}

	public ArrayList<CanBo> getArrayCanBo() {
		return arrayCanBo;
	}

	public void setArrayCanBo(ArrayList<CanBo> arrayCanBo) {
		this.arrayCanBo = arrayCanBo;
	}

	public void addStaff() {
		System.out.println("input fullname of staff: ");
		String fullname1 = scanner.nextLine();
		System.out.println("input age of staff: ");
		int age1 = scanner.nextInt();
		System.out.println("input gender of staff( 1.Female,2.Male or 3.Unknow): ");
		int inputGender = scanner.nextInt();
		Inheritance.gender gender1 = null;
		switch (inputGender) {
		case 1:
			gender1 = gender.Female;
			break;
		case 2:
			gender1 = gender.Male;
			break;
		case 3:
			gender1 = gender.Unknow;
			break;
		default:
			System.out.println("hãy nhập số 1, 2 hoặc 3! ");
			return;
		}

		while (true) {
			System.out.println("bạn muốn thêm staff này vào đâu? ");
			System.out.println("1.Công Nhân 2.Kỹ sư 3.Nhân Viên ");
			int input = scanner.nextInt();
			if (input <= 3 && input >= 0) {
				switch (input) {
				case 1:
					System.out.println("input level of staff: ");
					int level1 = scanner.nextInt();
					CongNhan s = new CongNhan(fullname1, age1, gender1, level1);
					System.out.println("đã thêm công nhân thành công!");
					System.out.println(s.toString());
					break;
				case 2:
					System.out.println("input training industry of engineer: ");
					String industry = scanner.next();
					KySu i = new KySu(fullname1, age1, gender1, industry);
					System.out.println("đã thêm kỹ sư thành công!");
					System.out.println(i.toString());
					break;
				case 3:
					System.out.println("input job of employee: ");
					String job = scanner.next();
					NhanVien j = new NhanVien(fullname1, age1, gender1, job);
					System.out.println("đã thêm nhân viên thành công!");
					System.out.println(j.toString());
					break;
				}
				return;
			} else {
				System.out.println("chỉ nhập 1, 2 hoặc 3!");

			}
		}
	}

	public void searchByName(String inputName) {
		// System.out.println(" nhập vào tên bạn muốn tìm kiếm: ");
		//String inputName = scanner.nextLine();
		for (CanBo a : arrayCanBo) {
			if (a.getFullName().equalsIgnoreCase(inputName)) {
				System.out.println(a.toString());
			}else {
				System.out.println("không có");
			}
		}
	}

}
