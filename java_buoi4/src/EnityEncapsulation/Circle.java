package EnityEncapsulation;

public class Circle {
	private double radius;
	private String color;

	@Override
	public String toString() {
		String infoCircle = "";
		infoCircle += "Circle Radius: " + radius + "\n";
		infoCircle += "Circle Color: " + color + "\n";
		return infoCircle;
	}

	public double getRadius() {
		return radius;
	}

	public void setRadius(double radius) {
		this.radius = radius;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Circle() {
		this.radius = 1;
		this.color = "red";
	}

	public Circle(double radius) {
		this.radius = radius;
	}

	public Circle(double radius, String color) {
		this.radius = radius;
		this.color = color;
	}

	public double getArea() {
		return radius * radius * Math.PI;
	}

}
