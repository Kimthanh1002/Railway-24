package Enity;

import java.util.Scanner;

public class check {
	public static void main(String[] args) {
		Scanner keyboard = new Scanner(System.in);
        System.out.println("Give a string ");
        String input=keyboard.nextLine();
        	System.out.println(input.chars().filter((s)->Character.isUpperCase(s)).count());
	
	}
}
	
