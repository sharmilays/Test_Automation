package testRunner;

import java.io.IOException;

public class temp {

	public static void main(String[] args) throws IOException {
		
//		
//		Runtime.getRuntime().exec(new String[] {
//				
//				"wscript.exe", "D:\\Shell Script\\date.vbs"
//				
//		});
		System.out.println("C:/Users/52027059/AppData/Local/Google/Chrome/User Data/Default");
		System.out.println(System.getProperty("user.name"));
		System.out.println("C:/Users/"+System.getProperty("user.name")+"/AppData/Local/Google/Chrome/User Data/Default");
		System.out.println("D:\\TestAutomation\\CucumberFramework\\src\\test\\resources\\TestData\\PatientIDs.txt");
		System.out.println(System.getProperty("user.dir")+"\\src\\test\\resources\\TestData\\PatientIDs.txt");
	}

}
