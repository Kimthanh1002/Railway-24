package Enity;

public class Admin extends User {
	private int expInYear;

	public Admin( String fullName, String userName, String email, String passWord, int expInYear) {
		super( fullName, userName, email, passWord);
		this.expInYear = expInYear;
	}

	public int getExpInYear() {
		return expInYear;
	}

	public void setExpInYear(int expInYear) {
		this.expInYear = expInYear;
	}

	@Override
	public String toString() {
		return "Admin"+super.toString()+"expInYear: " + expInYear + "\n";
	}

}
