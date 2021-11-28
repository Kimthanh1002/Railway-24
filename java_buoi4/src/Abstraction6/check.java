package Abstraction6;

public class check {
	public static void main(String[] arg) {
		VietnamesePhone a = new VietnamesePhone();
		a.insertContact("hanh", "0908802346");
		a.insertContact("0890123456", "Thanh");
//		System.out.println(a);
//		System.out.println("contact bạn muốn tìm là ");
//		a.searchContact("Thanh");
		System.out.println("contact sau khi update là ");
		a.updateContact("Thanh", "0800901234");
		a.printContact();
		//a.removeContact("Thanh");
//		System.out.println("sau khi xoá đi thì contact còn lại là: ");
//		a.printContact();
//		Waiter b = new Waiter("Hanh", 500);
//		System.out.println(b.calculatePay());
	}

}
