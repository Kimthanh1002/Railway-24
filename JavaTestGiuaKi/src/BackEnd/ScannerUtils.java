package BackEnd;

import java.util.Scanner;

public class ScannerUtils {
	public static Scanner scanner;
//	private static ArrayList<Student> arrayStudent;

	public ScannerUtils() {
		scanner = new Scanner(System.in);
//		arrayStudent = new ArrayList<Student>();
	}

	public static void menu() {
		while (true) {
			System.out.println("input 1,2,3 or 4 (1.int 2.float 3.double 4.String): ");
			int a = inputInt("wrong input, must be a number");
			switch (a) {
			case 1:
				inputInt("wrong input, must be a number");
				scanner.close();
				return;
			case 2:
				inputFloat("wrong input, must be a number");
				scanner.close();
				return;
			case 3:
				inputDouble("wrong input, must be a number");
				scanner.close();
				return;
			case 4:
				inputString();
				scanner.close();
				return;
			default:
				System.out.println("input only 1,2,3 or 4");

			}
		}
	}

	public static int inputInt(String errorMessenge) {
		while (true) {
			System.out.println("input a number: ");
			String input = scanner.nextLine();
			try {
				int inputInt = Integer.parseInt(input);
				// System.out.println("inputed a number: " + inputInt);
				return inputInt;

			} catch (Exception e) {
				System.out.println(errorMessenge);
			}
		}
	}

	public static Float inputFloat(String errorMessage) {
		while (true) {
			System.out.println("input a number: ");
			String input = scanner.nextLine();
			try {
				Float k = Float.parseFloat(input);
				System.out.println("inputed a number" + k);
				return k;

			} catch (Exception e) {
				System.out.println(errorMessage);
			}
		}

	}

	public static Double inputDouble(String errorMessage) {
		while (true) {
			System.out.println("input a number: ");
			String input = scanner.nextLine();
			try {
				Double k = Double.parseDouble(input);
				System.out.println("inputed a number: " + k);
				return k;

			} catch (Exception e) {
				System.out.println(errorMessage);
			}
		}

	}

	public static String inputString() {
		while (true) {
			System.out.println("input a String: ");
			try {
				String input = scanner.nextLine();
				// System.out.println("inputed a String: " + input);

				return input;

			} catch (Exception e) {
				System.out.println("error!");
			}
		}
	}

//	public static void createStudent() {
//		while (true) {
//			System.out.println("input 1 or 2( 1. createStudent 2. exit): ");
//			int input = inputInt("wrong input, must be a number");
//			switch (input) {
//			case 1:
//				System.out.println("input id of student: ");
//				int inputId = inputInt("wrong input, must be a number");
//				System.out.println("input full name of student: ");
//				String inputName = scanner.nextLine();
//				try {
//					Student student = new Student(inputId, inputName);
//					Student.arrayStudent.add(student);
//				} catch (InvalidStudentCreatingException e) {
//					System.err.println(e.getMessage());
//				}
//				break;
//			case 2:
//				scanner.close();
//				return;
//			default:
//				System.out.println("input only 1 or 2");
//			}
//		}
//	}
//
//	public static void writeAndReadStudent(String pathFile) {
//		String k = "";
//		for (Student s : Student.arrayStudent) {
//			k = s.toString();
//		}
//		try {
//			Exercise4.writeFile(k, pathFile);
//			System.out.println(Exercise4.readFile(pathFile));
//		} catch (IOException e) {
//			System.err.println(e.getMessage());
//		}
//
//	}
}
