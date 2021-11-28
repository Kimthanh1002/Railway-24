package Access_Modifier;

import enity.Account;

public class AccessModifier_1 {
	public static void main(String[] arg) {
		Account a1 = new Account(1, "Thanh1002", "Nguyen Kim Thanh", "thanh18@gmail.com");
		System.out.println(a1.getFullName());
		a1.setId(0);
		System.out.println(a1);

	}
}
