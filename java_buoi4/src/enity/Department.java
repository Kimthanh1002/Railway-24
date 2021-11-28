package enity;

public class Department {
	public int		id;
	public String	name;

	public String toString() {
		String infoDep="";
		infoDep+="DepId:"+id+"\n";
		infoDep+="DepName: "+name +"\n";
		return infoDep;
	}
	public boolean equals(Object obj) {
		if (obj == null) {
			return false;
		};
		Department department1 = (Department) obj;
		String depName = department1.name;
		if (depName.equals(name)){
			return true;
			
		}
		return false;
	}
	public Department() {
		this.id=0;
		this.name= "Waiting Room";
	}
	public Department(int id,String name) {
		this.id = 0;
		this.name= name;
		
	}

}
