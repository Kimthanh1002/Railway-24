package Enity;

public class Employee extends User {
	private String proSkill;

	public Employee( String fullName, String userName, String email, String passWord, String proSkill) {
		super( fullName, userName, email, passWord);
		this.proSkill = proSkill;
	}

	public String getProSkill() {
		return proSkill;
	}

	public void setProSkill(String proSkill) {
		this.proSkill = proSkill;
	}

	@Override
	public String toString() {
		return "Employee"+super.toString()+"proSkill: " + proSkill + "\n";
	}
	

}
