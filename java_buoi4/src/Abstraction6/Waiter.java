package Abstraction6;

public class Waiter extends User {

	public Waiter(String name, double salaryRatio) {
		super(name, salaryRatio);
	}

	public double calculatePay() {
		return salaryRatio * 420;
	}
	
}
