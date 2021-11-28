package Array;

import enity.Account;

public class arrayAcc {
public static void arrayAcc() {
 Account a1 = new Account(1,"thanh1", " Tran Thanh","thanh1002@vn" );
 Account a2 = new Account(2,"hanh1", "Nguyen Hanh","hanh17@vn" );
 Account a3 = new Account(3,"thanh3", " Nguyen Thanh","thanh18@gmail" );
 Account a4 = new Account(4,"thang11", " Tran Thang","thang1998@vn" );
 Account a5 = new Account(5,"hanh2", " Tran Hanh","hanh3@vn" );

 Account[] arrayAcc = { a1,a2,a3,a4,a5};
 for(Account a: arrayAcc) {
	 System.out.println(a.toString());
 }
}
}
