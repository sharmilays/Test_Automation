package pharmaTestSuite.steps.stepsPharma;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import objectRepository.GetObj;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

	
public class Portal_PatientOrderPage extends GetObj {
		
		GetObj loginPfizer;
		 WebDriverFactory webDriverFactory;
		public static WebDriver driver;
		boolean present;
		String TestCaseID = PfizerTestCaseID.TCID;
		String ModuleName = PfizerTestCaseID.SheetName;
		//ApplicationPage applpage=new ApplicationPage(webDriverFactory);

		
		@SuppressWarnings("static-access")
		public Portal_PatientOrderPage(WebDriverFactory DriverFactory) throws Exception
		{
			super(DriverFactory);
			webDriverFactory = DriverFactory;
			this.driver = webDriverFactory.getWebDriver();
					
		}
				

		@When("^Click on Patient Order tab$")
		public void click_on_patient_order_tab() throws Throwable {

			element("PatientOrdersTab").click();			
			
		}
		
		@And("^Verify Patient Order page opens$")
		public void verify_patient_order_page_opens() throws Throwable {

			element("PatientOrdersTab").click();
			Assert.assertEquals(element("PatientOrdersPageheading").getText(), "Patient Orders");			
			
		}
		
		@Then("^Enter patient ID in search box$")
		public void enter_patient_ID_in_search_box() throws Throwable {
		   
			System.out.println("PatientIDDDDDD" +ApplicationPage.PatientIds);
			element("Searchtxtbox").sendKeys(ApplicationPage.PatientIds);
			//element("Searchbutton").click();
		    
		}
		
		@Then("^Verify the refill button is enabled$")
		public void verify_the_refill_button_is_enabled() throws Throwable {
		   
			//Thread.sleep(2000);
			//element("RefillButton").isEnabled();
		    
		}
		
		
		
		
	
}
