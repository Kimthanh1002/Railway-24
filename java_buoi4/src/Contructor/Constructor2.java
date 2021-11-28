package Contructor;

import java.util.Date;

import enity.Account;
import enity.Position;

public class Constructor2 {
	 public static void main(String[] args) {
		 System.out.println("--- Q2 ---");
		 Constructor2a();
		 Constructor2b();
		 Constructor2c(1, "Nguyen Thanh", "Thanh1002", "thanh12@gmail", new Position("CEO"));
		 Constructor2d(1, "Nguyen Thanh1", "Thanh10021", "thanh121@gmail", new Position("CEO1"), new Date(2018,20,18));
	 }
	 
		private static void Constructor2a(){
		Account a = new Account(1,"nguyen", "thanh@gmail", "thanh1002");
		System.out.println("Q2a\n"+a.toString());
		}
		private static void Constructor2b() {
		Account b = new Account();
		b.setId(0);;
		b.setFullName( "phan lam");
		System.out.println("Q2b\n"+b.toString());
	}
		private static void Constructor2c(int Id,String fullName, String userName,String email, Position position) {
			//Position pos1 = new Position(0, "CEO");
			Account c = new Account(Id , fullName , userName,email ,position);
			System.out.println("Q2c\n"+c.toString());
		}
		private static void Constructor2d(int Id,String fullName, String userName,
										String email, Position position, Date createDate) {
			Account d = new Account(Id , fullName , userName,email ,position, createDate);
			System.out.println("Q2d\n"+d.toString());
		}
}
