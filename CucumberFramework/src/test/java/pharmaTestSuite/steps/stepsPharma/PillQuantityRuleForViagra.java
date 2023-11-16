package pharmaTestSuite.steps.stepsPharma;

import static org.junit.Assert.assertTrue;
import static org.testng.Assert.assertFalse;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import objectRepository.GetObj;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

public class PillQuantityRuleForViagra extends GetObj{
	
	
	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;

	
	@SuppressWarnings("static-access")
	public PillQuantityRuleForViagra(WebDriverFactory DriverFactory) throws Exception
	{
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();
		
	}

	

    @Then("^Verify Viagra product is added$")
    public void verify_Viagra_product_is_added() throws Throwable {
    	
    	 assertTrue("Verify Viagra product is added ",element("ProductNameInPrescription").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "ProductName")));
    	 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
    }
    
    @Then("^Verify 'PILL QUANTITY' product is added$")
    public void verify_pill_quantity_product_is_added() throws Throwable {
   	 assertTrue("Verify 'PILL QUANTITY' is added ",element("PILLQuantityInPrescription").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "PillQty")));
   	 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
    }

    @Then("^Verify 'MEMPHIS PACK COUNT' product is added$")
    public void verify_memphis_pack_count_product_is_added() throws Throwable {
      	 assertTrue("Verify 'PILL QUANTITY' is added ",element("MEMPHISPackCountInPrescription").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Memphis Pack Count")));
       	 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

    }

    @Then("^Verify 'Supervisor Override' Button is not displayed$")
    public void verify_supervisor_override_button_is_not_displayed() throws Throwable {
    	 
    	
		
		 Thread.sleep(7000);
		 String winHandleBefore = driver.getWindowHandle();
	        for(String winHandle : driver.getWindowHandles()){
	            driver.switchTo().window(winHandle);
	        }
	        
	        driver.manage().window().maximize() ;
	        CommonMethods.ScrolDownToTheObject(element("SaveOutcomeButton"));			
	        try {
	        	 element("SupervisorOverrideButton");
	        	 assertFalse(element("SupervisorOverrideButton").isDisplayed());
	        	 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			} catch (Exception e) {
				System.out.println("Supervisor Override Button is not exist");
				 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			}
	       
	        
	        driver.close();
	        
	        driver.switchTo().window(winHandleBefore);
    
    }
    
    
    @And("^Verify 'Final Outcome is Incomplete' Error Message in OVM Window$")
    public void verify_final_outcome_is_incomplete_error_message_in_ovm_window() throws Throwable {
    	 String winHandleBefore = driver.getWindowHandle();
		 try {

	        for(String winHandle : driver.getWindowHandles()){
	            driver.switchTo().window(winHandle);
	        }
	        driver.manage().window().maximize() ;
		       Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				WebDriverWait wait = new WebDriverWait(driver, 30);
				wait.until(ExpectedConditions.visibilityOfElementLocated(
				    (By.xpath("//h2[text()='Patient Validation Information']"))
				));
	        assertTrue("'Final Outcome is Incomplete'Error Message is displayed",element("FinalOutcomeText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Final Outcome Status")));
		 }catch(Exception e) {
			 for(String winHandle : driver.getWindowHandles()){
		            driver.switchTo().window(winHandle);
		        }
			 assertTrue("'Final Outcome is Incomplete'Error Message is displayed",element("FinalOutcomeText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Final Outcome Status")));
		 }
	        driver.close();
	        driver.switchTo().window(winHandleBefore);
    }
    
    @And("^Verify Error Message in OVM Window$")
    public void verify_error_message_in_ovm_window() throws Throwable {
    	 String winHandleBefore = driver.getWindowHandle();
		 try {

	        for(String winHandle : driver.getWindowHandles()){
	            driver.switchTo().window(winHandle);
	        }
	        driver.manage().window().maximize() ;
		       Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				WebDriverWait wait = new WebDriverWait(driver, 30);
				wait.until(ExpectedConditions.visibilityOfElementLocated(
				    (By.xpath("//h2[text()='Patient Validation Information']"))
				));
	        element("Application_DeniedPatientIsnotUSResident").isDisplayed();
	       
		 }catch(Exception e) {
			 for(String winHandle : driver.getWindowHandles()){
		            driver.switchTo().window(winHandle);
		        }
			 assertTrue("'Final Outcome is Incomplete'Error Message is displayed",element("FinalOutcomeText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Final Outcome Status")));
		 }
	        driver.close();
	        driver.switchTo().window(winHandleBefore);
    }
    
    @And("^Select New Data Product Name Form Strength SIG and Pill Qty$")
    public void select_new_data_product_name_form_strength_sig_and_pill_qty() throws Throwable {
    	
    	Select Drop1 = new Select(element("ProductNameDropDown"));
    	Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName2")); 
    	
    	
    	Select Drop2 = new Select(element("FormStrengthDropDown"));
    	Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2")); 
    	
    	Select Drop3 = new Select(element("SIGDropDown"));
    	Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG2")); 
    	
      
      element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty2"));
           
    }
    
    @And("^Verify Agent is not able to create an Order$")
    public void verify_agent_is_not_able_to_create_an_order() throws Throwable {
    	
    	Thread.sleep(8000);
   	 String winHandleBefore = driver.getWindowHandle();
		 
	        for(String winHandle : driver.getWindowHandles()){
	            driver.switchTo().window(winHandle);
	        }
	        
	        try {
	        	element("CreateOrderButton");
	        	 assertTrue(element("CreateOrderButton").isDisplayed());
	        	 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			} catch (Exception e) {
				System.out.println("Create Override Button is not exist");
				 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			}
	       
	        
	        driver.close();
	        driver.switchTo().window(winHandleBefore);

    }
    

    @And("^Verify error message In 'Products Information' block$")
       public void verify_error_message_in_products_information_block() throws Throwable {
       	Thread.sleep(7000);
       	 String winHandleBefore = driver.getWindowHandle();
   		 try {

   	        for(String winHandle : driver.getWindowHandles()){
   	            driver.switchTo().window(winHandle);
   	        }
   	        driver.manage().window().maximize() ;
   	     CommonMethods.ScrolDownToTheObject(element("SaveOutcomeButton"));	
   		       Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
   	
   	        assertTrue("'Final Outcome is Incomplete'Error Message is displayed",element("ProductErrorText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Products Information Description")));
   		 }catch(Exception e) {
   			 for(String winHandle : driver.getWindowHandles()){
   		            driver.switchTo().window(winHandle);
   		        }
   			 assertTrue("'Final Outcome is Incomplete'Error Message is displayed",element("ProductErrorText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Products Information Description")));
   		 }
   	        driver.close();
   	        driver.switchTo().window(winHandleBefore);
       }
    
    @And("^Verify error message In 'Application Prescription Information' block$")
    public void verify_error_message_in_application_prescription_information_block() throws Throwable {
   	 String winHandleBefore = driver.getWindowHandle();
		 try {

	        for(String winHandle : driver.getWindowHandles()){
	            driver.switchTo().window(winHandle);
	        }
	        driver.manage().window().maximize() ;
		       Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				WebDriverWait wait = new WebDriverWait(driver, 30);
				wait.until(ExpectedConditions.visibilityOfElementLocated(
				    (By.xpath("//h2[text()='Patient Validation Information']"))
				));
	        assertTrue("'Final Outcome is Incomplete'Error Message is displayed",element("Patient_AppPrescInfoErrMsg").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Application Prescription Information")));
		 }catch(Exception e) {
			 for(String winHandle : driver.getWindowHandles()){
		            driver.switchTo().window(winHandle);
		        }
			 assertTrue("'Final Outcome is Incomplete'Error Message is displayed",element("Patient_AppPrescInfoErrMsg").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Application Prescription Information")));
		 }
	        driver.close();
	        driver.switchTo().window(winHandleBefore);
    }

    
	
   
    @Then("^Click on 'Save Outcome' button$")
    public void click_on_save_outcome_button() throws Throwable {
    	 Thread.sleep(5000);
         driver.switchTo().defaultContent();
                String winHandleBefore = driver.getWindowHandle();
                System.out.println(driver.getWindowHandles().size());
                
                 
              for(String winHandle : driver.getWindowHandles()){
                  driver.switchTo().window(winHandle);
                  
                  System.out.println("Ashirbad Window Name: "+winHandle.toString());
                  //----------------------------
                  driver.manage().window().maximize() ;
                        
              }
/*			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions.visibilityOfElementLocated(
			    (By.xpath("//h2[text()='Patient Validation Information']"))
			));
	      */
		CommonMethods.PerformClickOnObject(element("SaveOutcomeButton")); 

		 
	     driver.switchTo().window(winHandleBefore);
	  
    	
    }
    	
    	
    	
    	
    

    @Then("^click on 'Latters' Tab$")
    public void click_on_latters_tab() throws Throwable {
    	element("LettersTabInPatientPage").click();
    }

    @And("^Click on 'Patient' Link$")
    public void click_on_patient_link() throws Throwable {
    	element("PatientLinkInPage").click();
    	
    }
    
}
