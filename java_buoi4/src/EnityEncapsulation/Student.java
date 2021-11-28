package EnityEncapsulation;

public class Student {
	private int id;
	private String name;
	private String hometown;
	private float point;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHometown() {
		return hometown;
	}
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
	public float getPoint() {
//		if (point < 4.0 && point >=0.0 ) {
//			System.out.println("Yếu");
//		}else if (point >= 4.0 && point < 6.0 ) {
//			System.out.println("Trung Bình");
//		}else if (point >= 6.0 && point < 8.0 ) {
//			System.out.println("Khá");
//		}else if (point >= 8.0 && point <= 10.0 ) {
//			System.out.println("Giỏi");
//		} else {
//			System.out.println("Error Point");
//		}
		return point;
	}
	public void setPoint(float point) {
		this.point = point;
	}

public Student(String name, String hometown) {
	this.name = name;
	this.hometown = hometown;
	this.point = 0;
}
public Student(String name, float point) {
	this.name = name;
	this.point = point;
	if (point < 4.0 && point >=0.0 ) {
		System.out.println("Học Lực Yếu");
	}else if (point >= 4.0 && point < 6.0 ) {
		System.out.println("Học Lực Trung Bình");
	}else if (point >= 6.0 && point < 8.0 ) {
		System.out.println("Học Lực Khá");
	}else if (point >= 8.0 && point <= 10.0 ) {
		System.out.println("Học Lực Giỏi");
	} else {
		System.out.println("Error Point");
	}
}
public Student() {
	this.id = 0;
	this.hometown= "Hà Nội";
	this.name = "Nguyễn Văn A";
	this.point = 0;
}
public void sum(float a){
	point = a+point;
	this.point = point;
}


}
