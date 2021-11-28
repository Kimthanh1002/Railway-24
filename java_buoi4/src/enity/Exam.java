package enity;
import java.util.Date;

public class Exam {
	byte		id;
	byte		code;
	String		title;
	Category	category;
	int			duration;
	Account		creator;
	Date  	createDate; 
	Question[]  Questions;
	
}
