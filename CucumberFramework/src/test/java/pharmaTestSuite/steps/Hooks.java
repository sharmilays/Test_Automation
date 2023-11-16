package pharmaTestSuite.steps;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.mail.MessagingException;

import org.openqa.selenium.Capabilities;
import org.openqa.selenium.UnhandledAlertException;
import org.openqa.selenium.WebDriver;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterSuite;

import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.model.Test;
import com.vimalselvam.cucumber.listener.ExtentProperties;
import com.vimalselvam.cucumber.listener.Reporter;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.testng.*;
import cucumber.runtime.FeatureBuilder;
import cucumber.runtime.StepDefinition;
import cucumber.runtime.StepDefinitionMatch;
import utility.CommonMethods;
import utility.EmailUtility;
import utility.Report;
import utility.ScreenRecodingUtility;
import utility.WebDriverFactory;
import utility.screenshotUtility;

@SuppressWarnings("unused")
public class Hooks {
	
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	public static int screenRecord = 0;
	
	public Hooks(WebDriverFactory DriverFactory) throws IllegalAccessException
	{
		webDriverFactory = DriverFactory;
		driver = webDriverFactory.getWebDriver();
		CommonMethods.driver = driver;
	}

	@Before()
	public void beforeScenarioExtentReportEntry(Scenario scenario) {
		
		driver.manage().deleteAllCookies();
		System.out.println("Hook executed");
		try {
			CommonMethods.CopyLogsInArchive(); 
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		System.out.println("testauto");

		CommonMethods.AuthorsName();
		
		
	}
	
	@SuppressWarnings("static-access")
	@After(order = 1)
	public void afterScenarioExtentReportEntry(Scenario scenario) throws Throwable {
		
		System.out.println("Hook After method started");
		try {
			if (scenario.getStatus().toString().toLowerCase() == "failed")
			{
				//screenshotUtility.getScreenshot(driver);
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			}
			
		} catch (UnhandledAlertException e) {
			System.out.println("Browser closed ++123"+e);
			
			CommonMethods.acceptAlert();

		}
		finally {
			
			//Report.extentEnvironmentInfo();  
			System.out.println("SCENARIO: "+scenario.getName()+" - "+scenario.getStatus());
			
			String filepath="C:\\Test_Automation\\CucumberFramework\\src\\test\\resources\\TestData\\TextLogs.txt";
			BufferedWriter bw = null;
			FileWriter fw = null;

			try {

				//creating a file
				File file = new File(filepath);

				// if file doesnt exists, then create it
				if (!file.exists()) {
					file.createNewFile();
				}

				fw = new FileWriter(file.getAbsoluteFile(),true);
				bw = new BufferedWriter(fw);

				bw.write("SCENARIO: "+scenario.getName()+" - "+scenario.getStatus()+"\n");



			} catch (Exception e) {

				e.printStackTrace();

			} finally {

				try {

					if (bw != null)
						bw.close();

					if (fw != null)
						fw.close();

				} catch (Exception ex) {

					ex.printStackTrace();

				}
			}
			
		//		CommonMethods.closeWebDriverProcess();
		}
	


	
		
	}
	
	@Before(order = 2)
	public void startRecording(Scenario scenario) {
		
		if(screenRecord!=0) {
			
			try {
				ScreenRecodingUtility.startRecord(scenario.getName());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
	}
	
	@After(order = 3)
	public void reflection() throws Throwable, SecurityException {
		
		Method getCurrentScenario = Reporter.class.getDeclaredMethod("getCurrentScenario", null);
		getCurrentScenario.setAccessible(true);
		ExtentTest t1 = (ExtentTest) getCurrentScenario.invoke(Reporter.class, null);
		System.out.println("Ashirbad scenario execution time: "+t1.getModel().getRunDurationMillis());
		System.out.println("Ashirbad scenario execution time: "+t1.getModel().getRunDuration());
		System.out.println("Ashirbad scenario execution time: "+t1.getModel().getName());
		System.out.println("Ashirbad scenario execution time: "+t1.getModel().getStatus());
		
		
	}
	@After(order = 2)
	public void stopRecording(Scenario scenario) {
		
		if(screenRecord!=0) {
			
			try {
				ScreenRecodingUtility.stopRecord();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			
	
	
	
	}
	
}
