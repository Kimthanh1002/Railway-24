package Contructor;

import enity.Department;

public class Constructor1 {
	public static void main(String[] arg) {
		 Contructor1a();
		 Contructor1b();
	}
private static void Contructor1a() {
	Department d1a = new Department();
	System.out.println("Q1a: \n"+d1a.toString());
}
private static void Contructor1b() {
	Department d1b = new Department(0, "sale6");
	System.out.println("Q1b: \n" + d1b.toString());
}
}