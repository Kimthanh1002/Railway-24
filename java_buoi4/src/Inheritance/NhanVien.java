package Inheritance;

public class NhanVien extends CanBo {
	private String job;
	

	public NhanVien(String fullName, int age, Inheritance.gender gender,String job) {
		super(fullName, age, gender);
		this.job = job;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	@Override
	public String toString() {
		return "NhanVien \nJob: " + job +super.toString()+ "\n";
	}
	
	
	
}
