package Inheritance;

import java.util.ArrayList;
import java.util.Scanner;

public class CanBo {
	private String fullName;
	private int age;
	private gender gender;
	private ArrayList<CanBo> arrayCanBo;
	

	public ArrayList<CanBo> getArrayCanBo() {
		return arrayCanBo;
	}

	public void setArrayCanBo(ArrayList<CanBo> arrayCanBo) {
		this.arrayCanBo = arrayCanBo;
	}

	@Override
	public String toString() {
		return "\nFull  Name: " + fullName + "\nAge: " + age + "\nGender: " + gender + "\n";
	}

	public CanBo() {
		 arrayCanBo = new ArrayList<CanBo>();
	}

	public CanBo(String fullName, int age, gender gender) {
		this.fullName = fullName;
		this.age = age;
		this.gender = gender;
	 arrayCanBo = new ArrayList<CanBo>();
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public gender getGender() {
		return gender;
	}

	public void setGender(gender gender) {
		this.gender = gender;
	}

	public void addStaff() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("input fullname of staff: ");
		String fullname1 = scanner.nextLine();
		System.out.println("input age of staff: ");
		int age1 = scanner.nextInt();
		System.out.println("input gender of staff( 1.Female,2.Male or 3.Unknow): ");
		int inputGender = scanner.nextInt();
		Inheritance.gender gender1 = gender;
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
				default :
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
						String  job = scanner.next();
						NhanVien j = new NhanVien(fullname1, age1, gender1, job);
						System.out.println("đã thêm nhân viên thành công!");
						System.out.println(j.toString());
						break;
					}
					return;
				} else {
					System.out.println("chỉ nhập 1, 2 hoặc 3!");

				}
				scanner.close();
			}
		}
	public void searchByName() {
		
		Scanner scanner = new Scanner(System.in);
		System.out.println(" nhập vào tên bạn muốn tìm kiếm: ");
		String inputName = scanner.nextLine();
		boolean  isExists = false;
		for(CanBo a : arrayCanBo) {
			if(a.fullName.equalsIgnoreCase(inputName)) {
				System.out.println(a.toString());
				isExists = true;
			}
			scanner.close();
		}
		if(!isExists ) {
			System.out.println("not found!");
		}
		}
public void canBoInfor() {
	for(CanBo a: arrayCanBo) {
		System.out.println(a);
	}
}
public void deleteCanBo() {
	Scanner scanner = new Scanner(System.in);
	System.out.println(" nhập vào tên bạn muốn xoá: ");
	String inputName = scanner.nextLine();
	arrayCanBo.removeIf(CanBo -> CanBo.getFullName().equals(inputName));
	scanner.close();
}
}

enum gender {
	Female, Male, Unknow;
}