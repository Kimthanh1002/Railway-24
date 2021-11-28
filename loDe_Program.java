package program_loDe;

import java.util.Random;
import java.util.Scanner;

public class loDe_Program {
public static void main (String[] arg) {
	Scanner scanner = new Scanner(System.in);
	Random random = new Random();
	int money = 50000;
	System.out.println("số tiền hiện có là:" + money+
						"\n bạn có muốn nạp thêm tiền vào tài khoản không? \nnếu có mời nhập số 1:");
	int napTien= scanner.nextInt();
	switch(napTien) {
	case 1:
		System.out.println("số tiền bạn muốn nạp là:");
		int themTien = scanner.nextInt();
		money = money+themTien;
		System.out.println("nạp tiền thành công!\n số tiền hiện có là "+ money );
	};
	 System.out.println("nhập vào con đề bạn chọn : ");
	  int i = scanner.nextInt();
	  String  inputDe = "";
	  if(i==0) {
		  inputDe = "0"+ i;
	  }else {
	    inputDe = ""+ i;
	    };
	  System.out.println("nhập vào số tiền bạn muốn đánh đề: ");
	  int tienDanhDe = scanner.nextInt();
	  if(tienDanhDe>money) {
		  System.out.println("số tiền không đủ!");
		  tienDanhDe = 0;
		  System.out.println("số tiền hiện có là:" + money+
					"\n bạn có muốn nạp thêm tiền vào tài khoản không? \nnếu có mời nhập số 1:");
		  int napTienSau = scanner.nextInt(); 
		  switch(napTienSau) {
			case 1:
				System.out.println("số tiền bạn muốn nạp là:");
				int themTien = scanner.nextInt();
				money = money+themTien;
				System.out.println("nạp tiền thành công!\n số tiền hiện có là "+ money );
				System.out.println("nhập vào số tiền bạn muốn đánh đề: ");
				tienDanhDe = scanner.nextInt();
			};
	  }
	  System.out.println("nhập vào con lô bạn chọn : ");
	  int j = scanner.nextInt();
	  String  inputLo = "";
	  if(j==0) {
		  inputLo = "0"+ j;
	  }else {
	    inputLo = ""+ j;
	    };
	  System.out.println("nhập vào số tiền bạn muốn đánh lô: ");
	  int tienDanhLo = scanner.nextInt();
	  if(tienDanhLo > (money-tienDanhDe)) {
			  System.out.println("số dư không đủ!");
			  tienDanhLo = 0;
			  System.out.println("số tiền hiện có là:" + (money-tienDanhDe)+
						"\n bạn có muốn nạp thêm tiền vào tài khoản không? \nnếu có mời nhập số 1:");
			  int napTienSau = scanner.nextInt(); 
			  switch(napTienSau) {
				case 1:
					System.out.println("số tiền bạn muốn nạp là:");
					int themTien = scanner.nextInt();
					money = money+themTien;
					System.out.println("nạp tiền thành công!\n số tiền hiện có là "+ money );
					System.out.println("nhập vào số tiền bạn muốn đánh lô: ");
					 tienDanhLo = scanner.nextInt();
			  };
		  };
	  int soLanTrungLo = 0;
	  int soLanTrungDe = 0;
	  System.out.println("giải 7: ");
		 for(int m=1;m<=4;m++) {
			 int randomInt1 = random.nextInt(89);
			 String  s = ""+ randomInt1;
			 if(randomInt1<10) {
				 for(int n=0; s.length()<2;n++) {
					 s = "0"+s;}
			    System.out.print( s + " ");
		    }else {
		    System.out.print( randomInt1 + " ");
		    };
			    String soLo = s.substring(0,2);
			    if(inputLo.equalsIgnoreCase(soLo)) {
			    	soLanTrungLo+=1;
			    }else { continue;
		 }
		 }
		 System.out.println("\ngiải 6: ");
		 for(int m=1;m<=3;m++) {
			 int randomInt1 = random.nextInt(999);
			 String  s = ""+ randomInt1;
			 if(randomInt1<100) {
				 for(int n=0; s.length()<3;n++) {
					 s = "0"+s;}
			    System.out.print( s + " ");
		    }else {
		    System.out.print( randomInt1 + " ");
		    };
			    String soLo = s.substring(1,3);
			    if(inputLo.equalsIgnoreCase(soLo)) {
			    	soLanTrungLo+=1;
			    }else { continue;
		 }
		 }
		 System.out.println("\ngiải 5: ");
		 for(int m=1;m<=6;m++) {
			 int randomInt1 = random.nextInt(9999);
			 String  s = ""+ randomInt1;
			 if(randomInt1<1000) {
				 for(int n=0; s.length()<4;n++) {
					 s = "0"+s;}
			    System.out.print( s + " ");
		    }else {
		    System.out.print( randomInt1 + " ");
		    };
			    String soLo = s.substring(2,4);
			    if(inputLo.equalsIgnoreCase(soLo)) {
			    	soLanTrungLo+=1;
			    }else { continue;
		 }
		 }
		 System.out.println("\ngiải 4: ");
		 for(int m=1;m<=4;m++) {
			 int randomInt1 = random.nextInt(9999);
			 String  s = ""+ randomInt1;
			 if(randomInt1<1000) {
				 for(int n=0; s.length()<4;n++) {
					 s = "0"+s;}
			    System.out.print( s + " ");
		    }else {
		    System.out.print( randomInt1 + " ");
		    };
			    String soLo = s.substring(2,4);
			    if(inputLo.equalsIgnoreCase(soLo)) {
			    	soLanTrungLo+=1;
			    }else { continue;
		 }
		 }
		 System.out.println("\ngiải 3: ");
		 for(int m=1;m<=6;m++) {
			 int randomInt1 = random.nextInt(99999);
			 String  s = ""+ randomInt1;
			 if(randomInt1<10000) {
				 for(int n=0; s.length()<5;n++) {
					 s = "0"+s;}
			    System.out.print( s + " ");
		    }else {
		    System.out.print( randomInt1 + " ");
		    };
			    String soLo = s.substring(3,5);
			    if(inputLo.equalsIgnoreCase(soLo)) {
			    	soLanTrungLo+=1;
			    }else { continue;
		 }
		 }
		 System.out.println("\ngiải 2: ");
		 for(int m=1;m<=2;m++) {
			 int randomInt1 = random.nextInt(99999);
			 String  s = ""+ randomInt1;
			 if(randomInt1<10000) {
				 for(int n=0; s.length()<5;n++) {
					 s = "0"+s;}
			    System.out.print( s + " ");
		    }else {
		    System.out.print( randomInt1 + " ");
		    };
			    String soLo = s.substring(3,5);
			    if(inputLo.equalsIgnoreCase(soLo)) {
			    	soLanTrungLo+=1;
			    }else { continue;
		 }
		 } 
		 
		 System.out.println("\ngiải nhất: ");
			 int randomInt1 = random.nextInt(99999);
			 String  s = ""+ randomInt1;
			 if(randomInt1<10000) {
				 for(int n=0; s.length()<5;n++) {
					 s = "0"+s;}
			    System.out.println( s + " ");
		    }else {
		    System.out.println( randomInt1 + " ");
		    };
			    String soLo = s.substring(3,5);
			    if(inputLo.equalsIgnoreCase(soLo)) {
			    	soLanTrungLo+=1;
			    };
			    
		 System.out.println("\ngiải đặc biệt: ");   
		 int randomInt2 = random.nextInt(99999);
		 String  k = ""+ randomInt2;
			    if(randomInt2<10000) {
					 for(int n=0; k.length()<5;n++) {
						 k = "0"+k;}
				    System.out.println( k + " ");
			    }else {
			    System.out.println( randomInt2 + " ");
			    }
		 String soDe = k.substring(3,5);
		 if(inputDe.equalsIgnoreCase(soDe)) {
		 	System.out.println(" bạn đã trúng đề!!!!");
		 	soLanTrungDe+=1;
		 } else {
		 	System.out.println("rất tiếc, chúc may mắn lần sau!");
		 };
		 soLo = k.substring(3,5);
		 if(inputLo.equalsIgnoreCase(soLo)) {
		    	soLanTrungLo+=1;
		    };
	System.out.println("\nSố lần trúng lô là: "+soLanTrungLo);
	money = (money - tienDanhDe - tienDanhLo)+soLanTrungLo*tienDanhLo*20+ soLanTrungDe*tienDanhDe*70 ;
	System.out.println("số tiền hiện có của bạn là: "+ money);
}
}

