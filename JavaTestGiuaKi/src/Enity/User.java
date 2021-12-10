package Enity;

import java.util.ArrayList;
import java.util.Scanner;

public abstract class User {
	public static int COUNT =0;
	private final int id;
	private String fullName;
	private String userName;
	private String email;
	private String passWord;

	public int getId() {
		return id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public User( String fullName, String userName, String email, String passWord) {
		COUNT++;
		this.id = COUNT;
		this.fullName = fullName;
		this.userName = userName;
		this.email = email;
		this.passWord = passWord;
	}

	@Override
	public String toString() {
		return "User \nid: " + id + "\nfullName:  " + fullName + "\nuserName: " + userName + "\nemail: " + email
				+ "\npassWord: " + passWord + "\n";
	}


}
