
	package enity;
	import java.util.Date;

	public class Account {
		private	int			id;
		private String		email;
		public String		userName;
		private String		fullName;
		public Department	department;
		public Position		position;
		public Date 		createDate;
		public Group[] 		Groups;
		@Override
public String toString() {
	String infoAcc = "";
	infoAcc += "Id:		 "	  +id			+"\n";
	infoAcc += "Email: 		 "+email 		+"\n";
	infoAcc += "User name:	 "+userName 	+"\n";
	infoAcc += "Full name:	 "+fullName 	+"\n";
	infoAcc += "Department:	 "+department	+"\n";
	infoAcc += "Position: 	 "+position		+"\n";
	infoAcc += "Create Date:	 "+createDate	+"\n";
	infoAcc += "Group:		 "+Groups		+"\n";
	return infoAcc;
}
		
 public Account(int id,String userName, String fullName,String email){
	this.id = id;
	this.fullName = fullName;
	this.email= email;
	this.userName= userName;

}
public Account(){
};
public Account(String userName){
	this.userName = userName;
};
public Account(int id,String userName, String fullName,String email,Position position) {
	this.id = id;
	this.fullName = fullName;
	this.email= email;
	this.userName= userName;
	this.position = position;
	this.createDate= new Date();
}
public Account(int id,String userName, String fullName,String email,Position position, Date createdate) {
	this.id = id;
	this.fullName = fullName;
	this.email= email;
	this.userName= userName;
	this.position = position;
	this.createDate= createDate;
}
public void setId(int id) {
	this.id = id;
}
public int getId() {
	return id;
}
public void setEmail(String email) {
	this.email = email;
}
public String getEmail() {
	return email;
}
public void setFullName(String fullName) {
	this.fullName = fullName;
}
public String getFullName() {
	return fullName;
}

}