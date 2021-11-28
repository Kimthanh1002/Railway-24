package EnityEncapsulation;

public class Date {
	private int day;
	private int year;
	private int month;

	public Date(int day, int year, int month) {
		this.day = day;
		this.year = year;
		this.month = month;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	@Override
	public String toString() {
		return "Date \nday: " + day + "\nyear: " + year + "\nmonth: " + month + "\n";
	}

	public boolean isLeapYear() {
		if (day == 366) {
			return true;
		} else {
			return false;
		}
	}
}
