package Abstraction6;

public class Contact {
	private String number;
	private String name;

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Contact(String number, String name) {
		this.number = number;
		this.name = name;
	}

	@Override
	public String toString() {
		return "\nnumber: " + number + "\nname: " + name + "\n";
	}

}
