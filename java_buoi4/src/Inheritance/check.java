package Inheritance;

import java.util.ArrayList;

public class check {
	// private ArrayList<CanBo> arrayCanBo;
	
public static void main (String[] arg) {
//	System.out.println("tên của người ms tạo là:");
//	CongNhan j = new CongNhan("Thanh nguyen", 20, gender.Female, 1);
//	System.out.println(j.getFullName());
	
	
	CanBo  b =  new CanBo("Thanh", 19, gender.Female);
	CanBo  c =  new CanBo("Thanh nguyen", 16, gender.Female);
	ArrayList<CanBo>	k = new ArrayList<CanBo>();
	k.add(b);
	k.add(c);
	b.setArrayCanBo(k);
	
	//System.out.println(k.get(1));
	//b.addStaff();
	b.searchByName();
	//b.canBoInfor();
	//b.deleteCanBo();
	//b.canBoInfor();
	//HighSchoolStudent a = new HighSchoolStudent("Thanh", 10, 10, "Đại Học Ngoại Thương");
	//System.out.println(a);
}
}
