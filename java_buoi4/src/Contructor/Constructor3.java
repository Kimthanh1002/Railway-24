package Contructor;

import java.time.LocalDate;

import enity.Account;
import enity.Group;

public class Constructor3 {
	public static void main(String[] arg) {
	 Constructor3a(1,"sale");
	 Account[]  accounts = {new Account("Nguyen Thanh"), new Account("Nguyen Kim Thanh") };
	 Constructor3bc("sale", new Account("Thanhh"), accounts, LocalDate.of(2018,10,02));
	 
}
private static void Constructor3a(int id, String groupName) {
	Group a = new Group();
	a.id 	= id;
	a.groupName = groupName;
	System.out.println("Q3a\n"+a.toString());
}
private static void Constructor3bc( String groupName, Account creator, Account[] accounts, LocalDate createDate ) {
	Group b = new Group(groupName, creator, accounts, createDate);
	System.out.println("Q3b\n"+b.toString());
}
}
