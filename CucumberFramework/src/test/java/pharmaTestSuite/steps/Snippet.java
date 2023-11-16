package pharmaTestSuite.steps;

import java.io.FileInputStream;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class Snippet {
	
	static String path="C:\\TestAutomation\\CucumberFramework\\src\\test\\resources\\TestData\\Demo.xlsx";
	public static String ReadData(String Sheetname,int rowcount,int columncount) throws Throwable
	{
	
	       FileInputStream input=new FileInputStream(path);
	       XSSFWorkbook wb=new XSSFWorkbook(input);
	       XSSFSheet sheet=wb.getSheet(Sheetname);
	       XSSFRow row=sheet.getRow(rowcount);
	       String cell=(row.getCell(columncount)).toString();
		return cell;
	       
	     
	}


	
	public static void main(String[] args) throws Throwable {
		
		String value=ReadData("Sheet1",0,0);
		System.out.println(value);
		
//		 String str = "ABC"; 
//	        int n = str.length(); 
//	        Snippet  permutation = new Snippet (); 
//	        permutation.permute(str, 0, n - 1); 
//	    } 
//	
//	private void permute(String str, int l, int r) 
//    { 
//        if (l == r) 
//            System.out.println("++++"+ str); 
//        else { 
//            for (int i = l; i <= r; i++) { 
//                str = swap(str, l, i); 
//                permute(str, l + 1, r);
//                System.out.println("l valueis"+ l);
//                System.out.println("i value is"+ i);
//                str = swap(str, l, i);
//                
//            } 
//        } 
//    } 
//  
//    
//    public String swap(String a, int i, int j) 
//    { 
//        char temp; 
//        char[] charArray = a.toCharArray(); 
//        temp = charArray[i]; 
//        charArray[i] = charArray[j]; 
//        charArray[j] = temp; 
//        System.out.println("String value is:"+ String.valueOf(charArray));
//        return String.valueOf(charArray); 
//    } 
	
		
		
		
		
		
		
		
		
		
		
		
	}	
		
} 
	
	


