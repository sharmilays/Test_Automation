package pharmaTestSuite.steps;


import static org.junit.Assert.assertTrue;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Scanner;
import java.util.concurrent.TimeUnit;

import javax.management.OperationsException;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.util.SystemOutLogger;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.NoSuchFrameException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.Select;

import com.codoid.products.exception.FilloException;
import com.codoid.products.fillo.Connection;
import com.codoid.products.fillo.Fillo;
import com.codoid.products.fillo.Recordset;
import com.vimalselvam.cucumber.listener.Reporter;

import javassist.bytecode.Descriptor.Iterator;
import pharmaTestSuite.steps.stepsPharma.PfizerTestCaseID;
import utility.CommonMethods;
import utility.screenshotUtility;


public class ClassTest {
	
	static Recordset recordset;
	
	static Map<String, String> map=new HashMap();
	public static Map PBIDataValidation(String Execlpath, String Sheetname) throws Throwable 
	
	{
		
		
		Fillo fillo=new Fillo();
	    Connection connection=	fillo.getConnection(Execlpath);
	    String query="Select * from "+Sheetname+"";
	    recordset=connection.executeQuery(query);
	    
	    System.out.println(recordset.getCount());
	    
	    while(recordset.next()) {
	    	
	    	map.put(recordset.getField("Program Name"), recordset.getField("PAP Applications"));
	    }
	    
		return map;
		
	}
	
	 public static int GetCountFromWHData(String WHExecelpath, String WHSheetName,String PgmValue) throws Throwable
	{
		 Fillo fillo=new Fillo();
		    Connection connection=	fillo.getConnection(WHExecelpath);
		    String query="Select PROGRAM_NAME from "+WHSheetName+" where PROGRAM_NAME='"+PgmValue+"'";
		    recordset=connection.executeQuery(query);
		    //System.out.println("WareHouse Program Application Count  "+recordset.getCount());
		   int TotalCount= recordset.getCount();
		   //String s=Integer.toString(TotalCount);
		    return TotalCount;
		
	}
	 
	 
	
	
	    	public static void main(String[] args) throws Throwable {	
	    		String AbbviePBIPath="C:\\TestAutomation\\CucumberFramework\\src\\test\\resources\\Abbvie\\DemoUI.xlsx";
	    		String Sheetname="PBIReport";
	    		String WDPath="C:\\TestAutomation\\CucumberFramework\\src\\test\\resources\\Abbvie\\DemoWH.xlsx";
	    		String WHSheetname="DWHReport";
	    		
	    		
	    		 
	    		 Map values=PBIDataValidation(AbbviePBIPath,Sheetname);
	    		 System.out.println(values);
	    		 for (Map.Entry mapElement : map.entrySet()) { 
	    	            String key = (String)mapElement.getKey(); 
	    	 
	    	           System.out.println(key);
	    	           String mapvalue = (String)mapElement.getValue().toString();
	    	           System.out.println("PBI count is:"+" "+mapvalue);
	    	           int PgmCount=GetCountFromWHData(WDPath, WHSheetname,key);
	    	           System.out.println("WareHouse Program Application Count "+PgmCount);
	    	           
	    	           int Mapvalue=Integer.parseInt(mapvalue);
	    	          int MapValueInPercentage=Mapvalue*100/PgmCount;
	    	          System.out.println(MapValueInPercentage+"%");
	    	          
//	    	           if(mapvalue.equalsIgnoreCase(PgmCount)) {
//	    	        	   System.out.println("PBI value is:" +mapvalue+" " +"wareHousedata value is:" + PgmCount+ "matched");
//	    	        	   
//	    	           }
//	    	           else
//	    	           {
//	    	        	   
//	    	        	   System.out.println("records are not matching");
//	    	           }
	    	           
	    	           
	    	           
	    	           
	    	           
	    	        } 
	    		 
	    		 //using for loop
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
//	    		 for(int i=0;i<=values.size()-1;i++)
//	    		 {
//	    			 System.out.println(values.get(i));
//	    		 }
	    		 
	    		 
//	    		 String WDPath="C:\\TestAutomation\\CucumberFramework\\src\\test\\resources\\Abbvie\\patinsightsabbvie.xls";
//	    		 String WDSheetName="Sheet1";
	    		 
	    		 
////	    		 List<String> WHvalues=WareHouseDataValidation(WDPath,WDSheetName);
////	    		 System.out.println(WHvalues);
	    		 
	    		 
	    		 
	    		 
	    		 
	    		 
	    	
	    		
	    		
	    	
	    		
	    		
	    		
	    		
	    		
	    		
}
		
		
}



	    		
	    	
	    	
	    	
	    	
	    	
	      

	  
	  
	 
	     

	


