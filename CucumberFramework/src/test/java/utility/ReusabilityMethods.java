package utility;

import java.sql.Connection;
import java.sql.Statement;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import com.vimalselvam.cucumber.listener.Reporter;

import objectRepository.GetObj;


public class ReusabilityMethods extends GetObj   {

	
	public static Statement stmt;
	public static Connection myConn;


	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	public String Portal_PatientID=null;
	

	@SuppressWarnings("static-access")
	public ReusabilityMethods(WebDriverFactory DriverFactory) throws Exception
	{
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();

	}
 
	
	public static  void  UpdateQueryInAnonymousWindow(WebElement Element, String ApplicationID, String EnrollmentStartDate, String EnrollmentEndate ) throws Throwable {

		
		String Query="List<Application__c> applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C from Application__C where Name='ApplicationID'];for(Application__C ap : applist){ap.EnrollmentDate__C = Date.newInstance( EnrollmentStartDate );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 9, 24 );}Update applist;";
		System.out.println(Query);
		Actions action=new Actions(driver);
        action.sendKeys(Element,Keys.CONTROL+"a");
        action.sendKeys(Keys.DELETE).build().perform();
        action.keyDown(Keys.CONTROL).sendKeys(String.valueOf(Query)).perform();
        Thread.sleep(3000);

		
        
      
		
		
		
		

	} 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
}
