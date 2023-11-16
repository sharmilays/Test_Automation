package pharmaTestSuite.steps.stepsPharma;

import static org.junit.Assert.assertTrue;
import static org.testng.Assert.assertFalse;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.NoSuchFrameException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import objectRepository.ApplicationPageObject;
import objectRepository.GetObj;
import objectRepository.ObjectManager;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

public class EnhancementPharmacistReview extends GetObj {

	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;
	public static String RX_ID;
	public static String PrescriptionID;
	public static String ApplicationID;
//add
	static ObjectManager objRepo;
    static ApplicationPageObject App_Page_objects;
	
	@SuppressWarnings("static-access")
	public EnhancementPharmacistReview(WebDriverFactory DriverFactory) throws Exception {
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();
		objRepo= new ObjectManager(DriverFactory);
        App_Page_objects=objRepo.getApplicationPageObject();
	}

	@And("^Verify that Pharmacist Review Required checkbox and Pharmacist Review Reason drop downs are visible$")
	public void Verify_that_Pharmacist_Review_Required_checkbox_and_Pharmacist_Review_Reason_drop_downs_are_visible() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("EnhancementPharmaReview_PharmacistReviewRequiredCheckbox"));
		element("EnhancementPharmaReview_PharmacistReviewRequiredCheckbox").isDisplayed();
		element("EnhancementPharmaReview_PharmacistReviewReasonDpdwn").isDisplayed();

	}


	@And("Verify that Pharmacist Review Required and Pharmacist Review Reason fields are read only$")
	public void Verify_that_Pharmacist_Review_Required_and_Pharmacist_Review_Reason_fields_are_read_only() throws Throwable {

		Thread.sleep(5000);
		int size = driver.findElements(By.tagName("iframe")).size();
		System.out.println(size);

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		for (int i =0;i<=size;++i ) {

			try {
				driver.switchTo().defaultContent();
				driver.switchTo().frame(i);
				WebElement  ele1 = element("EnhancementPharmaReview_PharmacistRReadOnlyCheckbox");
				System.out.println(ele1.isEnabled());
				break;
			} catch (NoSuchElementException | NoSuchFrameException e) {

			}
		}
		Thread.sleep(5000);
		CommonMethods.ScrolDownToTheObject(element("EnhancementPharmaReview_PharmacistRReadOnlyCheckbox"));
		CommonMethods.ScrolDownToTheObject(element("Application_OriginalRx"));
		Assert.assertTrue(element("EnhancementPharmaReview_PharmacistRReadOnlyCheckbox").isEnabled());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		try {
			Assert.assertFalse(element("EnhancementPharmaReview_PharmacistReviewRReasonDropDown").isEnabled());
			Assert.fail();

		}
		catch(NoSuchElementException | NoSuchFrameException e)
		{
			Reporter.addStepLog("PharmacistReview ReasonDropDown is Readonly");
		}

	}	
	@And("^Verify that agent is able to select the checkbox Pharmacist Review Required$")
	public void Verify_that_agent_is_able_to_select_the_checkbox_Pharmacist_Review_Required() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("EnhancementPharmaReview_PharmacistReviewRequiredCheckbox").click();


	}
	@And("^Select Value for pharmacist Review Reason$")
	public void Select_Value_for_pharmacist_Review_Reason() throws Throwable {
		CommonMethods.selectFromDropDownByVisibleText(element("EnhancementPharmaReview_PharmacistReviewReasonDpdwn"),getDataFromExcel(ModuleName, TestCaseID, "PharmacistReviewReason"));
		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Do not select the Reason from the Pharmacist review reason field>>Save>>Verify the Alert message is displaying$")
	public void Do_not_select_the_Reason_from_the_Pharmacist_review_reason_field_Save_Verify_the_Alert_message_is_displaying() throws Throwable {
		element("ApplicationSaveButton").click();
		Assert.assertTrue(CommonMethods.getAlertText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "PharmacistReviewReason")));
		CommonMethods.acceptAlert();

	}

	@And("^In OVM page Verify the status$")
	public void In_OVM_page_Verify_the_status() throws Throwable {
		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();

		for(String winHandle : driver.getWindowHandles()){
			driver.switchTo().window(winHandle);
		}
		Thread.sleep(1000);
		driver.manage().window().maximize() ;


		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated(
				(By.xpath("//h2[text()='Patient Validation Information']"))));
		CommonMethods.ScrolDownToTheObject(element("Patient_Enrollment"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue("Verify the Prescription message",element("EnhancementPharmaReview_PrescriptionMessage").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "OVMMessage")));
		assertTrue("'Final Outcome is Incomplete'Error Message is displayed",element("FinalOutcomeText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Final Outcome Status")));
		driver.switchTo().window(winHandleBefore);
	}
	@And("^Verify the Dropdown values under Pharmacist Review Reason$")
	public void Verify_the_Dropdown_values_under_Pharmacist_Review_Reason() throws Throwable {
		List<WebElement> dpdownvalues=new ArrayList<WebElement>();
		dpdownvalues= driver.findElements(By.xpath("//select[@class='pharmacist_review_ip_select']//option"));
		int count = dpdownvalues.size();
		// System.out.println(count);
		element("EnhancementPharmaReview_PharmacistReviewReasonDpdwn").click();
		String excelVal= getDataFromExcel(ModuleName, TestCaseID, "PharmacistReviewReasonDpdownvalues");
		// System.out.println("Excel avl "+ excelVal);
		for (int i=1; i<count;i++)
		{
			String values=dpdownvalues.get(i).getText();
			//  System.out.println(values);
			assertTrue(excelVal.contains(values));	  
		}

	}

	@And("^Enter the Comments$")
	public void Enter_the_Comments() throws Throwable {
		element("PharmacistCommentfirstTextbox").click();
		element("PharmacistCommentEditBtn").click();
		element("EnhancemetPharmaReview_PharmacistCommentTextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PharmacistComments"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(2000);
	}
	@And("^Get the RXID from the Prescription Page$")
	public void Get_the_RXID_from_the_Prescription_Page() throws Throwable {
		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("EnhancemetPharmaReview_RXID")); 
		RX_ID= element("EnhancemetPharmaReview_RXID").getText();
		System.out.println(RX_ID); 
	}


	@And("^Search RX_ID$")
	public void Search_RX_ID() throws Throwable {
		System.out.println(RX_ID);
		element("EnhancemetPharmaReview_SearchTxtbox").sendKeys(RX_ID);

		// element("EnhancemetPharmaReview_SearchTxtbox").sendKeys("RX-440946");
		element("EnhancemetPharmaReview_SearchIon").click();
		Thread.sleep(4000);
	}

	@And("^Click on Prescription Product Drop Down and select Pharmacist Review Completed$")
	public void Click_on_Prescription_Product_Drop_Down_and_select_Pharmacist_Review_Completed() throws Throwable {
		Thread.sleep(3000);
		element("PrescriptionProductDropDownIcon").click();
		element("PharmacistReviewCompletedLabel").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify for the above prescription,Pharmacist Review Completed checkbox as checked and is not editable by Agent$")
	public void Verify_for_the_above_prescription_Pharmacist_Review_Completed_checkbox_as_checked_and_is_not_editable_by_Agent() throws Throwable {

		element("EnhancemetPharmaReview_PRCDisabledCheckbox").isDisplayed();
	}

	@And("^Select pharmacy Review Complete CheckBox>>Click on Save$")
	public void Select_pharmacy_Review_Complete_CheckBox_Click_on_Save() throws Throwable {
		element("PharmacistReviewCompleteColomn").click();
		element("PharmacistReviewCompleteEditButton").click();
		element("PharmacistReviewCompleteCheckBox").click();
		element("PharmacistCommentfirstTextbox").click();
		element("PharmacistSaveButton").click();
		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));


	}
	@And("^Click on Prescription link$")
	public void Click_on_Prescription_link() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("EnhancemetPharmaReview_Prescriptionlink").click();
		Thread.sleep(3000);	

	}
	@And("^Click on Applicant Link$")
	public void Click_on_Applicant_Link() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("EnhancemetPharmaReview_Applicantlink").click();
		Thread.sleep(2000);
	}


	@Then("^Verify an event is getting created with the Activity code Pharmacist Review Initiated$")
	public void Verify_an_event_is_getting_created_with_the_Activity_code_Pharmacist_Review_Initiated() throws Throwable {
		int size = driver.findElements(By.tagName("iframe")).size();
		System.out.println(size);

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		for (int i =0;i<=size;++i ) {

			try {
				driver.switchTo().defaultContent();
				driver.switchTo().frame(i);

				WebElement  ele1 = element("EnhancemetPharmaReview_PRItext");
				CommonMethods.PerformClickOnObject(element("EnhancemetPharmaReview_PRItext"));
				System.out.println(ele1.isDisplayed());
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

				break;
			} catch (NoSuchElementException | NoSuchFrameException e) {

			}

		}


	}
	@And("^Get the Prescription ID$")
	public void Get_the_Prescription_ID() throws Throwable {

		PrescriptionID=element("EnhancemetPharmaReview_PrescriptionID").getText();
		// System.out.println(PrescriptionID);

	}

	@Then("^Verify Pharmacist is able to see the prescription listed for review$")
	public void Verify_Pharmacist_is_able_to_see_the_prescription_listed_for_review() throws Throwable {

		assertTrue(element("EnhancemetPharmaReview_Prescriptionfirstvalue").getText().equalsIgnoreCase(PrescriptionID));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver)); 
	}
	@Then("^Verify once review is completed pharmacist should not be able to see the Prescription listed for review$")
	public void Verify_once_review_is_completed_pharmacist_should_not_be_able_to_see_the_Prescription_listed_for_review() throws Throwable {
		// assertFalse(element("EnhancemetPharmaReview_Prescriptionfirstvalue").getText().equalsIgnoreCase(PrescriptionID));
		element("EnhancemetPharmaReview_PendingPReviewList").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver)); 

	}

	@And("^Clear the Value in the Text Filed$")
	public void Clear_the_Value_in_the_Text_Filed() throws Throwable {
		element("EnhancemetPharmaReview_SearchTxtbox").clear();

	}
	@Then("^Verify Following Practitioner Pop Up>Click on OK$")
	public void Verify_Following_Practitione_Pop_Up_Click_on_OK() throws Throwable {
		Thread.sleep(5000);
		assertTrue("Verify the following Practitioner pop up is displayed",element("EnhancemetPharmaReview_PAPpopupMsg").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));  
		CommonMethods.PerformClickOnObject(element("OkButton"));

	}

	@And("^Verify that Pharmacist review pending is not present for agent in the List View values$")
	public void Verif_that_Pharmacist_review_pending_is_not_present_for_agent_in_the_List_View_values() throws Throwable {
		Thread.sleep(3000);
		element("PrescriptionProductDropDownIcon").click();
		try {
			Assert.assertFalse(element("PendingPharmacistReviewLabel").isDisplayed());
			Assert.fail();

		}
		catch(NoSuchElementException | NoSuchFrameException e)
		{
			Reporter.addStepLog("Pharmacist review pending is present for agent in the List View values");
		} 
	}

	@And("^Get the Application ID$")
	public void Get_the_Application_ID() throws Throwable {
		ApplicationID=element("EnhancemetPharmaReview_ApplicationID").getText(); 
		System.out.println(ApplicationID);

	}
	@Then("^Select ApplicationID from DropDown$")
	public void Select_ApplicationID_from_DropDown() throws Throwable {
		element("FieldDropdown").click();
		Thread.sleep(3000);
		CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"), getDataFromExcel(ModuleName,TestCaseID, "ApplicationDropdownValue1"));

		element("PatientValueTextBox1").clear();
		element("PatientValueTextBox1").sendKeys(ApplicationID);
		//	element("PatientValueTextBox1").sendKeys("286853");
	}

	@Then("^verify that event is logged as pharmacist review has been completed$")
	public void verify_that_event_is_logged_as_pharmacist_review_has_been_completed() throws Throwable {
		int size = driver.findElements(By.tagName("iframe")).size();
		System.out.println(size);

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		for (int i =0;i<=size;++i ) {

			try {
				driver.switchTo().defaultContent();
				driver.switchTo().frame(i);

				WebElement  ele1 = element("EnhancemetPharmaReview_PRCompletedtext");
				CommonMethods.PerformClickOnObject(element("EnhancemetPharmaReview_PRCompletedtext"));
				System.out.println(ele1.isDisplayed());
				assertTrue(element("EnhancemetPharmaReview_PRCompletedtext").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "PharmacistReviewStatus")));

				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

				break;
			} catch (NoSuchElementException | NoSuchFrameException e) {

			}

		}


	}

	@When("^Click on First ID link$")
	public void click_on_First_ID_link() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("GlobalSearch_FirstOrderID").click();
		Thread.sleep(2000);
		driver.switchTo().defaultContent();

	}

	@Then("^Verify User should get the 'Medicare Part A Effective Date' 'Date of Transplant fields' and 'Medicare Approved Facility checkbox' on the prescription page$")
	public void Verify_User_should_get_the_Medicare_Part_A_Effective_Date_Date_of_Transplant_fields_and_Medicare_Approved_Facility_checkbox_on_the_prescription_page() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element ("EnhancemetPharmaReview_MedicarePartAEffectiveDateField"));
		element("EnhancemetPharmaReview_MedicarePartAEffectiveDateField").isDisplayed();
		element("EnhancemetPharmaReview_MedicarePartAEffectiveDate").isDisplayed();
		element("EnhancemetPharmaReview_DateOfTransplantDateField").isDisplayed();
		element("EnhancemetPharmaReview_DateOfTransplantField").isDisplayed();
		element("EnhancemetPharmaReview_MedicareAFCheckbox").isDisplayed();
		element("EnhancemetPharmaReview_MedicareAF").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));


	}

	@Then("^Verify that user should get 'Vaccine Replacement Approval' 'Vaccine Lot' and 'Date of Administration'$")
	public void Verify_that_user_should_get_Vaccine_Replacement_Approval_Vaccine_Lot_and_Date_of_Administration() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element ("EnhancemetPharmaReview_VaccineReplacementApprovalField"));
		element ("EnhancemetPharmaReview_VaccineReplacementApprovalField").isDisplayed();
		element ("EnhancemetPharmaReview_VaccineLotField").isDisplayed();
		element ("EnhancemetPharmaReview_DateofAdministrationField").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));


	}

	@And("^Verify that user should get 'Prescriber program terms and conditions checkbox'$")
	public void verify_that_user_should_get_prescriber_program_terms_and_conditions_checkbox() throws Throwable {

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("EnhancemetPharmaReview_PrescriberProgramTermsandConditionsField").isDisplayed();
	}
	@And("^Verify that user should get 'Are you between 19-25 years old Applicable only for Tremenba'$")
	public void verify_that_user_should_get_are_you_between_1925_years_old_applicable_only_for_tremenba() throws Throwable {

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("EnhancemetPharmaReview_AreYouBtwField").isDisplayed();
	}
	@Then("^Verify that user should get 'Are you over 18 years Applicable only for Prevnar 13 on the prescription page'$")
	public void Verify_that_user_should_get_Are_you_over_18_years_Applicable_only_for_Prevnar_13_on_the_prescription_page() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("EnhancemetPharmaReview_AreYouOverField").isDisplayed();

	}

	@And("^Verify that System generates an auto number for Vaccine Replacement Approval$")
	public void Verify_that_System_generates_an_auto_number_for_Vaccine_Replacement_Approval() throws Throwable {
		element("EnhancemetPharmaReview_VRARandomNumField").isDisplayed();
	}

	@And("^Verify that the 'Refills' should be defaulted to '4'$")
	public void Verify_that_the_Refills_should_be_defaulted_to_4() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		assertTrue(element("Application_RefillsButtonFour").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Refills")));
	}

	@Then("^Verify that product group 'A' should display automatically for the selected product$")
	public void Verify_that_product_group_A_should_display_automatically_for_the_selected_product() throws Throwable {

		//System.out.println(element("EnhancemetPharmaReview_Group").getAttribute("value")+"3");

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue( element("EnhancemetPharmaReview_Group").getAttribute("value").equals(getDataFromExcel(ModuleName, TestCaseID, "GroupA")));	 

	}
	@Then("^Verify that product group 'B' should display automatically for the selected product$")
	public void Verify_that_product_group_B_should_display_automatically_for_the_selected_product() throws Throwable {

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("EnhancemetPharmaReview_Group2").getAttribute("value").equals(getDataFromExcel(ModuleName, TestCaseID, "GroupB")));	  
	}

	@Then("^Verify that product group 'C' should display automatically for the selected product$")
	public void Verify_that_product_group_C_should_display_automatically_for_the_selected_product() throws Throwable {
		assertTrue( element("EnhancemetPharmaReview_Group").getAttribute("value").equals(getDataFromExcel(ModuleName, TestCaseID, "GroupC")));	  
	}

	@Then("^Verify the FullfillmentMethod Medvatx Second Dropdown and Ship To Patient$")
	public void Verify_the_FullfillmentMethod_Medvatx_Second_Dropdown_and_Ship_To_Patient() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("Application_MedvantxSecondDrpdownvalue"));
		assertTrue(element("Application_MedvantxSecondDrpdownvalue").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "FullfillmentMethodvalue2")));
		assertTrue(element("Application_PatientSecondDrpdownvalue").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "ShipTovalue2")));	
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}		

	@Then("^Verify Group A product cant be shipped to patient$")
	public void Verify_Group_A_product_cant_be_shipped_to_patient() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for(String winHandle : driver.getWindowHandles()){
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize() ;


		element("Application_GrpAProductCantShippedtxt").isDisplayed();
		driver.switchTo().window(winHandleBefore);

	}





	@And("^Click On 'Add Product2' Button$")
	public void click_on_add_product2_buuton() throws Throwable {
		Thread.sleep(5000);
		int size = driver.findElements(By.tagName("iframe")).size();
		System.out.println(size);

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		for (int i =0;i<=size;++i ) {

			try {
				driver.switchTo().defaultContent();
				driver.switchTo().frame(i);
				CommonMethods.ScrolDownToTheObject(element("AddProductButton"));
				WebElement  ele1 = element("AddProductButton");
				System.out.println(ele1.isDisplayed());
				break;
			} catch (NoSuchElementException | NoSuchFrameException e) {

			}

		}
		CommonMethods.ScrolDownToTheObject(element("PAPDetermineOutcomeButton"));
		element("AddProductButton").click(); 
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);                 
	}





	@Then("^Click on 'Product Name' drop down and Verify that 'Product Name' drop down") 
	public void Click_on_Product_Name_drop_down_and_Verify_that_Product_Name_drop_down() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName")); 
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("ProductNameDropDown").click();

		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName3")); 
		Thread.sleep(1000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName4")); 
		Thread.sleep(1000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Select the 'Product A' and Verify Group Auto Populated based on the selected Value$")
	public void Select_the_Product_A_and_Verify_Group_Auto_Populated_based_on_the_selected_Value() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName")); 
		Thread.sleep(1000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue( element("EnhancemetPharmaReview_Group").getAttribute("value").equals(getDataFromExcel(ModuleName, TestCaseID, "GroupA")));	 

	}

	@Then("^Select the 'Product B' and Verify Group Auto Populated based on the selected Value$")
	public void Select_the_Product_B_and_Verify_Group_Auto_Populated_based_on_the_selected_Value() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName2")); 
		Thread.sleep(1000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("EnhancemetPharmaReview_Group").getAttribute("value").equals(getDataFromExcel(ModuleName, TestCaseID, "GroupB")));	  	 

	}
	@Then("^Select the 'Product C' and Verify Group Auto Populated based on the selected Value$")
	public void Select_the_Product_C_and_Verify_Group_Auto_Populated_based_on_the_selected_Value() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName3")); 
		Thread.sleep(1000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue( element("EnhancemetPharmaReview_Group").getAttribute("value").equals(getDataFromExcel(ModuleName, TestCaseID, "GroupC")));	  	 

	}

	@Then("^Select the 'Product D' and Verify Group Auto Populated based on the selected Value$")
	public void Select_the_Product_D_and_Verify_Group_Auto_Populated_based_on_the_selected_Value() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName4")); 
		Thread.sleep(1000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue( element("EnhancemetPharmaReview_Group").getAttribute("value").equals(getDataFromExcel(ModuleName, TestCaseID, "GroupD")));	  	 

	}


	@And("^Verify Incomplete Description should be 'Product Name is Missing'$")
	public void Verify_Incomplete_Description_should_be_Product_Name_is_Missing() throws Throwable {
		Thread.sleep(7000);
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
			assertTrue("'Verify Incomplete Description  should be Product Name is Missing",element("EnhancemetPharmaReview_OVMProductErrMsg").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "ProductErrorMessage")));
		}catch(Exception e) {
			for(String winHandle : driver.getWindowHandles()){
				driver.switchTo().window(winHandle);
			}
			assertTrue("'Verify Incomplete Description  should be Product Name is Missing",element("EnhancemetPharmaReview_OVMProductErrMsg").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "ProductErrorMessage")));
		}
		driver.close();
		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Verify that OVM message is displayed with message 'Missing Prescriber Consent Signature Date'$")
	public void Verify_that_OVM_message_is_displayed_with_message_Missing_Prescriber_Consent_Signature_Date() throws Throwable {

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
			assertTrue(element("Application_MissingPrescriberConsentSignatureDate").isDisplayed());
		}catch(Exception e) {
			for(String winHandle : driver.getWindowHandles()){
				driver.switchTo().window(winHandle);
			}
			assertTrue(element("Application_MissingPrescriberConsentSignatureDate").isDisplayed());
		}
		// driver.close();
		driver.switchTo().window(winHandleBefore);


	}

	@And("^Verify Popup window should display with 'Pill Qty Entered and correct Health Care Practitioner and Address'$")
	public void Verify_Popup_window_should_display_with_Pill_Qty_Entered_and_correct_Health_Care_Practitioner_and_Address() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("EnhancemetPharmaReview_PAPCorrectHealthtxt").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "PAPCorrectHealth"))); 
	}
	@Then("^Verify Practitioner Information page should be displayed with 'Patient Name' 'Patient ID' and 'Appliaction ID'$")
	public void Verify_Practitioner_Information_page_should_be_displayed_with_Patient_Name_Patient_ID_and_Appliaction_ID() throws Throwable {
		element("EnhancemetPharmaReview_PatientNametxt").isDisplayed();
		element("EnhancemetPharmaReview_ApplicationIDtxt").isDisplayed();
		element("EnhancemetPharmaReview_PatientIDtxt").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify User should get the alert message$")
	public void verify_pharmacy_review_reason_mandatory_alert_pop_is_appeared() throws Throwable {
		Alert alert=driver.switchTo().alert();
		// Assert.assertEquals(alert.getText(), getDataFromExcel(ModuleName, TestCaseID, "Alert Message"));
		Assert.assertTrue(getDataFromExcel(ModuleName, TestCaseID, "Alert Message").contains(alert.getText()));
		alert.accept();		    
	} 
	@And("^Select 'Form Strength'$")
	public void Select_Form_Strength() throws Throwable {
		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength")); 
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}
	
	 @And("^Search Prescription ID$")
	 public void search_prescription_id() throws Throwable {
	 	 System.out.println(PrescriptionID);
	 	 element("EnhancemetPharmaReview_SearchTxtbox").sendKeys(PrescriptionID);
	 	 
	 	// element("EnhancemetPharmaReview_SearchTxtbox").sendKeys("RX-440946");
	 	 element("EnhancemetPharmaReview_SearchIon").click();
	 	 Thread.sleep(4000);
	 	driver.navigate().refresh();
	 }
	 
	 @Then("^Verify That System Throws Error That Reenrollment Application Is Sent Early$")
	 
	 public void Verify_That_System_Throws_Error_That_Reenrollment_Application_Is_Sent_Early() throws Throwable{

		 Thread.sleep(5000);
			String winHandleBefore = driver.getWindowHandle();

			for(String winHandle : driver.getWindowHandles()){
				driver.switchTo().window(winHandle);
			}
			Thread.sleep(1000);
			driver.manage().window().maximize() ;
			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions.visibilityOfElementLocated(
					(By.xpath("//h2[text()='Patient Validation Information']"))));
			 element("EnhancemetPharmaReview_ApplicationSentEarlyMsg").isDisplayed();
			driver.switchTo().window(winHandleBefore);
			
	 }
	 
	 @And("^Click on 'Attach Case' Button  > Select the PAP Appeal type of document > click on 'Attach' Button$")
		public void click_on_attach_case_button_select_the_PAP_Appeal_type_of_document_click_on_attach_button()
				throws Throwable {

			element("FirstAttachCase").click();
			element("AppPAPAppealDocument").click();
			element("InsuranceInformationCheckBox").click();
			element("AttachButton").click();

			// element("FirstAttachCase").click();
			// element("ApplicationPAPAPealCheckbox").click();
			// element("AttachButton").click();
			// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		}
	 
	 
	 
	  @Then("^Select Document Intake and Appeals cases$")
	    public void select_Documentt_Intake_and_Appeals_cases() throws Throwable {
	    	element("CasesListViewDropdown").click();
	    	element("EnhancemetPharmaReview_AppealsCasesLink").click();
	    	Thread.sleep(3000);
	    	try {
	    		element("CasesListViewDropdown").click();
		    	element("EnhancemetPharmaReview_AppealsCasesLink").click();
	    		
	    	}
	    		catch(Exception e) {
	    		
	    	}
	    	
	    	
	    	
	    }
	 
	 
	  @And("^Click On Application Red Link$")
	 public void Click_On_Application_Red_Link() throws Throwable{
		  
		 
		  element("EnhancemetPharmaReview_RedApplicationLink").click();
		  Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		 
		  
	  }
	 
	  @Then("^Create Enrollment Appeal$")
	    public void Create_Enrollment_Appeal() throws Throwable {
		  
			driver.navigate().refresh();
			Thread.sleep(5000);
		  
	    	driver.switchTo().frame(element("Frame_TypeOfAppeal"));
	    	Select Drop1=new Select(element("AppealTypeDropDown"));
	    	Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealType"));
	    	driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	element("ReasonForPAPAppealAddButton").click();
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
	       // element("AppealsSaveButton").click();
	    	element("ApplicationProductsCheckbox").click();
	    	
	    }
	  
	  
	  @Then("^Create Enrollment Appeal and Save$")
	    public void Create_Enrollment_Appeal_and_Save() throws Throwable {
		  
	    	driver.switchTo().frame(element("Frame_TypeOfAppeal"));
	    	Select Drop1=new Select(element("AppealTypeDropDown"));
	    	Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealType"));
	    	driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	    	//Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	element("ReasonForPAPAppealAddButton").click();
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
	    	
	    	
	    }

	  @Then("^Select The Type Of Appeal$")
	    public void Then_Select_The_Type_Of_Appeal() throws Throwable
	    {
		  driver.switchTo().frame(element("Frame_TypeOfAppeal"));
		  Select Drop1=new Select(element("AppealTypeDropDown"));
	    	Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealType"));
	    	driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	    }
	    
	    @And("^Verify Appeal specilaist should get the 'Cannot create an appeal on this application' error message$")
	    
	    public void Verify_Appeal_specilaist_should_get_the_Cannot_create_an_appeal_on_this_application_error_message() throws Throwable{
	    	
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	String ErrorMsg=element("Appeals_HomeDeliveryErrorMsg").getText();
	    	System.out.println(ErrorMsg);
	    	assertTrue(element("Appeals_HomeDeliveryErrorMsg").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "ErrorMessage")));
	    }
	
	    @And("^Click on 'PAP Determine Outcom' Button after Appeal Verification$")
	    public void Click_on_PAP_Determine_Outcom_Button_after_Appeal_Verification() throws Throwable{
	    	driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
	    WebDriverWait wait = new WebDriverWait(driver, 30);
	  	wait.until(ExpectedConditions.visibilityOfElementLocated(
	  	    (By.xpath("//input[@value='PAP Determine Outcome']"))));
	     CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));
	    	
	    	
	    }
	 
	    @And("^Verify User Should be Able To See All The Products In Appeals Products Field$")
	 public void Verify_User_Should_be_Able_To_See_All_The_Products_In_Appeals_Products_Field() throws Throwable
	 {
	   
	   assertTrue(element("EnhancemetPharmaReview_FirstAppealProductName").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "ProductName")));
	   assertTrue(element("EnhancemetPharmaReview_SecondAppealProductName").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "ProductName2")));	
	   Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver)); 	
	 }
	    
	    @And("^Click On 'Add Product' Button After Attach$")
	    public void Click_On_Add_Product_Button_After_Attach() throws Throwable{
	    	driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
	    	 WebDriverWait wait = new WebDriverWait(driver, 30);
	 	  	wait.until(ExpectedConditions.visibilityOfElementLocated(
	 	  	    (By.xpath("//input[@value='Add Product']"))));
	 	     CommonMethods.PerformClickOnObject(element("AddProductButton"));
	    	
	    }
	    
	    @Then("^Verify User Should be Able To See All The Products Added In 'Application Products' Field With Check Box$")
	    public void Verify_User_Should_be_Able_To_See_All_The_Products_Added_In_Application_Products_Field_With_Check_Box() throws Throwable
	    {
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver)); 	
	    	element("EPR_SecondApplicationProductsCheckbox").click();
	    	
	    }
	    
	    @Then("^Create Second Enrollment Appeal$")
	    public void Create_Second_Enrollment_Appeal()throws Throwable
	    {
	    	driver.navigate().refresh();
	    	Thread.sleep(5000);
	    	driver.switchTo().frame(element("Frame_TypeOfAppeal"));
	    	Select Drop1=new Select(element("AppealTypeDropDown"));
	    	Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealType"));
	    	driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	element("ReasonForPAPAppealAddButton").click();
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
	    	element("EPR_SecondApplicationProductsCheckbox").click();
	    	
	    }
	    
	    @And("^Click On Appeal Link$")
	    public void Click_On_Appeal_Link()throws Throwable{
	    	driver.switchTo().defaultContent();
	    	Thread.sleep(8000);
	    	JavascriptExecutor js=(JavascriptExecutor)driver;
	    	js.executeScript("window.scrollBy(0,600);");
	    	 WebDriverWait wait = new WebDriverWait(driver, 30);
		 	  	wait.until(ExpectedConditions.visibilityOfElementLocated(
		 	  	    (By.xpath("(//div[text()='Appeal Status:']/../../../preceding::h3//div//a)[4]"))));
		 	     CommonMethods.PerformClickOnObject(element("EPR_AppealLink"));
	    	
	    }
	    
	    @Then("^Verify That Only Checked Product Is Read Only$")
	    public void Verify_That_Only_Checked_Product_Is_Read_Only() throws Throwable
	    {
	    	Thread.sleep(10000);
	    	driver.switchTo().frame(element("Frame_TypeOfAppeal"));
	    	if(element("ApplicationProductsCheckbox").isEnabled())
	    	{
	    		Reporter.addStepLog("Checkbox is enabled");
	    	}
	    	else
	    	{
	    		Reporter.addStepLog("Checkbox Disabled");
	    		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	}
	    	if(element("EPR_SecondApplicationProductsCheckbox").isEnabled()) {
	    		Reporter.addStepLog("Checkbox is enabled");
	    		
	    	}else {
	    		
	    		Reporter.addStepLog("Checkbox Disabled");
	    		
	    	}
	    	
	    }
	    
	    @Then("^Verify Reason for Denial Message$")
	    public void Verify_Reason_for_Denial_Message() throws Throwable
	    
	    {
	    	driver.switchTo().frame(element("Frame_TypeOfAppeal"));
	    	Select Drop1=new Select(element("AppealTypeDropDown"));
	    	Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealType"));
	    	driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	assertTrue("Verify Reason for Denial Message",element("ReasonForDenialText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Reason for Denial").trim()));
	    	element("EPR_AppealIncomeReason").click();
	    	element("ReasonForPAPAppealAddButton").click();
	    	element("EPR_AppealOutPatientReason").click();
	    	element("ReasonForPAPAppealAddButton").click();
	    	element("EPR_AppealUSResidencyReason").click();
	    	driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	    	CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
	    	 element("AppealsSaveButton").click();
	    }
	    
	   
	    @And("^Select Type Of Appeal From AppealType$")
	    public void Select_Type_Of_Appeal_From_AppealType()throws Throwable
	    {
	    	Thread.sleep(5000);
			driver.navigate().refresh();
			Thread.sleep(8000);

			try {
				driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
				Select Drop1 = new Select(element("AppealTypeDropDown"));
	    	Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealType"));
	    	
			} catch (Exception e) {
				// driver.switchTo().frame(element("Frame_TypeOfAppeal"));
				// driver.switchTo().frame(element("PatientPageIframe"));
				Thread.sleep(3000);
				Select Drop1 = new Select(element("AppealTypeDropDown"));
				Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealType"));
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			}	
	    }
	    
	    @Then("^Verify Save Button Should Not Be Enable$")
	    public void Verify_Save_Button_Should_Not_Be_Enable()throws Throwable
	    {
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	if(element("AppealsSaveButton").isEnabled())
	    	{
	    		Reporter.addStepLog("Save button is enabled");
	    	}
	    	else
	    		Reporter.addStepLog("Save Button is Disabled");
	    }
	    
	    @Then("^Verify Denied Reason and 'What Type of Appeal Is This'$")
	    public void Verify_Denied_Reason_and_What_Type_of_Appeal_Is_This()throws Throwable
	    {
	    	
	    	element("EPR_AppealTypeDropdwnLabel").isDisplayed();
	    	//assertTrue("Verify Reason for Denial Message",element("ReasonForDenialText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Reason for Denial").trim()));
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	
	    }
	    
	    @And("^Verify The Reason for Denial$")
	    public void Verify_The_Reason_for_Denial()throws Throwable
	    {
	    assertTrue("Verify Reason for Denial Message",element("ReasonForDenialText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Reason for Denial").trim()));
    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    }
	    @And("^Verify the Drop Down Values Consists Of 'None Enrollment Appeal Product Appeal and Home Delivery Appeal'$")
	    public void Verify_the_Drop_Down_Values_Consists_Of_None_Enrollment_Appeal_Product_Appeal_and_Home_Delivery_Appeal() throws Throwable
	    {
	    	int count=0;
	    	String values[]= {"--None--","Enrollment Appeal","Product Appeal","Home Delivery Appeal"};
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	List<WebElement> elements=new ArrayList<WebElement>();
	    	List<WebElement> AppealType=driver.findElements(By.xpath("//select[@class='appealType']//option"));
	    	
	    	element("AppealTypeDropDown").click();
	    	for(int i=0;i<values.length-1;i++)
	    	{
	    	
	    		for(WebElement options:AppealType) {
	    		
	    			if(options.getText().equalsIgnoreCase(values[i]))
	    			{
	    				count++;
	    			}
	    		}
	    			
	    	}
	    	if(count==values.length)
	    	{
	    		Reporter.addStepLog("None, Enrollment Appeal, Product Appeal and Home Delivery Appeal are present");
	    	}
	    	else
	    		System.out.println("Not present");
	    }
	    
	    @And("^Select Type Of AppealTwo From AppealType$")
	    public void Select_Type_Of_AppealTwo_From_AppealType()throws Throwable
	    {
	    	//driver.switchTo().frame(element("Frame_TypeOfAppeal"));
	    	Select Drop1=new Select(element("AppealTypeDropDown"));
	    	Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealTypeTwo"));
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    }
	    
	    
	   @And("Click on Created Prescription Link$")
	   public void Click_on_Created_Prescription_Link() throws Throwable
	   {
		   driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		   element("EPR_ApplicationPrescriptionLink").click();
		   
	   }
	    
	    
	    
	    
	    
	    
	   @And("^Click on First Order ID$")
	   public void Click_on_First_Order_ID() throws Throwable
	   {
		   
		   element("GlobalSearch_FirstOrderID").click();
		   Thread.sleep(2000);
		   
	   }
	    
	    
	   @And("^Select Type Of Appeal From AppealType and Product Checkbox$")
	    public void Select_Type_Of_Appeal_From_AppealType_and_Product_Checkbox()throws Throwable
	    {
	    	
	    	Select Drop1=new Select(element("AppealTypeDropDown"));
	    	Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealType"));
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	element("ApplicationProductsCheckbox").click();
	    }  
	    
	    
	   @And("^Select First order created$")
		public void select_First_order_created() throws Throwable {

			
			Thread.sleep(2000);
			element("Application_SecondOrderCheckBox").click();


			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		}
	    
	   @Then("^click on RXID under product name$")
		public void click_on_RXID_under_product_name() throws Throwable {
			element("Application_PrescriptionProductRXIDLink").click();

		}
	    
	    @Then("^Click on Save Btn In The Save Changes Popup$")
	    public void Click_on_Save_Btn_In_The_Save_Changes_Popup() throws Throwable{
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	try {
	    	element("Application_SaveChangesSaveBtn").click();}
	    	catch(Exception e)
	    	{
	    		
	    	}
	    	
	    	
	    }
	    
	    @And("^Verify Ship Status$")
	    public void Verify_Ship_Status() throws Throwable{
	    	
	    	element("ERP_ShipStatus").isDisplayed();
	    	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	
	    }
	    
	    @And("^Verify Error Msg OF HouseHoldIncome$")
	    public void Verify_Error_Msg_OF_HouseHoldIncome() throws Throwable{
	    	
	    	
	    	 Thread.sleep(7000);
			 String winHandleBefore = driver.getWindowHandle();
		        for(String winHandle : driver.getWindowHandles()){
		            driver.switchTo().window(winHandle);
		        }
		        
		        Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		    	 element("ERP_PatientHouseholdMissingerrorMsg").isDisplayed();
		        
		      
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
	   
	    
	    @Then("^Verify Appeal Information Page > Select Appeal Type > Save$")
	    public void Verify_Appeal_Information_Page_Select_Appeal_Type_Save() throws Throwable{
	    	
	    	driver.switchTo().frame(element("PatientPageIframe"));
	    	Select Drop1=new Select(element("AppealTypeDropDown"));
	    	Drop1.selectByVisibleText("Home Delivery Appeal");
	    	assertTrue("Verify Appeal information page is opened",element("AppealInformationHeader").isDisplayed());
	    	element("ERP_AppealPatientHardshipListvalue").click();
	    	element("ReasonForPAPAppealAddButton").click();
	    	CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
	        element("AppealsSaveButton").click();
	    	
	    	
	    }
	    
	    
	    @Then("^Verify OrderShippingErrorMsg In OVM Window$")
	    public void Verify_OrderShippingErrorMsg_In_OVM_Window() throws Throwable{
	    Thread.sleep(7000);
		 String winHandleBefore = driver.getWindowHandle();
	        for(String winHandle : driver.getWindowHandles()){
	            driver.switchTo().window(winHandle);
	        }
	        
	        Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    	 element("ERP_ApplicationPrescriptionOVMOrderShippingErrorMsg").isDisplayed();
	        
	      
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

@And("^Verify No ReEnrollment Allowed For Group c$")
public void Verify_No_ReEnrollment_Allowed_For_Group_c()throws Throwable{
	Thread.sleep(5000);
	 String winHandleBefore = driver.getWindowHandle();
	 
    for(String winHandle : driver.getWindowHandles()){
        driver.switchTo().window(winHandle);
    }
    driver.manage().window().maximize() ;
   
    element("ERP_NoRenrollmentAllowedForGroupCErrorMsg").isDisplayed();
    Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
    
driver.switchTo().window(winHandleBefore);
	
	

	
}
		 
@And("^Set 'Field' to Different 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button $")
public void set_field_to_Different_npi_operator_to_contains_and_enter_any_value_click_on_search_button() throws Throwable {
	String winHandleBefore = driver.getWindowHandle();
	 
     for(String winHandle : driver.getWindowHandles()){
         driver.switchTo().window(winHandle);
     }
     driver.manage().window().maximize() ;
  
     
		Select Drop = new Select(element("SelectInWindow"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor"));
		
		Select Drop2 = new Select(element("NPIOperatorDropDown"));
		//Drop2.selectByVisibleText("starts with");
		Drop2.selectByVisibleText("equals");
		element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue2"));
		element("SearchButton").click();
		Thread.sleep(2000);
	    element("FirstPractitionersRow").click();
		Thread.sleep(2000);
		element("FirstAddFacilityRow").click();
		Thread.sleep(2000);
		element("FirstAddContactRow").click();
		Thread.sleep(8000);
		element("UpdateApplicationPrescriptionButton").click();

     driver.switchTo().window(winHandleBefore);
    // driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe slds-card iframe-parent']//iframe")));
     driver.switchTo().frame(element("ApplicationPageIframe"));
}

@Then("^Select Reason for PAP Appeal as 'US Residency' and Click on save button$")
public void select_reason_for_pap_appeal_as_us_residency_and_click_on_save_button() throws Throwable {
	element("ERP_SelectUSResidencyInDropdown").click();
	element("ReasonForPAPAppealAddButton").click();
	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
    CommonMethods.PerformClickOnObject(element("AppealsSaveButton"));
}

@Then("^Select LOE Appeal and Click on save button$")
public void select_LOE_Appeal_and_click_on_save_button() throws Throwable {
	element("SelectLOEAppealInDropdown").click();
	element("ReasonForPAPAppealAddButton").click();
	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
    CommonMethods.PerformClickOnObject(element("AppealsSaveButton"));
}


@And("^Verify the Appeal Page$") 
public void Verify_the_Appeal_Page() throws Throwable{
	Thread.sleep(8000);
	driver.switchTo().frame(element("ApplicationPageIframe"));
	Thread.sleep(10000);
	
}

@And("^Select Type Of Appeal From AppealTypeDropDwn and Save$")
public void Select_Type_Of_Appeal_From_AppealTypeDropDwn_and_Save() throws Throwable{
	driver.manage().timeouts().implicitlyWait(240, TimeUnit.SECONDS);
Select Drop1=new Select(element("AppealTypeDropDown"));
Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealType"));
Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

assertTrue("Verify Reason for Denial Message",element("ReasonForDenialText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Reason for Denial").trim()));
element("EPR_AppealIncomeReason").click();
element("ReasonForPAPAppealAddButton").click();
element("EPR_AppealOutPatientReason").click();
element("ReasonForPAPAppealAddButton").click();
element("EPR_AppealUSResidencyReason").click();
driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
 element("AppealsSaveButton").click();

}
@Then("^Verify the Application Incomplete Status$")
public void Verify_the_Application_Incomplete_Status()throws Throwable{
   
    CommonMethods.ScrolDownToTheObject(App_Page_objects.ApplicationIncompleteErrorMsg);
    Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
    Assert.assertTrue(App_Page_objects.ApplicationIncompleteErrorMsg.getText().equals(getDataFromExcel(ModuleName, TestCaseID, "OVMApplicationStatus").trim()));
}
@Then("^Verify the Approval Status of Application$")
public void Verify_the_Approval_Status_of_Application()throws Throwable
{
	CommonMethods.ScrolDownToTheObject(App_Page_objects.ApplicationApprovalStatusMsg);
	App_Page_objects.ApplicationApprovalStatusMsg.isDisplayed();
	
}

@Then("^Click on Save Button after Shipping The order> Click on PAP Determine Outcome$")
public void Click_on_Save_Button_after_Shipping_The_order_Click_on_PAP_Determine_Outcome()throws Throwable{
	
	driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
	CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));
	Thread.sleep(8000);
    WebDriverWait wait = new WebDriverWait(driver, 30);
  	wait.until(ExpectedConditions.visibilityOfElementLocated(
  	    (By.xpath("//input[@value='PAP Determine Outcome']"))));
     CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));
}
@And("^Verify AppRX Missing error message In 'Application Prescription Information' block$")
public void verify_AppRx_Missing_error_message_in_application_prescription_information_block() throws Throwable {
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
			element("Application_RXSigMissing").isDisplayed();
	 }catch(Exception e) {
		 for(String winHandle : driver.getWindowHandles()){
	            driver.switchTo().window(winHandle);
	        }
		 element("Application_RXSigMissing").isDisplayed();
	 }
        driver.close();
        driver.switchTo().window(winHandleBefore);
}






} 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		
		 











