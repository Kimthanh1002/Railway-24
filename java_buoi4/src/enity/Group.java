package enity;
import java.time.LocalDate;

public class Group {
	public	int			id;
	public	String		groupName;
	public	Account		creator;
	public	LocalDate	createDate;
	public	Account[]	accounts;
	
 public String toString() {
	 String group="";
	 group += "Id: 		"		 +id 			+"\n";
	 group += "Group Name:	" 	 +  groupName  	+ "\n";
	 group += "Creator:	" 	  	 + creator 		+ "\n";
	 group += "Create Date: 	"+ createDate  	+ "\n";
	 group += "Accounts:	" 	 + accounts 	+ "\n";
	 return group;
 }
	
 public Group(){
	 }
 public Group(String groupName, Account creator,Account[] accounts,LocalDate createDate ){
	 this.groupName = groupName;
	 this.creator = creator;
	 this.accounts = accounts;
	 this.createDate = createDate;
 }
}
