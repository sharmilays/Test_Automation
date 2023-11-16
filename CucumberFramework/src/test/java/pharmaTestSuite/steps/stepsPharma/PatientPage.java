package pharmaTestSuite.steps.stepsPharma;

import static org.testng.Assert.assertFalse;
import static org.testng.AssertJUnit.assertTrue;

import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.NoSuchFrameException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import java.util.List;
import java.util.Random;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import objectRepository.GetObj;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

	
	@SuppressWarnings("unused")
	public class PatientPage extends GetObj {
		
		GetObj loginPfizer;
		WebDriverFactory webDriverFactory;
		public static WebDriver driver;
		boolean present;
		
		public static String NewPatient_ID;
		
		public static String ReEnrollmentPatient_ID;
		String TestCaseID = PfizerTestCaseID.TCID;
		String ModuleName = PfizerTestCaseID.SheetName;
String CaseNumber;
		
		@SuppressWarnings("static-access")
		public PatientPage(WebDriverFactory DriverFactory) throws Exception
		{
			super(DriverFactory);
			webDriverFactory = DriverFactory;
			this.driver = webDriverFactory.getWebDriver();
			
		}
	
	
		 @Then("^Click On Search Patient$")
		 public void click_On_Search_Patient() throws Throwable {
		//	 driver.findElement(By.xpath("(//table[@role='grid']//th[@class='slds-cell-edit cellContainer']//a)[1]")).click();
		//	 Thread.sleep(5000);
		//	 driver.navigate().refresh();
			// Thread.sleep(5000);
//			 try {
//				 element("ClearAllButton").click();
//			 }catch(Exception e){
//				 
//			 }
			 
			//CaseNumber= driver.findElement(By.xpath("//div[contains(text(),'Case')]//following-sibling::div//span")).getText();
//			 CaseNumber= driver.findElement(By.xpath("//div[contains(text(),'Case')]/..//lightning-formatted-text")).getText();
			//System.out.println(CaseNumber);
		//	 driver.navigate().refresh();
			Thread.sleep(3000);
			   try {
				   CommonMethods.alertDismiss();
				   Thread.sleep(3000);
				   CommonMethods.PerformClickOnObject(driver.findElement(By.xpath("//button[contains(@title,'Close New Adverse Event')]")));
				   Thread.sleep(3000);
				   
			   }catch(Exception e) {
				   
			   }
			   Thread.sleep(5000);
		        
		         CaseNumber= driver.findElement(By.xpath("//div[contains(text(),'Case')]//following-sibling::slot/slot/lightning-formatted-text")).getText();
		        System.out.println(CaseNumber);
		               CommonMethods.PerformClickOnObject(element("SearchPatientTab"));
		               System.out.println("Click On Search Patient Tab");
		 }
		 @Then("^Click On Search Patient1$")
	     public void click_On_Search_Patient1() throws Throwable {
	    //     driver.findElement(By.xpath("(//table[@role='grid']//th[@class='slds-cell-edit cellContainer']//a)[1]")).click();
	       
//	         driver.navigate().refresh();
	       
//	         try {
//	             element("ClearAllButton").click();
//	         }catch(Exception e){
//	            
//	         }
	        
	        //CaseNumber= driver.findElement(By.xpath("//div[contains(text(),'Case')]//following-sibling::div//span")).getText();
	        
	        
	         Thread.sleep(5000);
	        
	         CaseNumber= driver.findElement(By.xpath("//div[contains(text(),'Case')]//following-sibling::slot/slot/lightning-formatted-text")).getText();
	        System.out.println(CaseNumber);
	               CommonMethods.PerformClickOnObject(element("SearchPatientTab"));
	               System.out.println("Click On Search Patient Tab");
	     }
	 
	 @Then("^Veirfy First Name and Last Name Field's is Mandatory$")
	 public void veirfy_First_Name_and_Last_Name_Field_s_is_Mandatory() throws Throwable {
		 
			assertTrue("First Name: Validation Error: Value is required.",element("FirstNameValidationError").isDisplayed());
			System.out.println("First Name: Validation Error: Value is required.");
			
			assertTrue("Last Name: Validation Error: Value is required.",element("LastNameValidationError").isDisplayed());
			System.out.println("Last Name: Validation Error: Value is required.");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "First Name & Last Name: Validation Error: is displayed");
			
	 }


	 
	 
	 @Then("^Verify Patient is Created\\.$")
	 public void verify_Patient_is_Created() throws Throwable {
			assertTrue("Patient is Created",element("FirstAttachCase").isDisplayed());
			System.out.println("Patient is Created");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Patient is Created");
		 
		 
	 }

	 

	 @Then("^Verify First Name Feild is mandatory$")
	 public void verify_First_Name_Feild_is_mandatory() throws Throwable {
			assertTrue("Last Name: Validation Error: Value is required.",element("FirstNameValidationError").isDisplayed());
			System.out.println("Last Name: Validation Error: Value is required.");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "First Name: Validation Error: is displayed");
	 }

	    @Then("^Enter First name and Last Name feilds$")
	 public void enter_first_name_and_last_name_feilds() throws Throwable {
	  
	    	
	    	String day = getDataFromExcel(ModuleName, TestCaseID, "Day").toString();
	    	System.out.println(day);
		 element("FirstNameTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "FirstName")+day);
		 System.out.println("Data Enterd in First Name");
		 
	//	 element("LastNameTextBx").clear();
		 element("LastNameTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "LastName")+day);
		 System.out.println("Data Enterd in Last Name");
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    }
	    
		 @Then("^Enter the Invalid Date in Date of Birth Feild$")
	 public void enter_the_Invalid_Date_in_Date_of_Birth_Feild() throws Throwable {
			 element("DateofBirthTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "InvalidDate"));
			 System.out.println(" Invalid Date is Entered in Date of Birth");
			 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),"Verify Entered Date is invalid");
		 }

		 @Then("^Verify Enterd Date is Invalid$")
	 public void verify_Enterd_Date_is_Invalid() throws Throwable {

				assertTrue("Birthdate: Invalid Date is Displayed",element("BirthDateValidationError").isDisplayed());
				System.out.println("Birthdate: Invalid Date is Displayed");
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Birthdate: Invalid Date is Displayed");
			 
		 }
		 
		 @Then("^Enter the valid Date in Date of Birth Feild$")
		 public void enter_the_valid_Date_in_Date_of_Birth_Feild() throws Throwable {
			 element("DateofBirthTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ValidDate"));
			 System.out.println("Valid Date is Entered in Date of Birth");
			 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		 }

		 @Then("^click on Smarty street symbol in Mailing Address$")
		 public void click_on_Smarty_street_symbol_in_Mailing_Address() throws Throwable {
			 
			 	Thread.sleep(3000);
				element("MailingAddressSmartystreetsymbol").click();
				System.out.println("click on Smarty street symbol in Mailing Address");
		 }	 
		 
		 
		 @Then("^Verify All Entered Data should dislpay Mailing Address Section$")
		 public void verify_All_Entered_Data_should_dislpay_Mailing_Address_Section() throws Throwable {
		     
			 
			 driver.switchTo().defaultContent();
			 List<WebElement> element=new ArrayList<WebElement>();
			 element= driver.findElements(By.cssSelector("div > iframe"));
			 String StreetAddress="";
			 int b = element.size();
		     for (int i=0; i<=b;i++)
		     {
		    	 try {
		    		 driver.switchTo().frame(i);
		    		 StreetAddress = element("MailingAddressStreetAddressTextBox").getAttribute("value");
		    		 break;
		    	 }catch(Exception e){
		    		 
		    		 System.out.println("MailingAddressStreetAddressTextBox is not found");
		    	 }
		    	 
		     }
		     String City = element("CityTextBox").getAttribute("value");
		     String State = element("StateTextBox").getAttribute("value");
		     String Zip = element("ZipTextBox").getAttribute("value");
		     
		     assertTrue("Street Address:Doesnt Match",StreetAddress.equals(getDataFromExcel(ModuleName, TestCaseID, "Street1")));
		     assertTrue("City:Doesnt Match",City.equals(getDataFromExcel(ModuleName, TestCaseID, "City")));
		     assertTrue("State:Doesnt Match",State.equals(getDataFromExcel(ModuleName, TestCaseID, "State")));
		     assertTrue("Zip:Doesnt Match",Zip.equals(getDataFromExcel(ModuleName, TestCaseID, "Zip")));
		     
		     Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			 
		 }

		 @Then("^Click on Check if Shipping Address is same as Mailing Address Check Box$")
		 public void click_on_Check_if_Shipping_Address_is_same_as_Mailing_Address_Check_Box() throws Throwable {
			 element("ShippingIsSameAsMailingCheckBox").click();
			 System.out.println("Click on Shipping Adress Is Same As Mailing Adress CheckBox");
			 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			 
		 }

	
	 @Then("^Enter First Name and click on save button$")
	 public void enter_First_Name_and_click_on_save_button() throws Throwable {
		 element("FirstNameTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "FirstName"));
		 System.out.println("Data Enterd in First Name");
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		 element("SaveButtonInPatient").click();
	 }
	 

	 @Then("^Clear First Name field$")
	 public void clear_First_Name_field() throws Throwable {
		 element("FirstNameTextBx").clear();
		 System.out.println("Data Cleared in First Name");
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		 
	 }

	 @Then("^Enter Last Name and click on save button$")
	 public void enter_Last_Name_and_click_on_save_button() throws Throwable {
		 element("LastNameTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "LastName"));
		 System.out.println("Data Enterd in Last Name");
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Data Enterd in Last Name");
		
		 element("SaveButtonInPatient").click();
		 
	 }
	 
	 @Then("^Verify Last Name Feild is mandatory$")
	 public void verify_Last_Name_Feild_is_mandatory() throws Throwable {
			assertTrue("Last Name: Validation Error: Value is required.",element("LastNameValidationError").isDisplayed());
			System.out.println("Last Name: Validation Error: Value is required.");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), " Last Name: Validation Error: is displayed");
	 }
	
	 @Then("^Verify Case is Created$")
	 public void verify_Case_is_Created() throws Throwable {
		 Thread.sleep(5000);
		 
			assertTrue("Case was Created",element("SearchPatientTab").isDisplayed());
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Case Number is Created");
			System.out.println("Case is Created");
		 
	 }


	 @Then("^Click on Add Patient$")
	 public void click_on_Add_Patient() throws Throwable {
		 BufferedReader bufReader = new BufferedReader(new FileReader(System.getProperty("user.dir")+"\\src\\test\\resources\\TestData\\PatientIDs.txt")); 
		  
			String TotalPatientIDvalues=bufReader.readLine();
			//System.out.println("the value is" + TotalPatientIDvalues);
			String[] value=TotalPatientIDvalues.split(" ");
			
			
			NewPatient_ID=value[0];
			Reporter.addStepLog("Patient ID :"+NewPatient_ID);
			System.out.println("new patient id=" +NewPatient_ID);
		    TotalPatientIDvalues=TotalPatientIDvalues.replace(value[0], "");
		   
		    BufferedWriter bwriter = null;
		     FileWriter fwriter = null;

		     try {
		                                              
		            //creating a file
		            File filepath = new File(System.getProperty("user.dir")+"\\src\\test\\resources\\TestData\\PatientIDs.txt"); 

		              // if file doesnt exists, then create it
		                   if (!filepath.exists()) {
		                         filepath.createNewFile();
		                                           }
		                    // false = overwrite file
		                   fwriter = new FileWriter(filepath,false);
		                   bwriter = new BufferedWriter(fwriter);
		                                              
		                   bwriter.write(TotalPatientIDvalues.trim());
		                     System.out.println("Done");
		                              } 
		     catch (Exception e) {

		              e.printStackTrace();

		                          } finally {

		                                     try {

		                                          if (bwriter != null)
		                                        	  bwriter.close();
		                                          if (fwriter != null);
		                                          fwriter.close();
		                                           } catch (Exception ex) {                                  
		                                             ex.printStackTrace(); }
		                                    
		             }         
		     element("Patient_FieldName").click();
		Thread.sleep(3000);
		Select select=new Select(element("Patient_FieldName"));
		select.selectByVisibleText("PatientID");
		element("Patient_Fieldvalue").sendKeys(NewPatient_ID);
		
		element("Patient_Searchbtn").click();
		
		try {
            driver.switchTo().alert().accept();
            element("Patient_FieldName").click();
            Thread.sleep(3000);
            select=new Select(element("Patient_FieldName"));
            select.selectByVisibleText("PatientID");
            element("Patient_Fieldvalue").sendKeys(NewPatient_ID);
            Thread.sleep(3000);
            element("Patient_Searchbtn").click();
            
}catch(Exception e) {
            
}


		Thread.sleep(4000);
	 }
	 
	 @Then("^Click On Save Button in Patient Page$")
	 public void click_On_Save_Button_in_Patient_Page() throws Throwable {
		 	driver.switchTo().defaultContent();
		 	try {
				
		 		int noOfFrames = driver.findElements(By.xpath("//iframe")).size();
				driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
				for(int i = 0; i<=noOfFrames; i++) {
					try { 
					driver.switchTo().defaultContent(); 
					driver.switchTo().frame(i);
					Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
					element("SaveButtonInPatient").click();
					System.out.println("Click on save button");
					 
					 break; 
					 } catch  (NoSuchElementException | NoSuchFrameException e ){
						
							
					  }
				}
		 		
		 		
			} catch (Exception e) {
				System.out.println("Click on save button");
				 element("SaveButtonInPatient").click();
				 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			}
		 	
	 }
	 
	 @Then("^Verify New Window is Opened\\.$")
	 public void verify_New_Window_is_Opened() throws Throwable {

	     Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "New Window is Opened");
	 }
	 
	 @Then("^Enter the Adress in new window and Click on save Button$")
	 public void enter_the_Adress_in_new_window_and_Click_on_save_Button() throws Throwable {
		 
		 String winHandleBefore = driver.getWindowHandle();
		 
	     for(String winHandle : driver.getWindowHandles()){
	         driver.switchTo().window(winHandle);
	     }
	     driver.manage().window().maximize() ;
	     
		 element("VerifyManuallyCheckBox").click();
		// element("Street1TextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Street1"));
		 element("CityTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "City"));
		 element("StateTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "State"));
		 element("ZipTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Zip"));
		 Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "All Data Entered in new window");
		 element("Street1TextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Street1"));
		 Thread.sleep(5000);
		 element("AdressSaveButton").click();
		 element("AdressSaveButton").click();
		 element("AdressSaveButton").click();
	     driver.switchTo().window(winHandleBefore);
	     driver.switchTo().frame(0); 
	     Thread.sleep(3000);
	 }


	 @Then("^Verify Add Patient Page appears$")
	 public void verify_Add_Patient_Page_appears() throws Throwable {
		 Thread.sleep(3000);
		 int size = driver.findElements(By.tagName("iframe")).size();
	     System.out.println("no of frames:"+size);
	     
	     driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
	    
			for (int i =0;i<=size;++i ) {
				try {
					
					driver.switchTo().frame(i);
					
					 WebElement  ele1 = element("AddPatientButton");
					 System.out.println("verifing Add Patient button");
					  break;
				} catch (Exception  e) {
					driver.switchTo().defaultContent();
		 		}
			
			}
			//assertTrue("Add Patient Button is Exist",element("AddPatientButton").isDisplayed());
			driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);  
			
	 }
	

	 @Then("^Enter the Home Phone under Contact Information$")
	 public void enter_the_Home_Phone_under_Contact_Information() throws Throwable {
		 element("HomePhoneTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HomePhone"));
	 }
	 
	 @And("^Click on 'Attach Case' Button  > Select the type of document > click on 'Attach' Button$")
	    public void click_on_attach_case_button_select_the_type_of_document_click_on_attach_button() throws Throwable {
			 element("FirstAttachCase").click();
/*				DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
				Date date = new Date();
				System.out.println(dateFormat.format(date)); 
			 
			 element("CasePage_ApplicationSignatureDateTxtBx").sendKeys(dateFormat.format(date));*/
			 element("EnrollmentFormCheckBox").click();
			// element("Re-enrollmentCheckBox").click();
			 element("InsuranceInformationCheckBox").click();
			 element("AttachButton").click();
			 

	    }
	 
	    @And("^Click on 'Attach' Button$")
	    public void click_on_attach_button() throws Throwable {
	    	element("AttachButton").click();

	    }



	 
	    @Then("^verify ' Medicine Change Request' Check box is present$")
	    public void verify_medicine_change_request_check_box_is_present() throws Throwable {
	    	
	    	assertTrue(element("CasePage_MedicineChangeRequestChkBx").isDisplayed());
	    	element("CasePage_MedicineChangeRequestChkBx").click();

	    }

	    @And("^Click on 'Attach Case' Button $")
	    public void click_on_attach_case_button() throws Throwable {

	    	 element("FirstAttachCase").click();
	    }
	 
	    @And("^Click on 'Create Order' Button in new window and Click on Ok Button$")
        public void click_on_create_order_button_in_new_window_and_click_on_ok_button() throws Throwable {
           Thread.sleep(5000);
           driver.switchTo().defaultContent();
                  String winHandleBefore = driver.getWindowHandle();
                  System.out.println(driver.getWindowHandles().size());
                  
                   
                for(String winHandle : driver.getWindowHandles()){
                    driver.switchTo().window(winHandle);
                    
                    System.out.println("Ashirbad Window Name: "+winHandle.toString());
                    //----------------------------
                    driver.manage().window().maximize() ;
                        
           try {
                                      
                 CommonMethods.PerformClickOnObject(element("CreateOrderButton"));
                   break;
             } catch (Exception e) {
                                      // TODO: handle exception
                                      
//                                    CommonMethods.PerformClickOnObject(driver.findElement(By.xpath("//input[@value='Create Order']")));
                }
                               //----------------------------
                }
               
                  
                
            
            
            try {
                try {
                    element("NewWindowOrderOKButton").click();
                }catch(Exception e){
                    
                }
                  element("ERP_OVMErrorMsg").isDisplayed();
                  element("Appilcation_RefreshBtn").click();
                  element("Appilcation_ApplicationValidationViewBtn").click();
                  JavascriptExecutor js=(JavascriptExecutor) driver;
                  js.executeScript("window.scrollBy(0,356);");
                  WebDriverWait wait = new WebDriverWait(driver, 30);
                  wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//td[text()='Audit Income (USD):']/following-sibling::td/input"))));

 

                  Thread.sleep(5000); 
           } catch (Exception e) {
           try {
               element("NewWindowOrderOKButton").click();
           }catch(Exception e2) {
               
           }
               
           }
           
         driver.switchTo().window(winHandleBefore);
         
         Thread.sleep(10000);
         
        }
	 
//	    @And("^Click on 'Create Order' Button in new window and Click on Ok Button$")
//	    public void click_on_create_order_button_in_new_window_and_click_on_ok_button() throws Throwable {
//            Thread.sleep(5000);
//            driver.switchTo().defaultContent();
//                   String winHandleBefore = driver.getWindowHandle();
//                   System.out.println(driver.getWindowHandles().size());        
//                    
//                 for(String winHandle : driver.getWindowHandles()){
//                     driver.switchTo().window(winHandle);
//                     
//                     System.out.println("Ashirbad Window Name: "+winHandle.toString());
//                     //----------------------------
//                     driver.manage().window().maximize() ;
//                           
//                                try {                                     
//                                       CommonMethods.PerformClickOnObject(element("CreateOrderButton"));
//                                       break;
//                                } catch (Exception e) {
//                                       // TODO: handle exception
//                                       
////                                     CommonMethods.PerformClickOnObject(driver.findElement(By.xpath("//input[@value='Create Order']")));
//                                }
//                                //----------------------------
//                 }
//
//             try {
//                   element("ERP_OVMErrorMsg").isDisplayed();
//                   element("Appilcation_RefreshBtn").click();
//                   element("Appilcation_ApplicationValidationViewBtn").click();
//                   JavascriptExecutor js=(JavascriptExecutor) driver;
//                   js.executeScript("window.scrollBy(0,356);");
//                   WebDriverWait wait = new WebDriverWait(driver, 30);
//                   wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//td[text()='Audit Income (USD):']/following-sibling::td/input"))));
//
//                   Thread.sleep(5000); 
//            } catch (Exception e) { 
//                   element("NewWindowOrderOKButton").click();
//            }
//            
//          driver.switchTo().window(winHandleBefore); 
//          Thread.sleep(5000);       
//         }
//	 
	    @And("^Click on 'Supervisor Override' Button in new window and Click on Ok Button$")
	    public void click_on_supervisor_override_button_in_new_window_and_click_on_ok_button() throws Throwable {
	        Thread.sleep(5000);
	   			 String winHandleBefore = driver.getWindowHandle();
	   			 
	   		     for(String winHandle : driver.getWindowHandles()){
	   		         driver.switchTo().window(winHandle);
	   		     }
	   		     driver.manage().window().maximize() ;
	   	        
//	   			WebDriverWait wait = new WebDriverWait(driver, 30);
//	   			wait.until(ExpectedConditions.visibilityOfElementLocated(
//	   			    (By.xpath("//h2[text()='Patient Validation Information']"))
//	   			));
	   			
	   		  CommonMethods.ScrolDownToTheObject(element("SupervisorOverrideButton"));
	   		 element("SupervisorOverrideButton").click();
	   		 
	   		 
/*	   		 try {
	   			 element("NewWindowOrderOKButton").click();
	   		} catch (Exception e) {
	   			element("Appilcation_RefreshBtn").click();
	   			element("Appilcation_ApplicationValidationViewBtn").click();
	   			element("Appilcation_AuditIncomeTextBx=Xpath;").sendKeys("100");
	   			element("Appilcation_MonthlyRadioBtn").click();
	   			element("ApplicationSaveButton").click();
	   			element("Appilcation_RefreshBtn").click();
	   			 element("SupervisorOverrideButton").click();
	   			 element("NewWindowOrderOKButton").click();
	   			
	   		}*/
	   		 
	   	     driver.switchTo().window(winHandleBefore);
	    }
	 
	    @Then("^Click on Applicant Name Link$")
        public void click_on_applicant_name_link() throws Throwable {
         Thread.sleep(6000);
         try {
             CommonMethods.closeAllInactiveTabsInPfizer();
             Thread.sleep(3000);
             CommonMethods.PerformClickOnObject(element("ApplicantNameLink"));
         }
        catch(Exception e)
         {
            CommonMethods.PerformClickOnObject(element("ApplicantNameLink"));
         }
         Thread.sleep(50000);
        }

	//vinutha merging
	 
		 @And("^Click on 'Attach Case' Button  > Select the type of document > click on Enrollment Form Checkbox$")
		 public void Click_on_Attach_Case_Button_Select_the_type_of_document_click_on_Enrollment_Form_Checkbox() throws Throwable{
			 element("FirstAttachCase").click();
			 element("EnrollmentFormCheckBox").click();
			 Thread.sleep(2000);
			 element("Application_AttachButton").click();
			 
		 }
	
		 @Then("^Read The Patient ID From TextFile$")
		 public void Read_The_Patient_ID_From_TextFile() throws Throwable{
			 BufferedReader bufReader = new BufferedReader(new FileReader(System.getProperty("user.dir")+"\\src\\test\\resources\\TestData\\PatientIDs.txt")); 
			  
				String TotalPatientIDvalues=bufReader.readLine();
				System.out.println("the value is" + TotalPatientIDvalues);
				String[] value=TotalPatientIDvalues.split(" ");
				
				
				NewPatient_ID=value[0];
				System.out.println("new patient id=" +NewPatient_ID);
			    TotalPatientIDvalues=TotalPatientIDvalues.replace(value[0], "");
			    System.out.println("value from notepad"+TotalPatientIDvalues);
			   
			    BufferedWriter bwriter = null;
			     FileWriter fwriter = null;

			     try {
			                                              
			            //creating a file
			            File filepath = new File(System.getProperty("user.dir")+"\\src\\test\\resources\\TestData\\PatientIDs.txt"); 

			              // if file doesnt exists, then create it
			                   if (!filepath.exists()) {
			                         filepath.createNewFile();
			                                           }
			                    // false = overwrite file
			                   fwriter = new FileWriter(filepath,false);
			                   bwriter = new BufferedWriter(fwriter);
			                                              
			                   bwriter.write(TotalPatientIDvalues.trim());
			                     System.out.println("Done");
			                              } 
			     catch (Exception e) {

			              e.printStackTrace();

			                          } finally {

			                                     try {

			                                          if (bwriter != null)
			                                        	  bwriter.close();
			                                          if (fwriter != null);
			                                          fwriter.close();
			                                           } catch (Exception ex) {                                  
			                                             ex.printStackTrace(); }
			                                    
			             }         
		 }
			                                                             

		 @Then("^Select PatientID>Enter Patient ID>Click on Search$")
		 public void Select_PatientID_Enter_Patient_ID_Click_on_Search() throws Throwable{
			System.out.println("new patient id=" +NewPatient_ID);
			driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
			
			
			//driver.switchTo().frame(element("PatientPageIframenew"));
			//Thread.sleep(5000);
			JavascriptExecutor js = (JavascriptExecutor) driver;  
	    	js.executeScript("arguments[0].click();", element("Patient_FieldName"));
			//element("Patient_FieldName1").click();
			Select select=new Select(element("Patient_FieldName"));
			select.selectByVisibleText("PatientID");
			Thread.sleep(2000);
			element("Patient_Fieldvalue").sendKeys(NewPatient_ID);
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			element("Patient_Searchbtn").click();
			Thread.sleep(2000);
			// System.out.println("verifing Add 1");
//			try 
//		    { 
//				driver.switchTo().alert().accept();
//				element("Patient_FieldName").click();				
//				select=new Select(element("Patient_FieldName"));
//				select.selectByVisibleText("PatientID");
//				Thread.sleep(2000);
//				element("Patient_Fieldvalue").sendKeys(NewPatient_ID);				
//				element("Patient_Searchbtn").click();			
//				
//			}
//			catch(Exception e){
//				
//			}
			
//			JavascriptExecutor js = (JavascriptExecutor) driver;  
//	    	js.executeScript("arguments[0].click();", element("Patient_Searchbtn"));
		//	Thread.sleep(3000);
				 
		          
	}
		 
		 @Then("^Click on Add Patient in the page$")
		    public void click_on_add_patient_in_the_page() throws Throwable {
			 element("AddPatientButton").click();

		 }
		 
		 @Then("^select PatientID>>Field>>Value>>Search same patient id$")
		    public void select_patientidfieldvaluesearch_same_patient_id() throws Throwable {
			 Thread.sleep(3000);
		    	
	    	 driver.switchTo().frame(0);
			   
			   WebDriverWait wait = new WebDriverWait(driver, 30); 
			   wait.until(ExpectedConditions.elementToBeClickable(element("OrderRadiobutton")));
		    	element("PatientRadioButton").click();
			   
			   
		    	Thread.sleep(3000);
	    element("FieldDropdown").click();

	    	CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"),getDataFromExcel(ModuleName, TestCaseID, "Patient ID"));
	
	    	Thread.sleep(2000);
	
	element("Valuetxtbox").sendKeys(NewPatient_ID);	
	//element("Valuetxtbox").sendKeys("14279356");
	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	Thread.sleep(3000);
		    }
		 
		  //Manjunath_script
		 @Then("^verify the Approval status as 'Approved'$")
		    public void verify_the_approval_status_as_approved() throws Throwable {
		    	Thread.sleep(5000);
		        element("Application_ApplicantLink").click();
		    	Thread.sleep(3000);
		    	try{
			Assert.assertEquals(element("Applicationstatusasapproved").getText(),getDataFromExcel(ModuleName, TestCaseID, "Applicationstatusasapproved")); 
		    	}
		    	catch(Exception e) {
		    	System.out.println("Applicationstatusasapproved");
		    	}
		    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		    }
		    
		    //Manjunath_script
		    @Then("^verify the Approval status as 'Denied'$")
		    public void verify_the_approval_status_as_denied() throws Throwable {
		    	Thread.sleep(5000);
		        element("Application_ApplicantLink").click();
		    	Thread.sleep(3000);try {
			Assert.assertEquals(element("ApplicationstatusDenied").getText(),getDataFromExcel(ModuleName, TestCaseID, "Applicationstatusasapproved")); 
		    	}
		    	catch(Exception e) {
		    	System.out.println("ApplicationstatusDenied");
		    	}
		    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		    }

		    @And("^Search CaseNumber")
	        public void Search_CaseNumber() throws Throwable {
	            Thread.sleep(3000);
	            driver.switchTo().defaultContent();
	         // element("AppAppealCaseSearch").sendKeys("01569438");
	         // Thread.sleep(2000);
	          element("AppAppealCaseSearch").sendKeys(CaseNumber);
	          Robot r=new Robot();
	          r.keyPress(KeyEvent.VK_ENTER);
	            Thread.sleep(2000);
	            CommonMethods.PerformClickOnObject(element("EnhancemetPharmaReview_AppealCasesFirstPatientLink"));
	            Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	        }
		    
		    
		    
		    @Then("^Read The Patient ID From ReEnrollmentTextFile$")
			 public void Read_The_Patient_ID_From_ReEnrollmentTextFile() throws Throwable{
				 BufferedReader bufReader = new BufferedReader(new FileReader(System.getProperty("user.dir")+"\\src\\test\\resources\\TestData\\ReEnrollmentPatientIDs.txt")); 
				  
					String TotalReEnrollmentPatientIDvalues=bufReader.readLine();
					System.out.println("the value is" + TotalReEnrollmentPatientIDvalues);
					String[] value=TotalReEnrollmentPatientIDvalues.split(" ");
					
					
					ReEnrollmentPatient_ID=value[0];
					System.out.println("new patient id=" +ReEnrollmentPatient_ID);
					TotalReEnrollmentPatientIDvalues=TotalReEnrollmentPatientIDvalues.replace(value[0], "");
				    System.out.println("value from notepad"+TotalReEnrollmentPatientIDvalues);
				   
				    BufferedWriter bwriter = null;
				     FileWriter fwriter = null;

				     try {
				                                              
				            //creating a file
				            File filepath = new File(System.getProperty("user.dir")+"\\src\\test\\resources\\TestData\\ReEnrollmentPatientIDs.txt"); 

				              // if file doesnt exists, then create it
				                   if (!filepath.exists()) {
				                         filepath.createNewFile();
				                                           }
				                    // false = overwrite file
				                   fwriter = new FileWriter(filepath,false);
				                   bwriter = new BufferedWriter(fwriter);
				                                              
				                   bwriter.write(TotalReEnrollmentPatientIDvalues.trim());
				                     System.out.println("Done");
				                              } 
				     catch (Exception e) {

				              e.printStackTrace();

				                          } finally {

				                                     try {

				                                          if (bwriter != null)
				                                        	  bwriter.close();
				                                          if (fwriter != null);
				                                          fwriter.close();
				                                           } catch (Exception ex) {                                  
				                                             ex.printStackTrace(); }
				                                    
				             }  
				     element("Patient_FieldName").click();
						Select select=new Select(element("Patient_FieldName"));
						select.selectByVisibleText("PatientID");
						Thread.sleep(2000);
						element("Patient_Fieldvalue").sendKeys(ReEnrollmentPatient_ID);
						Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
						element("Patient_Searchbtn").click();
						Thread.sleep(2000);
						try {
							driver.switchTo().alert().accept();
							element("Patient_FieldName").click();
							select=new Select(element("Patient_FieldName"));
							select.selectByVisibleText("PatientID");
							Thread.sleep(2000);
							element("Patient_Fieldvalue").sendKeys(ReEnrollmentPatient_ID);
							
							element("Patient_Searchbtn").click();
							
							
						}catch(Exception e){
							
						}
						
						Thread.sleep(3000);
				     
				     
			 }
				                   
		    
		    
		//march 4th code
		    
		   


		@Then("^Verify that 'Priority' check box field is present on patient's edit layout$")
			public void verify_that_priority_check_box_field_is_present_on_patients_edit_layout() throws Throwable {

				
				Thread.sleep(2000);
				driver.switchTo().frame(element("ApplicationPageIframe"));
				assertTrue(element("Cases_PriorityCheckBox").isDisplayed());

				driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS); 

			}

		@Then("^Verify 'Prioritization Date' feilds have date Enterd$")
			public void verify_prioritization_date_feilds_have_date_enterd() throws Throwable {
//				System.out.println(element("Cases_PrioritizationDateBox").getText());
//				element("Cases_PrioritizationDateBox").getText();
//				assertTrue(element("Cases_PrioritizationDateBox").getText().length()>0);
				assertTrue(element("Cases_PrioritizationDateBox").isDisplayed());
			}


		@Then("^Verify that CET agent is able mark & unmark a Prioritized checkbox for the particular patient$")
			public void verify_that_cet_agent_is_able_mark_unmark_a_prioritized_checkbox_for_the_particular_patient() throws Throwable {

			try {
				
				int noOfFrames = driver.findElements(By.xpath("//iframe")).size();
				driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
				for(int i = 0; i<=noOfFrames; i++) {
					try { 
					driver.switchTo().defaultContent(); 
					driver.switchTo().frame(i);
					Thread.sleep(2000);
					element("Cases_PriorityCheckBox").click();
					assertFalse(element("Cases_PriorityCheckBox").isSelected());
					Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
					  
					 
					 break; 
					 } catch  (NoSuchElementException | NoSuchFrameException e ){
						 
					  }
				}
				
			} catch (Exception e) {
				// TODO: handle exception
				element("Cases_PriorityCheckBox").click();
				assertFalse(element("Cases_PriorityCheckBox").isSelected());
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			}

				

			}
	
		@Then("^Click On Search Patient Tab$")
        public void click_On_Search_Patient_tab() throws Throwable {
            Thread.sleep(5000);
            CaseNumber= driver.findElement(By.xpath("//div[contains(text(),'Case')]/..//lightning-formatted-text")).getText();
           System.out.println(CaseNumber);
       
           Thread.sleep(3000);
              try {
            	  
               CommonMethods.PerformClickOnObject(element("SearchPatientTab"));
              }catch(Exception e) {
                  CommonMethods.PerformClickOnObject(element("SearchPatientTab"));
              }
                  System.out.println("Click On Search Patient Tab");
        }
      
  
		    
	}	    
		    
		    
		    
		    
		    
		    
		    
		    


	
	