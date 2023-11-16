package pharmaTestSuite.steps.stepsPharma;

import static org.junit.Assert.assertTrue;
import static org.testng.Assert.assertFalse;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import objectRepository.GetObj;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

public class AppealsPage extends GetObj  {
	
	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;

	
	@SuppressWarnings("static-access")
	public AppealsPage(WebDriverFactory DriverFactory) throws Exception
	{
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();
		
	}
	
	

@And("^Click on PAP Appeal Tab$")
    public void click_on_pap_appeal_tab() throws Throwable {
	Thread.sleep(5000);
	 driver.navigate().refresh();
	WebDriverWait wait = new WebDriverWait(driver, 120);
	wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//*[contains(text(),'PAP Appeal')]"))));
//	wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("(//*[@name='renderer'])[3]/lightning-button/button"))));
//		wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//div[@title='PAP Appeal']"))));
//    	
		CommonMethods.PerformClickOnObject(element("PAPAppealTab"));
    	//element("PAPAppealTab").click();
	
    	//CommonMethods.PerformClickOnObject(element("PAPAppealTab2"));
    	Thread.sleep(5000);
    	
    	//vivek
        //Thread.sleep(6000);

        //CommonMethods.PerformClickOnObject(element("Application_PAPAppealButton"));
    }

    
@And("^Application Number Click on PAP Appeal Tab$")
public void Application_Number_click_on_pap_appeal_tab() throws Throwable {
	Thread.sleep(5000);
	 driver.navigate().refresh();
	WebDriverWait wait = new WebDriverWait(driver, 120);
	wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//*[contains(text(),'PAP Appeal')]"))));
	CommonMethods.PerformClickOnObject(element("PAPAppealTab"));
	Thread.sleep(5000);
	
}
@Then("^Verify Appeal information page is opened with the Reason for Denial should display$")
public void verify_appeal_information_page_is_opened_with_the_reason_for_denial_should_display() throws Throwable {
	//driver.switchTo().frame(element("PatientPageIframe"));changes made by vivek
	Thread.sleep(5000);
	driver.navigate().refresh();
	Thread.sleep(8000);

	try {
		driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		Select Drop1 = new Select(element("AppealTypeDropDown"));
		Drop1.selectByVisibleText("Product Appeal");

	} catch (Exception e) {

		Thread.sleep(3000);
		Select Drop1 = new Select(element("AppealTypeDropDown"));
		Drop1.selectByVisibleText("Product Appeal");

	}

	assertTrue("Verify Appeal information page is opened",element("AppealInformationHeader").isDisplayed());
}

    @And("^Click on Product checkbox$")
    public void Click_on_Product_checkbox() throws Throwable{
    	element("ApplicationProductsCheckbox").click();
    	
    }
    @Then("^Select Reason for PAP Appeal > Select Appeal Status as Approved > Enter Total OOPE > Click on save button$")
    public void select_reason_for_pap_appeal_select_appeal_status_as_approved_enter_total_oope_click_on_save_button() throws Throwable {
   
//    	element("SelectOutPatientInDropdown").click();
    	driver.findElement(By.xpath("//optgroup/option[text()='LOE Appeal']"));
    	element("ReasonForPAPAppealAddButton").click();
    	driver.findElement(By.xpath("//label[text()='Date Appeal Completed :']/following-sibling::div//a"));
    	CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
        element("AppealsSaveButton").click();
        
        
    }
    
    @Then("^Select Reason for PAP Appeal as 'US Residency' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button$")
    public void select_reason_for_pap_appeal_as_us_residency_select_appeal_status_as_approved_enter_total_oope_click_on_save_button() throws Throwable {
    	element("SelectUSResidencyInDropdown").click();
    	element("ReasonForPAPAppealAddButton").click();
    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
    	CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
        CommonMethods.PerformClickOnObject(element("AppealsSaveButton"));
    }
    

    @Then("^Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button$")
    public void select_reason_for_pap_appeal_as_loe_appeal_select_appeal_status_as_approved_enter_total_oope_click_on_save_button() throws Throwable {
    	
    	try {
    	driver.switchTo().frame(element("PatientPageIframe"));
    	}catch(Exception e) {
    		
    	}
    	element("SelectLOEAppealInDropdown").click();
    	element("ReasonForPAPAppealAddButton").click();
    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
    	CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
        element("AppealsSaveButton").click();
    }
    
    @Then("^Select Reason for PAP Appeal as 'Income' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button$")
    public void select_reason_for_pap_appeal_as_income_select_appeal_status_as_approved_enter_total_oope_click_on_save_button() throws Throwable {
    	element("SelectIncomeInDropdown").click();
    	element("ReasonForPAPAppealAddButton").click();
    	CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
        element("AppealsSaveButton").click();
    }

    

    @Then("^Verify Appeal got saved$")
    public void verify_appeal_got_saved() throws Throwable {
    	
    	driver.switchTo().defaultContent();
    	CommonMethods.ScrolDownToTheObject(element("SystemInformationChevron"));
    	Thread.sleep(5000);
    	assertTrue(element("AppealStatusText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Appeal Status")));
    }

    @Then("^Go to Application Prescription Page$")
    public void go_to_application_prescription_page() throws Throwable {
    	Thread.sleep(2000);
		try {
			Thread.sleep(1000);
            driver.switchTo().defaultContent();
        } catch (Exception e) {
        }
    	CommonMethods.PerformClickOnObject(element("ApplicationPrescriptionsLink"));
    	element("FirstLinkInApplicationPrescriptions").click();
    	
    }


    @Then("^Verify 'Create Order' Button is not present in OVM$")
    public void verify_create_order_button_is_not_present_in_ovm() throws Throwable {
		 String winHandleBefore = driver.getWindowHandle();
		 try {
		 Thread.sleep(3000);
          
	        for(String winHandle : driver.getWindowHandles()){
	            driver.switchTo().window(winHandle);
	        }	   
	      assertFalse( element("CreateOrderButton").isDisplayed());
		
		 }catch(Exception e) {
			 for(String winHandle : driver.getWindowHandles()){
		            driver.switchTo().window(winHandle);
		        }	   
			 assertFalse( element("CreateOrderButton").isDisplayed());
		 }
		 element("NewWindowOrderOKButton").click();
		 driver.close();
	     driver.switchTo().window(winHandleBefore);
	     
	    }
    
    @Then("^Verify Error message > Click on cancel button$")
    public void verify_error_message_click_on_cancel_button() throws Throwable {
    	Thread.sleep(5000);
//    	driver.switchTo().frame(element("ApplicationPageIframe"));
    	
    	assertTrue(element("AppealErrorMsg").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Appeals Error Message")));
//    	assertTrue(element("ErroMessageInAppealTab").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Appeals Error Message")));
    	element("CancelButtonInAppealTab").click();
    	    	
    }
    @Then("^Click on Refersh Button$")
    public void Click_on_Refersh_Button() throws Throwable {
    	Thread.sleep(10000);
    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
       CommonMethods.PerformClickOnObject( element("Appleals_RefereshButton"));
       Thread.sleep(10000);
    }
    	
    @Then("^Select Reason for PAP Appeal as 'Out Patient' and 'LOE Appeal'$")
    public void select_reason_for_pap_appeal_as_out_patient_and_loe_appeal() throws Throwable {
       driver.switchTo().frame(element("PatientPageIframe"));
       element("Appeals_SelectOutPatientInDropdown").click();
       element("ReasonForPAPAppealAddButton").click();
    }


           @Then("^Select 'Reenrollment' and 'PAP Appeal Document' Type of Document$")
           public void select_reenrollment_and_pap_appeal_document_type_of_document() throws Throwable {
              element("Re-enrollmentCheckBox").click();
              driver.findElement(By.xpath("//input[@value='PAP Appeal Document']")).click();

           }

           @When("^Enter Different Username and Password$")
           public void enter_different_username_and_password() throws Throwable {
                     element("pfizerUserIDTextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "UserName1"));
                    element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Password1"));
                    
                     Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));                      

           }
           
           @Then("^Select Appeal Status as Approved > Enter Total OOPE > Click on save button$")
           public void select_appeal_status_as_approved_enter_total_oope_click_on_save_button() throws Throwable {
            //      element("SelectLOEAppealInDropdown").click();
              driver.findElement(By.xpath("(//option[text()='LOE Appeal'])[2]")).click();
              element("ReasonForPAPAppealAddButton").click();
              CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
               element("AppealsSaveButton").click();
           }
           
           @Then("^Enter 'Application Signature Date' in Date Box$")
           public void enter_application_signature_date_in_date_box() throws Throwable {
                     DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
                     Date date = new Date();
                     System.out.println(dateFormat.format(date)); 
               
               element("CasePage_ApplicationSignatureDateTxtBx").sendKeys(dateFormat.format(date));
           }

           @Then("^Verify that 'Missing Prescription Information' check box is cheacked below 'E verification income Opt In or opt out' field$")
           public void verify_that_missing_prescription_information_check_box_is_cheacked_below_e_verification_income_opt_in_or_opt_out_field() throws Throwable {
              assertFalse(element("Appeals_MissingPrescriptionInfoChkBoxBelowOpt-InorOpt-Out").isSelected());
           }

           @Then("^Navigate to patient details page$")
           public void navigate_to_patient_details_page() throws Throwable {
              element("Appeals_ApplicantNameLink").click();
              driver.navigate().refresh();
           }


                         @And("^Verify document letter is not generated$")
                         public void verify_document_letter_is_not_generated() throws Throwable {
                            Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
                         }
                     


           @And("^UnCheck the 'Missing Prescription Information'$")
           public void uncheck_the_missing_prescription_information() throws Throwable {
              if(element("Appeals_MissingPrescriptionInformationChkBox").isSelected()) {
                      element("Appeals_MissingPrescriptionInformationChkBox").click();
                     
              }
           }

                     
                         @Then("^Click on Letters Tab$")
                         public void click_on_letters_tab() throws Throwable {
                            element("Application_LettersTab").click();
                         }


                  @Then("^Verify prescriber’s detail missing logs is not be generated$")
                  public void verify_prescribers_detail_missing_logs_is_not_be_generated() throws Throwable {
                     Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
                  }


           @And("^Verify that Chevron plate indicator color should be 'Yellow'$")
           public void verify_that_chevron_plate_indicator_color_should_be_yellow() throws Throwable {
              driver.switchTo().frame(0);
              assertTrue(element("Appeals_ApplicationStatusChevron").isDisplayed());
           }


           @Then("^Click on Edit Page button$")
           public void click_on_edit_page_button() throws Throwable {
              driver.navigate().refresh();
              new WebDriverWait(driver,20).until(ExpectedConditions.elementToBeClickable(By.xpath(returnLocatorValue("Application_EditButton"))));
              CommonMethods.PerformClickOnObject(element("Application_EditButton"));
              Thread.sleep(3000);
           }    




       @Then("^Verify 'Missing Prescription Information' Check Box$")
           public void verify_missing_prescription_information_check_box() throws Throwable {
              
           element("Appeals_MissingPrescriptionInformationChkBox").isDisplayed();
           }


           
           
           @Then("^Verify 'Document Received Date' Check Box is Displayed$")
           public void verify_document_received_date_check_box_is_displayed() throws Throwable {
              element("Appeals_DocumentReceivedDateBox").isDisplayed();

           }



           @And("^Check the 'Missing Prescription Information' Check Box then Verify its checked$")
           public void check_the_missing_prescription_information_check_box_then_verify_its_checked() throws Throwable {
               element("Appeals_MissingPrescriptionInformationChkBox").click();
               element("Appeals_MissingPrescriptionInformationChkBox").isSelected();
           }

           @Then("^Verify 'Document Received Date' field is Blank below 'Service Offering Name' field$")
           public void verify_document_received_date_field_is_blank_below_service_offering_name_field() throws Throwable {
              try {
                     element("Appeals_DocumentReceivedDateBoxBelowServiceOffering");
              assertTrue(element("Appeals_DocumentReceivedDateBoxBelowServiceOffering").getText().length()==0);
                     } catch (Exception e) {
                  System.out.println("Date is not present");
                     }
           }



           @Then("^Verify that 'Missing Prescription Information' check box is displayed below 'E verification income Opt In or opt out' field$")
           public void verify_that_missing_prescription_information_check_box_is_displayed_below_e_verification_income_opt_in_or_opt_out_field() throws Throwable {
              element("Appeals_MissingPrescriptionInfoChkBoxBelowOpt-InorOpt-Out").isDisplayed();
           }



           @Then("^Verify 'Document Received Date' field is present below 'Service Offering Name' field$")
           public void verify_document_received_date_field_is_present_below_service_offering_name_field() throws Throwable {
              element("Appeals_DocumentReceivedDateBoxBelowServiceOffering").isDisplayed();
           }




           @Then("^Verify that 'Missing Prescription Information' check box is Uncheacked below 'E verification income Opt In or opt out' field$")
           public void verify_that_missing_prescription_information_check_box_is_uncheacked_below_e_verification_income_opt_in_or_opt_out_field() throws Throwable {
             assertFalse(element("Appeals_MissingPrescriptionInfoChkBoxBelowOpt-InorOpt-Out").isSelected());
           }

           @Then("^Verify User is able to Enter the date in 'Document Received Date' Feild$")
           public void verify_user_is_able_to_enter_the_date_in_document_received_date_feild() throws Throwable {
              String DRDate= getDataFromExcel(ModuleName, TestCaseID, "ValidDate");
              element("Appeals_DocumentReceivedDateBox").sendKeys(DRDate);
              
              assertTrue(DRDate.length()>0);
           }

           @Then("^Select the Appeal type then enter the mandatory fields$")
           public void select_the_appeal_type_then_enter_the_mandatory_fields() throws Throwable {
           	driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='iframe-parent slds-template_iframe slds-card']//iframe")));
           	CommonMethods.selectFromDropDownByVisibleText(element("Appealstypedropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appealstypedropdown"));
           	Thread.sleep(3000);
           	element("Applicationproductcheckbox").click();
           	Thread.sleep(3000);
           	element("SelectLOEAppealInDropdown").click();
           	Thread.sleep(3000);
           	element("Arrowlink").click();
           	CommonMethods.selectFromDropDownByVisibleText(element("Appealsstatusdropdownvalues"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
               element("AppealsSaveButton").click();
           }

          //Manoj code
           @Then("^Click on ApplicationNumber$")
   	    public void click_on_applicationnumber() throws Throwable {
   			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
   			CommonMethods.PerformClickOnObject(element("ApplicationIDlinknew"));
   			Thread.sleep(2000);
   		}


    @Then("^Select type of Appeal$")
       public void select_type_of_appeal() throws Throwable {
       /*updated by manoj	driver.switchTo().frame(element("AppealFrame"));
       	 element("TypeOfAppealDropDown").click();
    		
   	CommonMethods.selectFromDropDownByVisibleText(element("TypeOfAppealDropDown"),getDataFromExcel(ModuleName, TestCaseID, "Enrollment Appeal"));
   	    	Thread.sleep(2000);*/
       
   	    	//----------------------------
   	    	
   	    	
   	    	
      
  	  	Thread.sleep(6000);
//   	driver.switchTo().frame(element("AppealFrame"));
   	driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
   	Thread.sleep(2000);
//   	 element("TypeOfAppealDropDown").click();
		
   	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
   	 Select Drop1 = new Select(element("TypeOfAppealDropDown"));
    	Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Appeal Type")); 
    	
//	CommonMethods.selectFromDropDownByVisibleText(element("TypeOfAppealDropDown"),getDataFromExcel(ModuleName, TestCaseID, "Appeal Type"));
   	    	
   	    	
   	    	
   	    	
   	    	
       
       }
    @And("^Select Reason for PAP Appeal$")
    public void select_reason_for_pap_appeal() throws Throwable {

//    	assertTrue("Verify Appeal information page is opened",element("AppealInformationHeader").isDisplayed());
//    	assertTrue("Verify Reason for Denial Message",element("ReasonForDenialText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Reason for Denial").trim()));
    	element("SelectIncomeInDropdown").click();
//    	element("SelectOutPatientInDropdown").click();
    	element("ReasonForPAPAppealAddButton").click();
    	
    	element("AppealsStatusDropdown").click();
    	CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "AppealStatus"));
        element("AppealsSaveButton").click();
    
    }



@And("^Click on 'PAP Determine Outcom' Button after attach second$")
public void click_on_pap_determine_outcom_button_after_attach_second() throws Throwable {
//  driver.switchTo().frame(3);
	
	
  driver.switchTo().frame(element("ApplicationPageIframePAP"));
//    driver.switchTo().defaultContent();
  WebDriverWait wait = new WebDriverWait(driver, 30);
	wait.until(ExpectedConditions.visibilityOfElementLocated(
	    (By.xpath("//input[@value='PAP Determine Outcome']"))));
//  CommonMethods.ScrolDownToTheObject(element("PAPDetermineOutcomeButton"));
   CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));
//    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);   
}


 
		    @And("^Check the checkbox in front of the order Id$")
		    public void check_the_checkbox_in_front_of_the_order_id() throws Throwable {

		    driver.switchTo().frame(element("ApplicationPageIframe"));
		    Thread.sleep(3000);
		    element("Appeals_CheckBox").click();
		    
		    }
		    
		    
		    @Then("^Verify Ship status must be pending$")
		    public void verify_ship_status_must_be_pending() throws Throwable {
		    	
		    	
//		    	driver.switchTo().frame(element("ApplicationPageIframePAP"));
		    	CommonMethods.ScrolDownToTheObject(element("Appeals_ShipStatus"));
			    Thread.sleep(3000);
			    assertTrue(element("Appeals_ShipStatus").isDisplayed());
		    
		    }
		    
    
       //END M

		    
		    
		    @Then("^Verify Appeal information page is opened$")
		    public void verify_appeal_information_page_is_opened() throws Throwable {
		    	driver.switchTo().frame(element("PatientPageIframe"));
		    	Select Drop1=new Select(element("AppealTypeDropDown"));
		    	Drop1.selectByVisibleText("Product Appeal");
		    	assertTrue("Verify Appeal information page is opened",element("AppealInformationHeader").isDisplayed());
		    	element("ApplicationProductsCheckbox").click();
		    }
		    @Then("^Verify Appeal information page is opened with the Reason for Denial should display1$")
		    public void verify_appeal_information_page_is_opened_with_the_reason_for_denial_should_display1() throws Throwable {
		        //driver.switchTo().frame(element("PatientPageIframe"));changes made by vivek
//		        driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		        driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		        Select Drop1=new Select(element("AppealTypeDropDown"));
		        Drop1.selectByVisibleText("Product Appeal");
		        assertTrue("Verify Appeal information page is opened",element("AppealInformationHeader").isDisplayed());
		        //assertTrue("Verify Reason for Denial Message",element("ReasonForDenialText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Reason for Denial").trim()));
//		        element("ApplicationProductsCheckbox").click();
		        element("ApplicationProductsCheckbox").click();
		    }
		   
}
