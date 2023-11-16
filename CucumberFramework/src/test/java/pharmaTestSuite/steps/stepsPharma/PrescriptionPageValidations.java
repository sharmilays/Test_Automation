package pharmaTestSuite.steps.stepsPharma;

import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.NoSuchFrameException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import objectRepository.GetObj;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

import objectRepository.ApplicationPageObject;
import objectRepository.ObjectManager;

public class PrescriptionPageValidations extends GetObj {
	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;
	public static String RX_ID;
	public static String PrescriptionID;
	public static String PApplicationID;
	
	static ObjectManager objRepo;
	static ApplicationPageObject Application_Page_Object;
	
	@SuppressWarnings("static-access")
	public PrescriptionPageValidations(WebDriverFactory DriverFactory) throws Exception {
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();
		objRepo = new ObjectManager(DriverFactory);
		Application_Page_Object = objRepo.getApplicationPageObject();
	}
	
	
	@And("^Select 'SIG'$")
	public void Select_SIG() throws Throwable {
		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG")); 
	  
	}
	
	@And("^Select the 'Fullfillment None Method' type$")
	public void select_the_fullfillment_method_type() throws Throwable {
		Select Drop1 = new Select(element("Application_FullfillmentNoneMethod"));
		Drop1.getFirstSelectedOption();
		
	}
	@And("^Verify 'Final Outcome is Incomplete' Error Messages in OVM Window$")
    public void verify_final_outcome_is_incomplete_error_messages_in_ovm_window() throws Throwable {
    	 Thread.sleep(7000);
    	 String winHandleBefore = driver.getWindowHandle();
		 try {

	        for(String winHandle : driver.getWindowHandles()){
	            driver.switchTo().window(winHandle);
	        }
	        driver.manage().window().maximize() ;
		       Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				WebDriverWait wait = new WebDriverWait(driver, 30);
				wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation Information']"))));
				CommonMethods.ScrolDownToTheObject(element("FinalOutcomeText"));
				element("Application_RXSigMissing").isDisplayed();
				element("Application_RXDateMissing").isDisplayed();
				element("Application_ShipToPractiMissing").isDisplayed();
				element("Application_QuantityiMissing").isDisplayed();
				element("Application_FullMethodMissing").isDisplayed();
				element("Application_NoDocumentAttached").isDisplayed();
				 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
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
	
	@When("^Navigate to 'Same Application'$")
	public void Navigate_to_Same_Application() throws Throwable{
		PApplicationID=element("Application_PrescriptionPageApplicationID").getText();
		//System.out.println(PApplicationID);
	}
	
	 @Then("^Select PApplicationID from DropDown$")
	 public void Select_ApplicationID_from_DropDown() throws Throwable {
		 element("FieldDropdown").click();
		 Thread.sleep(3000);
	CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"), getDataFromExcel(ModuleName,TestCaseID, "ApplicationDropdownValue1"));
     
 	//element("PatientValueTextBox1").clear();
 	element("PatientValueTextBox1").sendKeys(PApplicationID);
 
	 }
	
	@Then("^Accept Alert Popup$")
	public void Accept_Alert_Popup() throws Throwable{
		CommonMethods.acceptAlert();
		
	}
	@And("^User should get notification message$")
	public void User_should_get_notification_message() throws Throwable
	{
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		 
		element("Application_ExistingPrescriptionErrorMsg").isDisplayed();
	}
	
	
	@When("^Navigate to 'Same Application Page'$")
	public void Navigate_to_Same_Application_Page() throws Throwable{
		
//		Thread.sleep(5000);
//		 int size = driver.findElements(By.tagName("iframe")).size();
//	     System.out.println(size);
//	     
//	     driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
//	     
//			for (int i =0;i<=size;++i ) {
//				
//				try {
//					driver.switchTo().defaultContent();
//					driver.switchTo().frame(i);
//					PApplicationID=element("Application_PrescriptionPageApplicationID").getText();
//					 
//					  break;
//				} catch (NoSuchElementException | NoSuchFrameException e) {
//					
//		 		}
//			
//			}
//			PApplicationID=element("Application_PrescriptionPageApplicationID").getText();
//			driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);  
		
			
			driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		    WebDriverWait wait = new WebDriverWait(driver, 30);
		  	wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//label[contains(text(),'Application ID')]/../following-sibling::td/a/span"))));
		  	PApplicationID=element("Application_PrescriptionPageApplicationID").getText();
		  	Reporter.addStepLog("Application Id is:"+ PApplicationID);
		
	
	}
	
	 @And("^Set 'Field' to 'Different NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button$")
	    public void Set_Field_to_Different_NPI_Operator_to_contains_and_enter_any_value_Click_on_Search_Button() throws Throwable {
	    	
	 String winHandleBefore = driver.getWindowHandle();
			 
		     for(String winHandle : driver.getWindowHandles()){
		         driver.switchTo().window(winHandle);
		     }
		     driver.manage().window().maximize() ;
		  
		     
				Select Drop = new Select(element("SelectInWindow"));
				Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor"));
		     
				element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue2"));
				element("SearchButton").click();
				Thread.sleep(2000);
				element("FirstPractitionersRow").click();
				Thread.sleep(2000);
				element("FirstAddFacilityRow").click();
				Thread.sleep(2000);
				element("FirstAddContactRow").click();
				Thread.sleep(2000);
				element("UpdateApplicationPrescriptionButton").click();

		     driver.switchTo().window(winHandleBefore);
		    
		     driver.switchTo().frame(element("ApplicationPageIframe"));
	    }
	
	
	@Then("^Select Refills$")
	public void Select_Refills() throws Throwable{
	 element("Application_RefillsButton").click();
 	CommonMethods.selectFromDropDownByVisibleText(element("Application_RefillsButton"),getDataFromExcel(ModuleName, TestCaseID, "Refills"));
			 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	
	}
	
	
	
	
	
	
	@Then("^Select Refills and Select AppRX Checkbox>Set RX Date>Click on 'Save' Button$")
	public void Select_Refills_and_Select_AppRX_Checkbox_Set_RX_Date_Click_on_Save_Button() throws Throwable{
		
		System.out.println("Inside Method");
		try
		{

			System.out.println("Alert Message: ");
			

		    WebDriverWait wait = new WebDriverWait(driver, 30);
		  	wait.until(ExpectedConditions.visibilityOfElementLocated(
		  	    (By.xpath("//input[contains(@id,'apprxsign')]"))));
		  	 if(element("AppRXSignedChkBox")!=null)
		  	 {
		  		 System.out.println("object is formed");
		  	 }
		  	CommonMethods.PerformClickOnObject(element("AppRXSignedChkBox"));
		  	
		  	Thread.sleep(2000);
		  	CommonMethods.PerformClickOnObject(element("AppRXSignedChkBox"));

		  	element("Application_RefillsButton").click();
		 	CommonMethods.selectFromDropDownByVisibleText(element("Application_RefillsButton"),getDataFromExcel(ModuleName, TestCaseID, "Refills"));
			CommonMethods.PerformClickOnObject(element("RXDateLink"));
			//Thread.sleep(3000);
			CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));
		     
		}
		catch(Exception e) {
			
			CommonMethods.PerformClickOnObject(element("AppRXSignedChkBox"));
			CommonMethods.PerformClickOnObject(element("RXDateLink"));
			
			
			
			CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));
			
		}
		

		try {
			Thread.sleep(3000);
			System.out.println("save ");
			element("ApplicationSaveButton").click();
			Thread.sleep(8000);

		} catch (Exception e) {

		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	 
	
	}
	@And("^Verify the Active Prescription is already present Popup$")
	public void Verify_the_Active_Prescription_is_already_present_Popup() throws Throwable{
	Thread.sleep(5000);
	   assertTrue("Ensure Valid Practitioner pop up is displayed",element("Application_PrescriptionIsAlreadyPresentTxt").isDisplayed());
	    Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    element("Application_PrescriptionIsAlreadyPresentYesbtn").isDisplayed();
	    element("Application_PrescriptionIsAlreadyPresentNobtn").isDisplayed();
	    element("Application_PrescriptionIsAlreadyPresentYesbtn").click();
	    Thread.sleep(4000);
	
	}
	
	@And("^Verify the Active Prescription is already present Popup>>'No'$")
	public void Verify_the_Active_Prescription_is_already_present_Popup_No() throws Throwable{
		element("Application_PrescriptionIsAlreadyPresentNobtn").click();
	    Thread.sleep(4000);
	}
	
	@Then("^Verify that OVM message 'Missing HCP DEA only for Lyrica' should display$")
	public void Verify_that_OVM_message_Missing_HCP_DEA_only_for_Lyrica_should_display() throws Throwable{
		Thread.sleep(7000);
   	 String winHandleBefore = driver.getWindowHandle();
		 try {

	        for(String winHandle : driver.getWindowHandles()){
	            driver.switchTo().window(winHandle);
	        }
	        driver.manage().window().maximize() ;
		       Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				WebDriverWait wait = new WebDriverWait(driver, 30);
				wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation Information']"))));
	        assertTrue("Verify that OVM message Missing HCP DEA only for Lyrica should display",element("Application_DEAStateLicenseMissing").isDisplayed());
		 }catch(Exception e) {
			 for(String winHandle : driver.getWindowHandles()){
		            driver.switchTo().window(winHandle);
		        }
			 assertTrue("Verify that OVM message Missing HCP DEA only for Lyrica should display",element("Application_DEAStateLicenseMissing").isDisplayed());
		 }
	        driver.switchTo().window(winHandleBefore);
	}
	
	@And("^Memphis Pack Count value should be displayed automatically on the prescription page$")
	 public void Memphis_Pack_Count_value_should_be_displayed_automatically_on_the_prescription_page() throws Throwable {
		 String MemphisPackcountvalue= element("Application_MemphisPackCount").getAttribute("value");
		 System.out.println(MemphisPackcountvalue);
	assertTrue("Fullfillment Method should be defaulted Memphis Distribution Center",MemphisPackcountvalue.equals(getDataFromExcel(ModuleName, TestCaseID, "MemphisPackcountvalue")));	
		 
	 }
	
	@And("^Verify the Dropdown values under 'FormStrength'$")
	public void Verify_the_Dropdown_values_under_FormStrength() throws Throwable {
		List<WebElement> dpdownvalues=new ArrayList<WebElement>();
		dpdownvalues= driver.findElements(By.xpath("//select[contains(@id,'ddlForm')]//option"));
        int count = dpdownvalues.size();
        
      
      //System.out.println("excel value="+getDataFromExcel(ModuleName, TestCaseID, "FormStrengthDrpdwn"));
        element("FormStrengthDropDown").click();
        Thread.sleep(6000);
      
        String excelVal= getDataFromExcel(ModuleName, TestCaseID, "FormStrengthDrpdwn");
             for (int i=1; i<count;i++)
             {
            	 //System.out.println(dpdownvalues.get(i).getText());
    	  String values=dpdownvalues.get(i).getText();
    	//System.out.println(values);
    	  assertTrue(excelVal.contains(values));	  
      }
		
	}
	
	 @Then("^Verify 'Diflucan' should be mapped to 'LOE group'$")
	 public void Verify_Diflucan_should_be_mapped_to_LOE_group() throws Throwable {
		 assertTrue( element("EnhancemetPharmaReview_Group").getAttribute("value").equals(getDataFromExcel(ModuleName, TestCaseID, "GroupA")));
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		 
	 }
	 
	 @And("^Select 'Form StrengthTwo'$")
	    public void Select_Form_StrengthTwo() throws Throwable {
	    	Select Drop2 = new Select(element("FormStrengthDropDown"));
	    	Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2")); 
	    	 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	
	    }
	 @And("^Select 'Form StrengthThree'$")
	    public void Select_Form_StrengthThree() throws Throwable {
	    	Select Drop2 = new Select(element("FormStrengthDropDown"));
	    	Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength3")); 
	    	 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	// CommonMethods.PerformClickOnObject(objRepo.getApplicationPageObject().ApplicationApprovalStatusMsg);
	    	
	    }
//Phase4-New Steps
	 @Then("^Verify User is not able to view 'Missing Prescription Information' checkbox$")
	 public void verify_User_is_not_able_to_view_Missing_Prescription_Information_checkbox() throws Throwable {		
		Assert.assertFalse(driver.getPageSource().contains("Missing Prescription Information"), "Missing Prescription Information- checkbox should not displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));	
	 }
	 @Then("^Verify User is able to see 'Prescriber Details are Missing' Checkbox in the Prescription page$")
	 public void verify_User_is_able_to_see_Prescriber_Details_are_Missing_Checkbox_in_the_Prescription_page() throws Throwable {		 
		 Assert.assertTrue(objRepo.getApplicationPageObject().PrescriberDetailsMissingCheckbox.isDisplayed(), "Prescriber Details are Missing Checkbox is displayed");		
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	 }

	 @Then("^Verify User is able to check the 'Prescriber Details are Missing' Checkbox under Practitioner Information Section$")
	 public void verify_User_is_able_to_check_the_Prescriber_Details_are_Missing_Checkbox_under_Practitioner_Information_Section() throws Throwable {
		 CommonMethods.PerformClickOnObject(objRepo.getApplicationPageObject().PrescriberDetailsMissingCheckbox);
		 Thread.sleep(1000);
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	 }
	
	 @Then("^Verify that Presciber deatails missing checkbox is displayed$")
	    public void verify_that_presciber_deatails_missing_checkbox_is_displayed() throws Throwable {
	       Thread.sleep(4000);
	       Assert.assertTrue((objRepo.getApplicationPageObject().PrescriberDetailAreMissingCheckbox).isDisplayed());
	       Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    }

//	 @Then("^Verify that user is not able to see Practioner Information sections$")
//	    public void verify_that_user_is_not_able_to_see_practioner_information_sections() throws Throwable {
//		 Thread.sleep(2000);
//		 try {
//			 objRepo.getApplicationPageObject().PrescriberConsentSigInformation.isDisplayed();//FA
//			 objRepo.getApplicationPageObject().PractitionerInformation.isDisplayed();
//			 objRepo.getApplicationPageObject().PractitionerAddressInformation.isDisplayed();
//			 objRepo.getApplicationPageObject().PractitionerLicenseInformation.isDisplayed();
//			 objRepo.getApplicationPageObject().ContactInformation.isDisplayed();
//				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
//			//	Assert.fail();
//			} catch (Exception e) {
//				System.out.println("All above fields are not displayed");
//				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
//			}
//		
//		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
//	    }
//	 
//	 
//	 @Then("^Verify that user is able to see Product information Section$")
//	    public void verify_that_user_is_able_to_see_product_information_section() throws Throwable {
//		 Thread.sleep(2000);
//		 assertTrue("Allergies section is displayed", objRepo.getApplicationPageObject().Allergies.isDisplayed());
//		 assertTrue("Product information section is displayed", objRepo.getApplicationPageObject().ProductInformation.isDisplayed());
//		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
//	    }
	 
	 @Then("^Verify User is able to see all fields like practioner information and address etc$")
	    public void verify_user_is_able_to_see_all_fields_like_practioner_information_and_address_etc() throws Throwable {
		 Thread.sleep(2000);
		 assertTrue("Practitioner Information is displayed", objRepo.getApplicationPageObject().PractitionerInformation.isDisplayed());
		 assertTrue("Prescriber Consent signature info is displayed", objRepo.getApplicationPageObject().PrescriberConsentSigInformation.isDisplayed());
		 assertTrue("Practitioner Address Information is displayed", objRepo.getApplicationPageObject().PractitionerAddressInformation.isDisplayed());
		 assertTrue("Practitioner License Information is displayed", objRepo.getApplicationPageObject().PractitionerLicenseInformation.isDisplayed());
		 assertTrue("Contact Information is displayed", objRepo.getApplicationPageObject().ContactInformation.isDisplayed());
		 assertTrue("Allergies section is displayed", objRepo.getApplicationPageObject().Allergies.isDisplayed());
		 assertTrue("Product information section is displayed", objRepo.getApplicationPageObject().ProductInformation.isDisplayed());
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	 }
	 
	 @Then("^Verify that sections related to Practitioner will not be available for User to enter data$")
	 public void verify_that_sections_related_to_Practitioner_will_not_be_available_for_User_to_enter_data() throws Throwable {
		try {
		 Assert.assertFalse(objRepo.getApplicationPageObject().PractitionerInformation.isDisplayed(), "Practitioner Information Section should not displayed");
		 Assert.assertFalse(objRepo.getApplicationPageObject().PrescriberConsentSigInformation.isDisplayed(), "Prescriber Consent Signature Information Section should not displayed");
		 Assert.assertFalse(objRepo.getApplicationPageObject().PractitionerAddressInformation.isDisplayed(), "Practitioner Address Information Section should not displayed");
		 Assert.assertFalse(objRepo.getApplicationPageObject().PractitionerLicenseInformation.isDisplayed(), "Practitioner License Information Section should not displayed");
		 Assert.assertFalse(objRepo.getApplicationPageObject().ContactInformation.isDisplayed(), "Practitioner Contact Information Section should not displayed");
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {
			
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
		 
	 }

	 @Then("^Verify only sections that will be available for the User will be 'Allergies' and 'Product Information'$")
	 public void verify_only_sections_that_will_be_available_for_the_User_will_be_Allergies_and_Product_Information() throws Throwable {
		 Thread.sleep(2000);
		 assertTrue("Allergies section is displayed", objRepo.getApplicationPageObject().Allergies.isDisplayed());
		 assertTrue("Product information section is displayed", objRepo.getApplicationPageObject().ProductInformation.isDisplayed());
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	 }
	 @Then("^Verify User is able to Save the Application Prescription without entering any Practitioner related details$")
	 public void verify_User_is_able_to_Save_the_Application_Prescription_without_entering_any_Practitioner_related_details() throws Throwable {
		 driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		 Thread.sleep(3000);
		 CommonMethods.ScrolDownToTheObject(objRepo.getApplicationPageObject().RXIDValue);
		
		 assertTrue("User is able to Save the Application Prescription without entering any Practitioner related details", objRepo.getApplicationPageObject().RXIDValue.isDisplayed());
		 System.out.println("User is able to Save the Application Prescription without entering any Practitioner related details");
		 Thread.sleep(3000);
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	 }

	 @And("^Uncheck the 'Prescriber Details are Missing' Checkbox$")
	    public void uncheck_the_prescriber_details_are_missing_checkbox() throws Throwable {
		 Thread.sleep(3000);
		 try {
			 driver.switchTo().frame(element("ApplicationPageIframe"));}
			catch(Exception e) {}
			Thread.sleep(5000);
		 CommonMethods.PerformClickOnObject(objRepo.getApplicationPageObject().PrescriberDetailAreMissingCheckbox);
	 
	 }
	  @And("^Check the 'Prescriber Details are Missing' Checkbox$")
	 	    public void check_the_prescriber_details_are_missing_checkbox() throws Throwable {
	 		Thread.sleep(3000);
	 		 CommonMethods.PerformClickOnObject(objRepo.getApplicationPageObject().PrescriberDetailAreMissingCheckbox);	 	 
	 	 }

	  @Then("^Verify OVM is triggering incomplete message 'Prescriber Details are Missing'$")
	 	    public void verify_ovm_is_triggering_incomplete_message_prescriber_details_are_missing() throws Throwable {
	 		 Thread.sleep(8000);
	 		 String winHandleBefore = driver.getWindowHandle();	 		 
	 	     for(String winHandle : driver.getWindowHandles()){
	 	         driver.switchTo().window(winHandle);
	 	     }
	 	     driver.manage().window().maximize() ;
	 	     Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	 	     Thread.sleep(3000);
	 	     assertTrue("Prescriber is missing", objRepo.getApplicationPageObject().Prescribermissing.isDisplayed());
	 	 }



	  @Then("^Verify 'Prescriber Details are Missing' Checkbox as Read only and not able to Check the Checkbox$")
	 public void verify_prescriber_details_are_missing_checkbox_as_read_only_and_not_able_to_check_the_checkbox() throws Throwable {
	 		 Thread.sleep(3000);
	 		 assertTrue(objRepo.getApplicationPageObject().PrescriberDetailAreMissingCheckbox.isDisplayed());	 		 
	 		 try {
	 			 CommonMethods.PerformClickOnObject(objRepo.getApplicationPageObject().PrescriberDetailAreMissingCheckbox); 			 		 }
	 		 catch(Exception e)
	 		 {
	 		 System.out.println("user is not able to check ckeckbox");
	 		 }
	 	 }
	  @Then("^Verify a Pop up showing Message'Practitioner and Prescription product mandatory'is showing up$")
	    public void verify_a_pop_up_showing_messagepractitioner_and_prescription_product_mandatoryis_showing_up() throws Throwable {
	        Alert alert = driver.switchTo().alert();
	        Reporter.addStepLog("From App:" + alert.getText());
	        Assert.assertTrue(alert.getText().contains(getDataFromExcel(ModuleName, TestCaseID, "Alert Message")));
	        alert.accept();
			
			}
	
	  @Then("^delete the selected product$")
	    public void delete_the_selected_product() throws Throwable {
	        Thread.sleep(3000);
	        try {
	         driver.switchTo().frame(element("ApplicationPageIframe"));}
	        catch(Exception e) {}
	        CommonMethods.PerformClickOnObject(objRepo.getApplicationPageObject().Delproductcheckbox);
	   
	    }
	  @Then("^Verify that in OVM its showing Missing Presciber signature and date and outcome is Incomplete$")
	    public void verify_that_in_ovm_its_showing_missing_presciber_signature_and_date_and_outcome_is_incomplete() throws Throwable {
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
		     CommonMethods.ScrolDownToTheObject(element("AppEnrolOutcomeIncomplte"));
		     Assert.assertTrue((objRepo.getApplicationPageObject().MissingPrescriberConsentSignatureDateErrorMsg).isDisplayed());
		     Assert.assertTrue((objRepo.getApplicationPageObject().MissingPrescriberConsentSignatureErrorMsg).isDisplayed());
	     Assert.assertTrue(element("AppEnrolOutcomeIncomplte").isDisplayed());
	     
	     Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		    }
	    
	 @Then("^Click on the prescription number link$")
	    public void click_on_the_prescription_number_link() throws Throwable {
		 Thread.sleep(5000);
		 try {
				CommonMethods.PerformClickOnObject(element("prescriptionIDLink"));
		} catch (Exception e) {
			
		}
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    }
	 
	 
	 @And("^Set 'Field' to 'NPI' > Operator to 'contains' > different NPI > Click on 'Search' Button$")
	    public void set_field_to_npi_operator_to_contains_different_npi_click_on_search_button() throws Throwable {
		 Thread.sleep(3000);
		 String winHandleBefore = driver.getWindowHandle();

			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();

			Select Drop = new Select(element("SelectInWindow"));
			Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor"));

			Select Drop2 = new Select(element("NPIOperatorDropDown"));
			Drop2.selectByVisibleText("equals");

			element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPI"));
			element("SearchButton").click();
			Thread.sleep(2000);
			element("FirstPractitionersRow").click();
			Thread.sleep(2000);
			element("FirstAddFacilityRow").click();
			Thread.sleep(2000);
			element("FirstAddContactRow").click();
			Thread.sleep(8000);
			element("UpdateApplicationPrescriptionButton").click();
			 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    }
	 @Then("^Verify that No MCR Attached to the prescription product msg is not Displayed$")
	    public void verify_that_no_mcr_attached_to_the_prescription_product_msg_is_not_displayed() throws Throwable {
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
	           
	           
	           try {
	  			 objRepo.getApplicationPageObject().NoMCRRequest.isDisplayed();
	  				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	  			//	Assert.fail();
	  			} catch (Exception e) {
	  				System.out.println("No MCR to prescription is not displayed");
	  				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	  			}
	  		
	  		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    }

	 @Then("^Verify that MCR Functionality is working and No MCR attached msg is displayed$")
	    public void verify_that_mcr_functionality_is_working_and_no_mcr_attached_msg_is_displayed() throws Throwable {
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
	           
	           
	           try {
	  			 objRepo.getApplicationPageObject().NoMCRRequest.isDisplayed();
	  				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	  			//	Assert.fail();
	  			} catch (Exception e) {
	  				System.out.println("No MCR to prescription is not displayed");
	  				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	  			}
	  		
	  		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    }





	 	
}
