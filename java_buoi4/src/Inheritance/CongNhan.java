package Inheritance;

public class CongNhan extends CanBo {
	private int level;
	
	@Override
	public String toString() {
		return "NhanVien \nLevel: " + level +super.toString()+ "\n";
	}

	public CongNhan(String fullName, int age, gender gender,int level) {
		super(fullName, age, gender);
		this.level = level;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
		if (level > 0 && level <= 10) {
		} else {
			System.out.println("this level does not exist");
		}
	}

}
