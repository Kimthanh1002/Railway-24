package Array;

import enity.Department;

public class arrayDep {
	
	public void arrayDep() {
	Department department1	= new Department(1,"Sale");
	Department	department2	= new Department(2,"CEO");
	Department department3	= new Department(3,"nhân sự");
	Department department4	= new Department(4, "Marketing");
	Department department5	= new Department(5, "tài chính");
	
	Department[] arrayDep  = { department1,department2,department3,department4,department5
			};
		for(Department d: arrayDep) {
		System.out.println(d.toString());
}
}
}
