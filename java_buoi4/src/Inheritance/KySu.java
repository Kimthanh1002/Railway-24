package Inheritance;

public class KySu extends CanBo {
	private String trainingIndustry;
	
	

	public KySu(String fullName, int age, Inheritance.gender gender, String trainingIndustry) {
		super(fullName, age, gender);
		this.trainingIndustry = trainingIndustry;
	}

	public String getTrainingIndustry() {
		return trainingIndustry;
	}

	public void setTrainingIndustry(String trainingIndustry) {
		this.trainingIndustry = trainingIndustry;
	}
	@Override
	public String toString() {
		return "NhanVien \nTraining Industry: " + trainingIndustry +super.toString()+ "\n";
	}
}
