package Encapsulation;

import EnityEncapsulation.Student;

public class Encapsulation1 {
	public static void main(String[] arg) {
		Encapsulation1b();
		Encapsulation1c();
		Encapsulation1d();
		Encapsulation1e();
	}

	public static void Encapsulation1b() {
		Student s = new Student("Nguyen Hang", "Ha Tinh");
		System.out.println("Q1b:\n" + s.getName() + "\n" + s.getHometown() + "\n" + s.getPoint() + "\n");
	}

	public static void Encapsulation1c() {
		Student s = new Student("Nguyen Kim Thanh", "Ha Tinh");
		s.setPoint(10);
		System.out.println("Q1c:\n" + s.getPoint() + "\n");

	}

	public static void Encapsulation1d() {
		Student s = new Student("Nguyen Kim Thanh", "Ha Tinh");
		s.sum(9);
		System.out.println("Q1d:\n" + s.getPoint() + "\n");
	}

	public static void Encapsulation1e() {
		System.out.println("Q1e: ");
		Student s = new Student("Nguyen Kim Thanh", 10);
		System.out.println(s.getName() + "\n" + s.getPoint());
	}
}
