package Inheritance;

public class HighSchoolStudent extends Student {
	private int class1;
	private String desiredUniversity;

	public int getClass1() {
		return class1;
	}

	public void setClass1(int class1) {
		this.class1 = class1;
	}

	public String getDesiredUniversity() {
		return desiredUniversity;
	}

	public void setDesiredUniversity(String desiredUniversity) {
		this.desiredUniversity = desiredUniversity;
	}

	public HighSchoolStudent(String name, int id, int class1, String desiredUniversity) {
		super(name, id);
		this.class1 = class1;
		this.desiredUniversity = desiredUniversity;
		
	}

	@Override
	public String toString() {
		return "HighSchoolStudent \nclass1: " + class1 + "\ndesiredUniversity: "
	+ desiredUniversity + "\nName: "+ super.getName() + "\nId: "+ super.getId();
	}

}
