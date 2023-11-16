package pharmaTestSuite.steps.stepsPharma;


	import static org.junit.Assert.assertFalse;
	import static org.junit.Assert.assertTrue;

	import java.text.ParseException;
	import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.junit.Assert;
	import org.openqa.selenium.Alert;
	import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.AssertJUnit;

import com.vimalselvam.cucumber.listener.Reporter;

	import cucumber.api.java.en.And;
	import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import junit.framework.AssertionFailedError;
import objectRepository.ApplicationPageObject;
import objectRepository.CasePageObject;
import objectRepository.GetObj;
import objectRepository.ObjectManager;
import utility.CommonMethods;
import utility.WebDriverFactory;
	import utility.screenshotUtility;



	@SuppressWarnings("unused")
	public class ViewLogs  extends GetObj {
		GetObj loginPfizer;
		WebDriverFactory webDriverFactory;
		public static WebDriver driver;
		boolean present;
		
		String TestCaseID = PfizerTestCaseID.TCID;
		String ModuleName = PfizerTestCaseID.SheetName;
		public String rxid;
		static ObjectManager objRepo;
	    static ApplicationPageObject ApplicationPrescrip_Page_objects;
		@SuppressWarnings("static-access")
		public ViewLogs(WebDriverFactory DriverFactory) throws Exception
		{
			super(DriverFactory);
			webDriverFactory = DriverFactory;
			this.driver = webDriverFactory.getWebDriver();
			objRepo= new ObjectManager(DriverFactory); 
			ApplicationPrescrip_Page_objects=objRepo.getApplicationPageObject();
		}
		
	    
	    @Then("^Click on Application Checkbox$")
	    public void click_on_application_checkbox() throws Throwable {
	    	Thread.sleep(5000);
	    	driver.switchTo().frame(3);
	    	element("ApplicationCheckBoxBeforeCheck").click();
	        Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Clicked on 'Application' CheckBox");
	    	
	    	
	    }
	   

	        @And("^Verify Columns under Application history header section$")
	        public void verify_columns_under_application_history_header_section() throws Throwable {
	        	assertTrue("application History Header is Displayed",element("ApplicationHistoryHeader").isDisplayed());
	        	assertTrue("Created Date is Displayed",element("ApplicationHistoryCreatedDateColoumnHeader").isDisplayed());
	            assertTrue("Modified By is Displayed",element("ApplicationHistoryModifiedByColoumnHeader").isDisplayed());
	            assertTrue("Application No is Displayed",element("ApplicationHistoryApplicationNoCololumHeader").isDisplayed());
	            assertTrue("Field is Displayed",element("ApplicationHistoryFieldColoumnHeader").isDisplayed());
	            assertTrue("Old value is Displayed",element("ApplicationHistoryOldValueColoumnHeader").isDisplayed());
	            assertTrue("New Value is Displayed",element("ApplicationHistoryNewValueColoumnHeader").isDisplayed());
	            Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Created Date,Modified By,Field,Old Value,New value colomns and Application No are present under Application History Section");
	        
	            
	        }
	        
	        @Then("^Click on Insurance Checkbox$")
	        public void click_on_insurance_checkbox() throws Throwable {
	        	element("InsuranceCheckBoxBeforeCheck").click();
	            Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Clicked on 'Insurance' CheckBox");
	        }
	        
	        @And("^Verify Columns under Insurance history header section$")
	        public void verify_columns_under_insurance_history_header_section() throws Throwable {
	        	assertTrue("Insurance History Header is Displayed",element("InsuranceHistoryHeader").isDisplayed());
	        	assertTrue("Created Date is Displayed",element("InsuranceHistoryCreatedDateColoumnHeader").isDisplayed());
	            assertTrue("Modified By is Displayed",element("ApplicationHistoryModifiedByColoumnHeader").isDisplayed());
	            assertTrue("Application No is Displayed",element("ApplicationHistoryApplicationNoCololumHeader").isDisplayed());
	            assertTrue("Field is Displayed",element("ApplicationHistoryFieldColoumnHeader").isDisplayed());
	            assertTrue("Old value is Displayed",element("ApplicationHistoryOldValueColoumnHeader").isDisplayed());
	            assertTrue("New Value is Displayed",element("ApplicationHistoryNewValueColoumnHeader").isDisplayed());
	            assertTrue("Insurance No is Displayed",element("InsuranceHistoryInsuranceNoColumnHeader").isDisplayed());
	            
	            Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Created Date,Modified By,Field,Old Value,New value,Application No,Insurance No columns are present under Insurance History Section");
	           
	        	
	        	
	        }
	        
	        @And("^Verify Values under Insurance history header section$")
	        public void verify_values_under_insurance_history_header_section() throws Throwable {
	        	assertTrue("Created Date Value is Displayed",element("InsuranceHistoryFirstCreatedDate").isDisplayed());
	            assertTrue("Insurance no is Displayed",element("InsuranceHistoryInsuranceNo").isDisplayed());
	            assertTrue("Application No value is Displayed",element("InsuranceHistoryApplicationNo").isDisplayed());
	            assertTrue("Modified by name is Displayed",element("InsuranceHistoryModifiedByName").isDisplayed());
	            assertTrue("Field is Displayed",element("InsuranceHistoryField").isDisplayed());
	            
	            Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Created Date,Modified By,Field,Application No,Insurance No Values are present under Insurance History Section");
	        	
	        }
	        
	        @Then("^Click on Prescription Checkbox$")
	        public void click_on_prescription_checkbox() throws Throwable {
	        	element("PrescriptionCheckBoxBeforeCheck").click();
	            Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Clicked on 'Prescription' CheckBox");
	        	
	        }
	        
	        @And("^Verify Columns under Prescription history header section$")
	        public void verify_columns_under_prescription_history_header_section() throws Throwable {
	        	assertTrue("Prescription Header is Displayed",element("PrescriptionHistoryHeader").isDisplayed());
	        	assertTrue("Created Date is Displayed",element("PrescriptionHistoryCreatedDateColoumnHeader").isDisplayed());
	            assertTrue("Modified By is Displayed",element("PrescriptionHistoryModifiedByColoumnHeader").isDisplayed());
	            assertTrue("Application No is Displayed",element("PrescriptionHistoryApplicationNoCololumHeader").isDisplayed());
	            assertTrue("Field is Displayed",element("PrescriptionHistoryFieldColoumnHeader").isDisplayed());
	            assertTrue("Old value is Displayed",element("PrescriptionHistoryOldValueColoumnHeader").isDisplayed());
	            assertTrue("New Value is Displayed",element("PrescriptionHistoryNewValueColoumnHeader").isDisplayed());
	            assertTrue("Prescription No is Displayed",element("PrescriptionHistoryPrescriptionNoColumnHeader").isDisplayed());
	            
	            Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Created Date,Modified By,Field,Old Value,New value,Application No,Prescription No columns are present under Insurance History Section");
	        	
	        }
	        
	        @Then("^Click on Prescription Product Checkbox$")
	        public void click_on_prescription_product_checkbox() throws Throwable {
	        	element("PrescriptionProductCheckBoxBeforeCheck").click();
	            Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Clicked on 'Prescription Product' CheckBox");
	        	
	        	
	        }
	        
	        @And("^Verify Columns under Prescription Product history header section$")
	        public void verify_columns_under_prescription_product_history_header_section() throws Throwable {
	        	assertTrue("Prescription Product Header is Displayed",element("PrescriptionProductHistoryHeader").isDisplayed());
	        	assertTrue("Created Date is Displayed",element("PrescriptionProductHistoryCreatedDateColoumnHeader").isDisplayed());
	            assertTrue("Modified By is Displayed",element("PrescriptionProductHistoryModifiedByColoumnHeader").isDisplayed());
	            assertTrue("Application No is Displayed",element("PrescriptionProductHistoryApplicationNoCololumHeader").isDisplayed());
	            assertTrue("Field is Displayed",element("PrescriptionProductHistoryFieldColoumnHeader").isDisplayed());
	            assertTrue("Old value is Displayed",element("PrescriptionProductHistoryOldValueColoumnHeader").isDisplayed());
	            assertTrue("New Value is Displayed",element("PrescriptionProductHistoryNewValueColoumnHeader").isDisplayed());
	            assertTrue("Prescription No is Displayed",element("PrescriptionProductHistoryPrescriptionNoColumnHeader").isDisplayed());
	            assertTrue("Prescription Product is Displayed",element("PrescriptionProductHistoryPrescriptionProductColumnHeader").isDisplayed());
	            Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Created Date,Modified By,Field,Old Value,New value,Application No,Prescription No,Prescription Product columns are present under Insurance History Section");
	        	  
	        }
	        
	        @Then("^Unselect Patient,Application,Insurance,Prescription,Prescription Product Checkboxes$")
	        public void unselect_patientapplicationinsuranceprescriptionprescription_product_checkboxes() throws Throwable {
	        	element("ApplicationCheckBoxAfterCheck").click();
	        	Thread.sleep(1000);
	        	
	        	element("InsuranceCheckboxAfterCheck").click();
	        	Thread.sleep(1000);
	        	element("PrescriptionCheckboxAfterCheck").click();
	        	Thread.sleep(1000);
	        	element("PrescriptionProductCheckboxAfterCheck").click();
	        	Thread.sleep(1000);
	        	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Unselct All CheckBoxes");
	        	
	        }
	       
	        @And("^verify Patient,Application,Insurance,Prescription,Prescription Header Details Disappears$")
	        public void verify_patientapplicationinsuranceprescriptionprescription_header_details_disappears() throws Throwable {
	        	//System.out.println(element("ApplicationHistoryHeader").isDisplayed());
	        	driver.navigate().refresh();
	        	driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe slds-card iframe-parent']/iframe")));
	        	boolean NotDisplayed;
	        	try {
	        		
	        		assertTrue("Application Header Disappears",!(element("ApplicationHistoryHeader").isDisplayed()));
	        		assertTrue("Application Header Disappears",!(element("InsuranceHistoryHeader").isDisplayed()));
	        		assertTrue("Application Header Disappears",!(element("PrescriptionHistoryHeader").isDisplayed()));
	        		assertTrue("Application Header Disappears",!(element("PrescriptionProductHistoryHeader").isDisplayed()));
	        		
				} catch (Exception e) {
					System.out.println("Application,Insurance,Prescription and Prescription Headers are not displayed");
					Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Application,Insurance,Prescription and Prescription Headers are not displayed");
				}


	        }
	        
	        @Then("^verify PAP Approved Comes first and then Order created$")
	        public void verify_pap_approved_comes_first_and_then_order_created() throws Throwable {
	        	
	        	CommonMethods.ScrolDownToTheObject(element("OrderCreatedUnderEventLog"));
	        		assertTrue("PAP Approved is coming Order Created", element("PAPApprovedUnderEventLog").isDisplayed());
	        		assertTrue("Order Created is coming", element("OrderCreatedUnderEventLog").isDisplayed());
	        	
	        		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "PAP Approved is coming first and then Order Created");
	        	driver.switchTo().defaultContent();
	        			
	        }
	        
	        @And("^Verify Application History Section is above Activity log$")
	        public void verify_application_history_section_is_above_activity_log() throws Throwable {
	        	int ApplicationHeaderPosition=element("ApplicationHistoryHeader").getLocation().getY();
	        	System.out.println("Y Cordinate of Application Header is"+ ApplicationHeaderPosition );
	        	int ActivityHeaderPosition=element("ActivityLogHeader").getLocation().getY();
	        	System.out.println("Y Cordinate of Activity Log Header is"+ ActivityHeaderPosition );
	        	assertTrue("Application Header is coming first and then Activity log", ActivityHeaderPosition>ApplicationHeaderPosition);
	        	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Application Header is coming first and then Activity log");
	        }
	        
	        @And("^Verify Insurance History Section is above Activity log$")
	        public void verify_insurance_history_section_is_above_activity_log() throws Throwable {
	        	int InsuranceHeaderPosition=element("InsuranceHistoryHeader").getLocation().getY();
	        	System.out.println("Y Cordinate of Insurance Header is"+ InsuranceHeaderPosition );
	        	int ActivityHeaderPosition=element("ActivityLogHeader").getLocation().getY();
	        	System.out.println("Y Cordinate of Activity Log Header is"+ ActivityHeaderPosition );
	        	assertTrue("Insurance Header is coming first and then Activity log", ActivityHeaderPosition>InsuranceHeaderPosition);
	        	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Insurance Header is coming first and then Activity log");
	        }
	        
	        

	        @And("^Verify Prescription History Section is above Activity log$")
	        public void verify_prescription_history_section_is_above_activity_log() throws Throwable {
	        	int PrescriptionHeaderPosition=element("PrescriptionHistoryHeader").getLocation().getY();
	        	System.out.println("Y Cordinate of Insurance Header is"+ PrescriptionHeaderPosition );
	        	int ActivityHeaderPosition=element("ActivityLogHeader").getLocation().getY();
	        	System.out.println("Y Cordinate of Activity Log Header is"+ ActivityHeaderPosition );
	        	assertTrue("Prescription Header is coming first and then Activity log", ActivityHeaderPosition>PrescriptionHeaderPosition); 
	        	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Prescription Header is coming first and then Activity log");
	        }
	        
	        @And("^Verify Prescription Product History Section is above Activity log$")
	        public void verify_prescription_product_history_section_is_above_activity_log() throws Throwable {
	        	int PrescriptionProductHeaderPosition=element("PrescriptionProductHistoryHeader").getLocation().getY();
	        	System.out.println("Y Cordinate of Insurance Header is"+ PrescriptionProductHeaderPosition );
	        	int ActivityHeaderPosition=element("ActivityLogHeader").getLocation().getY();
	        	System.out.println("Y Cordinate of Activity Log Header is"+ ActivityHeaderPosition );
	        	assertTrue("Prescription Header is coming first and then Activity log", ActivityHeaderPosition>PrescriptionProductHeaderPosition); 
	        	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Prescription Header is coming first and then Activity log");
	        }

	        
	        
	        @And("^Verify Event History is getting recorded in the Event Log from Bottom to top$")
	        public void verify_event_history_is_getting_recorded_in_the_event_log_from_bottom_to_top() throws Throwable {
	        	String LatestDateAndTimeStamp=element("FirstActivityDateTime").getText();
	        	int LatestDateAndTimeStamposition =element("FirstActivityDateTime").getLocation().getY();
	        	System.out.println(LatestDateAndTimeStamposition);
	        	String OldestDateAndTimeStamp=element("SecondActivityDateTime").getText();
	        	int OldestDateAndTimeStampPosition =element("FirstActivityDateTime").getLocation().getY();
	        	System.out.println(OldestDateAndTimeStampPosition);
	        	try
	        	{
	        		Date SecondActivityDate=new SimpleDateFormat("mm/dd/yyyy hh:mm").parse(LatestDateAndTimeStamp);
	        		Date FirstActivityDate=new SimpleDateFormat("mm/dd/yyyy hh:mm").parse(OldestDateAndTimeStamp);
	        		System.out.println(SecondActivityDate);
	        		System.out.println(FirstActivityDate);
	        		if(FirstActivityDate.compareTo(SecondActivityDate)>0)
	        		{
	        			
	        			System.out.println("First Event Activity Date and Time stamp comes at the bottom and Second Activity Date and Time on Top");
	        
	        		}
	        		else if(FirstActivityDate.compareTo(SecondActivityDate)<0)
	        		{
	        			System.out.println("Second Event Activity Date and Time stamp comes at the bottom and First Activity Date and Time on Top");
	        		}
	        		else if(FirstActivityDate.compareTo(SecondActivityDate)==0)
	        		{
	        			System.out.println("First Event Activity Date and Time stamp comes at the bottom and Second Activity Date and Time on Top and Time stamp of both activites is same");
	        		}
	        		
	        	}
	        	
	        	catch(ParseException e)
	        	{
	        		
	        	}
	        	
	        	
	        	
	        }   
	   
	      //souravs code 
	        
	        @And("^Verify the 'Fullfillment Method' type$")
		       public void verify_the_fullfillment_method_type() throws Throwable {
		           Assert.assertTrue("fulfilment method should be set to Medvantx",element("MedVantx").isDisplayed());
		           
		           Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		       }

	@Then("^Click on view orders$")
		public void click_on_view_orders() throws Throwable {
			Thread.sleep(2000);

			JavascriptExecutor js = (JavascriptExecutor) driver;  
			js.executeScript("arguments[0].click();", element("ViewOrderstab"));


			//element("ViewOrderstab").click();

		}
	  @Then("^Enter moret than 255 characters in CEP form Narrative Filled$")
		       public void enter_moret_than_255_characters_in_cep_form_narrative_filled() throws Throwable {
		  
			Thread.sleep(3000);
			element("AEReporteddate").click();
			CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
			driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
			driver.findElement(By.xpath("//span[text()='14']")).click();

			CommonMethods.PerformClickOnObject(element("Reorterconsenttofurtherfollowupdropdown"));
			List<WebElement> DropDown1 = driver
					.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
			CommonMethods.selectDropDownByValue(DropDown1,
					getDataFromExcel(ModuleName, TestCaseID, "Reorterconsenttofurtherfollowupdropdown"));

			CommonMethods.PerformClickOnObject(element("AEReortercontactinfo"));
			List<WebElement> DropDown2 = driver
					.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
			CommonMethods.selectDropDownByValue(DropDown2,
					getDataFromExcel(ModuleName, TestCaseID, "AEReortercontactinfo"));

			CommonMethods.PerformClickOnObject(element("isthereporteranHCP"));
			List<WebElement> DropDown3 = driver
					.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
			CommonMethods.selectDropDownByValue(DropDown3, getDataFromExcel(ModuleName, TestCaseID, "isthereporteranHCP"));

			CommonMethods.PerformClickOnObject(element("isthereportertheprescribinghcp"));
			List<WebElement> DropDown4 = driver
					.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
			CommonMethods.selectDropDownByValue(DropDown4,
					getDataFromExcel(ModuleName, TestCaseID, "isthereportertheprescribinghcp"));

			CommonMethods.PerformClickOnObject(element("callerconsenttocontacthcp"));
			List<WebElement> DropDown5 = driver
					.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
			CommonMethods.selectDropDownByValue(DropDown5,
					getDataFromExcel(ModuleName, TestCaseID, "callerconsenttocontacthcp"));

			element("suspectproducttextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "suspectproducttextbox"));
			element("cepformnativetextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "cepformnativetextbox"));
			Thread.sleep(3000);
			// CommonMethods.PerformClickOnObject(element("adverseeventsavebutton1"));
			driver.findElement(By.xpath("(//div//button[@title='Save'])")).click();
		}
		  
		  
		    	  



	@When("^Enter anotherusername and anotherpassword$")
					public void Enter_anotherusername_and_anotherpassword() throws Throwable {

						element("pfizerUserIDTextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "anotherUserName"));
						element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "anotherPassword"));
						
						Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
						
						
					}

				  

	  @Then("^Select the reason and add the mandatory detials and save$")
		       public void select_the_reason_and_add_the_mandatory_detials_and_save() throws Throwable {
		    	   driver.switchTo().frame(element("Iframe4"));
		    	   Thread.sleep(4000);
		    	   //element("AppealTypeDropDown").click();
		    	   CommonMethods.selectFromDropDownByVisibleText(element("AppealTypeDropDown"), "Product Appeal");




	}


	 @Then("^click on ApplicationPrecriptionid$")
		       public void click_on_applicationprecriptionid() throws Throwable {
		          CommonMethods.PerformClickOnObject(element("ApplicationPrescription"));
		       }



	 @Then("^Check whether the generic name is displaying$")
		       public void check_whether_the_generic_name_is_displaying() throws Throwable {
		    	   Thread.sleep(5000);
		           Assert.assertTrue("the generic name is displaying",element("GenericnameforAccuretic").isDisplayed());
		           Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		       }

	@Then("^Switch to previoustabs$")
	public void switch_to_previoustabs() throws Throwable {
	    Set<String> allwindows = driver.getWindowHandles();
	    ArrayList<String> al = new ArrayList<String>(allwindows);
	    driver.switchTo().window(al.get(0));
		   driver.manage().window().maximize();
		   Thread.sleep(5000);
	}

	  @And("^close the window$")
		       public void close_the_window() throws Throwable {
		           driver.close();
		       }



	@Then("^click on ApplicationId$")
		       public void click_on_applicationid() throws Throwable {
		    	   
		    	   Thread.sleep(5000);
		    	   driver.switchTo().frame(element("PractitionerInformationIframe"));
		          element("Applicationid").click();
		       }


	@Then("^verify whether the application is incomplete$")
		       public void verify_whether_the_application_is_incomplete() throws Throwable {
		           Assert.assertTrue("status should be approved",element("Approvalstatus").isDisplayed());
		           Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		       }


	  @Then("^Refill button should be disabled$")
		       public void refill_button_should_be_disabled() throws Throwable {
		           Assert.assertTrue("Refil button should be disabled",!element("PortalFirstPatientOrderRefillBtn").isEnabled());
		           
		           Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		       }



	 @Then("^Verify agent is able to see the incomplete reason is displayed as “Missing Prescriber Consent Signature”$")
		       public void verify_agent_is_able_to_see_the_incomplete_reason_is_displayed_as_missing_prescriber_consent_signature() throws Throwable {
		    	   JavascriptExecutor js = (JavascriptExecutor) driver;
		    	  js.executeScript("window.scrollBy(0,500)");
		    	  
		    	  ApplicationPrescrip_Page_objects.MissingPrescriberConsentSignatureDateErrorMsg.isDisplayed();
		          Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		       }


	 

	 @Then("^please Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button$")
		       public void please_set_field_to_npi_operator_to_contains_and_enter_any_value_click_on_search_button() throws Throwable {
		    	   String winHandleBefore = driver.getWindowHandle();

		   		for(String winHandle : driver.getWindowHandles()){
		   			driver.switchTo().window(winHandle);
		   		}
		   		driver.manage().window().maximize() ;


		   		Select Drop = new Select(element("SelectInWindow"));
		   		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor"));

		   		Select Drop2 = new Select(element("NPIOperatorDropDown"));
		   		Drop2.selectByVisibleText("equals");

		   		element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue1"));
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
		   		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe slds-card iframe-parent']//iframe")));
		   		driver.switchTo().frame(element("ApplicationPageIframe"));
		       }



	  @Then("^Verify Checkbox is not selected$")
		       public void verify_checkbox_is_not_selected() throws Throwable {
		    	   AssertJUnit.assertTrue("CheckBox is not Selected",!element("PrescriberConsonentSignChkBox").isSelected());
		    	   Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		       }


	@Then("^Verify the error message$")
		       public void verify_the_error_message() throws Throwable {
		    	   
		        Assert.assertTrue("error msg should be displayed",element("Refillerrormsg").isDisplayed());	
		        
		        Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		           }



	@Then("^Verify Qc1member is able to assign any Qc1member$")
		       public void verify_qc1member_is_able_to_assign_any_qc1member() throws Throwable {
		    	   Thread.sleep(10000);
		    	   element("AEstatuseditbutton").click();
		    	   element("Searchpeople").sendKeys("Gowtham");
		    	   element("GowthamTadisetti").click();
		    	   element("Savebutton").click();


	}

	@Then("^Enter the selfname$")
		       public void enter_the_selfname() throws Throwable {
		    	   Thread.sleep(10000);
		    	   element("AEstatuseditbutton").click();
		    	   element("Searchpeople").sendKeys("Vinutha");
		    	   element("Vinutha").click();
		    	   element("Savebutton").click();
		       }


	  @And("^Wait for two seconds$")
		       public void wait_for_two_seconds() throws Throwable {
		          Thread.sleep(4000);
		       }



	 @Then("^check whether enteredfields are in editablestate$")
		       public void check_whether_enteredfields_are_in_editablestate() throws Throwable {
		           Thread.sleep(5000);
		           element("AEstatuseditbutton").click();
		           Thread.sleep(6000);
		           element("AEREPORTEDDATE").clear();
		           element("AEREPORTEDDATE").sendKeys("6/4/2017");
		          
		           CommonMethods.PerformClickOnObject(element("Qc1enterdinAestatus"));
		    	   CommonMethods.PerformClickOnObject(element("pendingqc1option"));
		    	   element("deleteicon").click();
		    	   Thread.sleep(3000);
		    	   
		    	   element("Searchpeople").sendKeys("Gowtham");
		    	   element("GowthamTadisetti").click();
		    	  
		    	   
		    	   
		    	  // CommonMethods.PerformClickOnObject(element("reporterconsent"));
		    	   
		    	   //entering No in reporterconsent
		    	   JavascriptExecutor js= (JavascriptExecutor) driver;
		    	   //clicking in reporterconsent
		    	   js.executeScript("document.getElementsByClassName('select')[3].click()");
		    	  js.executeScript("document.querySelectorAll('[title=\\\"NO\\\"]')[0].click()");
		    	  //CommonMethods.PerformClickOnObject(element("Aereportercontactinfo"));
		    	  //clicking on ae reporter contact info
		    	  js.executeScript("document.getElementsByClassName('select')[4].click()");
		    	  //clicking no in aereporter
		    	  js.executeScript("document.querySelectorAll('[title=\\\"NO\\\"]')[1].click()");
		    	  
		    	  
		    	 // CommonMethods.PerformClickOnObject(element("isthereporteranhcp"));
		    	  //clicking on istherereporteranhcp
		    	 js.executeScript("document.getElementsByClassName('select')[5].click()");
		    	  js.executeScript("document.querySelectorAll('[title=\"NO\"]')[2].click()");
		    	  
		    	//clicking on is reporter the prescribing hp
			         js.executeScript("document.getElementsByClassName('select')[6].click()");
			         //clicking on no option
			         js.executeScript("document.querySelectorAll('[title=\"NO\"]')[3].click()");
			         
			       //clicking on caller consent to contactHCP
				        js.executeScript("document.getElementsByClassName('select')[7].click()");
				        //clicking on no
				        js.executeScript("document.querySelectorAll('[title=\"NO\"]')[4].click()");
				        element("suspectproducts").sendKeys("chantix");
				        element("Savebutton").click();
				        
		    	   
		       }



	 @Then("^Change the status to pendingQc2$")
		       public void change_the_status_to_pendingqc2() throws Throwable {
		    	   element("AEstatuseditbutton").click();
		    	   CommonMethods.PerformClickOnObject(element("Qc1enterdinAestatus"));
		    	   CommonMethods.PerformClickOnObject(element("pendingQc2"));
		    	   element("Savebutton").click();
		    	   
		       }


	 @Then("^again_enter_the_selfname in Qc2 field$")
		       public void againentertheselfname_in_qc2_field() throws Throwable {
		    	   Thread.sleep(10000);
		    	   element("AEstatuseditbutton").click();
		    	   element("Qc2searchpeople").sendKeys("Vinutha");
		    	   element("Vinutha").click();
		    	   element("Savebutton").click();
		       }



	@Then("^check the STATUS$")
		       public void check_the_status() throws Throwable {
		    	   Thread.sleep(4000);
		           
		           Assert.assertTrue("QC2 in progress should be displayed in AEstatus", element("QC2INPROGRESS").isDisplayed());
		       }




	  @Then("^Click on preview button$")
		       public void click_on_preview_button() throws Throwable {
		    	   driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		           JavascriptExecutor js = (JavascriptExecutor) driver;
		           js.executeScript("document.getElementsByClassName('btn')[0].click()"); 
		       }

		       @And("^go to the next tab$")
		       public void go_to_the_next_tab() throws Throwable {
		           Set<String> allwindows = driver.getWindowHandles();
		           for (String wh : allwindows) {
		        	   driver.switchTo().window(wh);
					
				}
		       }

	 @Then("^click on email cepformtodsubutton$")
		       public void click_on_email_cepformtodsubutton() throws Throwable {
		          Thread.sleep(10000);
		          element("EmailCEPFormtoDSUbutton").click();
		       }



	 



	@Then("^click on refreshbutton$")
		       public void click_on_refreshbutton() throws Throwable {
		    	 driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		          CommonMethods.PerformClickOnObject(element("Refreshbutton"));
		       }


	 @Then("^click on case$")
		       public void click_on_case() throws Throwable {
		    	  
		           Thread.sleep(4000);
		           element("CASEid").click();
		       }


	@Then("^check wether the the checkbox is selected$")
		       public void check_wether_the_the_checkbox_is_selected() throws Throwable {
		    	   Thread.sleep(5000);
		           String value = element("CEPFORMSENTTOPFizer").getAttribute("class");
		           if(value.equals(" checked")) {
		        	   System.out.println("pass");
		           }
		           else {
		        	   Assert.fail();
		           }
		           Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		           
		       }



	@Then("^handle the alert$")
		       public void handle_the_alert() throws Throwable {
		    	   WebDriverWait ww = new WebDriverWait(driver,10);
		    	   ww.until(ExpectedConditions.alertIsPresent());
		           driver.switchTo().alert().accept();
		       }


	/*@And("^Navigate to New Tab$")
		public void navigate_to_new_tab() throws Throwable {
			Thread.sleep(10000);
			Set<String> totalwindows = driver.getWindowHandles();
			ArrayList<String> handles = new ArrayList<String>(totalwindows);
			driver.switchTo().window(handles.get(1));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			driver.manage().window().maximize();
		}*/

	 @Then("^Enter the order ship date 68days back$")
					    public void enter_the_order_ship_date_68days_back() throws Throwable {
					    	  Thread.sleep(3000);
							  element("EditReleaseDatebtn").click();
							  
							  Thread.sleep(5000);
							  JavascriptExecutor jse = (JavascriptExecutor)driver;
							  jse.executeScript("window.scrollBy(0,250)", "");
								 element("DatePickerIconReleaseDate").click();
								 CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
								driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
								driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
								 driver.findElement(By.xpath("//span[text()='19']")).click();
							  
								 Thread.sleep(5000);

							 Thread.sleep(2000);
							 
				WebElement ele1 =  driver.findElement(By.xpath("//span[text()='Program Name']/../following-sibling::input")); 
				CommonMethods.PerformClickOnObject(ele1);
				CommonMethods.PerformClickOnObject( element("DatePickerIcon"));
							 CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
							driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
							driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
							 driver.findElement(By.xpath("//span[text()='19']")).click();
						 
							 
						     Thread.sleep(5000);
						     
						     
					        
					    }
	        
	        
	 @Then("^check wether AEdate sent to Dsu is populated$")
  public void check_wether_aedate_sent_to_dsu_is_populated() throws Throwable {
     Assert.assertTrue("AEdate sent to Dsu is populated",element("AEDateSenttoDSU").isDisplayed());
     Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
  }

/*@Then("^Change the rxdate$")
  public void change_the_rxdate() throws Throwable {
      element("Searchtextboxinclassic").sendKeys(rxid);
      element("Searchbuttoninclassic").click();
      element("rxid").click();
      Actions a = new Actions(driver);
     a.doubleClick(element("editrxdate")).perform();
     element("rxdatetextbox").clear();
     element("rxdatetextbox").sendKeys("09/12/2018");
     element("classicsavebutton").click();
     Thread.sleep(6000);
     element("SwitchtoLightening").click();
     Thread.sleep(5000);
  }*/

@Then("^switch to salesforceclassic$")
		    public void switch_to_salesforceclassic() throws Throwable {
		    	driver.switchTo().defaultContent();
		    	Thread.sleep(1000);	
				element("UserIcon").click();
				Thread.sleep(1000);	
				element("SWitchtosalesforceclassic").click();
		    }

@Then("^Change the rxdate$")
  public void change_the_rxdate() throws Throwable {
      element("Searchtextboxinclassic").sendKeys(rxid);
      element("Searchbuttoninclassic").click();
      element("rxid").click();
      Actions a = new Actions(driver);
     a.doubleClick(element("editrxdate")).perform();
     element("rxdatetextbox").clear();
     element("rxdatetextbox").sendKeys("09/12/2018");
     element("classicsavebutton").click();
     Thread.sleep(6000);
     element("SwitchtoLightening").click();
     Thread.sleep(5000);
  }


/*@And("^Navigate to New Tab$")				
public void navigate_to_new_tab() throws Throwable {
	Thread.sleep(10000);
	Set<String> totalwindows = driver.getWindowHandles();
	ArrayList<String> handles = new ArrayList<String>(totalwindows);
	driver.switchTo().window(handles.get(1));
	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	driver.manage().window().maximize();
}*/


@Then("^Enter the order ship date 68days between$")
			    public void enter_the_order_ship_date_68days_between() throws Throwable {
			    	  Thread.sleep(3000);
					  element("EditReleaseDatebtn").click();
					  
					  Thread.sleep(5000);
					  JavascriptExecutor jse = (JavascriptExecutor)driver;
					  jse.executeScript("window.scrollBy(0,250)", "");
						 element("DatePickerIconReleaseDate").click();
						 CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
						//driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
						driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
						 driver.findElement(By.xpath("//span[text()='14']")).click();
					  
						 Thread.sleep(5000);

					 Thread.sleep(2000);
					 
		WebElement ele1 =  driver.findElement(By.xpath("//span[text()='Program Name']/../following-sibling::input")); 
		CommonMethods.PerformClickOnObject(ele1);
		CommonMethods.PerformClickOnObject( element("DatePickerIcon"));
					 CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
					//driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
					driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
					 driver.findElement(By.xpath("//span[text()='14']")).click();
				 
					 
				     Thread.sleep(5000);
				     
				     Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));    
}
	   
			    








@Then("^Click on PatientId$")
	    public void click_on_patientid() throws Throwable {
	        element("Patientid").click();
	    }



@And("^Click on Apllicationno$")
  public void click_on_apllicationno() throws Throwable {
	   driver.switchTo().defaultContent();
	   Thread.sleep(5000);
      CommonMethods.PerformClickOnObject(element("Applicationno"));			
  }


@Then("^Verify agent is able to see the incomplete reason is displayed as “Missing Prescriber Consent Signature Date”$")
  public void verify_agent_is_able_to_see_the_incomplete_reason_is_displayed_as_missing_prescriber_consent_signature_date() throws Throwable {
      Assert.assertTrue("missing precriber consent signsture date should be displayed",element("MISSINGPRECRIPTIONCONTENTSDATEERRORMSG").isDisplayed());
      Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
  }



@Then("^get the RXID$")
  public void get_the_rxid() throws Throwable {
	   driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
//	   rxid= element("RXID").getText();
//	   System.out.println(rxid);
	   driver.switchTo().defaultContent();
  }


@Then("^Change The Aestatus to notAnAe$")
public void change_the_aestatus_to_notanae() throws Throwable {
element("AEstatuseditbutton").click();
CommonMethods.PerformClickOnObject(element("Aeidentified"));
CommonMethods.PerformClickOnObject(element("notanAeoption"));
element("svbutton").click();

}


@Then("^Check wether the checkbox is unchecked$")
public void check_wether_the_checkbox_is_unchecked() throws Throwable {
Assert.assertTrue("Safetyevent checkbox should be unchecked",!(element("SAFETYEVENT").isSelected()));
Assert.assertTrue("AEWarmTransfertoPfizerUnsuccessful checkbox should be unchecked",!(element("AEWarmTransfertoPfizerUnsuccessful").isSelected()));
}



	        
	        

}	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        
	        


