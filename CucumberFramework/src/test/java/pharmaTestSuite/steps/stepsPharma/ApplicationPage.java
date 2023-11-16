package pharmaTestSuite.steps.stepsPharma;

import static org.testng.AssertJUnit.assertTrue;
import org.testng.AssertJUnit;
import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.NoSuchFrameException;
import org.openqa.selenium.NoSuchWindowException;
import org.openqa.selenium.UnexpectedAlertBehaviour;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import objectRepository.CasePageObject;
import objectRepository.GetObj;
import objectRepository.ObjectManager;
import utility.CommonMethods;
import utility.ReusabilityMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

public class ApplicationPage extends GetObj {

	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	public static String OrderID;
	public static String PatientID;
	public static String PatientIds;
	public static String Member;
	public static String Variable1;
	public static String Variable2;

	public static String AdverseEventnumber;
	public static String RxID, RXexpirydate, ReleaseDatecal;
	public static String ApplicationIDs;
	public static String NewPatient_ID;

	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;

	static ObjectManager objRepo;
	static CasePageObject Case_Page_objects;

	@SuppressWarnings("static-access")
	public ApplicationPage(WebDriverFactory DriverFactory) throws Exception {
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();
		objRepo = new ObjectManager(DriverFactory);
		Case_Page_objects = objRepo.getCasePageObject();
	}

	@Then("^Verify User should be redirected to another Page to create Application$")
	public void verify_user_should_be_redirected_to_another_page_to_create_application() throws Throwable {
		Thread.sleep(8000);
		  try {
	            driver.switchTo().defaultContent();
	        } catch (NoSuchElementException | NoSuchFrameException e) {

	        }
		Thread.sleep(2000);
		WebDriverWait wait = new WebDriverWait(driver, 30);

		wait.until(ExpectedConditions
				.presenceOfElementLocated(By.xpath("//span[@title='Application Status']")));
		assertTrue("Application Status Page is Displayed", element("ApplicationStatusHeader").isDisplayed());
		System.out.println("Application Status Page is Displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on 'Supporting documents' > click on 'New' Button > Enter Supporting document name > Click on 'Save' button$")
	public void click_on_supporting_documents_click_on_new_button_enter_supporting_document_name_click_on_save_button()
			throws Throwable {
		driver.navigate().refresh();
		element("SupportingDocumentsLink").click();
		System.out.println("Click On Supporting Documents Link");

		element("DocumentsNewButton").click();
		System.out.println("Click On Supporting DocumentsL ink");
		Thread.sleep(3000);
		element("SupportingDocumentNameTextBox")
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "SupportingDocumentName"));
		System.out.println("Eneter the Supporting Document Name");

		CommonMethods.PerformClickOnObject(element("ProgramTextBx"));
		element("ProgramTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ProgramName"));
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
		try {
			element("SearchedValuefromTextBox").click();

		} catch (Exception e) {
			element("ProgramTextBx").click();
			element("ProgramTextBx").clear();
			element("ProgramTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ProgramName"));
			element("SearchedValuefromTextBox").click();
		}
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

		element("DocumentsSaveButton").click();
		System.out.println("Click On Save Button");

	}

	@And("^Verify Supporting document Should created$")
	public void verify_supporting_document_should_created() throws Throwable {

		assertTrue("Supporting Document is saved", element("SavedDocumentName").isDisplayed());
		System.out.println("Supporting Document is saved");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	/*
	 * @Then("^Navigate to the Patient details page > Click on Applications 'New'$")
	 * public void navigate_to_the_patient_details_page_click_on_applications_new()
	 * throws Throwable {
	 * 
	 * // CommonMethods.PerformClickOnObject(element("PatientAccountLink")); //
	 * element("PatientAccountLink").click();
	 * System.out.println("Navigate to the Patient details page");
	 * 
	 * element("ApplicationsLink").click();
	 * System.out.println("Click on Applications Link");
	 * 
	 * driver.navigate().refresh(); element("DocumentsNewButton").click();
	 * System.out.println("Click on New Button");
	 * 
	 * }
	 */ // changes made by vivek

	@And("^Verify  User should be navigated to next page to enter application information$")
	public void verify_user_should_be_navigated_to_next_page_to_enter_application_information() throws Throwable {
		// CommonMethods.SwitichingFrames(element("ApplicationInformationHeader"));
		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe
		// slds-card iframe-parent']//iframe")));
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		Thread.sleep(5000);//added by sharmila
		// assertTrue("Application Information Page is
		// Displayed",element("ApplicationInformationHeader").isDisplayed());
		// System.out.println("Application Information Page is Displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}
	// old code to select enrollment value
	/*
	 * @Then("^Select 'Select Service Offering' to Enrollment$") public void
	 * select_select_service_offering_to_enrollment() throws Throwable {
	 * driver.switchTo().frame(element("ApplicationServicePageIframe")); Select Drop
	 * = new Select(element("SelectServiceOfferingDropdown"));
	 * Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID,
	 * "ServiceOffer"));
	 * 
	 * assertTrue("Application Information Page is Displayed",element(
	 * "ApplicationInformationHeader").isDisplayed());
	 * System.out.println("Application Information Page is Displayed");
	 * Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	 * 
	 * }
	 */

	@Then("^Select 'Select Service Offering' to Enrollment$")
	public void select_select_service_offering_to_enrollment() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//select[contains(@id,'service')]"))));
		Select Drop = new Select(element("SelectServiceOfferingDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ServiceOffer"));
		Thread.sleep(5000);
		element("EPR_ApplicationBrowseLink").click();
		element("EPR_ApplicationDocumentNameCheckbox").click();
		element("ERP_ApplicationInformationAttachBtn").click();
		Thread.sleep(5000);//added by sharmila
		element("ERP_ApplicationInformationProceedLink").click();
		assertTrue("Application Information Page is Displayed", element("ApplicationInformationHeader").isDisplayed());
		System.out.println("Application Information Page is Displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify  All the details Should get selected$")
	public void verify_all_the_details_should_get_selected() throws Throwable {

		String ApplicationSource = element("ApplicationSourceDropdown").getAttribute("value");
		String EverificationIncome = element("EverificationIncomeTextBox").getAttribute("value");
		String PatientorPatientRepresentativeSignatureDate = element("PatientorPatientRepresentativeSignatureDate")
				.getText();
		System.out.println(PatientorPatientRepresentativeSignatureDate);
		assertTrue("Application Source Data is selected",
				ApplicationSource.equals(getDataFromExcel(ModuleName, TestCaseID, "ApplicationSource")));
		assertTrue("Everification Income Data is selected",
				EverificationIncome.equals(getDataFromExcel(ModuleName, TestCaseID, "EVerificationIncome")));
		// assertTrue("Patient or Patient Representative Signature Date is
		// selected",PatientorPatientRepresentativeSignatureDate.equals("2/1/2019"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Set ' E verification income Opt In or Opt out ' as 'Y' > Select Patient or Patient Representative Signature Date$")
	public void set_e_verification_income_opt_in_or_opt_out_as_y_select_patient_or_patient_representative_signature_date()
			throws Throwable {
		Select Drop = new Select(element("EverificationIncomeTextBox"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "EVerificationIncome"));
		element("EverificationIncomeTextBox").click();
		element("PatientRepSignDateLink").click();
		element("ApplicationInformationHeader").click();

	}

	@Then("^Enter Household Income 1000 > Check 'Monthly' radio button > Check Proof of Income checkbox $")
	public void enter_household_income_1000_check_monthly_radio_button_check_proof_of_income_checkbox()
			throws Throwable {
		element("HouseholdIncomeTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HouseholdIncome"));
		element("HouseholdIncomeMonthlyRadioButton").click();
		element("ProofofIncomeCheckBox").click();

	}

	@Then("^Enter Household Income 1000 > Check 'Yearly' radio button > Check Proof of Income checkbox $")
	public void enter_household_income_1000_check_yearly_radio_button_check_proof_of_income_checkbox()
			throws Throwable {
		element("HouseholdIncomeTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HouseholdIncome"));
		element("HouseholdIncomeYearlyRadioButton").click();
		element("ProofofIncomeCheckBox").click();
	}

	@Then("^Verify Application must get created and Application number must get displayed in Application Page$")
	public void verify_application_must_get_created_and_application_number_must_get_displayed_in_application_page()
			throws Throwable {
		Thread.sleep(7000);
		assertTrue("Application  is Created", element("GeneratedApplicationNumber").isDisplayed());
		System.out.println("Application is Created");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	/*
	 * @Then("^In Application Page > Click on 'Application insurances' >  'New'$")
	 * public void in_application_page_click_on_application_insurances_new() throws
	 * Throwable {
	 * 
	 * element("ApplicationInsurancesLink").click(); driver.navigate().refresh();
	 * element("DocumentsNewButton").click();
	 * 
	 * } changes made by vivek
	 */

	@Then("^Verify Application Insurance Page must get displayed$")
	public void verify_application_insurance_page_must_get_displayed() throws Throwable {
		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe
		// slds-card iframe-parent']//iframe")));
		Thread.sleep(5000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		assertTrue("Application Insurance Page must get displayed",
				element("AvailableInsurancesPageHeader").isDisplayed());
		System.out.println("Application Insurance Page must get displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify Pop up with Message 'Insurance details have been saved' Must get displayed $")
	public void verify_pop_up_with_message_insurance_details_have_been_saved_must_get_displayed() throws Throwable {
		Alert alert = driver.switchTo().alert();
		String alttext = alert.getText();
		System.out.println(alttext);

		assertTrue("Birthdate: Invalid Date is Displayed", alttext.equals("Insurance Details has been saved"));
		alert.accept();

	}

	/*
	 * @Then("^Click on Application number under the 'Applications'$") public void
	 * click_on_application_number_under_the_applications() throws Throwable {
	 * 
	 * element("ApplicationnumberLink").click(); }changes made by vivek
	 */

	@And("^Select any Income document type > Click on 'Save' Button$")
	public void select_any_income_document_type_click_on_save_button() throws Throwable {
		Select Drop = new Select(element("IncomedocumenttypeDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "IncomeDocumentType"));
		
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		element("ApplicationSaveButton").click();

	}

	@And("^Verify Section to Enter Application Information and PAP Information must get displayed$")
	public void verify_section_to_enter_application_information_and_pap_information_must_get_displayed()
			throws Throwable {

		assertTrue("Application Information Page is Displayed", element("ApplicationInformationHeader").isDisplayed());
		System.out.println("Application Information Page is Displayed");

		assertTrue("PAP Information Page is Displayed", element("PAPInformationHeader").isDisplayed());
		System.out.println("PAP Information Page is Displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^In 'Application Information' section Select 'Application Source' > Check 'Patient or Patient Representative Signature'$")
	public void in_application_information_section_select_application_source_check_patient_or_patient_representative_signature()
			throws Throwable {
		Select Drop = new Select(element("ApplicationSourceDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ApplicationSource"));

		element("PatientorPatientRepresentativeSignatureCheckBox").click();

	}

	@Then("^UnCheck 'Patient or Patient Representative Signature' Checkbox$")
	public void uncheck_patient_or_patient_representative_signature_checkbox() throws Throwable {

		if (element("PatientorPatientRepresentativeSignatureCheckBox").isSelected()) {
			element("PatientorPatientRepresentativeSignatureCheckBox").click();
		}

	}

	@And("^In PAP Information section Select 'US Resident' as 'N' $")
	public void in_pap_information_section_select_us_resident_as_n() throws Throwable {
		Select Drop = new Select(element("USResidentDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "USResident"));

	}

	@Then("^Select 'Are you being treated as Out Patient ' as 'Yes' > Household  Size as '1'$")
	public void select_are_you_being_treated_as_out_patient_as_yes_household_size_as_1() throws Throwable {
		Select Drop = new Select(element("AreYouYBingTreatedAsOutPatientDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "OutPatient"));

		Select Drop1 = new Select(element("HouseholdSizeDropdown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "HouseholdSize"));

	}

	@Then("^Under 'Practitioner Information' section > Click on 'Search Practitioner' Button$")
	public void under_practitioner_information_section_click_on_search_practitioner_button() throws Throwable {
		CommonMethods.closeAllInactiveTabsInPfizer();
		Thread.sleep(5000);
		CommonMethods.PerformClickOnObject(element("SearchPractitionerButton"));
		element("SearchPractitionerButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button $")
	public void set_field_to_npi_operator_to_contains_and_enter_any_value_click_on_search_button() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		Select Drop = new Select(element("SelectInWindow"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor"));

		Select Drop2 = new Select(element("NPIOperatorDropDown"));
		// Drop2.selectByVisibleText("starts with");
		Drop2.selectByVisibleText("equals");
		element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue"));
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
		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe
		// slds-card iframe-parent']//iframe")));
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}

	@And("^Under Insurance Information > Select 'No' radio button > Click on 'save' Button $")
	public void under_insurance_information_select_no_radio_button_click_on_save_button() throws Throwable {

		element("NoRadioButton").click();
		element("ApplicationSaveButton").click();
		System.out.println("Click On Save Button");

	}
	  @And("^Verify User must be redirected to Patient Page$")
	   public void verify_user_must_be_redirected_to_patient_page() throws Throwable {
	        Thread.sleep(5000);
	        try {
	            driver.switchTo().defaultContent();
	        } catch (NoSuchElementException | NoSuchFrameException e) {

	        }
	        WebDriverWait wait = new WebDriverWait(driver, 120);
	        wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//span[text()='Patient ID Number']/parent::div/following-sibling::div/span//lightning-formatted-text"))));
	        assertTrue("Patient  Page is Displayed", element("PatientIDNumber").isDisplayed());
	        System.out.println("Patient  Page is Displayed");
	        Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	    }

	@And("^Verify  User must be redirected to Application Page$")
	public void verify_user_must_be_redirected_to_application_page() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//*[contains(text(),'Applicant')]/following-sibling::p//a"))));
		assertTrue("Application  Page is Displayed", element("ApplicantNameLink").isDisplayed());
		System.out.println("Application  Page is Displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on Attach Button>Select Document>Click on 'AttaCh'$")
	public void click_on_attach_buttonselect_documentclick_on_attach() throws Throwable {
		element("AttachButton").click();
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		element("SelectSupportDocumentChckbox").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("AttachButton").click();

		Alert alert = driver.switchTo().alert();
		alert.accept();
		driver.switchTo().window(winHandleBefore);

	}

	@Then("^Verify User must be redirected to Application Prescription page$")
	public void verify_user_must_be_redirected_to_application_prescription_page() throws Throwable {
		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe
		// slds-card iframe-parent']//iframe")));
		Thread.sleep(5000);
		driver.switchTo().frame(element("ApplicationPageIframe"));

		Thread.sleep(5000);
		assertTrue("User is redirected to Application Prescription page",
				element("PractitionerInformationPageHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Click on 'Application Prescriptions' > 'New' $")
	public void click_on_application_prescriptions_new() throws Throwable {

		CommonMethods.PerformClickOnObject(element("ApplicationPrescriptionsLink"));
		// element("ApplicationPrescriptionsLink").click();
		driver.navigate().refresh();
		element("DocumentsNewButton").click();

	}

	@And("^Click on 'PAP Determine Outcom' Button>Verify Valid Practitioner Pop Up>Click on OK$")
	public void click_on_pap_determine_outcom_buttonverify_valid_practitioner_pop_upclick_on_ok() throws Throwable {

		element("PAPDetermineOutcomeButton").click();
		assertTrue("Ensure Valid Practitioner pop up is displayed", element("EnsurePractitionerText").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("OkButton").click();
	}

	@And("^Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'$")
	public void select_prescriber_consonent_sign_checkbox_and_set_prescriber_consonent_sign_date() throws Throwable {
		Thread.sleep(4000);
		CommonMethods.PerformClickOnObject(element("PrescriberConsonentSignChkBox"));
		CommonMethods.PerformClickOnObject(element("PrescriberConsonentSignDateLnk"));
		// element("PrescriberConsonentSignChkBox").click();
		// element("PrescriberConsonentSignDateLnk").click();

	}

	@And("^Click On 'Add Product' Button$")
	public void click_on_add_product_buuton() throws Throwable {
		element("AddProductButton").click();
		Thread.sleep(4000);
	}

	@And("^Select AppRX Checkbox>Set RX Date>Click on 'Save' Button$")
	public void select_apprx_checkboxset_rx_dateclick_on_save_button() throws Throwable {

		System.out.println("Inside Method");
		try {
			// Alert a = driver.switchTo().alert();
			System.out.println("Alert Message: ");

			// a.dismiss();

			// driver.switchTo().parentFrame();

			// driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//input[contains(@id,'apprxsign')]"))));
			if (element("AppRXSignedChkBox") != null) {
				System.out.println("object is formed");
			}
			CommonMethods.SelectCheckBox(element("AppRXSignedChkBox"));

			Thread.sleep(2000);
			//CommonMethods.SelectCheckBox(element("AppRXSignedChkBox"));
			// try {
			// if(element("AppRXSignedChkBox").isSelected())
			// {
			// System.out.println("checkbox is selected");
			// }
			// }
			// catch(Exception e){
			//
			// CommonMethods.PerformClickOnObject(element("AppRXSignedChkBox"));
			// }

			CommonMethods.PerformClickOnObject(element("RXDateLink"));
			// Thread.sleep(3000);
			CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));
		} catch (Exception e) {
			CommonMethods.PerformClickOnObject(element("AppRXSignedChkBox"));
			CommonMethods.PerformClickOnObject(element("RXDateLink"));
			CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));
		}

//		try {
//			Thread.sleep(3000);
//			System.out.println("save ");
//			element("ApplicationSaveButton").click();
//			Thread.sleep(8000);
//
//		} catch (Exception e) {
//
//		}
		//Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);
	}

	@And("^Select Rx Date>Click On 'Save' Button$")
	public void select_rx_dateclick_on_save_button() throws Throwable {
		element("RXDateLink").click();

		element("ApplicationSaveButton").click();

		try {
			Thread.sleep(3000);
			System.out.println("save ");
			element("ApplicationSaveButton").click();
			Thread.sleep(8000);

		} catch (Exception e) {

		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Clear 'RX Date' date feild$")
	public void clear_rx_date_date_feild() throws Throwable {
		driver.findElement(By.xpath("//input[contains(@id,'rxdate')]")).clear();
	}

	@Then("^Enter all required feilds in 'Group C'$")
	public void enter_all_required_feilds_in_group_c() throws Throwable {
		driver.switchTo().frame(element("ApplicationServicePageIframe"));
		element("Application_DateofAdministrationDateLink").click();
		element("Application_VaccineLotTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Vaccine Lot"));
		element("Application_PrescriberProgramT&CchkBx").click();
		element("Application_AreYouBwtn19-25dropDown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("Application_AreYouBwtn19-25dropDown"),
				getDataFromExcel(ModuleName, TestCaseID, "Are You 19-25"));
		element("Application_AreYouOver18dropDown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("Application_AreYouOver18dropDown"),
				getDataFromExcel(ModuleName, TestCaseID, "Are You Over 18"));

	}

	@And("^Select Product Name Form Strength SIG and Pill Qty$")
	public void select_product_name_form_strength_sig_and_pill_qty() throws Throwable {

		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName"));

		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength"));

		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty"));
		Thread.sleep(3000);
	}

	@And("^Unchecked 'App or Rx Signed' checkbox$")
	public void unchecked_app_or_rx_signed_checkbox() throws Throwable {
		driver.switchTo().frame(element("ApplicationServicePageIframe"));
		if (element("AppRXSignedChkBox").isSelected() == true) {
			element("AppRXSignedChkBox").click();
		} else {

		}

	}

	@And("^Select the 'Fullfillment Method' type$")
	public void select_the_fullfillment_method_type() throws Throwable {
		Select Drop1 = new Select(element("Application_FullfillmentDropdown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Fullfillment Method"));

	}

	@Then("^UnCheck the 'Shipping Address' Valid CheckBox$")
	public void uncheck_the_shipping_address_valid_checkbox() throws Throwable {
		if (element("Appeals_ShippingAddressValidChkbx").isSelected()) {
			element("Appeals_ShippingAddressValidChkbx").click();
		}

	}

	@Then("^Select 'Presumptive' Checkbox$")
	public void select_presumptive_checkbox() throws Throwable {
		element("Application_PresumptiveCheckBox").click();
	}

	@And("^Select the 'Ship To' type$")
	public void select_the_ship_to_type() throws Throwable {
		Select Drop1 = new Select(element("Application_ShipToDropdown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Ship To"));

	}

	@Then("^Select value from 'Goverment Id' and 'Original Rx' Dropdown$")
	public void select_value_from_goverment_id_and_original_rx_dropdown() throws Throwable {
		Thread.sleep(2000);
		Select Drop1 = new Select(element("Application_OriginalRx"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Original Rx"));

		Select Drop2 = new Select(element("Application_GovID"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Government Id"));

	}

	@And("^Select Refills quantity$")
	public void select_refills_quantity() throws Throwable {
		Select Drop1 = new Select(element("Application_RefillsDropdown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Refills"));

	}

	@And("^Select Product Name Form Strength SIG and Pill Qty in 2nd product$")
	public void select_product_name_form_strength_sig_and_pill_qty_in_2nd_product() throws Throwable {

		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName2"));

		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2"));

		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG2"));

		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty2"));

	}

	@And("^Click on Attach Button$")
	public void click_on_attach_button() throws Throwable {
		Thread.sleep(2000);
		WebDriverWait wait = new WebDriverWait(driver,120);
		wait.until(ExpectedConditions.elementToBeClickable((By.xpath("//input[contains(@id,'attbtn') and @class='btn']"))));

		/*
		 * wait.until(ExpectedConditions.elementToBeClickable(
		 * (By.xpath("//input[@id='thePage:theForm:PB1:rep:0:attbtn']")) ));
		 */
		// element("ApplicationAttachButton").click();
		CommonMethods.ScrolDownToTheObject(element("ApplicationAttachButton"));
		// CommonMethods.PerformClickOnObject(element("ApplicationAttachButton"));
		element("ApplicationAttachButton").click();
	}

	@And("^Click on 'Search State License' and Add 'State Licence'$")
	public void click_on_search_state_license_and_add_state_licence() throws Throwable {
		driver.switchTo().frame(element("ApplicationServicePageIframe"));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("Application_SearchStateLicenseButton"));
		// element("Application_SearchStateLicenseButton").click();
		Thread.sleep(3000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		Thread.sleep(3000);
		driver.manage().window().maximize();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);
		element("LicenseNPITextField").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue"));
		Thread.sleep(3000);
		element("LisencesSearchButton").click();
		Thread.sleep(3000);
		element("NPIRadioButton").click();
		element("SLNRadioButton").click();
		element("DEARadioButton").click();
		element("UpdateLicensesButton").click();
		Thread.sleep(3000);
		driver.switchTo().window(winHandleBefore);

		driver.switchTo().frame(element("ApplicationPageIframe"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Click on 'PAP Determine Outcom' Button$")
	public void click_on_pap_determine_outcom_button() throws Throwable {
		Thread.sleep(7000);

		// int size = driver.findElements(By.tagName("iframe")).size();
		// System.out.println(size);
		//
		// driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
		//
		// for (int i =0;i<=size;++i ) {
		//
		// try {
		// driver.switchTo().defaultContent();
		// driver.switchTo().frame(i);
		//
		// WebElement ele1 = element("PAPDetermineOutcomeButton");
		// System.out.println(ele1.isDisplayed());
		// break;
		// } catch (NoSuchElementException | NoSuchFrameException e) {
		//
		// }
		//
		// }
		// driver.switchTo().frame(3);
		// element("PAPDetermineOutcomeButton").click();
		// driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		//

		driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(
				ExpectedConditions.visibilityOfElementLocated((By.xpath("//input[@value='PAP Determine Outcome']"))));
		CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));
	}

	@And("^Click on 'PAP Determine Outcom' Button In Product Information$")
	public void click_on_pap_determine_outcom_button_in_product_information() throws Throwable {
		int size = driver.findElements(By.tagName("iframe")).size();
		System.out.println(size);

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		for (int i = 0; i <= size; ++i) {

			try {
				// driver.switchTo().defaultContent();
				driver.switchTo().frame(i);

				WebElement ele1 = element("PAPDetermineOutcomeButton");
				/* System.out.println(ele1.isDisplayed()); */
				break;
			} catch (NoSuchElementException | NoSuchFrameException e) {

			}

		}
		try {

			element("PAPDetermineOutcomeButton").click();

		} catch (Exception e) {
			// TODO: handle exception
			CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));
		}

		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

	}

	@And("^Verify 'not US Resident' Error Message in OVM Window$")
	public void verify_not_us_resident_error_message_in_ovm_window() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();
		try {
			Thread.sleep(3000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();
			CommonMethods.ScrolDownToTheObject(element("NotUSErrMsg"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			assertTrue("'Denied-Not US Resident' Error Message is displayed", element("NotUSErrMsg").isDisplayed());
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			assertTrue("'Denied-Not US Resident' Error Message is displayed", element("NotUSErrMsg").isDisplayed());
		}
		driver.close();
		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Verify Checkbox is selected and date is set$")
	public void verify_checkbox_is_selected_and_date_is_set() throws Throwable {
		assertTrue("CheckBox is Selected", element("PrescriberConsonentSignChkBox").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Veriify Section to Enter product Information is Displayed$")
	public void veriify_section_to_enter_product_information_is_displayed() throws Throwable {
		assertTrue("Section to Enter Product Information is displayed", element("ProductNameDropDown").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Enter Pill Qty less than '0'$")
	public void enter_pill_qty_less_than_0() throws Throwable {
		element("PillQtyTextBox").clear();
		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty1"));
	}

	@Then("^Verify All the details got entered$")
	public void verify_all_the_details_got_entered() throws Throwable {

		Select select = new Select(element("ProductNameDropDown"));
		WebElement option = select.getFirstSelectedOption();
		assertTrue("Selected Value is Updated",
				option.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "ProductName")));

		select = new Select(element("FormStrengthDropDown"));
		option = select.getFirstSelectedOption();
		assertTrue("Selected Value is Updated",
				option.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "FormStrength")));

		select = new Select(element("SIGDropDown"));
		option = select.getFirstSelectedOption();
		assertTrue("Selected Value is Updated",
				option.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "SIG")));
		Thread.sleep(2000);
		// assertTrue("Pill Qty is Updated",
		// element("PillQtyTextBox").getAttribute("value")
		// .equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "PillQty")));

		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Select 'Expedited shipping' checkbox$")
	public void select_expedited_shipping_checkbox() throws Throwable {
		element("Application_xpeditedShippingChkBx").click();
	}

	@Then("^Verify Remove Button is Enabled$")
	public void verify_remove_button_is_enabled() throws Throwable {

		Thread.sleep(7000);
		CommonMethods.ScrolDownToTheObject(element("RemoveButton"));
		assertTrue("Remove Button is Enabled", element("RemoveButton").isEnabled());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify new window to attach document has opened and Select Document>Click on 'AttaCh'$")
	public void verify_new_window_to_attach_document_has_opened_and_select_documentclick_on_attach() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		assertTrue("New window has opened", element("SelectSupportDocumentChckbox").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		element("SelectSupportDocumentChckbox").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("ApplicationNewWindowAttachBtn").click();

		Thread.sleep(3000);
		WebDriverWait ww = new WebDriverWait(driver, 10);
		ww.until(ExpectedConditions.alertIsPresent());
		Alert alert = driver.switchTo().alert();
		alert.accept();
		Thread.sleep(2000);
		driver.switchTo().window(winHandleBefore);
		Thread.sleep(8000);
	}

	@Then("^Verify Valid Practitioner Pop Up>Click on OK$")
	public void verify_valid_practitioner_pop_upclick_on_ok() throws Throwable {
		Thread.sleep(10000);
		assertTrue("Ensure Valid Practitioner pop up is displayed", element("EnsurePractitionerText").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.PerformClickOnObject(element("OkButton"));

	}

	@And("^Click on First Case$")
	public void click_on_first_case() throws Throwable {
		element("FirstLinkInCaseNumber").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Selected First Case");
	}

	@And("^Click on Account Name$")
	public void click_on_account_name() throws Throwable {
		element("AccountNameLink").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Patient Details Page is Displayed");
	}

	@And("^Click on View Logs Button$")
	public void click_on_view_logs_button() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 20);
		wait.until(ExpectedConditions.elementToBeClickable(element("ViewlogsButton")));
		element("ViewlogsButton").click();
		Thread.sleep(1000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Logs Page is Displayed");

	}

	@Then("^Verify Patient Application Insurance Prescription and Prescription product CheckBoxes$")
	public void verify_patient_application_insurance_prescription_and_prescription_product_checkboxes()
			throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(3);
		Thread.sleep(1000);
		assertTrue("Application Status Page is Displayed", element("PatientCheckBox1").isDisplayed());
		assertTrue("Application Status Page is Displayed", element("ApplicationCheckBox1").isDisplayed());
		Thread.sleep(1000);
		assertTrue("Application Status Page is Displayed", element("InsuranceCheckBox1").isDisplayed());
		assertTrue("Application Status Page is Displayed", element("PrescriptionCheckBox1").isDisplayed());
		assertTrue("Application Status Page is Displayed", element("PrescriptionProductCheckBox1").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"Patient,Application,Insurance,Prescription and Prescription product CheckBoxes are present");
	}


	@And("^Verify Log options in the page$")
	public void verify_log_options_in_the_page() throws Throwable {
		assertTrue("Application Status Page is Displayed", element("OutcomeValidationsLogHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"'Outcome Validations Log' is present");
		assertTrue("Application Status Page is Displayed", element("EventLogHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "'Event Log' is present");
		assertTrue("Application Status Page is Displayed", element("ActivityLogHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "'Activity Log' is present");
	}

	@And("^Verify Outcome Validation Logs Section Colomn Headers$")
	public void verify_outcome_validation_logs_colomn_headers() throws Throwable {
		assertTrue("Pat Id is Displayed", element("PatIDColumnHeader").isDisplayed());
		assertTrue("App ID is Displayed", element("AppIDColumnHeader").isDisplayed());
		assertTrue("Presc ID is Displayed", element("PrescIDColumnHeader").isDisplayed());
		assertTrue("Outcome is Displayed", element("OutcomeColumnHeader").isDisplayed());
		assertTrue("Source is Displayed", element("SourceColumnHeader").isDisplayed());
		assertTrue("Description is Displayed", element("DescriptionColumnHeader").isDisplayed());
		assertTrue("Outcome Status is Displayed", element("OutcomeStatusColumnHeader").isDisplayed());
		assertTrue("Letter type is Displayed", element("LetterTypeColumnHeader").isDisplayed());
		assertTrue("Letter Status is Displayed", element("LetterStatusColumnHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"Pat Id, App Id, Presc ID, Outcome,Source, Description,Outcome Status,Letter Type and Letter Status colomns are present under outcome validations log Section");
		assertTrue("Created By is Displayed", element("CreatedByColumnHeader").isDisplayed());
		assertTrue("Created Date is Displayed", element("CreatedDateColumnHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"Created By and Created Date colomns are present under outcome validations log");
	}

	@And("^Verify Event Log Section Colomn Headers$")
	public void verify_event_log_section_colomn_headers() throws Throwable {
		assertTrue("Activity Date Time is Displayed", element("EventLogActivityDateTimeColumnHeader").isDisplayed());
		assertTrue("Application Number is Displayed", element("EventLogApplicationNumberColumnHeader").isDisplayed());
		assertTrue("Activity Code is Displayed", element("EventLogActivityCodeColumnHeader").isDisplayed());
		assertTrue("Activity type is Displayed", element("EventLogActivityTypeColumnHeader").isDisplayed());
		assertTrue("Creator User ID is Displayed", element("EventLogCreatorUserIDColumnHeader").isDisplayed());
		assertTrue("Created Date is Displayed", element("EventLogCreatedDateColumnHeader").isDisplayed());
		assertTrue("OutCome is Displayed", element("EventLogOutcomeColumnHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"Activity Date Time,Application Number,Activity Code,Activity Type,Creator User ID, Created Date and outcome colomns are present under Event log Section");
		assertTrue("Add New Log Button is Displayed", element("AddNewLogButton").isDisplayed());
		assertTrue("Save Log Button is Displayed", element("SaveLogButton").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"'Add New Log' and 'save Log' Buttons are present under Event log Section");
	}

	@And("^Verify Activity Log Section Colomn Headers$")
	public void verify_activity_log_section_colomn_headers() throws Throwable {
		assertTrue("Activity Code is Displayed", element("ActivityLogActivityCodeColumnHeader").isDisplayed());
		assertTrue("Comments is Displayed", element("ActivityLogCommentsColumnHeader").isDisplayed());
		assertTrue("Created By is Displayed", element("ActivityLogCreatedByColumnHeader").isDisplayed());
		assertTrue("Created Date is Displayed", element("ActivityLogCreatedDateColumnHeader").isDisplayed());
		assertTrue("AE Reference is Displayed", element("ActivityLogAEReferenceColumnHeader").isDisplayed());
		assertTrue("Call Back Number is Displayed", element("ActivityLogCallBackNumberColumnHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"Activity Code,Comments,created By,Created date,AE Reference and Call Back Number colomns are present under Activity log Section");
	}

	@When("^Click on Patient CheckBox$")
	public void click_on_patient_checkbox() throws Throwable {
		Thread.sleep(2000);
		element("PatientCheckBox1").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Clicked on 'Patient' CheckBox");
	}

	@Then("^Verify Patient History Section$")
	public void verify_patient_history_section() throws Throwable {
		assertTrue("Patient History Section is Displayed", element("PatientHistoryHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"'Patient History' Section is present");
	}

	@And("^Verify Colomns Under 'Patient History' Section$")
	public void verify_colomns_under_patient_history_section() throws Throwable {
		assertTrue("Created Date is Displayed", element("PatientHistoryCreatedDateColoumnHeader").isDisplayed());
		assertTrue("Modified By is Displayed", element("PatientHistoryModifiedByColoumnHeader").isDisplayed());
		assertTrue("Field is Displayed", element("PatientHistoryFieldColoumnHeader").isDisplayed());
		assertTrue("Old value is Displayed", element("PatientHistoryOldValueColoumnHeader").isDisplayed());
		assertTrue("New Value is Displayed", element("PatientHistoryNewValueColoumnHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"Created Date,Modified By,Field,Old Value and New value colomns are present under Patient History Section");
	}

	@Then("^Verify 'Patient History' Section is Disappeared$")
	public void verify_patient_history_section_is_disappeared() throws Throwable {

		System.out.println(element("PatientHistoryHeader").isDisplayed());
		assertTrue("'Patient History' Section is Disappeared", element("PatientHistoryHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"'Patient History' Section is Disapperaed");
		driver.switchTo().defaultContent();
	}

	@And("^In PAP Information section Select 'US Resident' as 'Y'$")
	public void in_pap_information_section_select_us_resident_as_y() throws Throwable {
		Select Drop = new Select(element("USResidentDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "USResident"));

	}

	@Then("^Verify  Option must get selected as Y$")
	public void verify_option_must_get_selected_as_y() throws Throwable {
		String USResidentDropdown = element("USResidentDropdown").getAttribute("value");
		assertTrue("Application Source Data is selected",
				USResidentDropdown.equals(getDataFromExcel(ModuleName, TestCaseID, "USResident")));

	}

	@Then("^Verify  Option must get selected as N$")
	public void verify_option_must_get_selected_as_n() throws Throwable {
		String USResidentDropdown = element("USResidentDropdown").getAttribute("value");
		assertTrue("Application Source Data is selected",
				USResidentDropdown.equals(getDataFromExcel(ModuleName, TestCaseID, "USResident")));

	}

	@Then("^Select 'Are you being treated as Out Patient ' as 'No' > Household  Size as '1'$")
	public void select_are_you_being_treated_as_out_patient_as_no_household_size_as_1() throws Throwable {
		Select Drop = new Select(element("AreYouYBingTreatedAsOutPatientDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "OutPatient"));

		Select Drop1 = new Select(element("HouseholdSizeDropdown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "HouseholdSize"));
	}

	@And("^Verify 'not treated as Outpatient' Error Message in OVM Window$")
	public void verify_not_treated_as_outpatient_error_message_in_ovm_window() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();
		try {
			Thread.sleep(3000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}

			driver.manage().window().maximize();
			CommonMethods.ScrolDownToTheObject(element("NotOupatientErrMsg"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			assertTrue("'Denied-Not treated as outopatient' Error Message is displayed",
					element("NotOupatientErrMsg").isDisplayed());
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			assertTrue("'Denied-Not treated as outopatient' Error Message is displayed",
					element("NotOupatientErrMsg").isDisplayed());
		}
		driver.close();
		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Enter Household Income 10000 > Check 'Monthly' radio button > Check Proof of Income checkbox$")
	public void enter_household_income_10000_check_monthly_radio_button_check_proof_of_income_checkbox()
			throws Throwable {
		element("HouseholdIncomeTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HouseholdIncome"));
		element("HouseholdIncomeMonthlyRadioButton").click();
		element("ProofofIncomeCheckBox").click();
	}

	@And("^Verify 'Household Income over the program eligibility' Error Message in OVM Window$")
	public void verify_household_income_over_the_program_eligibility_error_message_in_ovm_window() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();
		try {
			Thread.sleep(3000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();
			CommonMethods.ScrolDownToTheObject(element("HouseholdIncomeErrMsg"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			assertTrue("'Household Income over the program eligibility' Error Message is displayed",
					element("HouseholdIncomeErrMsg").isDisplayed());
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			assertTrue("'Household Income over the program eligibility' Error Message is displayed",
					element("HouseholdIncomeErrMsg").isDisplayed());
		}
		driver.close();
		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Enter Household Income 1000 > Check 'Monthly' radio button$")
	public void enter_household_income_1000_check_monthly_radio_button() throws Throwable {
		element("HouseholdIncomeTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HouseholdIncome"));
		element("HouseholdIncomeMonthlyRadioButton").click();

	}

	@And("^Verify 'Income Proof Missing' Error Message in OVM Window$")
	public void verify_income_proof_missing_error_message_in_ovm_window() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();
		try {
			Thread.sleep(3000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();
			CommonMethods.ScrolDownToTheObject(element("IncomeProofErrMsg"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			assertTrue("'Proof of income is missing'' Error Message is displayed",
					element("IncomeProofErrMsg").isDisplayed());
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			assertTrue("'Proof of income is missing'' Error Message is displayed",
					element("IncomeProofErrMsg").isDisplayed());
		}
		driver.close();
		driver.switchTo().window(winHandleBefore);
	}

	@And("^Verify 'HCP Address cannot exceed 35 charecters' Error Message in OVM Window$")
	public void verify_hcp_address_cannot_exceed_35_charecters_error_message_in_ovm_window() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();
		try {
			Thread.sleep(3000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();
			CommonMethods.ScrolDownToTheObject(element("HCPAddressErrMsg"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			assertTrue("'HCP Address Cannot Exceed 35 charecters' Error Message is displayed",
					element("HCPAddressErrMsg").isDisplayed());
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			assertTrue("'HCP Address Cannot Exceed 35 charecters' Error Message is displayed",
					element("HCPAddressErrMsg").isDisplayed());
		}
		driver.close();
		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Update the address to 35 charecters and fill other details$")
	public void Update_the_address_to_35_charecters_and_fill_other_details() throws Throwable {

		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		element("VerifyManuallyCheckBox").click();
		element("Street1TextBox").sendKeys("Test Test Test Test Test Test Test Test");
		element("CityTextBox").sendKeys("Test Test Test Test Test Test Test Test");
		element("StateTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "State"));
		element("ZipTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Zip"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "All Data Entered in new window");
		element("AdressSaveButton").click();

		driver.switchTo().window(winHandleBefore);
		driver.switchTo().frame(3);

	}

	@Then("^In Application Page > Click on 'Application Prscription'> 'New'$")
	public void in_application_page_click_on_application_prscription_new() throws Throwable {
		element("ApplicationPrescriptionsLink").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"Click on 'ApplicationInsurance' Link");
		element("NewButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Click on 'New' Button");
		element("SearchPractionerButton").click();

	}

	@Then("^Click on 'Supporting documents' > click on First Document$")
	public void click_on_supporting_documents_click_on_first_document() throws Throwable {
		driver.navigate().refresh();
		Thread.sleep(2000);
		element("SupportingDocumentsLink").click();
		System.out.println("Click On Supporting Documents Link");
		element("FirstDocumentLink").click();

	}

	@Then("^Navigate to Application Page$")
	public void navigate_to_application_page() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));

		CommonMethods.PerformClickOnObject(element("ApplicationIdLink1"));
		// element("ApplicationIdLink").click();
	}

	@And("^Verify 'Products Information Description' Error Message>Click On 'Save Outcome' Button$")
	public void verify_products_information_description_error_messageclick_on_save_outcome_button() throws Throwable {

		String winHandleBefore = driver.getWindowHandle();
		try {
			Thread.sleep(3000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			assertTrue("'Verify 'Products Information Description' Error Message",
					element("ProductInformationDescription").getText()
							.equals(getDataFromExcel(ModuleName, TestCaseID, "Products Information")));
			element("SaveOutcomeButton").click();
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			assertTrue("'Verify 'Products Information Description' Error Message",
					element("ProductInformationDescription").getText()
							.equals(getDataFromExcel(ModuleName, TestCaseID, "Products Information")));
			element("SaveOutcomeButton").click();
		}

		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Verify Application Status Page opens$")
	public void verify_Application_Status_Page_opens() throws Throwable {

		verify_user_should_be_redirected_to_another_page_to_create_application();

	}

	@Then("^Check the Order ID$")
	public void check_the_Order_ID() throws Throwable {

		Thread.sleep(8000);

		OrderID = element("OrderID").getText();
	}

	@Then("^Click on the checkbox to select order$")
	public void click_on_the_checkbox_to_select_order() throws Throwable {

		// Thread.sleep(3000);
		// driver.navigate().refresh();
		Thread.sleep(8000);

		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));

		PatientIds = element("PatientIDs").getText();

		System.out.println("PatientIDs====" + PatientIds);
		element("AvailableOrderCheckbox").click();

		WebDriverWait wait = new WebDriverWait(driver, 30);

		wait.until(ExpectedConditions
				.presenceOfElementLocated(By.xpath("(//tr[@class='dataRow even  first  last']/td)[2]/span")));

		OrderID = element("OrderID").getText();
		// }
		// OrderID = element("OrderID").getText();
		// element("AvailableOrderCheckbox").click();
		// OrderID = element("OrderID").getText();
		System.out.println("OrderID====" + OrderID);

	}

	@And("^Verify 'Final Outcome' text message in OVM Window and create order$")
	public void verify_final_outcome_text_message_in_ovm_window_and_create_order() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();
		try {
			Thread.sleep(5000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();
			CommonMethods.ScrolDownToTheObject(element("FinalOutcomeApprvdMsg"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			assertTrue("'Final Outcome: Completed/To be Approved' Error Message is displayed",
					element("FinalOutcomeApprvdMsg").isDisplayed());
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			assertTrue("'Final Outcome: Completed/To be Approved' Error Message is displayed",
					element("FinalOutcomeApprvdMsg").isDisplayed());
		}
		CommonMethods.ScrolDownToTheObject(element("CreateOrderbtn"));
		element("CreateOrderbtn").click();
		CommonMethods.PerformClickOnObject(element("OkButton"));
		try {
			driver.close();
		} catch (NoSuchWindowException e) {

		}
		driver.switchTo().window(winHandleBefore);

	}

	@Then("^Click on Applicant name$")
	public void click_on_applicant_name() throws Throwable {

		Thread.sleep(5000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", element("ApplicantNameLink"));

	}

	@And("^Check the patient ID$")
	public void check_the_patient_id() throws Throwable {

		Thread.sleep(5000);
		PatientID = element("PatientIDNumber").getText();

	}

	@Then("^Verify shipped status for the order$")
	public void verify_shipped_status_for_the_order() throws Throwable {

		Thread.sleep(8000);

		CommonMethods.ScrolDownToTheObject(element("ShippedStatus"));
		AssertJUnit.assertEquals("Shipped", element("ShippedStatus").getText());

	}

	@Then("^Verify pending status for the order$")
	public void verify_pending_status_for_the_order() throws Throwable {

		Thread.sleep(8000);

		CommonMethods.ScrolDownToTheObject(element("PendingStatus"));
		AssertJUnit.assertEquals("Pending", element("PendingStatus").getText());

	}

	// merging vinutha

	/*----old code of state license------@Then("^click on 'Search state license' and select license$")
	public void click_on_search_state_license_and_select_license() throws Throwable {
	
		element("Application_SearchStateLicenseButton").click();
		String winHandleBefore = driver.getWindowHandle();
	
		for(String winHandle : driver.getWindowHandles()){
			driver.switchTo().window(winHandle);  
		}
	
		Thread.sleep(3000);
		driver.manage().window().maximize() ;
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_AvailableStateFirstlicense").click();
	
	
	
		driver.switchTo().window(winHandleBefore);
	
		driver.switchTo().frame(element("ApplicationPageIframe"));
	
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		
		
	
	}*/

	@Then("^click on 'Search state license' and select license$")
	public void click_on_search_state_license_and_select_license() throws Throwable {
		Thread.sleep(3000);
		element("Application_SearchStateLicenseButton").click();
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		Thread.sleep(3000);
		driver.manage().window().maximize();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("LicenseNPITextField").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue"));
		element("LisencesSearchButton").click();
		element("NPIRadioButton").click();
		element("SLNRadioButton").click();
		element("DEARadioButton").click();
		element("UpdateLicensesButton").click();

		driver.switchTo().window(winHandleBefore);

		driver.switchTo().frame(element("ApplicationPageIframe"));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(objRepo.getApplicationPageObject().licence_manualchkbox1);
		CommonMethods.PerformClickOnObject(objRepo.getApplicationPageObject().licence_manualchkbox2);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(2000);
		CommonMethods.closeAllTabsInPfizer();

	}

	@And("^Select AppRX Checkbox>Set RX Date$")
	public void select_apprx_checkboxset_rx_date() throws Throwable {
		element("AppRXSignedChkBox").click();
		element("RXDateLink").click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Select 'Original RX' 'GovernmentID' Click on 'save' Button$")
	public void select_original_rx_governmentid_click_on_save_button() throws Throwable {
		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("Application_OriginalRx"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_OriginalRx"),
				getDataFromExcel(ModuleName, TestCaseID, "OriginalRX"));
		CommonMethods.ScrolDownToTheObject(element("Application_GovID"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_GovID"),
				getDataFromExcel(ModuleName, TestCaseID, "GovID"));
		element("Application_RefillsButton").click();
		CommonMethods.selectFromDropDownByVisibleText(element("Application_RefillsButton"),
				getDataFromExcel(ModuleName, TestCaseID, "Refills"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(2000);

		CommonMethods.ScrolDownToTheObject(element("ApplicationSaveButton"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("ApplicationSaveButton").click();

		// driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

		driver.switchTo().frame(element("PractitionerInformationIframe"));

	}

	@And("^Get The Values From The Pracitioners Deatil Page and Verify Data$")
	public void get_the_values_from_the_pracitioners_deatil_page_and_verify_data() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		Select Drop = new Select(element("SelectInWindow"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor"));

		element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue"));
		Thread.sleep(2000);
		element("SearchButton").click();
		element("FirstPractitionersRow").click();
		Thread.sleep(2000);
		String lname = element("Application_PractitionerLastName").getText();

		String Fname = element("Application_PractitionerFirstName").getText();

		String ShippingStreet = element("Application_PractitionerShippingStreeet").getText();

		String ShippingState = element("Application_PractitionerShippingState").getText();

		String ShippingCity = element("Application_PractitionerShippingCity").getText();

		System.out.println(Fname + " " + lname);
		System.out.println(ShippingStreet + " , " + ShippingCity + ", " + ShippingState);
		System.out.println(ShippingState);
		System.out.println(ShippingCity);

		element("FirstAddFacilityRow").click();
		Thread.sleep(2000);
		element("FirstAddContactRow").click();
		Thread.sleep(2000);

		element("UpdateApplicationPrescriptionButton").click();

		driver.switchTo().window(winHandleBefore);

		driver.switchTo().frame(element("ApplicationPageIframe"));
		CommonMethods.ScrolDownToTheObject(element("PAPDetermineOutcomeButton"));
		element("PAPDetermineOutcomeButton").click();
		Thread.sleep(5000);

		System.out.println(element("Application_PAPName").getText());
		System.out.println(element("Application_PAPAddress").getText());

		Assert.assertTrue(element("Application_PAPName").getText().equals(Fname + " " + lname));

		// Assert.assertTrue(element("Application_PAPAddress").getText().equals(ShippingStreet
		// + " , "+ShippingCity + ", "+ ShippingState));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Verify OVM validation Screen And Agent is not able to create an Order$")
	public void verify_ovm_validation_screen_and_agent_is_not_able_to_create_an_order() throws Throwable {

		Thread.sleep(7000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		CommonMethods.ScrolDownToTheObject(element("Patient_Enrollment"));

		try {
			element("CreateOrderButton");
			assertTrue(element("CreateOrderButton").isDisplayed(), "");
			AssertJUnit.fail();
		} catch (Exception e) {
			System.out.println("Create Override Button is not exist");
		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.switchTo().defaultContent();

	}

	@Then("^Select 'Original RX' and 'GovernmentID'$")
	public void select_original_rx_and_governmentid() throws Throwable {
		Thread.sleep(2000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,600);");
		CommonMethods.ScrolDownToTheObject(element("Application_OriginalRx"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_OriginalRx"),
				getDataFromExcel(ModuleName, TestCaseID, "OriginalRX"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_GovID"),
				getDataFromExcel(ModuleName, TestCaseID, "GovID"));
		element("Application_RefillsButton").click();
		CommonMethods.selectFromDropDownByVisibleText(element("Application_RefillsButton"),
				getDataFromExcel(ModuleName, TestCaseID, "Refills"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(2000);

		CommonMethods.ScrolDownToTheObject(element("ApplicationSaveButton"));
		element("ApplicationSaveButton").click();
		Thread.sleep(8000);

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Click on 'Search Practitioner' Button$")
	public void click_on_search_practitioner_button() throws Throwable {
		Thread.sleep(2000);
		// driver.switchTo().frame(element("ApplicationPageIframe"));
		driver.switchTo().frame(element("Frame_SearchPratitionerPage"));
		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("SearchPractitionerButton").click();

	}

	@Then("^Click on the checkbox to select order and Get the OrderID$")
	public void click_on_the_checkbox_to_select_order_and_get_the_orderid() throws Throwable {

		Thread.sleep(8000);

		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));

		PatientIds = element("PatientIDs").getText();

		System.out.println("PatientIDs====" + PatientIds);
		Thread.sleep(2000);
		element("AvailableOrderCheckbox").click();

		WebDriverWait wait = new WebDriverWait(driver, 30);

		wait.until(ExpectedConditions
				.presenceOfElementLocated(By.xpath("(//tr[@class='dataRow even  first  last']/td)[2]/span")));

		OrderID = element("Application_AvailableOrderID").getText();

		System.out.println("OrderID====" + OrderID);

		String url = getDataFromExcel(ModuleName, TestCaseID, "URL");
		System.out.println(url);

		driver.get(url);
		Reporter.addStepLog("URL: " + url);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		element("pfizerUserIDTextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AdminUserName"));
		Reporter.addStepLog("Username : " + getDataFromExcel(ModuleName, TestCaseID, "AdminUserName"));

		element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AdminPassword"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.ScrolDownToTheObject(element("loginButton"));
		element("loginButton").click();
		System.out.println("Click On Login button");

		Thread.sleep(2000);
		try {

			element("RemindMeLaterLink").click();
		} catch (Exception e) {

		}
		element("showNavigationMenuButton").click();

		element("GlobalSearchLink").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);

		driver.switchTo().frame(0);

		wait.until(ExpectedConditions.elementToBeClickable(element("OrderRadiobutton")));
		element("OrderRadiobutton").click();
		Thread.sleep(3000);
		/*
		 * try { Thread.sleep(3000); Select fielddropdown = new
		 * Select(element("FieldDropdown"));
		 * fielddropdown.selectByValue(getDataFromExcel(ModuleName,TestCaseID,
		 * "OrderFieldOption")); }catch (StaleElementReferenceException e) {
		 */
		element("FieldDropdown").click();
		Thread.sleep(3000);

		// Select fielddropdown = new Select(element("FieldDropdown"));
		// fielddropdown.selectByValue(getDataFromExcel(ModuleName,TestCaseID,
		// "OrderFieldOption"));
		CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "OrderFieldOption"));
		// }
		Thread.sleep(5000);
		element("Valuetxtbox").sendKeys(OrderID);

		// element("Valuetxtbox").sendKeys("527826" );

	}

	@Then("^Click on View Order$")
	public void click_on_view_order() throws Throwable {
		// driver.navigate().refresh(); modified on 23rd April
		Thread.sleep(5000);
		CommonMethods.PerformClickOnObject(element("OrderProduct_ViewOrder"));

		Thread.sleep(5000);
		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Get the PatientID>>Application$")
	public void get_the_patientidapplication() throws Throwable {

		Thread.sleep(8000);
		driver.navigate().refresh();

		PatientIds = element("PatientIDs").getText();
		System.out.println("PatientIDs====" + PatientIds);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Click on Refill button$")
	public void click_on_refill_button() throws Throwable {
		element("Application_RefillButton").click();

	}

	@Then("^Select the Created Order-ID>> 'Applications'$")

	public void Select_the_Created_OrderID_Applications() throws Throwable {
		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));

		Thread.sleep(2000);
		element("AvailableOrderCheckbox").click();

		WebDriverWait wait = new WebDriverWait(driver, 30);

		wait.until(ExpectedConditions
				.presenceOfElementLocated(By.xpath("(//tr[@class='dataRow even  first  last']/td)[2]/span")));

	}

	@And("^Do Not Attach any Attachment>>Save>>Application$")
	public void Do_Not_Attach_any_Attachment_Save_Application() throws Throwable {

		// driver.switchTo().frame(element("ApplicationPageIframe"));
		element("RemoveButton").click();
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		assertTrue("New window has opened", element("SelectSupportDocumentChckbox").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		element("SelectSupportDocumentChckbox").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_AttachDeleteButton").click();

		Thread.sleep(2000);

		Alert alert = driver.switchTo().alert();
		alert.accept();
		driver.close();
		driver.switchTo().window(winHandleBefore);

		int size = driver.findElements(By.tagName("iframe")).size();
		System.out.println(size);

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		for (int i = 0; i <= size; ++i) {

			try {
				driver.switchTo().defaultContent();
				driver.switchTo().frame(i);

				WebElement ele1 = element("ApplicationSaveButton");
				System.out.println(ele1.isDisplayed());
				break;
			} catch (NoSuchElementException | NoSuchFrameException e) {

			}
		}

		element("ApplicationSaveButton").click();
		Thread.sleep(8000);
		driver.switchTo().defaultContent();

	}

	@And("^Verify 'Missing Govt ID for Lyrica' In OVM validation Screen$")
	public void Verify_Missing_Govt_ID_for_Lyrica_In_OVM_validation_Screen() throws Throwable {

		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation Information']"))));

		try {

			element("Application_MissingIDForLyrica").isDisplayed();
		}

		catch (Exception e) {
			System.out.println("Goverment ID missing letter is not trigerred");
			Reporter.addStepLog("Goverment ID missing letter is not trigerred");
		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.close();

		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Select 'Original RX' and 'GovernmentID' Set As 'NO'$")
	public void select_original_rx_and_governmentid_set_as_no() throws Throwable {
		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("Application_OriginalRx"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_OriginalRx"),
				getDataFromExcel(ModuleName, TestCaseID, "OriginalRX"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_GovID"),
				getDataFromExcel(ModuleName, TestCaseID, "GovIDAsNo"));
		element("Application_RefillsButton").click();
		CommonMethods.selectFromDropDownByVisibleText(element("Application_RefillsButton"),
				getDataFromExcel(ModuleName, TestCaseID, "Refills"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(2000);

		CommonMethods.ScrolDownToTheObject(element("ApplicationSaveButton"));
		element("ApplicationSaveButton").click();
		Thread.sleep(8000);

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Select Product Name>>Lyrica CR Form Strength SIG and Pill Qty$")
	public void select_product_namelyrica_cr_form_strength_sig_and_pill_qty() throws Throwable {

		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Different ProductName"));

		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Different FormStrength"));

		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty"));
	}

	@Then("^Select 'GovernmentID' Set As 'NO'$")
	public void Select_GovernmentID_Set_As_NO() throws Throwable {
		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		CommonMethods.ScrolDownToTheObject(element("Application_GovID"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_GovID"),
				getDataFromExcel(ModuleName, TestCaseID, "GovIDAsNo"));
		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Save Button$")
	public void Click_on_Save_Button() throws Throwable {
		Thread.sleep(5000);
		CommonMethods.ScrolDownToTheObject(element("ApplicationSaveButton"));
		element("ApplicationSaveButton").click();
		Thread.sleep(10000);

		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Custom Order button$")
	public void Click_on_Custom_Order_button() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_CustomOrder").click();

	}

	@And("^Verify No Document Attached Prescription Product$")
	public void Verify_No_Document_Attached_Prescription_Product() throws Throwable {

		String winHandleBefore = driver.getWindowHandle();
		try {

			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions
					.visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation Information']"))));
			assertTrue(element("Application_NoDocumentAttached").isDisplayed(), "");
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			assertTrue(element("Application_NoDocumentAttached").isDisplayed(), "");
		}
		driver.switchTo().window(winHandleBefore);

	}

	@And("^Verify Enrollement outcome$")
	public void Verify_Enrollement_outcome() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		assertTrue(element("Application_NoDocumentAttachedIncompletetext").isDisplayed(), "");

	}

	@And("^Click on 'PAP Determine Outcom' Button After save$")
	public void Click_on_PAP_Determine_Outcom_Button_After_save() throws Throwable {

		CommonMethods.ScrolDownToTheObject(element("PAPDetermineOutcomeButton"));
		CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));

	}

	@Then("^After Attaching Document switch back to frame$")
	public void After_Attaching_Document_switch_back_to_frame() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(5000);
		int size = driver.findElements(By.tagName("iframe")).size();
		System.out.println(size);

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		for (int i = 0; i <= size; ++i) {

			try {
				driver.switchTo().defaultContent();
				driver.switchTo().frame(i);

				WebElement ele1 = element("ApplicationSaveButton");
				System.out.println(ele1.isDisplayed());
				break;
			} catch (NoSuchElementException | NoSuchFrameException e) {

			}

		}

	}

	@Then("^Verify Patient Name, Patient ID and Select Service Offering Dropdown$")
	public void verify_patient_name_patient_id_and_select_service_offering_dropdown() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("Application_PatientName").isDisplayed(), "");
		assertTrue(element("Application_PatientID").isDisplayed(), "");
		assertTrue(element("Application_SelectServiceOffering").isDisplayed(), "");

	}

	@Then("^Verify Patient Name, Patient ID and Application ID In Practitioner Information$")
	public void Verify_Patient_Name_Patient_ID_and_Application_ID_In_Practitioner_Information() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("Application_PatientName").isDisplayed(), "");
		assertTrue(element("Application_PatientID").isDisplayed(), "");
		assertTrue(element("Application_SelectServiceOffering").isDisplayed(), "");
	}

	@And("^Verify Order Details with Refill, Custom Order Button$")
	public void Verify_Order_Details_with_Refill_Custom_Order_Button() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_CustomOrder").isDisplayed();
		element("Application_RefillButton").isDisplayed();

		// assertTrue("Selected Value is
		// Updated",Application_ProductName.getText().equalsIgnoreCase(getDataFromExcel(ModuleName,
		// TestCaseID, "ProductName")));

	}

	// -----------------------------Sayyed-----------------------------------------------

	@And("^Select Product Name$")
	public void select_product_name() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName"));

	}

	@Then("^Verify 'Pharmacist Review Required' Checkbox and 'Pharmacist Review Reason' Drop down are visible and enabled$")
	public void verify_pharmacist_review_required_checkbox_and_pharmacist_review_reason_drop_down_are_visible_and_enabled()
			throws Throwable {

		element("PharmacistReviewRequiredCheckBox").isEnabled();
		element("PharmacistReviewReasonDropDown").isEnabled();
		driver.switchTo().defaultContent();
	}

	@And("^Select Product Name and fill all the mandatory fields for 'Lyrica'$")
	public void select_product_name_and_fill_all_the_mandatory_fields_for_lyrica() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName"));

		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength"));

		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

		Select Drop4 = new Select(element("PharmacistReviewReasonDropDown"));
		Drop4.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Pharmacist review reason"));

		element("PharmacistReviewRequiredCheckBox").click();

		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty"));
	}

	@And("^login as 'CRM' Pharmacist$")
	public void login_as_crm_pharmacist() throws Throwable {
		element("pfizerUserIDTextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "CRMUserName"));
		element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "CRMPassword"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on dropDown Next to H@w text and Select Prescription Product$")
	public void click_on_dropdown_next_to_hw_text_and_select_prescription_product() throws Throwable {
		Thread.sleep(3000);
		element("HawServiceIcon").click();
		element("PrescriptionProductName").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on Prescription Product Drop Down and select Pending review list$")
	public void click_on_prescription_product_drop_down_and_select_pending_review_list() throws Throwable {
		Thread.sleep(3000);
		element("PrescriptionProductDropDownIcon").click();
		element("PendingPharmacistReviewLabel").click();
		Thread.sleep(5000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Store Prescription ID$")
	public void store_prescription_id() throws Throwable {

		driver.switchTo().frame(element("ApplicationPageIframe"));
		element("ApplicationIDlink").click();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		String PrescriptionID = element("prescriptionIDLink").getText();
		System.out.println("Prescription Id=" + PrescriptionID);

		driver.close();
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

	}

	@Then("^Verify 'Pharmacist Review Required' Checkbox and 'Pharmacist Review Reason' Drop down are not present$")
	public void verify_pharmacist_review_required_checkbox_and_pharmacist_review_reason_drop_down_are_not_present()
			throws Throwable {

		AssertJUnit.assertFalse(element("PharmacistReviewRequiredCheckBox").isDisplayed());
		AssertJUnit.assertFalse(element("PharmacistReviewReasonDropDown").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.switchTo().defaultContent();

	}

	@And("^Select Product Name and select 'Pharmacy ReviewRequired' CheckBox and click on Save$")
	public void select_product_name_and_select_pharmacy_reviewrequired_checkbox() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName"));
		element("PharmacistReviewRequiredCheckBox").click();
		CommonMethods.ScrolDownToTheObject(element("ApplicationSaveButton"));
		element("ApplicationSaveButton").click();

	}

	@Then("^Verify 'Pharmacy Review Reason' mandatory Alert pop is appeared$")
	public void verify_pharmacy_review_reason_mandatory_alert_pop_is_appeared() throws Throwable {
		Alert alert = driver.switchTo().alert();
		AssertJUnit.assertEquals(alert.getText(), getDataFromExcel(ModuleName, TestCaseID, "PRR Alert Msg"));
		alert.accept();
	}

	@Then("^Verify 'Please Ensure pill Qty' message is displayed and click on Ok$")
	public void verify_please_ensure_pill_qty_message_is_displayed_and_click_on_ok() throws Throwable {

		Thread.sleep(5000);
		assertTrue("Ensure Pill Qty pop up is displayed", element("PleaseEnsurePillQtyMsg").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.PerformClickOnObject(element("OkButton"));
	}

	@And("^Click on 'Save OutCome' Button$")
	public void click_on_save_outcome_button() throws Throwable {
		Thread.sleep(7000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("SaveoutComeButton"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("SaveoutComeButton").click();
		Thread.sleep(3000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.switchTo().defaultContent();
	}

	@Then("^Verify Approval Status of Application is 'Incomplete'$")
	public void verify_approval_status_of_application_is_incomplete() throws Throwable {
		Thread.sleep(3000);
		AssertJUnit.assertEquals(element("ApprovalStatus").getText(),
				getDataFromExcel(ModuleName, TestCaseID, "Approval Status"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on 'Prescription Product' Drop Down and Select Review Completed$")
	public void click_on_prescription_product() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().defaultContent();
		element("PrescriptionProductDropDownIcon").click();
		element("PharmacistReviewCompletedLabel").click();
		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on dropDown Next to H@w text and Select Prescription Product Name$")
	public void click_on_dropdown_next_to_hw_text_and_select_prescription_product_name() throws Throwable {
		element("HawServiceIcon").click();
		element("PrescriptionProductName").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify Pharmacist Review Comment is Locked For Editing$")
	public void verify_pharmacist_review_comment_is_locked_for_editing() throws Throwable {
		element("PharmacistComments").click();
		element("CommentsLockButton").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select 'pharmacy Review Complete' CheckBox and Click on Save$")
	public void select_pharmacy_review_complete_checkbox_and_click_on_save() throws Throwable {
		element("PharmacistReviewCompleteColomn").click();
		element("PharmacistReviewCompleteEditButton").click();
		element("PharmacistReviewCompleteCheckBox").click();
		element("PharmacistReviewCompleteColomnSecondRow").click();
		element("PharmacistSaveButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Select Account And Click on first Account Name$")
	public void select_account_and_click_on_first_account_name() throws Throwable {
		try {
			element("showNavigationMenuButton").click();

			element("AccountsLink").click();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			Thread.sleep(2000);
			element("FirstAccountNameLink").click();
		} catch (Exception e) {
			driver.switchTo().alert().accept();
		}
	}

	@Then("^Verify 'Pharmacist Review Completed' in Log$")
	public void verify_pharmacist_review_completed_in_log() throws Throwable {
		element("PharmacistReviewCompletedValue").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify 'Denied-Product not On Program' Error Message in OVM Window$")
	public void verify_deniedproduct_not_on_program_error_message_in_ovm_window() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();
		try {
			Thread.sleep(3000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}

			driver.manage().window().maximize();
			CommonMethods.ScrolDownToTheObject(element("DeniedProductNotOnProgramMessage"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			assertTrue("'Denied-Product Not On Program' Error Message is displayed",
					element("DeniedProductNotOnProgramMessage").isDisplayed());
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			assertTrue("'Denied-Product Not On Program' Error Message is displayed' Error Message is displayed",
					element("DeniedProductNotOnProgramMessage").isDisplayed());
		}
		driver.close();
		driver.switchTo().window(winHandleBefore);
	}

	@And("^Select 'Prescriber Consonent Sign' CheckBox$")
	public void select_prescriber_consonent_sign_checkbox() throws Throwable {
		element("PrescriberConsonentSignChkBox").click();

	}

	@And("^Set Focus to Default Window$")
	public void set_focus_to_default_window() throws Throwable {
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
	}

	@And("^Click on Attach Button in the page$")
	public void click_on_attach_button_in_the_page() throws Throwable {

		driver.switchTo().frame(3);
		Thread.sleep(3000);
		CommonMethods.ScrolDownToTheObject(element("ApplicationAttachButton"));
		element("ApplicationAttachButton").click();
	}

	@And("^wait for page load$")
	public void wait_for_page_load() throws Throwable {
		Thread.sleep(5000);
	}

	@Then("^get the PatientId and OrderID$")
	public void get_the_PatientId_and_OrderID() throws Throwable {
		Thread.sleep(8000);

		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));

		PatientIds = element("PatientIDs").getText();
		System.out.println("PatientIDs====" + PatientIds);
		OrderID = element("Application_AvailableOrderID").getText();
		System.out.println("OrderID=====" + OrderID);
		Reporter.addStepLog("PatientIDs====" + PatientIds);
		Reporter.addStepLog("OrderID=====" + OrderID);
		Thread.sleep(2000);
	}
	@And("^Select Order ID>>enter Order value$")
	public void Select_Order_ID_enter_Order_value() throws Throwable {

		try {
			Thread.sleep(3000);
		}catch(Exception e) {
			driver.switchTo().alert().accept();
		}
		Thread.sleep(3000);
		element("showNavigationMenuButton").click();
		Thread.sleep(2000);
		element("GlobalSearchLink").click();
		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);

		driver.switchTo().frame(0);
		WebDriverWait wait = new WebDriverWait(driver, 20);
		wait.until(ExpectedConditions.elementToBeClickable(element("OrderRadiobutton")));
		element("OrderRadiobutton").click();
		Thread.sleep(3000);

		element("FieldDropdown").click();
		Thread.sleep(3000);
		CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "OrderFieldOption"));
		Thread.sleep(5000);
		element("Valuetxtbox").sendKeys(OrderID);
		
	}
	@Then("^Enter Household Income 1000 > Check 'Yearly' radio button > Dont Check Proof of Income checkbox$")
	public void Enter_Household_Income_1000_Check_Yearly_radio_button_Dont_Check_Proof_of_Income_checkbox()
			throws Throwable {
		element("HouseholdIncomeTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HouseholdIncome"));
		element("HouseholdIncomeYearlyRadioButton").click();
	}

	@Then("^Verify Error Messages are getting displayed in OVM and user is not able to create order$")
	public void Verify_Error_Messages_are_getting_displayed_in_OVM_and_user_is_not_able_to_create_order()
			throws Throwable {
		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		Thread.sleep(1000);
		driver.manage().window().maximize();

		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation Information']"))));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("Application_PatientHouseholdIncomeMissing").isDisplayed(), "");
		assertTrue(element("Application_PatientResidencyMissing").isDisplayed(), "");
		assertTrue(element("Application_PatienttreatedasOutpatientMissing").isDisplayed(), "");
		assertTrue(element("Application_PatientHouseholdIncomeTypeMissing").isDisplayed(), "");
		assertTrue(element("Application_PatientHouseholdsizeMissing").isDisplayed(), "");
		CommonMethods.ScrolDownToTheObject(element("Patient_Enrollment"));
		assertTrue(element("Application_MissingPrescriberConsentSignature").isDisplayed(), "");
		assertTrue(element("Application_MissingPrescriberConsentSignatureDate").isDisplayed(), "");

		Thread.sleep(5000);
		element("Application_SaveOutcomeBtn").click();
		Thread.sleep(5000);
		driver.switchTo().window(winHandleBefore);

	}

	@Then("^Click on Save Outcome Button$")
	public void Click_on_Save_Outcome_Button() throws Throwable {

		Thread.sleep(5000);
		element("Application_SaveOutcomeBtn").click();
		driver.manage().timeouts().implicitlyWait(80, TimeUnit.SECONDS);

	}

	@And("^Verify Prescription is already created$")
	public void Verify_Prescription_is_already_created() throws Throwable {
		CommonMethods.acceptAlert();

	}

	@Then("^Enter the Date in 'Date of Administration' Date Box$")
	public void enter_the_date_in_date_of_administration_date_box() throws Throwable {
		element("Application_DateofAdministrationDateLink")
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Date of Administration"));
	}

	@Then("^Select value from 'Drug Allergies' dropdown$")
	public void select_value_from_drug_allergies_dropdown() throws Throwable {

		Select Drop = new Select(element("ERP_ApplicationPrescriptionAllergiesDrpdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Drug Allergies"));

	}

	@Then("^Verify the Error Message in OVM Page$")
	public void Verify_the_Error_Message_in_OVM_Page() throws Throwable {
		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		Thread.sleep(1000);
		driver.manage().window().maximize();

		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation Information']"))));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("Application_ProofofIncomeIsmissing").isDisplayed(), "");
		assertTrue(element("Application_DeniedPatientIsnotUSResident").isDisplayed(), "");
		assertTrue(element("Application_patientisnotTreatedasOutpatient").isDisplayed(), "");
		assertTrue(element("Application_PatientIncomeisovertheProgramEligibility").isDisplayed(), "");
		Thread.sleep(5000);
		element("Application_SaveOutcomeBtn").click();
		Thread.sleep(5000);
		driver.switchTo().window(winHandleBefore);
	}

	@And("^In Application page Verify the Approval status$")
	public void In_Application_page_Verify_the_Approval_status() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated((By.xpath("//span[text()='Approval Status']/parent::div/following-sibling::div/span//slot//slot//lightning-formatted-text"))));
		assertTrue("Verify Approval status", element("ApprovalStatusText").getText()
				.equals(getDataFromExcel(ModuleName, TestCaseID, "Approval Status")));

	}

	@And("^Click on 'Create Order' Button and Verify the Popup Information$")
	public void Click_on_Create_Order_Button_and_Verify_the_Popup_Information() throws Throwable {

		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation Information']"))));

		element("CreateOrderButton").click();
		element("Application_CreateOrderPopup").isDisplayed();
		element("NewWindowOrderOKButton").click();

		driver.switchTo().window(winHandleBefore);

	}

	@And("^Select Second Product Name Form Strength SIG and Pill Qty$")
	public void select_Second_product_name_form_strength_sig_and_pill_qty() throws Throwable {

		Select Drop1 = new Select(element("Appication_ProductFieldTwo"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName2"));

		Select Drop2 = new Select(element("Appication_FormStrengthDropDownTwo"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2"));

		Select Drop3 = new Select(element("Appication_SIGTwo"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG2"));

		element("Appication_PillQtyTextBoxTwo").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty2"));

	}

	@And("^Click on Second Attach Button$")
	public void click_on_Second_attach_button() throws Throwable {
		Thread.sleep(5000);
		WebDriverWait wait = new WebDriverWait(driver, 50);
		wait.until(ExpectedConditions
				.elementToBeClickable((By.xpath("(//input[contains(@id,'attbtn') and @class='btn'])[2]"))));

		CommonMethods.ScrolDownToTheObject(element("ApplicationAttachButtonTwo"));

		element("ApplicationAttachButtonTwo").click();
	}

	@Then("^Select Second 'Original RX' and 'GovernmentID'$")
	public void select_Second_original_rx_and_governmentid() throws Throwable {
		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("Application_OriginalRxTwo"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_OriginalRxTwo"),
				getDataFromExcel(ModuleName, TestCaseID, "OriginalRX"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_GovIDTwo"),
				getDataFromExcel(ModuleName, TestCaseID, "GovID"));
		element("Application_RefillsButtonTwo").click();
		CommonMethods.selectFromDropDownByVisibleText(element("Application_RefillsButtonTwo"),
				getDataFromExcel(ModuleName, TestCaseID, "Refills"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(2000);

		CommonMethods.ScrolDownToTheObject(element("ApplicationSaveButton"));
		element("ApplicationSaveButton").click();
		Thread.sleep(8000);

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	// @And("^Select Second AppRX Checkbox>Set RX Date>Click on 'Save' Button$")
	// public void select_Second_apprx_checkboxset_rx_dateclick_on_save_button()
	// throws Throwable {
	//
	// /* CommonMethods.ScrolDownToTheObject(element("AppRXSignedChkBoxTwo"));
	// element("AppRXSignedChkBoxTwo").click();
	// element("RXDateLinkTwo").click();
	//
	// element("ApplicationSaveButton").click();
	//
	// try {
	// Thread.sleep(3000);
	// System.out.println("save ");
	// element("ApplicationSaveButton").click();
	// Thread.sleep(8000);
	//
	// } catch (Exception e) {
	//
	// }
	// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));*/
	//
	// System.out.println("Inside Method");
	// try
	// {
	//// Alert a = driver.switchTo().alert();
	// System.out.println("Alert Message: ");
	//
	//// a.dismiss();
	//
	// //driver.switchTo().parentFrame();
	//
	// //driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
	// WebDriverWait wait = new WebDriverWait(driver, 30);
	// wait.until(ExpectedConditions.visibilityOfElementLocated(
	// (By.xpath("(//input[contains(@id,'apprxsign')])[2]"))));
	// if(element("AppRXSignedChkBoxTwo")!=null)
	// {
	// System.out.println("object is formed");
	// }
	// CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
	// Thread.sleep(2000);
	// CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
	//// try {
	//// if(element("AppRXSignedChkBoxTwo").isSelected())
	//// {
	//// System.out.println("checkbox is selected");
	//// }
	//// }
	//// catch(Exception e){
	////
	//// CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
	//// }
	//
	// CommonMethods.PerformClickOnObject(element("RXDateLinkTwo"));
	// //Thread.sleep(3000);
	// CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));
	//
	// }
	// catch(Exception e) {
	//
	// CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
	// CommonMethods.PerformClickOnObject(element("RXDateLinkTwo"));
	//
	// CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));
	//
	// }
	//
	//
	// try {
	// Thread.sleep(3000);
	// System.out.println("save ");
	// element("ApplicationSaveButton").click();
	// Thread.sleep(8000);
	//
	// } catch (Exception e) {
	//
	// }
	// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	//
	//
	//
	//
	//
	// }

	@Then("^Verify the FullfillmentMethod Medvatx Dropdown and Ship To Patient$")
	public void Verify_the_FullfillmentMethod_Medvatx_Dropdown_and_Ship_To_Patient() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("Application_MedvantxDrpdownvalue"));
		assertTrue(element("Application_MedvantxDrpdownvalue").getText()
				.equals(getDataFromExcel(ModuleName, TestCaseID, "FullfillmentMethodvalue")), "");
		assertTrue(element("Application_PatientDrpdownvalue").getText()
				.equals(getDataFromExcel(ModuleName, TestCaseID, "ShipTovalue")), "");

	}

	@Then("^OVM window must get closed and user must be redirected to Application page$")
	public void OVM_window_must_get_closed_and_user_must_be_redirected_to_Application_page() throws Throwable {
		Thread.sleep(3000);
		element("EnhancemetPharmaReview_ApplicationPage").isDisplayed();

	}

	// Add NDC diflucan
	@Then("^Verify the FullfillmentMethod Dropdown and Ship To$")
	public void Verify_the_FullfillmentMethod_Dropdown_and_Ship_To() throws Throwable {

		Thread.sleep(2000);
		assertTrue(element("Application_FullfillmentMethodDropdown").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "FullfillmentMethodvalue")), "");

		assertTrue(element("Application_ShipToDropdown2").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "ShipTovalue")), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Click on Prescription Link$")
	public void Click_on_Prescription_Link$() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(10000);
		driver.switchTo().defaultContent();
		// driver.switchTo().frame(element("ApplicationPageIframe"));
		WebDriverWait wait = new WebDriverWait(driver, 180);
		wait.until(ExpectedConditions.elementToBeClickable(element("EnhancemetPharmaReview_PrescriptionID")));
		CommonMethods.PerformClickOnObject(element("EnhancemetPharmaReview_PrescriptionID"));
		// element("EnhancemetPharmaReview_PrescriptionID").click();

	}

	@Then("^Click on PAP Determine Outcom Without Save$")
	public void Click_on_PAP_Determine_Outcom_Without_Save() throws Throwable {
		Thread.sleep(2000);

		CommonMethods.ScrolDownToTheObject(element("PAPDetermineOutcomeButton"));
		element("PAPDetermineOutcomeButton").click();
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	}

	@And("^Set 'Field' to 'NPI' > Operator to 'contains' > and enter NPI with 35 Charecters> Click on 'Search' Button$")
	public void set_field_to_npi_operator_to_contains_and_enter_npi_with_35_charecters_click_on_search_button()
			throws Throwable {
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		Select Drop = new Select(element("SelectInWindow"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor"));

		Select Drop2 = new Select(element("NPIOperatorDropDown"));
		Drop2.selectByVisibleText("starts with");

		element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue"));
		element("SearchButton").click();
		Thread.sleep(2000);
		element("FirstPractitionersRow").click();
		Thread.sleep(2000);
		element("SecondAddFacilityRow").click();
		Thread.sleep(2000);
		element("FirstAddContactRow").click();
		Thread.sleep(2000);
		element("UpdateApplicationPrescriptionButton").click();

		driver.switchTo().window(winHandleBefore);
		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe
		// slds-card iframe-parent']//iframe")));
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}

	@And("^Refresh the Login Page$")
	public void refresh_the_login_page() throws Throwable {
		driver.navigate().refresh();
		try {
			driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
			element("Application_SwitchTolightning").click();
		} catch (Exception e) {

		}

	}

	@Then("^Verify 'Custom Order Button' is not displayed$")
	public void verify_custom_order_button_is_not_displayed() throws Throwable {

		try {
			element("Application_CustomOrder").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

	}

	@And("^Select the initial order created$")
	public void select_the_initial_order_created() throws Throwable {

		Thread.sleep(2000);
		element("AvailableOrderCheckbox").click();

		WebDriverWait wait = new WebDriverWait(driver, 30);

		wait.until(ExpectedConditions
				.presenceOfElementLocated(By.xpath("(//tr[@class='dataRow even  first  last']/td)[2]/span")));

	}

	@Then("^Verify only 'Refill' adn 'Cancel Order' Button is Displayed$")
	public void verify_only_refill_adn_cancel_order_button_is_displayed() throws Throwable {

		try {
			element("Application_RefillButton").isDisplayed();
			element("Application_CancelOrderButton").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		}

	}

	@Then("^Click On Alert pop Up>>Place Refill$")
	public void click_on_alert_pop_upplace_refill() throws Throwable {
		Alert alert = driver.switchTo().alert();
		alert.accept();
		driver.switchTo().frame(element("ApplicationPageIframe"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.elementToBeClickable(element("Application_PlaceRefillOrderbutton")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_PlaceRefillOrderbutton").click();

	}

	@Then("^get the OrderID$")
	public void get_the_orderid() throws Throwable {

		OrderID = element("Application_AvailableOrderID").getText();
		System.out.println("OrderID=====" + OrderID);
		Thread.sleep(2000);

	}

	@Then("^verify Correction,Replacement,Dosage Increase Order Are Displayed$")
	public void verify_correctionreplacementdosage_increase_order_are_displayed() throws Throwable {

		try {
			driver.switchTo().frame(element("ApplicationPageIframe"));
			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions.elementToBeClickable(element("Application_ReplacementOrder")));
			element("Application_ReplacementOrder").isDisplayed();
			element("Application_CorrectionOrder").isDisplayed();
			element("Application_DosageIncreaseBtn").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		}

	}

	@Then("^Verify 'Custom Order Button' is displayed$")
	public void verify_custom_order_button_is_displayed() throws Throwable {
		try {
			element("Application_CustomOrder").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {
			AssertJUnit.fail();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@And("^Click on Setup And Select Setup$")
	public void click_on_setup_and_select_setup() throws Throwable {
		element("Application_SetupGearImage").click();
		Thread.sleep(3000);
		WebElement element = element("Application_SetupDrpdownvalue");
		Actions actions = new Actions(driver);
		actions.moveToElement(element).click().perform();

		Thread.sleep(3000);

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

	}

	@And("^Search In Quick Find Search Box$")
	public void search_in_quick_find_search_box() throws Throwable {
		element("QuickFindSearchBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "QuickFind"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on Public Groups$")
	public void click_on_public_groups() throws Throwable {
		element("PublicGroupsItem").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^ClicknOn Custom Order team Edit Button$")
	public void clicknon_custom_order_team_edit_button() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("PatientPageIframe"));
		CommonMethods.PerformClickOnObject(element("CustomOrderTeamEditButton"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select Value From Search Drop Down$")
	public void select_value_from_search_drop_down() throws Throwable {

		driver.switchTo().frame(element("PatientPageIframe"));
		Select Drop = new Select(element("CustomOrderTeamSearchDropDown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Search"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Enter Search For value and click on Find button$")
	public void enter_search_for_value_and_click_on_find_button() throws Throwable {

		Member = getDataFromExcel(ModuleName, TestCaseID, "SearchForUser");
		element("CustomOrderTeamFortextBox").sendKeys(Member);
		element("CustomOrderTeamFindButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click On Add and Save button$")
	public void click_on_add_and_save_button() throws Throwable {

		Thread.sleep(3000);
		element("FirstAvailableMember").click();
		element("CustomOrderTeamAddButton").click();
		element("CustomOrderTeamSaveButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify User is redirected to 'Custom order Team' Page$")
	public void verify_user_is_redirected_to_custom_order_team_page() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("PatientPageIframe"));
		element("CustomOrderTeamButton").click();
		driver.switchTo().frame(element("PatientPageIframe"));
		element("CustomOrderTeamPageHeader").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Added User is Displayed under 'view all user' section$")
	public void added_user_is_displayed_under_view_all_user_section() throws Throwable {
		int i;
		List<WebElement> ele = driver.findElements(By.xpath("//table/tbody/tr/th[1]/a"));
		int size = ele.size();

		for (i = 2; i <= size + 1; i++) {
			if (driver.findElement(By.xpath("//table/tbody/tr[" + i + "]/th[1]/a")).getText()
					.equalsIgnoreCase(Member)) {
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				break;
			}
		}
		if (i > size + 2) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		}

	}

	@When("^Click On Order ID$")
	public void click_on_order_id() throws Throwable {

		element("GlobalSearch_FirstOrderID").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click On Custom Order Edit Button$")
	public void click_on_custom_order_edit_button() throws Throwable {

		element("CustomOrderTeamPageEditButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Select and Remove Added User From Selected member list$")
	public void select_and_remove_added_user_from_selected_member_list() throws Throwable {

		int i;
		List<WebElement> ele = driver.findElements(By.xpath("//select[@id='duel_select_1']/option"));
		int size = ele.size();
		System.out.println(size);
		for (i = 1; i <= size; i++) {
			System.out
					.println(driver.findElement(By.xpath("//select[@id='duel_select_1']/option[" + i + "]")).getText());
			if (driver.findElement(By.xpath("//select[@id='duel_select_1']/option[" + i + "]")).getText()
					.equalsIgnoreCase(Member)) {
				driver.findElement(By.xpath("//select[@id='duel_select_1']/option[" + i + "]")).click();
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				break;
			}
		}
		if (i >= size + 1) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		}

		element("CustomOrderTeamRemoveButton").click();
		element("CustomOrderTeamSaveButton").click();
	}

	@Then("^Verify Removed User is not displayed in 'View All Users'$")
	public void verify_removed_user_is_not_displayed_in_view_all_users() throws Throwable {

		int i;
		driver.switchTo().frame(element("PatientPageIframe"));
		List<WebElement> ele = driver.findElements(By.xpath("//table/tbody/tr/th[1]/a"));
		int size = ele.size();

		System.out.println(size);
		for (i = 2; i <= size + 1; i++) {
			System.out.println(driver.findElement(By.xpath("//table/tbody/tr[" + i + "]/th[1]/a")).getText());
			if (driver.findElement(By.xpath("//table/tbody/tr[" + i + "]/th[1]/a")).getText()
					.equalsIgnoreCase(Member)) {
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				AssertJUnit.fail();
			}
		}
		System.out.println(" i Value" + i);
		if (i >= size + 2) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

	}

	@And("^Close Browser$")
	public void close_browser() throws Throwable {
		driver.close();
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

	}

	@When("^Select Tasks$")
	public void select_tasks() throws Throwable {
		try {
			Thread.sleep(2000);
			element("showNavigationMenuButton").click();
			Thread.sleep(6000);
			element("Taskslink").click();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {

		}
	}

	@Then("^Verify user is Able to see 'Custom order processing' option$")
	public void verify_user_is_able_to_see_custom_order_processing_option() throws Throwable {
		element("PrescriptionProductDropDownIcon").click();
		Thread.sleep(3000);
		element("CustomOrderProcessingDrpDwnValue").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on 'Custom order processing' option$")
	public void click_on_custom_order_processing_option() throws Throwable {
		element("CustomOrderProcessingDrpDwnValue").click();
		Thread.sleep(3000);
	}

	@Then("^Verify Subject,HCP patient,Due Date,Cfeated By Alias and created Date are displayed$")
	public void verify_subjecthcp_patientdue_datecfeated_by_alias_and_created_date_are_displayed() throws Throwable {
		element("COPSubjectLabel").isDisplayed();
		element("COSHCPPatientLabel").isDisplayed();
		element("COPDueDateLabel").isDisplayed();
		element("COPCreatedByAliasLabel").isDisplayed();
		element("COPCreatedDatelabel").isDisplayed();
	}

	@And("^Verify Comments Field is not displayed$")
	public void verify_comments_field_is_not_displayed() throws Throwable {

		try {
			element("COPCommentsLabel").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@Then("^Verify user is Not ble to see 'Custom order processing' option$")
	public void verify_user_is_not_ble_to_see_custom_order_processing_option() throws Throwable {

		element("PrescriptionProductDropDownIcon").click();
		Thread.sleep(3000);

		try {
			element("CustomOrderProcessingDrpDwnValue").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			element("PrescriptionProductDropDownIcon").click();
		}
	}

	@And("^Click On 'New Task' Button$")
	public void click_on_new_task_button() throws Throwable {
		element("NewTaskButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify All Record Types are displayed$")
	public void verify_all_record_types_are_displayed() throws Throwable {
		element("NewTaskTaskLabel").isDisplayed();
		element("NewTaskCallBackLabel").isDisplayed();
		element("NewTaskCustomOrderRequestLabel").isDisplayed();
		element("NewTaskInBoundCallLabel").isDisplayed();
		element("NewTaskLogFollowUpLabel").isDisplayed();
		element("NewTaskOutBoundCallLabel").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify Saved Details are able to view$")
	public void verify_saved_details_are_able_to_view() throws Throwable {
		Assert.assertTrue(element("TaskInfoSubjectValue").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Subject")));
		Assert.assertTrue(element("TaskInfoHCPPatientValue").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "HCPPatient")));
		Assert.assertTrue(element("TaskInfoCommentsValue").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Comments")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select 'Custom Order Request'>Next$")
	public void select_custom_order_requestnext() throws Throwable {
		element("NewTaskCustomOrderRequestRadioBtn").click();
		element("NewTaskNextBtn").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Fill New Task mandatory fields>Save$")
	public void fill_new_task_mandatory_fieldssave() throws Throwable {
		Thread.sleep(2000);
		element("NewTaskSubjectTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Subject"));
		
		element("NewTaskHCPPatientTextBox").click();
		element("NewTaskHCPPatientTextBox").clear();
		element("NewTaskHCPPatientTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HCPPatient"));
		Thread.sleep(2000);
		element("SearchedValuefromTextBox").click();
		// element("NewTaskHCPPatientFirstValue").click();
		element("NewTaskCommentBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Comments"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("SaveButton").click();
	}

	@Then("^Verify the saved 'Custom Order' is visible and click on it$")
	public void verify_the_saved_custom_order_is_visible_and_click_on_it() throws Throwable {
		Thread.sleep(5000);
		int i;
		List<WebElement> ele = driver.findElements(By.xpath("//table/tbody/tr/th[1]//a"));
		int size = ele.size();
		for (i = size; i >= 1; i--) {
			System.out.println(driver.findElement(By.xpath("//table/tbody/tr[" + i + "]/th[1]//a")).getText());
			if (driver.findElement(By.xpath("//table/tbody/tr[" + i + "]/th[1]//a")).getText()
					.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Subject"))) {
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				driver.findElement(By.xpath("//table/tbody/tr[" + i + "]/th[1]//a")).click();
				break;
			}
		}
		if (i < 1 - 1) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		}
	}

	@And("^Click on Patient Name> Application ID$")
	public void click_on_patient_name_application_id() throws Throwable {

		element("TaskInfoHCPPatientValue").click();
		element("ApplicationHeader").click();
		element("FirstApplicationID").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select Order$")
	public void select_order() throws Throwable {
		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));

		Thread.sleep(2000);
		List<WebElement> ele = driver.findElements(
				By.xpath("//table[@class='detailList']/tbody/tr/td/table//tbody/tr/td/input[@type='checkbox']"));
		int size = ele.size();
		driver.findElement(By.xpath(
				"(//table[@class='detailList']/tbody/tr/td/table//tbody/tr/td/input[@type='checkbox'])[" + size + "]"))
				.click();
		;
	}

	@And("^Get the total number of Custom order exist$")
	public void get_the_total_number_of_custom_order_exist() throws Throwable {
		Thread.sleep(3000);
		List<WebElement> ele = driver.findElements(By.xpath("//table/tbody/tr/th[1]//a"));
		int size = ele.size();
		Variable1 = String.valueOf(size);
		Reporter.addStepLog("Existing Custom Order Count in list : " + Variable1);
	}

	@And("^Click On Edit button and Update the Status to 'Completed'>Save$")
	public void click_on_edit_button_and_update_the_status_to_completedsave() throws Throwable {
		element("TaskInfoStatusEditBtn").click();
		element("TaskinfoStatusTextBox").click();
		element("TaskInfoCompletedStatus").click();
		element("SaveButton").click();
		Thread.sleep(8000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify Task is not visible and existing custom order count is reduced by 1$")
	public void verify_task_is_not_visible_and_existing_custom_order_count_is_reduced_by_1() throws Throwable {
		Thread.sleep(3000);
		List<WebElement> ele = driver.findElements(By.xpath("//table/tbody/tr/th[1]//a"));
		int size = ele.size();
		Reporter.addStepLog("Current Custom Order Count in list : " + size);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Assert.assertTrue((Integer.parseInt(Variable1) - 1) == size);
	}

	@Then("^Verify the saved 'Refill order' is not visible$")
	public void verify_the_saved_refill_order_is_not_visible() throws Throwable {

		int i;
		Thread.sleep(3000);
		List<WebElement> ele = driver.findElements(By.xpath("//table/tbody/tr/th[1]//a"));
		int size = ele.size();
		for (i = 1; i <= size; i++) {
			if (driver.findElement(By.xpath("//table/tbody/tr[" + i + "]/th[1]//a")).getText()
					.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Subject"))) {
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				AssertJUnit.fail();
			}
		}
		if (i >= size + 1) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@And("^Select Previous Application ID$")
	public void select_previous_application_id() throws Throwable {

		element("ApplicationsLink").click();
		driver.navigate().refresh();
		element("SecondApplicationIdTablelink").click();

	}

	@And("^Fetch Enrollment End Date$")
	public void fetch_enrollment_end_date() throws Throwable {

		Variable1 = element("ApplicationEnrollmentEndDate").getText();
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(Variable1));
		} catch (Exception e) {

		}
		// Incrementing the date by 1 day
		c.add(Calendar.DAY_OF_MONTH, -10);
		Variable1 = sdf.format(c.getTime());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click On 'Attach Case'>Select 'ReEnrollment'> Click on 'Attach Case' Button$")
	public void click_on_attach_caseselect_reenrollment_click_on_attach_case_button() throws Throwable {

		element("FirstAttachCase").click();

		// element("CasePage_ApplicationSignatureDateTxtBx").sendKeys(Variable1);
		// Reporter.addStepLog("Signature Date :" +Variable1);
		element("Re-enrollmentCheckBox").click();
		element("AttachButton").click();

	}

	@Then("^Verify Enrollment Start date and End date$")
	public void verify_enrollment_start_date_and_end_date() throws Throwable {

		String StartDate = element("ApplicationEnrollmentStartDate").getText();
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(StartDate));
		} catch (Exception e) {

		}
		StartDate = sdf.format(c.getTime());
		String ExpDate = new Date().toString();
		Calendar d = Calendar.getInstance();
		try {
			d.setTime(sdf.parse(ExpDate));
		} catch (Exception e) {

		}
		d.add(Calendar.DAY_OF_MONTH, 366);
		ExpDate = sdf.format(d.getTime());
		Reporter.addStepLog("Enrollment Start Date: " + ExpDate);
		Assert.assertTrue(StartDate.equalsIgnoreCase(ExpDate));
		String EndDate = element("ApplicationEnrollmentEndDate").getText();
		sdf = new SimpleDateFormat("MM/dd/yyyy");
		c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(EndDate));
		} catch (Exception e) {

		}
		EndDate = sdf.format(c.getTime());
		Assert.assertTrue(EndDate.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "EnrEndDate")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Click On 'Attach Case'>Select 'ReEnrollment'> Enter signature date as 6_30_YYYY > Click on 'Attach Case' Button$")
	public void click_on_attach_caseselect_reenrollment_enter_signature_date_as_630yyyy_click_on_attach_case_button()
			throws Throwable {

		element("FirstAttachCase").click();
		element("CasePage_ApplicationSignatureDateTxtBx")
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "SignatureDate1"));
		element("Re-enrollmentCheckBox").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("AttachButton").click();
	}

	@Then("^check 'Reenrollment sent too early' Check Box$")
	public void check_reenrollment_sent_too_early_check_box() throws Throwable {
		driver.findElement(By.xpath("//label[text()='Re-enrollment sent too early']/preceding-sibling::input")).click();
	}

	@Then("^Click on 'Patient ID' hyperlink$")
	public void click_on_patient_id_hyperlink() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(
				ExpectedConditions.elementToBeClickable(By.xpath(returnLocatorValue("FirstPatienIDInGlobalSearch"))));
		element("FirstPatienIDInGlobalSearch").click();
	}

	@Then("^Verify that CET agent is able mark & unmark a Prioritized checkbox for particular patient$")
	public void verify_that_cet_agent_is_able_mark_unmark_a_prioritized_checkbox_for_particular_patient()
			throws Throwable {

		if (element("Cases_PriorityCheckBox").isSelected()) {
			element("Cases_PriorityCheckBox").click();
			assertTrue(element("Cases_PriorityCheckBox").isSelected(), "");
		}

		if (element("Cases_PriorityCheckBox").isSelected() == true) {
			element("Cases_PriorityCheckBox").click();
			AssertJUnit.assertFalse(element("Cases_PriorityCheckBox").isSelected());
		}

		Thread.sleep(2000);
		element("Cases_PriorityCheckBox").click();
		AssertJUnit.assertFalse(element("Cases_PriorityCheckBox").isSelected());

	}

	@And("^Verify the 'Priority' has been flagged red$")
	public void verify_the_priority_has_been_flagged_red() throws Throwable {
		driver.navigate().refresh();
		// try {

		new WebDriverWait(driver, 60).until(ExpectedConditions
				.visibilityOfElementLocated(By.xpath(returnLocatorValue("Cases_PriorityFlagWithRed"))));
		element("Cases_PriorityFlagWithRed").click();
		assertTrue(element("Cases_PriorityFlagWithRed").isDisplayed(), "Verifying Priority flag is in red color");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// } catch (Exception e) {
		// // TODO: handle exception
		// }

	}

	@Then("^verify 'Check this box if patient is prioritized' in Help Text$")
	public void verify_check_this_box_if_patient_is_prioritized_in_help_text() throws Throwable {
		Actions a = new Actions(driver);
		a.moveToElement(element("Cases_PriorityHelpIcon")).build().perform();
		// element("Cases_PriorityHelpText").getText().equals(getDataFromExcel(ModuleName,
		// TestCaseID, "HelpText"));
		assertEquals(element("Cases_PriorityHelpText").getText(), getDataFromExcel(ModuleName, TestCaseID, "HelpText"),
				"Does not match");
		Reporter.addStepLog("ActualValue: " + element("Cases_PriorityHelpText").getText());

	}

	@Then("^Verify 'Prioritization Date' feilds is Empty$")
	public void verify_prioritization_date_feilds_is_empty() throws Throwable {
		Thread.sleep(3000);
		System.out.println(element("Cases_PrioritizationDateBox1").getText());
		assertTrue(element("Cases_PrioritizationDateBox1").getText().length() == 0,"");

	}

	@And("^Verify the 'Priority' has been flagged green$")
	public void verify_the_priority_has_been_flagged_green() throws Throwable {
		driver.navigate().refresh();
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated(

				By.xpath(returnLocatorValue("Cases_PriorityFlagWithGreen"))

		));
		element("Cases_PriorityFlagWithGreen").click();
	}

	@Then("^UnCheck the 'Priority' check box$")
	public void uncheck_the_priority_check_box() throws Throwable {
		if (element("Cases_PriorityCheckBox").isSelected()) {
			element("Cases_PriorityCheckBox").click();
		}

	}

	/*
	 * @Then("^Verify 'Prioritization Date' feilds have date Enterd$") public void
	 * verify_prioritization_date_feilds_have_date_enterd() throws Throwable {
	 * System.out.println(element("Cases_PrioritizationDateBox").getText());
	 * assertTrue(element("Cases_PrioritizationDateBox").getText().length()>0); }
	 */

	@Then("^Verify 'Prioritization Date' feilds is on Read only Mode$")
	public void verify_prioritization_date_feilds_is_on_read_only_mode() throws Throwable {
		try {
			element("Cases_PrioritizationDateBox").sendKeys("6/11/2019 5:39 AM");
		} catch (Exception e) {

			System.out.println("Prioritization Date Box is on read only mode  " + e.getMessage());
		}
	}

	@Then("^Check the 'Priority' check box$")
	public void check_the_priority_check_box() throws Throwable {
		driver.switchTo().defaultContent();
		try {
			int noOfFrames = driver.findElements(By.xpath("//iframe")).size();
			driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
			for (int i = 0; i <= noOfFrames; i++) {
				try {
					driver.switchTo().defaultContent();
					driver.switchTo().frame(i);
					if (element("Cases_PriorityCheckBox").isSelected() != true) {
						Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
						element("Cases_PriorityCheckBox").click();
					}
					Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

					break;
				} catch (NoSuchElementException | NoSuchFrameException e) {

				}
			}

		} catch (Exception e) {
			try {
				if (element("Cases_PriorityCheckBox").isSelected() != true) {
					Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
					element("Cases_PriorityCheckBox").click();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			}

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@Then("^Verify 'Prioritized & Prioritization Date' feilds is present in Patient Accounts Page$")
	public void verify_prioritized_prioritization_date_feilds_is_present_in_patient_accounts_Page() throws Throwable {

		driver.switchTo().defaultContent();
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated(

				By.xpath(returnLocatorValue("Cases_PrioritizedFlag"))

		));
		assertTrue(element("Cases_PrioritizedFlag").isDisplayed(), "");
		assertTrue(element("Cases_PrioritizationDateBox").isDisplayed(), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	/*
	 * @Then("^Verify that 'Priority' check box field is present on patient's edit layout$"
	 * ) public void
	 * verify_that_priority_check_box_field_is_present_on_patients_edit_layout()
	 * throws Throwable {
	 * 
	 * int size = driver.findElements(By.tagName("iframe")).size();
	 * System.out.println(size);
	 * 
	 * driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
	 * 
	 * for (int i =0;i<=size;++i ) {
	 * 
	 * try { driver.switchTo().defaultContent(); driver.switchTo().frame(i);
	 * 
	 * WebElement ele1 = element("Cases_PriorityCheckBox");
	 * System.out.println(ele1.isDisplayed()); break; } catch
	 * (NoSuchElementException | NoSuchFrameException e ){
	 * 
	 * }
	 * 
	 * } assertTrue(element("Cases_PriorityCheckBox").isDisplayed());
	 * 
	 * driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	 * 
	 * }
	 */

	// modified by manoj

	@Then("^Verify that 'Priority' check box field is present on patient's edit page layout$")
	public void verify_that_priority_check_box_field_is_present_on_patients_edit_page_layout() throws Throwable {

		Thread.sleep(2000);
		// driver.switchTo().frame(element("ApplicationPageIframe"));
		int noOfFrames = driver.findElements(By.xpath("//iframe")).size();
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
		for (int i = 0; i <= noOfFrames; i++) {
			try {
				driver.switchTo().defaultContent();
				driver.switchTo().frame(i);

				assertTrue(element("Cases_PriorityCheckBox").isDisplayed(), "");
				break;
			} catch (NoSuchElementException | NoSuchFrameException e) {

			}
		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

	}

	@And("^Enter signature date as 7_01_YYYY > Click on 'Attach Case' Button$")
	public void enter_signature_date_as_701yyyy_click_on_attach_case_button() throws Throwable {
		element("CasePage_ApplicationSignatureDateTxtBx")
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "SignatureDate2"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("AttachButton").click();
	}

	@Then("^Verify Approval Status in the Application Page$")
	public void verify_approval_status_in_the_application_page() throws Throwable {

		assertTrue(element("ApplicationApprovalStatusValue").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Approval Status")), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Verify Enrollment Date And Enrollment End Date are Populated$")
	public void verify_enrollment_date_and_enrollment_end_date_are_populated() throws Throwable {

		assertTrue(element("ApplicationEnrollmentStartDate").isDisplayed(), "");
		assertTrue(element("ApplicationEnrollmentEndDate").isDisplayed(), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^In PAP Information section Select 'US Resident' as 'N' For ReEnrollment$")
	public void in_pap_information_section_select_us_resident_as_n_for_reenrollment() throws Throwable {
		Select Drop = new Select(element("USResidentDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ReEnrollUSResident"));

	}

	@Then("^Verify  Option must get selected as N For ReEnrollment$")
	public void verify_option_must_get_selected_as_n_for_reenrollment() throws Throwable {
		String USResidentDropdown = element("USResidentDropdown").getAttribute("value");
		assertTrue("Application Source Data is selected",
				USResidentDropdown.equals(getDataFromExcel(ModuleName, TestCaseID, "ReEnrollUSResident")));

	}

	@Then("^Verify 'Prescription Will be Queued' Error Message is not Displayed$")
	public void verify_prescription_will_be_queued_error_message_is_not_displayed() throws Throwable {

		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("SaveoutComeButton"));

		try {
			element("PrescriptionWillBeQueuedErrMsg").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		} catch (Exception e) {

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			driver.close();
			Thread.sleep(3000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}

		}

	}

	@And("^Click on Application ID$")
	public void click_on_application_id() throws Throwable {

		driver.switchTo().frame(element("ApplicationPageIframe"));
		element("Application_ApplicationIDlabel").click();
		Thread.sleep(2000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

	}

	@And("^Verify Enrollment Date And Enrollment End Date are Not Populated$")
	public void verify_enrollment_date_and_enrollment_end_date_are_not_populated() throws Throwable {

		assertTrue(element("ApplicationEnrollmentStartDate").getText().equalsIgnoreCase(""), "");
		assertTrue(element("ApplicationEnrollmentEndDate").getText().equalsIgnoreCase(""), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Select Product Name Form Strength SIG and Pill Qty For ReEnrollment$")
	public void select_product_name_form_strength_sig_and_pill_qty_for_reenrollment() throws Throwable {

		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ReEnrollProductName"));

		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ReEnrollFormStrength"));

		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty"));

	}

	@Then("^verify 'Create Order' Button is Not Present$")
	public void verify_create_order_button_is_not_present() throws Throwable {
		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("SaveoutComeButton"));

		try {
			element("CreateOrderButton").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		} catch (Exception e) {

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			driver.close();
			Thread.sleep(3000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}

		}

	}

	@Then("^Verify 'Prescriber Consent Sign Date' is not Auto Populated$")
	public void verify_prescriber_consent_sign_date_is_not_auto_populated() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("PrescriberConsentSignTextBox"));
		assertTrue(element("PrescriberConsentSignTextBox").getAttribute("value").equalsIgnoreCase(""), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@When("^Select Application$")
	public void select_application() throws Throwable {

		System.out.println(driver.findElement(By.xpath("//div[@data-message-id='loginAsSystemMessage']")).getText());
		try {
			Thread.sleep(2000);
			CommonMethods.PerformClickOnObject(element("showNavigationMenuButton"));
			// element("showNavigationMenuButton").click();
			Thread.sleep(3000);
			CommonMethods.PerformClickOnObject(element("ApplicationLink"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {
			driver.switchTo().alert().accept();
		}

	}

	@Then("^Select Desired View$")
	public void select_desired_view() throws Throwable {
		element("CasesListViewDropdown").click();
		element("AnoopView").click();
		Thread.sleep(3000);

	}

	@And("^Click on First Application ID in Desired View$")
	public void click_on_first_application_id_in_desired_view() throws Throwable {

		element("AnoopViewFirstApplicationID").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Fetch Patient ID Number$")
	public void fetch_patient_id_number() throws Throwable {

		if (element("ApplicationCountlabel").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "ApplicationCount"))) {

			element("ReEnrollmentDropDownicon").click();
			Thread.sleep(3000);
			JavascriptExecutor js = (JavascriptExecutor) driver;
			js.executeScript("arguments[0].click();", driver.findElement(By.xpath("//li/a[@title='Delete']")));
			element("DeleteConfirmButton").click();

			Thread.sleep(5000);
		}

		PatientPage.NewPatient_ID = element("ApplicationPatientIDNumber").getText();
	}

	@And("^Create 'Supporting Documents'$")
	public void create_supporting_documents() throws Throwable {
		Thread.sleep(3000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView();",
				driver.findElement(By.xpath("//span[text()='Supporting Documents']")));

		js.executeScript("arguments[0].click();",
				driver.findElement(By.xpath("//span[text()='Supporting Documents']")));

		try {
			driver.findElement(By.xpath("(//a[@title='New' and @role='button'])[1]")).click();
		} catch (Exception e) {
			driver.findElement(By.xpath("(//a[@title='New' and @role='button'])[2]")).click();
		}
		driver.findElement(By.xpath("//span[text()='Supporting Document Name']/parent::label/following-sibling::input"))
				.sendKeys("SupportingDocumentName");

		CommonMethods.PerformClickOnObject(driver.findElement(
				By.xpath("//span[text()='Program']/parent::label/following-sibling::div//input[@type='text']")));
		driver.findElement(
				By.xpath("//span[text()='Program']/parent::label/following-sibling::div//input[@type='text']"))
				.sendKeys("RxPathways");
		Thread.sleep(2000);

		try {
			driver.findElement(By.xpath("//mark[@class='data-match']")).click();

		} catch (Exception e1) {
			driver.findElement(
					By.xpath("//span[text()='Program']/parent::label/following-sibling::div//input[@type='text']"))
					.click();
			driver.findElement(
					By.xpath("//span[text()='Program']/parent::label/following-sibling::div//input[@type='text']"))
					.clear();
			driver.findElement(
					By.xpath("//span[text()='Program']/parent::label/following-sibling::div//input[@type='text']"))
					.sendKeys("RxPathways");
			Thread.sleep(2000);
			driver.findElement(By.xpath("//mark[@class='data-match']")).click();
			Thread.sleep(2000);
		}

		// click on save button in Supporting Document
		driver.findElement(By.xpath("//button[@title='Save']")).click();

	}

	@Then("^Verify Event logs For Both the Applications are displayed$")
	public void verify_event_logs_for_both_the_applications_are_displayed() throws Throwable {

		driver.switchTo().frame(element("ApplicationPageIframe"));
		List<WebElement> list = new ArrayList<WebElement>();
		list = driver.findElements(By.xpath("//table/tbody/tr/td[2]/span"));
		int size = list.size();
		int i;

		for (i = 2; i <= size + 1; i++) {
			if (driver.findElement(By.xpath("//table/tbody/tr[" + i + "]/td[2]/span")).getText()
					.equalsIgnoreCase(Variable1)) {
				if (driver.findElement(By.xpath("//table/tbody/tr[" + i + "]/td[3]/span")).getText()
						.equalsIgnoreCase("Application Created")) {
					CommonMethods.ScrolDownToTheObject(
							driver.findElement(By.xpath("//table/tbody/tr[" + i + "]/td[3]/span")));
					Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
					break;
				}

			}
		}
		if (i > size + 1) {
			AssertJUnit.fail();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

	}

	@And("^Fetch Application ID from Header$")
	public void fetch_application_id_from_header() throws Throwable {

		Variable1 = element("ApplicationIDHeader").getText();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify Final outcome is denied because of LOE product in OVM Window$")
	public void verify_final_outcome_is_denied_because_of_loe_product_in_ovm_window() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		CommonMethods.ScrolDownToTheObject(element("Application_DeniedLabelinOVM"));

		Assert.assertTrue(element("Application_DeniedLabelinOVM").isDisplayed());
		Assert.assertTrue(element("Application_LOELabelinOVM").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.close();

		driver.switchTo().window(winHandleBefore);

	}

	@And("^Navigate to Application page and click on PAP Appeal$")
	public void navigate_to_application_page_and_click_on_pap_appeal() throws Throwable {
		Thread.sleep(5000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		element("Application_ApplicationIDlabel").click();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		driver.navigate().refresh();
		element("Application_PAPAppealButton").click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify User is able to create the LOE Appeal$")
	public void verify_user_is_able_to_create_the_loe_appeal() throws Throwable {
		Thread.sleep(5000);
		driver.switchTo().frame(element("Application_ReasonforPAPAppeal"));

		element("Appeal_SelectLOEAppealoption").click();
		element("Application_SelectRightArrow").click();
		Select Dropdown1 = new Select(element("Appeal_ApprovedDropdown"));
		Dropdown1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
		element("Appeal_savebutton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.close();
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

	}

	@And("^Navigate to OVM Window and Verify that the user is able to Create an Order$")
	public void navigate_to_ovm_window_and_verify_that_the_user_is_able_to_create_an_order() throws Throwable {
		Thread.sleep(5000);

		driver.switchTo().frame(element("ApplicationPage"));
		CommonMethods.ScrolDownToTheObject(element("Application_PAPDetOutBtn"));
		element("Application_PAPDetOutBtn").click();
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		Thread.sleep(5000);
		assertTrue("Ensure Valid Practitioner pop up is displayed", element("EnsurePractitionerText").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.PerformClickOnObject(element("OkButton"));
		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("Createorderbtn_OVM"));
		assertTrue(element("Createorderbtn_OVM").isDisplayed(), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	/*
	 * @Then("^Verify Active Application CheckBox is Unchecked$") public void
	 * verify_active_application_checkbox_is_unchecked() throws Throwable {
	 * assertTrue(element("AplicationActivecheckbox").getAttribute("class").contains
	 * ("unchecked"));
	 * Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver)); }
	 * vivek code
	 */

	@Then("^Verify 'Prescription Flagged' Error Message is Displayed$")
	public void verify_prescription_flagged_error_message_is_displayed() throws Throwable {

		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("PrescriptionFlaggedErrMsg"));
		assertTrue(element("PrescriptionFlaggedErrMsg").isDisplayed(), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.close();
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
	}

	@Then("^Verify Prescription is listed in list and Mark as Completed$")
	public void verify_prescription_is_listed_in_list_and_mark_as_completed() throws Throwable {

		List<WebElement> List = new ArrayList<WebElement>();
		List = driver.findElements(By.xpath("//table/tbody/tr"));
		int size = List.size();
		int i;
		for (i = 1; i <= size; i++) {
			if (driver.findElement(By.xpath("(//table/tbody/tr/td[4]//a)[" + i + "]")).getText()
					.equalsIgnoreCase(Variable1)) {
				driver.findElement(By.xpath("(//table/tbody/tr/td[9]//img)[" + i + "]")).click();
				driver.findElement(By.xpath("(//table/tbody/tr/td[9]//button)[" + i + "]")).click();
				driver.findElement(By.xpath("//span[text()='Pharmacist Review Complete']/../following-sibling::input"))
						.click();
				element("PharmacistCommentfirstTextbox").click();
				element("PharmacistSaveButton").click();
				Thread.sleep(2000);
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				break;
			}

		}
		System.out.println("i value :" + i);
		if (i > size) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		}
	}

	@And("^FetCh Application Prescription ID$")
	public void fetch_application_prescription_id() throws Throwable {

		Thread.sleep(5000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		element("Application_ApplicationIDlabel").click();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		driver.navigate().refresh();
		Variable1 = element("ApplicationPrescriptionID").getText();
		Reporter.addStepLog("Prescription ID : " + Variable1);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.close();
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

	}

	@And("^Click on Prescription ID from Review Completed List$")
	public void click_on_prescription_id_from_review_completed_list() throws Throwable {

		List<WebElement> List = new ArrayList<WebElement>();
		List = driver.findElements(By.xpath("//table/tbody/tr"));
		int size = List.size();
		int i;
		for (i = 1; i <= size; i++) {
			if (driver.findElement(By.xpath("(//table/tbody/tr/td[4]//a)[" + i + "]")).getText()
					.equalsIgnoreCase(Variable1)) {
				driver.findElement(By.xpath("(//table/tbody/tr/td[4]//a)[" + i + "]")).click();
				Thread.sleep(2000);
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				break;
			}

		}
		if (i > size) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		}

	}

	@Then("^Verify 'Prescription Flagged' Error Message is not Displayed$")
	public void verify_prescription_flagged_error_message_is_not_displayed() throws Throwable {
		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		try {
			element("PrescriptionFlaggedErrMsg").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();

		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			driver.close();
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
		}

	}

	@Then("^Verify 'Missing Govt Id For Lyrica' is Displayed$")
	public void verify_missing_govt_id_for_lyrica_is_displayed() throws Throwable {
		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("MissingGovtIDForlyricaCR"));
		assertTrue(element("MissingGovtIDForlyricaCR").isDisplayed(), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.close();
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
	}

	@Then("^verify that Future ReEnrollment Checkbox is checked$")
	public void verify_that_future_reenrollment_checkbox_is_checked() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("FutureReEnrollmentCheckBox"));
		assertTrue(element("FutureReEnrollmentCheckBox").getAttribute("class").contains("checked"), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify Future ReEnrollment CheckBox is Unchecked$")
	public void verify_future_reenrollment_checkbox_is_unchecked() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("FutureReEnrollmentCheckBox"));
		assertTrue(element("FutureReEnrollmentCheckBox").getAttribute("class").contains("unchecked"), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Handle Alert pop Up$")
	public void handle_alert_pop_up() throws Throwable {

		try {
			WebDriverWait wait = new WebDriverWait(driver, 5);
			wait.until(ExpectedConditions.alertIsPresent());
			driver.switchTo().alert().accept();
		} catch (Exception e) {

		}

	}

	@When("^Click on Order ID link in the Search result$")
	public void click_on_order_id_link_in_the_search_result() throws Throwable {
		element("GlobalSearch_FirstOrderID").click();
		Thread.sleep(3000);
	}

	@And("^Fetch again Enrollment End Date$")
	public void fetch_again_enrollment_end_date() throws Throwable {

		Variable2 = element("ApplicationEnrollmentEndDate").getText();
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(Variable2));
		} catch (Exception e) {

		}
		Variable2 = sdf.format(c.getTime());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	// @Then("^Verify 'No Enrollment for Group C product' Error Message is
	// displayed$")
	// public void
	// verify_no_enrollment_for_group_c_product_error_message_is_displayed() throws
	// Throwable {
	// Thread.sleep(5000);
	// String winHandleBefore = driver.getWindowHandle();
	//
	// for(String winHandle : driver.getWindowHandles()){
	// driver.switchTo().window(winHandle);
	// }
	// driver.manage().window().maximize() ;
	//
	// element("NoEnrollForGrpCproductErrMSg").isDisplayed();
	// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	//
	// driver.close();
	// driver.switchTo().window(winHandleBefore);
	//
	// }

	@Then("^Verify Start Date of ReEnrollment should start one day after end date of Enrollment$")
	public void verify_start_date_of_reenrollment_should_start_one_day_after_end_date_of_enrollment() throws Throwable {

		String StartDate = element("ApplicationEnrollmentStartDate").getText();

		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();

		try {
			c.setTime(sdf.parse(StartDate));
		} catch (Exception e) {

		}
		// Incrementing the date by 1 day
		StartDate = sdf.format(c.getTime());

		sdf = new SimpleDateFormat("MM/dd/yyyy");
		c = Calendar.getInstance();

		try {
			c.setTime(sdf.parse(Variable2));
		} catch (Exception e) {

		}
		// Incrementing the date by 1 day
		c.add(Calendar.DAY_OF_MONTH, 1);
		Variable2 = sdf.format(c.getTime());
		System.out.println(StartDate);
		System.out.println(Variable2);
		Assert.assertTrue(StartDate.equalsIgnoreCase(Variable2));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Fetch Application Signature Date$")
	public void fetch_application_signature_date() throws Throwable {

		Variable1 = element("ApplicationEnrollmentEndDate").getText();
		System.out.println(Variable1);
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(Variable1));
		} catch (Exception e) {

		}
		// Incrementing the date by 1 day
		c.add(Calendar.MONTH, -6);
		c.add(Calendar.DAY_OF_MONTH, -10);

		Variable1 = sdf.format(c.getTime());
		System.out.println(Variable1);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that ReEnrollment Application sent Too Early and ReEnrollment start date is displayed Correctly$")
	public void verify_that_reenrollment_application_sent_too_early_and_reenrollment_start_date_is_displayed_correctly()
			throws Throwable {

		System.out.println(element("ApplicationErrorMsg").getText());
		System.out.println(Variable2);
		Assert.assertTrue(element("ApplicationErrorMsg").getText().contains(Variable2));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^fetch the ReEnrollment start date$")
	public void fetch_the_reenrollment_start_date() throws Throwable {

		Variable2 = element("ApplicationEnrollmentEndDate").getText();

		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();

		try {
			c.setTime(sdf.parse(Variable2));
		} catch (Exception e) {

		}
		// Incrementing the date by 1 day
		c.add(Calendar.MONTH, -6);
		c.add(Calendar.DAY_OF_MONTH, 1);
		Variable2 = sdf.format(c.getTime());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		if (Variable2.substring(0, 1).equalsIgnoreCase("0") && (Variable2.substring(3, 4).equalsIgnoreCase("0"))) {
			char a[] = Variable2.toCharArray();
			a[0] = ' ';
			a[3] = ' ';
			Variable2 = new String(a);
			Variable2 = Variable2.replace(" ", "");
		}

		else if (Variable2.substring(0, 1).equalsIgnoreCase("0")) {
			char a[] = Variable2.toCharArray();
			a[0] = ' ';
			Variable2 = new String(a);
			Variable2 = Variable2.replace(" ", "");
		} else if (Variable2.substring(3, 4).equalsIgnoreCase("0")) {
			char a[] = Variable2.toCharArray();
			a[3] = ' ';
			Variable2 = new String(a);
			Variable2 = Variable2.replace(" ", "");

		}
	}

	@And("^Fetch again Application Signature Date$")
	public void fetch_again_application_signature_date() throws Throwable {

		Variable2 = element("ApplicationEnrollmentEndDate").getText();

		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();

		try {
			c.setTime(sdf.parse(Variable2));
		} catch (Exception e) {

		}
		// Incrementing the date by 1 day
		c.add(Calendar.MONTH, -12);
		c.add(Calendar.DAY_OF_MONTH, -10);
		Variable2 = sdf.format(c.getTime());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		if (Variable2.substring(0, 1).equalsIgnoreCase("0") && (Variable2.substring(3, 4).equalsIgnoreCase("0"))) {
			char a[] = Variable2.toCharArray();
			a[0] = ' ';
			a[3] = ' ';
			Variable2 = new String(a);
			Variable2 = Variable2.replace(" ", "");
		}

		else if (Variable2.substring(0, 1).equalsIgnoreCase("0")) {
			char a[] = Variable2.toCharArray();
			a[0] = ' ';
			Variable2 = new String(a);
			Variable2 = Variable2.replace(" ", "");
		} else if (Variable2.substring(3, 4).equalsIgnoreCase("0")) {
			char a[] = Variable2.toCharArray();
			a[3] = ' ';
			Variable2 = new String(a);
			Variable2 = Variable2.replace(" ", "");

		}

	}

	@Then("^Fetch Application Signature Date within six month of enrollment end date$")
	public void fetch_application_signature_date_within_six_month_of_enrollment_end_date() throws Throwable {
		Variable1 = element("ApplicationEnrollmentEndDate").getText();
		System.out.println(Variable1);
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(Variable1));
		} catch (Exception e) {

		}
		// Incrementing the date by 1 day
		c.add(Calendar.MONTH, -6);
		c.add(Calendar.DAY_OF_MONTH, 1);

		Variable1 = sdf.format(c.getTime());
		System.out.println(Variable1);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select Second order created$")
	public void select_second_order_created() throws Throwable {

		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));

		Thread.sleep(2000);
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated(

				By.xpath(returnLocatorValue("Application_SecondOrderCheckBox"))));
		element("Application_SecondOrderCheckBox").click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify release date calculation is according to 75 percent criteria$")
	public void verify_release_date_calculation_is_according_to_75_percent_criteria() throws Throwable {

		Thread.sleep(5000);
		// driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		String ReleaseDate = element("Application_SecondOrderReleaseDate").getText();
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(ReleaseDate));
		} catch (Exception e) {

		}
		// Incrementing the date by 1 day
		c.add(Calendar.DAY_OF_MONTH, 68);
		String ExpNextRefillDate = sdf.format(c.getTime());
		String ActualNextRefill = element("Application_SecondOrderNextRefillDate").getText();
		try {
			c.setTime(sdf.parse(ActualNextRefill));
		} catch (Exception e) {

		}
		ActualNextRefill = sdf.format(c.getTime());
		Assert.assertTrue(ActualNextRefill.equalsIgnoreCase(ExpNextRefillDate));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify refill order release date calculation is according to 75 percent criteria of the previous order$")
	public void verify_refill_order_release_date_calculation_is_according_to_75_percent_criteria_of_the_previous_order()
			throws Throwable {
		driver.navigate().refresh();
		Thread.sleep(5000);

		String ReleaseDate = element("Application_SecondOrderReleaseDate").getText();
		ReleaseDatecal = ReleaseDate;
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(ReleaseDate));
		} catch (Exception e) {

		}
		// Incrementing the date by 1 day
		c.add(Calendar.DAY_OF_MONTH, 68);
		String ExpNextRefillDate = sdf.format(c.getTime());
		String ActualNextRefill = element("Application_SecondOrderNextRefillDate").getText();
		try {
			c.setTime(sdf.parse(ActualNextRefill));
		} catch (Exception e) {

		}
		ActualNextRefill = sdf.format(c.getTime());
		Assert.assertTrue(ActualNextRefill.equalsIgnoreCase(ExpNextRefillDate));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify release date for the new order is less than the RX expiry date\\((\\d+) days\\)$")
	public void verify_release_date_for_the_new_order_is_less_than_the_RX_expiry_date_days(int arg1) throws Throwable {
		Thread.sleep(5000);
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(RXexpirydate));
		} catch (Exception e) {

		}
		if (ReleaseDatecal.compareTo(RXexpirydate) < 0)

		{
			System.out.println("Release date for the new order is less than the RX expiry date");
		} else {
			Assert.fail("release date for the new order is not less than the RX expiry date");
		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that All the details got entered Properly$")
	public void verify_that_all_the_details_got_entered_properly() throws Throwable {
		Select select = new Select(element("ProductNameDropDown"));
		WebElement option = select.getFirstSelectedOption();
		assertTrue("Selected Value is Updated",
				option.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "ProductName")));

		select = new Select(element("FormStrengthDropDown"));
		option = select.getFirstSelectedOption();
		assertTrue("Selected Value is Updated",
				option.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2")));

		select = new Select(element("SIGDropDown"));
		option = select.getFirstSelectedOption();
		assertTrue("Selected Value is Updated",
				option.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "SIG")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify Valid Practitioner Pop Up$")
	public void verify_valid_practitioner_pop_up() throws Throwable {
		Thread.sleep(5000);
		assertTrue("Ensure Valid Practitioner pop up is displayed", element("EnsurePractitionerText").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^copy the RX ID from prescription page$")
	public void copy_the_rx_id_from_prescription_page() throws Throwable {
		Thread.sleep(10000);
		driver.switchTo().defaultContent();
		Thread.sleep(2000);
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		CommonMethods.ScrolDownToTheObject(element("ApplicationRxID"));

		Variable2 = element("ApplicationRxID").getText();

	}

	@And("^click on search salesforce tab and paste that Rx Date$")
	public void click_on_search_salesforce_tab_and_paste_that_rx_date() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().defaultContent();
		element("ApplicationSearchSalesforce").sendKeys(Variable2);
		// element("ApplicationSearchSalesforce").sendKeys("RX-534590");

		Thread.sleep(5000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^click on that Rx Date value$")
	public void click_on_that_rx_date_value() throws Throwable {
		element("ApllicationSearchclick").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}

	@Then("^click on RX id under product name$")
	public void click_on_rx_id_under_product_name() throws Throwable {
		element("ApplicationRXIDproductname").click();

	}

	@And("^Click on Rx date pencil edit button$")
	public void click_on_rx_date_pencil_edit_button() throws Throwable {
		CommonMethods.PerformClickOnObject(element("ApplicationRxpencilButton"));
	}

	// @Then("^Change Rx date to 365 days before system date and click on save
	// button$")
	// public void
	// change_rx_date_to_365_days_before_system_date_and_click_on_save_button()
	// throws Throwable {
	// element("ApplicationRXDatePencilTEXTBOX").clear();
	// element("ApplicationRXDatePencilTEXTBOX").sendKeys(getDataFromExcel(ModuleName,
	// TestCaseID, "RxDATE"));
	// Thread.sleep(2000);
	// element("DocumentsSaveButton").click();
	// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	// }

	@Then("^Change Rx date to 365 days before system date and click on save button$")
	public void change_rx_date_to_365_days_before_system_date_and_click_on_save_button() throws Throwable {
		element("ApplicationRXDatePencilTEXTBOX").clear();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,360);");
		// element("ApplicationRXDatePencilTEXTBOX").sendKeys(getDataFromExcel(ModuleName,
		// TestCaseID, "RxDATE"));
		element("ApplicationRXDatePencilTEXTBOX").sendKeys("7/26/2018");
		Thread.sleep(2000);
		element("DocumentsSaveButton").click();

		try {

			element("OrderProduct_SaveBtn").click();

		} catch (Exception e1) {

		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^click on Application number$")
	public void click_on_application_number() throws Throwable {
		Thread.sleep(5000);
		// element("ApplicationnumberLink").click();
		CommonMethods.PerformClickOnObject(element("ApplicationnumberLink"));
	}

	@Then("^Verify User is able to create the LOE Appeal sucessfully$")
	public void verify_user_is_able_to_create_the_loe_appeal_sucessfully() throws Throwable {
		Thread.sleep(5000);
		driver.switchTo().frame(element("PractitionerInformationIframe"));

		element("Appeal_USResidecy").click();
		// Thread.sleep(2000);
		element("Application_SelectRightArrow").click();
		// Thread.sleep(3000);
		Select Dropdown1 = new Select(element("Appeal_ApprovedDropdown"));
		Dropdown1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
		// CommonMethods.selectFromDropDownByVisibleText(element("Appeal_ApprovedDropdown"),
		// getDataFromExcel(ModuleName, TestCaseID, "AppealStatus"));
		element("AppealSaveButton").click();
		// Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify User is able to create the LOE Appeal Selected$")
	public void verify_user_is_able_to_create_the_loe_appeal_selected() throws Throwable {
		Thread.sleep(5000);
		driver.switchTo().frame(element("PractitionerInformationIframe"));

		element("Appeal_SelectLOEAppealoption").click();
		// Thread.sleep(2000);
		element("Application_SelectRightArrow").click();
		// Thread.sleep(3000);
		Select Dropdown1 = new Select(element("Appeal_ApprovedDropdown"));
		Dropdown1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
		// CommonMethods.selectFromDropDownByVisibleText(element("Appeal_ApprovedDropdown"),
		// getDataFromExcel(ModuleName, TestCaseID, "AppealStatus"));
		element("AppealSaveButton").click();
		// Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Click on 'Attach Case' Button  > select PAP Apeel document > click on 'Attach' Button$")
	public void click_on_attach_case_button_select_pap_apeel_document_click_on_attach_button() throws Throwable {
		element("FirstAttachCase").click();

		element("EnrollmentFormCheckBox").click();

		element("ApplicationPAPAPealCheckbox").click();
		element("AttachButton").click();
	}

	@Then("^Verify that Reason for denial is still displayed$")
	public void verify_that_reason_for_denial_is_still_displayed() throws Throwable {

		Thread.sleep(7000);

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("Application_DeniedLabelinOVM"));

		Assert.assertTrue(element("Application_LOELabelinOVM").isDisplayed());
		try {
			element("Application_CreateOrderButton").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();

		} catch (Exception e) {
			System.out.println("test case passed");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

	}

	@And("^Select Product Name Form Strength SIG and Pill Quantity for Second product$")
	public void select_product_name_form_strength_sig_and_pill_quantity_for_second_product() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName2"));

		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2"));

		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^verify that Logs are being captured in Chronological order$")
	public void verify_that_logs_are_being_captured_in_chronological_order() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("OrderCreatedUnderEventLog"));
		assertTrue("PAP Approved is coming Order Created", element("PAPApprovedUnderEventLog").isDisplayed());
		assertTrue("Order Created is coming", element("OrderCreatedUnderEventLog").isDisplayed());

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"PAP Approved is coming first and then Order Created");
		driver.switchTo().defaultContent();
	}

	@Then("^Verify that agent is able to see comments in commentsbox$")
	public void verify_that_agent_is_able_to_see_comments_in_commentsbox() throws Throwable {
		Assert.assertTrue(element("PharmacistReviewCompleteColomn").isDisplayed());
		Assert.assertTrue(element("PharmacistReviewCompleteEditButton").isDisplayed());
		Assert.assertTrue(element("PharmacistReviewCompleteCheckBox").isDisplayed());
		Assert.assertTrue(element("PharmacistCommentfirstTextbox").isDisplayed());
		Assert.assertTrue(element("PharmacistSaveButton").isDisplayed());
		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Click on Application ID Link$")
	public void click_on_application_id_link() throws Throwable {
		Thread.sleep(5000);
		element("ApplicationIdLink1").click();
	}

	// old code to select RE-enrollment according to the requirement changes
	/*
	 * @Then("^Select 'Select Service Offering' to Re-Enrollment$") public void
	 * select_select_service_offering_to_reenrollment() throws Throwable { Select
	 * Drop = new Select(element("SelectServiceOfferingDropdown"));
	 * Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID,
	 * "Service Offer 2"));
	 * 
	 * }
	 */

	@Then("^verify that ReEnrollment application is displayed$")
	public void verify_that_reenrollment_application_is_displayed() throws Throwable {
		Thread.sleep(5000);
		Assert.assertTrue(element("Application_Re-Enrollmemt").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^In Application page Verify the ReEnrollment Approval status$")
	public void in_application_page_verify_the_reenrollment_approval_status() throws Throwable {

		Assert.assertTrue(element("ReEnrollmentApprovalStatus").getText()
				.equals(getDataFromExcel(ModuleName, TestCaseID, "Approval Status")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^click on Application and select First application$")
	public void click_on_application_and_select_first_application() throws Throwable {
		element("ApplicationsLink").click();

		driver.navigate().refresh();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_FirstNameClick").click();

	}

	@Then("^click on Application and select second application$")
	public void click_on_application_and_select_second_application() throws Throwable {
		element("ApplicationsLink").click();

		driver.navigate().refresh();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_secondNameclick").click();
	}

	@Then("^Verify that Approval status is Approved$")
	public void verify_that_approval_status_is_approved() throws Throwable {

	}

	@And("^Verify  User is not able to create ReEnrollment for Group C$")
	public void verify_user_is_not_able_to_create_reenrollment_for_group_c() throws Throwable {

	}

	@Then("^Verify Enrollment Date and Enrollment End Date is displayed$")
	public void verify_enrollment_date_and_enrollment_end_date_is_displayed() throws Throwable {
		element("ApplicationEnrollmentStartDate").isDisplayed();

		element("ApplicationEnrollmentEndDate").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that ReEnrollment Application sent Too Early$")
	public void verify_that_reenrollment_application_sent_too_early() throws Throwable {

		element("ApplicationErrorMsg").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Select ReEnrollment sent too Early$")
	public void select_reenrollment_sent_too_early() throws Throwable {
		element("ApplicationReEnrollmenttooEarly").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that ReEnrollment sent too early checkbox get checked$")
	public void verify_that_reenrollment_sent_too_early_checkbox_get_checked() throws Throwable {
		element("ApplicationReEnrollmenttooEarly").isSelected();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		System.out.println(element("ApplicationReEnrollmenttooEarly").isSelected());
	}

	@Then("^Click on Attach Case button$")
	public void click_on_attach_case_button() throws Throwable {
		element("AttachButton").click();
	}

	@Then("^Verify that user should be redirected to application page and case status should be closed$")
	public void verify_that_user_should_be_redirected_to_application_page_and_case_status_should_be_closed()
			throws Throwable {
		Thread.sleep(3000);
		Assert.assertTrue(element("ApplicationCaseClosed").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that agent is able to create ReEnrollment while keeping current application active$")
	public void verify_that_agent_is_able_to_create_reenrollment_while_keeping_current_application_active()
			throws Throwable {
		element("ApplicationnumberLink").click();
		Thread.sleep(3000);
		element("AplicationActivecheckbox").isSelected();
	}

	@Then("^Verify that Enrollment end date and start date is displayed$")
	public void verify_that_enrollment_end_date_and_start_date_is_displayed() throws Throwable {
		element("ApplicationEnrollmentStartDate").isDisplayed();
		element("ApplicationEnrollmentEndDate").isDisplayed();
	}

	@Then("^verify that Active application Checkbox is checked$")
	public void verify_that_active_application_checkbox_is_checked() throws Throwable {
		Assert.assertTrue(element("AplicationActivecheckbox").getAttribute("class").contains("checked"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Final outcome button and Create order Button is present and Click on 'Create Order' Button then click on ok button$")
	public void verify_that_final_outcome_button_and_create_order_button_is_present_and_click_on_create_order_button_then_click_on_ok_button()
			throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("Application_CreateOrderButton"));
		Assert.assertTrue(element("Application_CreateOrderButton").isDisplayed());
		Assert.assertTrue(element("ApplicationEnrollmentoutcome").isDisplayed());

		element("Application_CreateOrderButton").click();
		try {
			CommonMethods.PerformClickOnObject(element("Application_CreateOrderButton"));
			element("NewWindowOrderOKButton").click();
		} catch (Exception e) {
			element("Appilcation_RefreshBtn").click();
			element("Appilcation_ApplicationValidationViewBtn").click();
			element("Appilcation_AuditIncomeTextBx").sendKeys("100");
			element("Appilcation_MonthlyRadioBtn").click();
			element("ApplicationSaveButton").click();
			element("Appilcation_RefreshBtn").click();
			element("CreateOrderButton").click();
			element("NewWindowOrderOKButton").click();

		}

		driver.switchTo().window(winHandleBefore);

	}

	@Then("^Verify that Final outcome to be approved and Create order button should not be present$")
	public void verify_that_final_outcome_to_be_approved_and_create_order_button_should_not_be_present()
			throws Throwable {
		element("ApplicationEnrollmentoutcome").isDisplayed();

	}

	@And("^Under Insurance Information > Select 'Yes' radio button > Click on 'save' Button$")
	public void under_insurance_information_select_yes_radio_button_click_on_save_button() throws Throwable {

		element("ApplicationInsuranceYesRadioBtn").click();
		element("ApplicationSaveButton").click();

	}

	@Then("^Verify that prescription will be queued message is displayed$")
	public void verify_that_prescription_will_be_queued_message_is_displayed() throws Throwable {
		driver.manage().window().maximize();
		element("ApplicationReEnrollmentqueue").isDisplayed();

	}

	@Then("^Click on Prescription number$")
	public void click_on_prescription_number() throws Throwable {
		Thread.sleep(3000);
		element("ApplicationPrescriptionNumber").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the outcome$")
	public void verify_the_outcome() throws Throwable {
		Thread.sleep(5000);

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		element("ApplicationEnrollmentoutcome").isDisplayed();
		element("ApplicationProductOutcome").isDisplayed();
	}

	@Then("^Click on View order$")
	public void click_on_view_orders() throws Throwable {
		Thread.sleep(5000);

		try {
			CommonMethods.PerformClickOnObject(element("ViewOrderstab"));
		} catch (Exception e) {

		}
		// element("ViewOrderstab").click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on View orders to refill$")
	public void click_on_view_orders_to_refill() throws Throwable {
		driver.switchTo().defaultContent();
		Thread.sleep(5000);
		RXexpirydate = element("ApplicationEnrollmentEndDate").getText();
		System.out.println("RXexpirydate====" + RXexpirydate);
		Thread.sleep(8000);
		// CommonMethods.ScrolDownToTheObject(element("ViewOrderstab"));
		driver.navigate().refresh();

		Thread.sleep(8000);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//button[text()='View Orders']"))));
		// try {
		// CommonMethods.PerformClickOnObject(element("ViewOrderstab"));
		// } catch (Exception e) {
		// System.out.print("Unable to click on view orders");
		// }
		// element("ViewOrderstab").click();
		driver.switchTo().defaultContent();
		CommonMethods.PerformClickOnObject(element("ViewOrderstab"));
		Thread.sleep(8000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on View orders$")
	public void click_on_view_orders1() throws Throwable {
		Thread.sleep(3000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", element("ViewOrderstab"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on cancel order Button$")
	public void click_on_cancel_order_button() throws Throwable {
		element("Application_CancelOrderButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.navigate().refresh();
	}

	@And("^Click on Custom order Button$")
	public void click_on_custom_order_button() throws Throwable {
		element("Application_CustomOrder").click();
	}

	@Then("^Select Correction order Radio Button$")
	public void select_correction_order_radio_button() throws Throwable {
		driver.switchTo().frame(element("PatientPageIframe"));
		Thread.sleep(3000);
		element("Application_CorrectionOrder").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select a value from Reason Dropdown$")
	public void select_a_value_from_reason_dropdown() throws Throwable {
		Select Drop = new Select(element("Application_Reason"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Reason"));

	}

	@Then("^Click on Save and proceed Button$")
	public void click_on_save_and_proceed_button() throws Throwable {
		element("Application_SaveAndProceed").click();
	}

	@Then("^Select Pill quantity$")
	public void select_pill_quantity() throws Throwable {
		Thread.sleep(5000);
		try {
			driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		} catch (Exception e) {

		}
		// element("PillQtyTextBox").click();
		element("PillQtyTextBox").clear();
		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty2"));

	}

	@Then("^Select Pill quantity more than 280$")
	public void select_pill_quantity_more_than_280() throws Throwable {

		element("ApplicationPilQty2").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty2"));
	}

	@Then("^Verify that Error Msg with not more than five Count is displayed$")
	public void verify_that_error_msg_with_not_more_than_five_count_is_displayed() throws Throwable {
		Assert.assertTrue(element("ApplicationPillQuantityError").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Select the pill Quantity less than 280$")
	public void select_the_pill_quantity_less_than_280() throws Throwable {
		// driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		// element("PillQtyTextBox").clear();
		// element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID,
		// "PillQty3"));
		Thread.sleep(5000);
		try {
			driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		} catch (Exception e) {

		}
		element("PillQtyTextBox").clear();
		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty3"));

	}

	@Then("^Enter pill quantity less than 280$")
	public void enter_pill_quantity_less_than_280() throws Throwable {
		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty3"));
	}

	@Then("^Verify that Create Order button is displayed for correction order and Click on 'Create Order' Button and Click on Ok Button$")
	public void verify_that_create_order_button_is_displayed_for_correction_order_and_click_on_create_order_button_and_click_on_ok_button()
			throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("Application_CreateOrderButton"));
		Assert.assertTrue(element("Application_CreateOrderButton").isDisplayed());

		element("Application_CreateOrderButton").click();
		try {
			CommonMethods.PerformClickOnObject(element("Application_CreateOrderButton"));
			element("NewWindowOrderOKButton").click();
		} catch (Exception e) {
			element("Appilcation_RefreshBtn").click();
			element("Appilcation_ApplicationValidationViewBtn").click();
			element("Appilcation_AuditIncomeTextBx").sendKeys("100");
			element("Appilcation_MonthlyRadioBtn").click();
			element("ApplicationSaveButton").click();
			element("Appilcation_RefreshBtn").click();
			element("CreateOrderButton").click();
			element("NewWindowOrderOKButton").click();

		}

		driver.switchTo().window(winHandleBefore);

	}

	@Then("^Verify that Correction order is placed for Chantix$")
	public void verify_that_correction_order_is_placed_for_chantix() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("PatientPageIframe"));
		Assert.assertTrue(element("Application_correctionOrdertype").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click On 'Add Product' Button again$")
	public void click_on_add_product_button_again() throws Throwable {
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		element("AddProductButton").click();
	}

	@And("^Select Product Name Form strength sig$")
	public void select_product_name_form_strength_sig() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName"));

		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2"));

		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));
	}

	@And("^Select product name and Form Strength$")
	public void select_product_name_and_form_strength() throws Throwable {
		Select Drop1 = new Select(element("Applicationproductdrop2"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName"));

		Select Drop2 = new Select(element("ApplicationFormStrengh2"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength"));

		Select Drop3 = new Select(element("ApplicationSIGDrop2"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));
	}

	@Then("^Select the pill Quantity less than 280 in second product line$")
	public void select_the_pill_quantity_less_than_280_in_second_product_line() throws Throwable {

		element("ApplicationPilQty2").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty3"));

	}

	@And("^Select AppRX Checkbox>Set RX Date>Click on 'Save' Button in second product line$")
	public void select_apprx_checkboxset_rx_dateclick_on_save_button_in_second_product_line() throws Throwable {
		/*
		 * element("ApplicationRXCheckbox2").click();
		 * element("ApplicationRxDate2").click();
		 * 
		 * element("Application_SaveButton").click();
		 * 
		 * try { Thread.sleep(3000); System.out.println("save ");
		 * element("ApplicationSaveButton").click(); Thread.sleep(8000);
		 * 
		 * } catch (Exception e) {
		 * 
		 * } Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		 */

		System.out.println("Inside Method");
		try {
			// Alert a = driver.switchTo().alert();
			System.out.println("Alert Message: ");

			// a.dismiss();

			// driver.switchTo().parentFrame();

			// driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions
					.visibilityOfElementLocated((By.xpath("(//input[contains(@id,'apprxsign')])[2]"))));
			if (element("AppRXSignedChkBoxTwo") != null) {
				System.out.println("object is formed");
			}
			CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
			Thread.sleep(2000);
			CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
			// try {
			// if(element("AppRXSignedChkBoxTwo").isSelected())
			// {
			// System.out.println("checkbox is selected");
			// }
			// }
			// catch(Exception e){
			//
			// CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
			// }

			CommonMethods.PerformClickOnObject(element("RXDateLinkTwo"));
			// Thread.sleep(3000);
			CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));

		} catch (Exception e) {

			CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
			CommonMethods.PerformClickOnObject(element("RXDateLinkTwo"));

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

	@And("^Click on Attach Button in Second product line$")
	public void click_on_attach_button_in_second_product_line() throws Throwable {
		Thread.sleep(2000);
		WebDriverWait wait = new WebDriverWait(driver, 50);
		wait.until(ExpectedConditions
				.elementToBeClickable((By.xpath("(//input[contains(@id,'attbtn') and @class='btn'])[2]"))));

		/*
		 * wait.until(ExpectedConditions.elementToBeClickable(
		 * (By.xpath("//input[@id='thePage:theForm:PB1:rep:0:attbtn']")) ));
		 */
		// element("ApplicationAttachButton").click();
		CommonMethods.ScrolDownToTheObject(element("ApplicationAttachButton"));
		// CommonMethods.PerformClickOnObject(element("ApplicationAttachButton"));
		element("ApplicationAttachDoc2").click();
	}

	@And("^Click on 'PAP Determine Outcom' Button After Save Button$")
	public void click_on_pap_determine_outcom_button_after_save_button() throws Throwable {

	}

	@Then("^Verify that Alert Message is not There$")
	public void verify_that_alert_message_is_not_there() throws Throwable {

		try {
			element("ApplicationAlertinPillPOp").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();

		} catch (Exception e) {
			System.out.println("test case passed");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@Then("^Verify that Alert message is there in pop up$")
	public void verify_that_alert_message_is_there_in_pop_up() throws Throwable {
		Thread.sleep(8000);
		Assert.assertTrue(element("ApplicationAlertinPillPOp").isDisplayed());

	}

	@Then("^Verify that agent is not able to create Initial order for chantix starting month pack with more than 1 refills$")
	public void verify_that_agent_is_not_able_to_create_initial_order_for_chantix_starting_month_pack_with_more_than_1_refills()
			throws Throwable {
		Thread.sleep(5000);

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("ApplicationRefillNotAllow"));
		Assert.assertTrue(element("ApplicationRefillNotAllow").isDisplayed());
		try {
			element("Application_CreateOrderButton").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();

		} catch (Exception e) {
			System.out.println("test case passed");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

	}

	@Then("^Verify that Approx Next Refill Date column header is displayed$")
	public void verify_that_approx_next_refill_date_column_header_is_displayed() throws Throwable {
		Thread.sleep(5000);
		try {
			driver.switchTo().frame(element("ApplicationPageIframe"));
		} catch (Exception e) {

		}
		Assert.assertTrue(element("ApplicationNextRefillHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that Approx Next Refill Date column is blank$")
	public void verify_that_approx_next_refill_date_column_is_blank() throws Throwable {
		try {
			Assert.assertTrue(element("Application_SecondOrderNextRefillDate").isDisplayed());
			AssertJUnit.fail();
		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@Then("^Verify that Approx next refill date is displayed$")
	public void verify_that_approx_next_refill_date_is_displayed() throws Throwable {
		driver.switchTo().frame(element("PatientPageIframe"));
		Assert.assertTrue(element("Application_SecondOrderNextRefillDate").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Select appRX date checkbox and Rx Date 365 days before and click on Save button$")
	public void select_apprx_date_checkbox_and_rx_date_365_days_before_and_click_on_save_button() throws Throwable {
		element("AppRXSignedChkBox").click();

		element("Application_RxDate").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "RxDATE"));

		element("ApplicationSaveButton").click();

		try {
			Thread.sleep(3000);
			System.out.println("save ");
			element("ApplicationSaveButton").click();
			Thread.sleep(8000);

		} catch (Exception e) {

		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that 'Create Order' Button is displayed in new window$")
	public void verify_that_create_order_button_is_displayed_in_new_window() throws Throwable {
		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		Assert.assertTrue(element("Application_CreateOrderButton").isDisplayed());
		element("Application_CreateOrderButton").click();
	}

	@Then("^Verify the popup$")
	public void verify_the_popup() throws Throwable {
		WebDriverWait ww = new WebDriverWait(driver, 10);
		ww.until(ExpectedConditions.alertIsPresent());
		driver.switchTo().alert().accept();

	}

	@Then("^Select appRX date checkbox and Rx Date 174 days before and click on Save button$")
	public void select_apprx_date_checkbox_and_rx_date_174_days_before_and_click_on_save_button() throws Throwable {
		element("AppRXSignedChkBox").click();

		element("Application_RxDate").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "RxDATE"));

		element("ApplicationSaveButton").click();

		try {
			Thread.sleep(3000);
			System.out.println("save ");
			element("ApplicationSaveButton").click();
			Thread.sleep(8000);

		} catch (Exception e) {

		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^click on application prescriptions$")
	public void click_on_application_prescriptions() throws Throwable {
		CommonMethods.PerformClickOnObject(element("ApplicationPrescriptionsLink"));
		// element("ApplicationPrescriptionsLink").click();
		driver.navigate().refresh();
	}

	@Then("^Change Rx date to 365 days before system date$")
	public void change_rx_date_to_365_days_before_system_date() throws Throwable {
		element("ApplicationRXDatePencilTEXTBOX").clear();
		element("ApplicationRXDatePencilTEXTBOX").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "RxDATE"));
		Thread.sleep(2000);
		element("ApplicatonRxSave").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^click on Prescription id link$")
	public void click_on_prescription_id_link() throws Throwable {
		element("ApplicationPrescriptionid").click();
	}

	@Then("^Close the window and switch to default window$")
	public void close_the_window_and_switch_to_default_window() throws Throwable {
		driver.close();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		Thread.sleep(5000);
	}

	@Then("^Verify Final Outcome is 'Approved' and existing LOE Appeal is carry forwarded to ReEnrollment$")
	public void verify_final_outcome_is_approved_and_existing_loe_appeal_is_carry_forwarded_to_reenrollment()
			throws Throwable {
		try {

			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}

			driver.manage().window().maximize();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions
					.visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation Information']"))));
			Assert.assertTrue(element("FinalOutcomeText").getText()
					.equals(getDataFromExcel(ModuleName, TestCaseID, "Final Outcome Status 2")));
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			Assert.assertTrue(element("FinalOutcomeText").getText()
					.equals(getDataFromExcel(ModuleName, TestCaseID, "Final Outcome Status 2")));
		}
		driver.close();

	}

	@Then("^Verify 'Create Order' Button is not Displayed$")
	public void verify_create_order_button_is_not_displayed() throws Throwable {
		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		CommonMethods.ScrolDownToTheObject(element("SaveOutcomeButton"));

		try {
			CommonMethods.PerformClickOnObject(element("CreateOrderButton"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			element("NewWindowOrderOKButton").click();
			AssertJUnit.fail();
		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

	}

	@And("^Verify error message In 'Prescription Product Information' block$")
	public void verify_error_message_in_application_prescription_information_block() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();
		try {

			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();

			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions
					.visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation Information']"))));
			CommonMethods.ScrolDownToTheObject(element("SaveOutcomeButton"));
			assertTrue("'Final Outcome is Incomplete'Error Message is displayed",
					element("Patient_PrescProductInfoErrMsg").getText()
							.equals(getDataFromExcel(ModuleName, TestCaseID, "PrescProductInfo")));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			CommonMethods.ScrolDownToTheObject(element("SaveOutcomeButton"));
			assertTrue("'Final Outcome is Incomplete'Error Message is displayed",
					element("Patient_PrescProductInfoErrMsg").getText()
							.equals(getDataFromExcel(ModuleName, TestCaseID, "PrescProductInfo")));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
		driver.close();
		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Verify 'Cannot Create Another Prescription' Error Message is Displayed$")
	public void verify_cannot_create_another_prescription_error_message_is_displayed() throws Throwable {
		Assert.assertTrue(element("CannotCreateAnotherPresxErrMsg").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Navigate to Application>Click on Edit btn$")
	public void navigate_to_applicationclick_on_edit_btn() throws Throwable {
		Thread.sleep(3000);

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		CommonMethods.PerformClickOnObject(element("ApplicationPrescriptionsLink"));
		// element("ApplicationPrescriptionsLink").click();
		driver.navigate().refresh();
		element("Appl_Presciption_LinkNo").click();

	}

	@And("^Select Product Name Form Strength SIG and Pill Qty for Second Product$")
	public void select_product_name_form_strength_sig_and_pill_qty_for_second_product() throws Throwable {
		Select Drop1 = new Select(element("Applicationproductdrop2"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName2"));

		Select Drop2 = new Select(element("ApplicationFormStrengh2"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2"));

		Select Drop3 = new Select(element("ApplicationSIGDrop2"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

		element("ApplicationPilQty2").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty2"));
	}

	@And("^Switch to prescription page Frame$")
	public void switch_to_prescription_page_frame() throws Throwable {

		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
	}

	@Then("^Verify No Error Message is Appeared on Pop up window$")
	public void verify_no_error_message_is_appeared_on_pop_up_window() throws Throwable {
		try {
			Thread.sleep(3000);
			element("ChantixErrorMessageinPopUp").isDisplayed();
			AssertJUnit.fail();
		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

	}

	@Then("^Verify 'patient can recieve only 5 Chantix Countinuing pack' Error Message is Displayed$")
	public void verify_patient_can_recieve_only_5_chantix_countinuing_pack_error_message_is_displayed()
			throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Assert.assertTrue(element("Chantix5PacksErrMsg").isDisplayed());
	}

	@And("^Select Previous Prder Created$")
	public void select_previous_prder_created() throws Throwable {

		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));

		Thread.sleep(2000);
		element("Application_PreviousOrderCheckBox").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^get the PatientId and Previous OrderID$")
	public void get_the_patientid_and_previous_orderid() throws Throwable {
		Thread.sleep(8000);
		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));
		PatientIds = element("PatientIDs").getText();
		System.out.println("PatientIDs====" + PatientIds);
		OrderID = element("Application_PreviousOrderID").getText();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		System.out.println("OrderID=====" + OrderID);
		Thread.sleep(2000);
	}

	@And("^Click On Patient order>Search Patient$")
	public void click_on_patient_ordersearch_patient() throws Throwable {
		element("PatientOrdersLink").click();
		Thread.sleep(3000);
		element("PatientOrderSearchBox").sendKeys(PatientIds);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on Patient Order Refill$")
	public void click_on_patient_order_refill() throws Throwable {
		element("PortalFirstPatientOrderRefillBtn").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on 'Place Order' Button$")
	public void click_on_place_order_button() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("PortalPlaceorderButton"));
		element("PortalPlaceorderButton").click();

	}

	@Then("^Verify Refill is Success$")
	public void verify_refill_is_success() throws Throwable {
		Assert.assertTrue(element("RefillSuccessPopUpHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify Refill is Failed$")
	public void verify_refill_is_failed() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Assert.assertTrue(element("RefillFailurePopUpHeader").isDisplayed());
	}

	@And("^Verify Previous Order Satisfies 75 percent criteria on release date calculation$")
	public void verify_previous_order_satisfies_75_percent_criteria_on_release_date_calculation() throws Throwable {

		String ReleaseDate = element("Application_PreviousOrderReleaseDate").getText();
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(ReleaseDate));
		} catch (Exception e) {

		}
		// Incrementing the date by 1 day
		c.add(Calendar.DAY_OF_MONTH, 68);
		String ExpNextRefillDate = sdf.format(c.getTime());
		String ActualNextRefill = element("Application_PreviousOrderNextRefillDate").getText();
		try {
			c.setTime(sdf.parse(ActualNextRefill));
		} catch (Exception e) {

		}
		ActualNextRefill = sdf.format(c.getTime());
		Assert.assertTrue(ActualNextRefill.equalsIgnoreCase(ExpNextRefillDate));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Go to 'Shipment Authorization Data' > Click on 'Generate Shipping Data' button > Check the order status in 'Order Product IH Details' section$")
	public void click_GenerateShippingData() throws Throwable {
		element("Admin_Tooltip").click();
		element("Admin_switch_to_salesforce").click();
		element("Admin_AllTabs").click();
		element("Admin_ShipmentAuthorizationData").click();
		element("Admin_GenerateShippingData").click();
		element("Admin_search").sendKeys(OrderID);
		element("Admin_search_click").click();
		Thread.sleep(70000);
		element("Admin_SecondSearch").click();
		element("Admin_ShipmentAuthorizationName").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on Prescription Product Drop Down and select completed review list$")
	public void click_on_prescription_product_drop_down_and_select_completed_review_list() throws Throwable {
		Thread.sleep(3000);
		element("PrescriptionProductDropDownIcon").click();
		element("PharmacistReviewCompletedLabel").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify Create order button is present$")
	public void verify_create_order_button_is_present() throws Throwable {
		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
	}

	@Then("^click on Recently Viewed link$")
	public void click_on_recently_viewed_link() throws Throwable {
		element("ApplicationCaseRecentlyview").click();
	}

	@Then("^Click on Appeal Case$")
	public void click_on_appeal_case() throws Throwable {
		element("ApplicationAppealCase").click();
	}

	@Then("^Verify that all Field are arranged properly$")
	public void verify_that_all_field_are_arranged_properly() throws Throwable {
		Assert.assertTrue(element("AppAppealCaseNumber").isDisplayed());
		Assert.assertTrue(element("AppAppealAccountNumber").isDisplayed());
		Assert.assertTrue(element("AppAppealSubject").isDisplayed());
		Assert.assertTrue(element("AppAppealStatus").isDisplayed());
		Assert.assertTrue(element("AppAppealPriority").isDisplayed());
		Assert.assertTrue(element("AppAppealDate").isDisplayed());
		Assert.assertTrue(element("AppAppealCaseOwner").isDisplayed());
	}

	@When("^Select Home$")
	public void select_home() throws Throwable {

		try {
			element("showNavigationMenuButton").click();
			Thread.sleep(3000);
			element("ApplicationHomelink").click();
		} catch (Exception e) {
			element("showNavigationMenuButton").click();
			Thread.sleep(3000);
			element("ApplicationHomelink").click();
		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Todays task$")
	public void click_on_todays_task() throws Throwable {
		Thread.sleep(3000);
		element("AppTodayTask").click();
	}

	@Then("^Click on Related prescrption Link$")
	public void click_on_related_prescrption_link() throws Throwable {
		Thread.sleep(3000);
		CommonMethods.ScrolDownToTheObject(element("AppRelatedPrescription"));
		element("AppRelatedPrescription").click();
	}

	@Then("^Click on View All task$")
	public void click_on_view_all_task() throws Throwable {
		Thread.sleep(3000);
		element("AppTaskViewAll").click();
	}

	@And("^Click on 'Create Order' Button and Click on Ok Button$")
	public void click_on_create_order_button_and_click_on_ok_button() throws Throwable {
		Thread.sleep(2000);
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		CommonMethods.ScrolDownToTheObject(element("Application_CreateOrderButton"));

		Assert.assertTrue(element("Application_CreateOrderButton").isDisplayed());

		try {
			CommonMethods.PerformClickOnObject(element("Application_CreateOrderButton"));
			element("NewWindowOrderOKButton").click();
		} catch (Exception e) {
			element("Appilcation_RefreshBtn").click();
			element("Appilcation_ApplicationValidationViewBtn").click();
			element("Appilcation_AuditIncomeTextBx").sendKeys("100");
			element("Appilcation_MonthlyRadioBtn").click();
			element("ApplicationSaveButton").click();
			element("Appilcation_RefreshBtn").click();
			element("Application_CreateOrderButton").click();
			element("NewWindowOrderOKButton").click();

		}
	}

	@Then("^Verify that user is not able to do Refill if Rx Expired$")
	public void verify_that_user_is_not_able_to_do_refill_if_rx_expired() throws Throwable {
		Thread.sleep(2000);
		Assert.assertTrue(element("AppRefillErrorMessage").isDisplayed());
	}

	@Then("^click on Application id label on prescription page$")
	public void click_on_application_id_label_on_prescription_page() throws Throwable {
		Thread.sleep(2000);
		element("Application_ApplicationIDlabel").click();
	}

	@Then("^click on save button$")
	public void click_on_save_button() throws Throwable {
		element("ApplicationSaveButton").click();
	}

	@And("^Set 'Field' to 'First Name' > Operator to 'contains' > and enter any value > Click on 'Search' Button $")
	public void set_field_to_first_name_operator_to_contains_and_enter_any_value_click_on_search_button()
			throws Throwable {

		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		Select Drop = new Select(element("SelectInWindow"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor2"));

		Select Drop2 = new Select(element("NPIOperatorDropDown"));
		Drop2.selectByVisibleText("starts with");

		element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "FirstValue3"));
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
		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe
		// slds-card iframe-parent']//iframe")));
		driver.switchTo().frame(element("ApplicationPageIframe"));

	}

	@Then("^Verify the Error Msg and click on Save outcome$")
	public void verify_the_error_msg_and_click_on_save_outcome() throws Throwable {

		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		driver.manage().window().maximize();
		Assert.assertTrue(element("AppNPIError").isDisplayed());
		CommonMethods.PerformClickOnObject(element("SaveOutcomeButton"));
		driver.switchTo().window(winHandleBefore);

	}

	@And("^Set 'Field' to 'First Name' > Operator to 'contains' > and enter Second value > Click on 'Search' Button $")
	public void set_field_to_first_name_operator_to_contains_and_enter_second_value_click_on_search_button()
			throws Throwable {

		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		Select Drop = new Select(element("SelectInWindow"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor2"));

		Select Drop2 = new Select(element("NPIOperatorDropDown"));
		Drop2.selectByVisibleText("starts with");

		element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "FirstValue2"));
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
		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe
		// slds-card iframe-parent']//iframe")));
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}

	@And("^Click on 'PAP Determine Outcom' Button again$")
	public void click_on_pap_determine_outcom_button_again() throws Throwable {
		Thread.sleep(5000);
		driver.switchTo().defaultContent();
		int size = driver.findElements(By.tagName("iframe")).size();
		System.out.println(size);

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		for (int i = 0; i <= size; ++i) {

			try {
				driver.switchTo().defaultContent();
				driver.switchTo().frame(i);

				WebElement ele1 = element("PAPDetermineOutcomeButton");
				System.out.println(ele1.isDisplayed());
				break;
			} catch (NoSuchElementException | NoSuchFrameException e) {

			}

		}
		element("PAPDetermineOutcomeButton").click();
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	}

	@Then("^Click on Yes In Message box$")
	public void click_on_yes_in_message_box() throws Throwable {
		Thread.sleep(2000);
		element("AppMessagePrescriptionYes").click();
	}

	@Then("^Click On Prescription id on Application page$")
	public void click_on_prescription_id_on_application_page() throws Throwable {
		Thread.sleep(5000);
		element("ApplicationPrescriptionNumber").click();
	}

	@And("^Click on Attach Button Again$")
	public void click_on_attach_button_again() throws Throwable {
		Thread.sleep(2000);
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		WebDriverWait wait = new WebDriverWait(driver, 50);
		wait.until(ExpectedConditions
				.elementToBeClickable((By.xpath("//input[contains(@id,'attbtn') and @class='btn']"))));

		/*
		 * wait.until(ExpectedConditions.elementToBeClickable(
		 * (By.xpath("//input[@id='thePage:theForm:PB1:rep:0:attbtn']")) ));
		 */
		// element("ApplicationAttachButton").click();
		CommonMethods.ScrolDownToTheObject(element("ApplicationAttachButton"));
		// CommonMethods.PerformClickOnObject(element("ApplicationAttachButton"));
		element("ApplicationAttachButton").click();
	}

	@Then("^Verify the alert message$")
	public void verify_the_alert_message() throws Throwable {
		// Thread.sleep(8000);
		Alert alert = driver.switchTo().alert();
		Reporter.addStepLog("From App:" + alert.getText());
		Assert.assertTrue(alert.getText().contains(getDataFromExcel(ModuleName, TestCaseID, "Alert Message")));
		// Assert.assertEquals(alert.getText(),getDataFromExcel(ModuleName, TestCaseID,
		// "Alert Message"));
		alert.accept();
	}

	@Then("^Click on the Place Refill order button then verify the error message$")
	public void click_on_the_place_refill_order_button_then_verify_the_error_message() throws Throwable {
		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));

		Thread.sleep(2000);
		element("Application_PlaceRefillOrderbutton").click();
		element("ApplicationErrorMsg").isDisplayed();

	}

	@Then("^Verify All the details like 'Shipping Street' ,' Ship To' , 'Fulfillment Type' are properly getting displayed$")
	public void verify_all_the_details_like_shipping_street_ship_to_fulfillment_type_are_properly_getting_displayed()
			throws Throwable {

		element("ShippingStreet").isDisplayed();
		element("ShipTo1").isDisplayed();
		element("FullfillmentType").isDisplayed();
	}

	@And("^Select Second order created1$")
	public void select_second_order_created1() throws Throwable {

		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));

		Thread.sleep(2000);
		element("Application_SecondOrderCheckBox").click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify Fulfillment Method and Ship To Field$")
	public void verify_fulfillment_method_and_ship_to_field() throws Throwable {
		Assert.assertTrue(element("FullfillmentMothod").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "FullfillmentMothod")));
		Assert.assertTrue(element("ShipTo").getText().contains(getDataFromExcel(ModuleName, TestCaseID, "ShipTo")));
	}

	@Then("^Give Patients shipping address in a PO box address without string PO box$")
	public void give_patients_shipping_address_in_a_po_box_address_without_string_po_box() throws Throwable {
		driver.findElement(By.xpath("(//td[text()='Street Address:']/following-sibling::td/img)[2]")).click();
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		driver.findElement(By.xpath("//td[text()='Verify Manually:']/following-sibling::td/input")).click();
		Robot r = new Robot();
		driver.findElement(By.xpath("//td[text()='Street 1:']/following-sibling::td/input")).clear();
		driver.findElement(By.xpath("//td[text()='Street 1:']/following-sibling::td/input"))
				.sendKeys("3524 Knickerbocker Rd Ste C");
		r.keyPress(KeyEvent.VK_TAB);
		r.keyPress(KeyEvent.VK_TAB);
		driver.findElement(By.xpath("//td[text()='City:']/following-sibling::td/input")).clear();
		driver.findElement(By.xpath("//td[text()='City:']/following-sibling::td/input")).sendKeys("San Angelo");
		r.keyPress(KeyEvent.VK_TAB);
		driver.findElement(By.xpath("//td[text()='State:']/following-sibling::td/input")).clear();
		driver.findElement(By.xpath("//td[text()='State:']/following-sibling::td/input")).sendKeys("TX");
		r.keyPress(KeyEvent.VK_TAB);
		Thread.sleep(3000);
		Thread.sleep(2000);
		driver.findElement(By.xpath("//input[@value='save']")).click();
		Thread.sleep(3000);
		driver.switchTo().window(winHandleBefore);
		driver.switchTo().frame(
				driver.findElement(By.xpath("//div[@class='iframe-parent slds-template_iframe slds-card']//iframe")));
	}

	@Then("^Give Shipping address of Practitioner with following strings by clicking on Manually verify Check box$")
	public void give_shipping_address_of_practitioner_with_following_strings_by_clicking_on_manually_verify_check_box()
			throws Throwable {
		driver.findElement(By.xpath("(//td[text()='Street Address:']/following-sibling::td/img)[2]")).click();
		// enter address in New Window
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		driver.findElement(By.xpath("//td[text()='Verify Manually:']/following-sibling::td/input")).click();

		Robot r = new Robot();
		driver.findElement(By.xpath("//td[text()='Street 1:']/following-sibling::td/input")).clear();
		driver.findElement(By.xpath("//td[text()='Street 1:']/following-sibling::td/input")).sendKeys("123 PO Box");
		r.keyPress(KeyEvent.VK_TAB);
		r.keyPress(KeyEvent.VK_TAB);
		driver.findElement(By.xpath("//td[text()='City:']/following-sibling::td/input")).clear();
		driver.findElement(By.xpath("//td[text()='City:']/following-sibling::td/input")).sendKeys("Washington");
		r.keyPress(KeyEvent.VK_TAB);
		driver.findElement(By.xpath("//td[text()='State:']/following-sibling::td/input")).clear();
		driver.findElement(By.xpath("//td[text()='State:']/following-sibling::td/input")).sendKeys("DC");
		r.keyPress(KeyEvent.VK_TAB);
		Thread.sleep(3000);
		Thread.sleep(2000);
		driver.findElement(By.xpath("//input[@value='save']")).click();
		Thread.sleep(3000);
		driver.switchTo().window(winHandleBefore);
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}

	@And("^Verify the error message displayed on the OVM window$")
	public void verify_the_error_message_displayed_on_the_ovm_window() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		Assert.assertTrue(
				element("Errormessage").getText().contains(getDataFromExcel(ModuleName, TestCaseID, "Error Message")));

		try {
			CommonMethods.PerformClickOnObject(element("Application_SaveOutcomeBtn"));
		} catch (Exception e) {
			element("Appilcation_RefreshBtn").click();
			element("Appilcation_ApplicationValidationViewBtn").click();
			element("Appilcation_AuditIncomeTextBx").sendKeys("100");
			element("Appilcation_MonthlyRadioBtn").click();
			element("ApplicationSaveButton").click();
			element("Appilcation_RefreshBtn").click();
			element("CreateOrderButton").click();
			element("NewWindowOrderOKButton").click();
		}
		driver.switchTo().window(winHandleBefore);

	}

	@Then("^Change the shipping address of the order to a Po box address from the Backend$")
	public void change_the_shipping_address_of_the_order_to_a_po_box_address_from_the_backend() throws Throwable {
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,250)");
		CommonMethods.PerformClickOnObject(
				driver.findElement(By.xpath("//span[text()='Shipping Address 1']/../following-sibling::div/button")));
		element("Shippingaddresstextbox").clear();
		element("Shippingaddresstextbox").sendKeys("Po Box 567");
		element("Shippingaddresscity").clear();
		element("Shippingaddresscity").sendKeys("Austin");
		element("Shippingadresszipcode").clear();
		element("Shippingadresszipcode").sendKeys("78767-0567");
		element("OrderIHSavebutton").click();
	}

	@And("^Select PatientID Fiels>>Filed Dropdown$")
	public void Select_PatientID_Fiels_Filed_Dropdown() throws Throwable {
		element("showNavigationMenuButton").click();
		element("GlobalSearchLink").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);
		driver.switchTo().frame(0);
		WebDriverWait wait = new WebDriverWait(driver, 30); // extrs remove
		wait.until(ExpectedConditions.elementToBeClickable(element("OrderRadiobutton")));
		element("OrderRadiobutton").click();
		Thread.sleep(3000);
		Thread.sleep(3000);
		CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "First Name"));
		Thread.sleep(5000);
	}

	@And("^Click On 'Add Product' Button1$")
	public void click_on_add_product_buuton1() throws Throwable {
		element("AddProductButton").click();
	}

	@Then("^Select Inbound Call$")
	public void select_Inbound_Call() throws Throwable {
		element("CasesListViewDropdown").click();
		element("InboundCallforcases").click();
		Thread.sleep(3000);
	}

	@Then("^Click on the Case Number$")
	public void click_on_the_case_number() throws Throwable {
		Thread.sleep(5000);
		element("FirstCaseNumberInDocumentIntake").click();
	}

	@Then("^In the Adverse Event Information section, click on the edit button$")
	public void in_the_adverse_event_information_section_click_on_the_edit_button() throws Throwable {
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");

		CommonMethods.PerformClickOnObject(
				driver.findElement(By.xpath("//span[text()='Safety Event']/../following-sibling::div/button")));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(
				driver.findElement(By.xpath("//span[text()='Safety Event']/../following-sibling::input")));
		CommonMethods.PerformClickOnObject(driver.findElement(By.xpath(
				"//label/span[text()='AE Warm transfer to Pfizer - Successful']/../following-sibling::input[@type='checkbox']")));
		element("OrderIHSavebutton").click();
	}

	@Then("^check the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox$")
	public void check_the_safety_event_and_ae_warm_transfer_to_pfizer_unsucessful_checkbox() throws Throwable {
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");

		CommonMethods.PerformClickOnObject(
				driver.findElement(By.xpath("//span[text()='Safety Event']/../following-sibling::div/button")));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(
				driver.findElement(By.xpath("//span[text()='Safety Event']/../following-sibling::input")));
		CommonMethods.PerformClickOnObject(driver.findElement(By.xpath(
				"//label/span[text()='AE Warm transfer to Pfizer - Successful']/../following-sibling::input[@type='checkbox']")));

	}

	@Then("^Verfiy that one Adverse Event Tab is displayed in the case page in the top left most corner and other at bottom left corner$")
	public void verfiy_that_one_adverse_event_tab_is_displayed_in_the_case_page_in_the_top_left_most_corner_and_other_at_bottom_left_corner()
			throws Throwable {
		assertTrue("Adverse Event Tab", element("Adverseeventtab").isDisplayed());
		element("Adverseeventtab").click();
		assertTrue("Adverse Event link", element("Adverseeventslink1").isDisplayed());
	}

	@Then("^Click on the 'AE Warm Transfer Unsuccessfull Reason' drop down field$")
	public void click_on_the_ae_warm_transfer_unsuccessfull_reason_drop_down_field() throws Throwable {
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");

		CommonMethods.PerformClickOnObject(driver.findElement(
				By.xpath("//span[text()='AE Warm Transfer to Pfizer–Unsuccessful']/../following-sibling::div/button")));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(
				driver.findElement(By.xpath("//label[text()='AE Warm Transfer Unsuccessful Reason']/..//input")));
		// CommonMethods.PerformClickOnObject(driver.findElement(By.xpath("//span[text()='AE
		// Warm Transfer Unsuccessful Reason']/../following-sibling::div//a")));
		Thread.sleep(3000);
		assertTrue("DSU refused call", element("DSUrefusedcallvalue").isDisplayed());
		assertTrue("Long hold time", element("Longholdtime").isDisplayed());
		assertTrue("Call disconnected", element("Calldisconnected").isDisplayed());
		assertTrue("AE Identified during Audit", element("AEidentifiedduringaudit").isDisplayed());
	}

	@Then("^Click on the 'AE Warm Transfer Unsuccessfull Reason' drop down field1$")
	public void click_on_the_ae_warm_transfer_unsuccessfull_reason_drop_down_field1() throws Throwable {

		try {
			CommonMethods.alertDismiss();
			CommonMethods.PerformClickOnObject(
					driver.findElement(By.xpath("//button[contains(@title,'Close New Adverse Event')]")));

		} catch (Exception e) {
			CommonMethods.PerformClickOnObject(
					driver.findElement(By.xpath("//button[contains(@title,'Close New Adverse Event')]")));
		}

		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");

		CommonMethods.PerformClickOnObject(driver.findElement(
				By.xpath("//span[text()='AE Warm Transfer to Pfizer–Unsuccessful']/../following-sibling::div/button")));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(driver.findElement(
				By.xpath("//label[text()='AE Warm Transfer Unsuccessful Reason']/../div//div//div//input")));

	}

	@Then("^Click on the 'AE Warm Transfer to Pfizer- unsuccesful' checkbox$")
	public void click_on_the_ae_warm_transfer_to_pfizer_unsuccesful_checkbox() throws Throwable {
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");

		CommonMethods.PerformClickOnObject(driver.findElement(
				By.xpath("//span[text()='AE Warm Transfer to Pfizer–Unsuccessful']/../following-sibling::div/button")));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(driver.findElement(
				By.xpath("//span[text()='AE Warm Transfer to Pfizer–Unsuccessful']/../following-sibling::input")));
		element("OrderIHSavebutton").click();
	}

	@Then("^Go to Adverse Event Section in the right most corner of the case page once it is saved and Click on the new$")
	public void go_to_adverse_event_section_in_the_right_most_corner_of_the_case_page_once_it_is_saved_and_click_on_the_new()
			throws Throwable {

		try {
			CommonMethods.PerformClickOnObject(
					driver.findElement(By.xpath("//button[contains(@title,'Close New Adverse Event')]")));
			// driver.findElement(By.xpath("//button[contains(@title,'Close New Adverse
			// Event')]")).click();

		} catch (Exception e) {
			// TODO: handle exception
		}

		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");

		CommonMethods.PerformClickOnObject(driver.findElement(By.xpath(".//*[text()='Adverse Events']")));
		Thread.sleep(3000);
		element("adverseeventsnewbutton").click();
	}

	@Then("^Click on the Save Button in the AE page with entering all information$")
	public void click_on_the_save_button_in_the_ae_page_with_entering_all_information() throws Throwable {
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
		element("adverseeventsavebutton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// Assert.assertTrue(element("AEWARMerrormessage").getText()
		// .contains(getDataFromExcel(ModuleName, TestCaseID, "AEWARMerrormessage")));
	}

	@Then("^Verify that agent should be able to capture the note from the caller in Call Notes section in the case page in Salesforce$")
	public void verify_that_agent_should_be_able_to_capture_the_note_from_the_caller_in_call_notes_section_in_the_case_page_in_salesforce()
			throws Throwable {
		element("safetyeventcallnotestextbox")
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "safetyeventcallnotestextbox"));
		element("OrderIHSavebutton").click();
	}

	@Then("^Uncheck the 'Safety Event' and 'AE Warm Transfer to Pfizer- Unsucessful' Checkbox$")
	public void uncheck_the_safety_event_and_ae_warm_transfer_to_pfizer_unsucessful_checkbox() throws Throwable {
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");

		CommonMethods.PerformClickOnObject(
				driver.findElement(By.xpath("//span[text()='Safety Event']/../following-sibling::div/button")));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(
				driver.findElement(By.xpath("//span[text()='Safety Event']/../following-sibling::input")));
		CommonMethods.PerformClickOnObject(driver.findElement(By.xpath(
				"//label/span[text()='AE Warm transfer to Pfizer - Successful']/../following-sibling::input[@type='checkbox']")));
		element("OrderIHSavebutton").click();
	}

	// @Then("^Click on 'Add New Log' button$")
	// public void click_on_add_new_log_button() throws Throwable {
	// driver.switchTo().frame(
	// driver.findElement(By.xpath("//div[@class='iframe-parent slds-template_iframe
	// slds-card']//iframe")));
	// CommonMethods.ScrolDownToTheObject(element("AddNewLogButton"));
	// element("AddNewLogButton").click();
	//
	// }

	@Then("^Verify the Safety Event Report Warm transfer to Pfizer values is displayed in the 'Activity code' dropdown field$")
	public void verify_the_safety_event_report_warm_transfer_to_pfizer_values_is_displayed_in_the_activity_code_dropdown_field()
			throws Throwable {
		Select Drop = new Select(element("ActivityCodedropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ActivityCodedropdown"));
	}

	@Then("^Verfiy that Ae Reference number is entered in the AE reference field in the Activity log section$")
	public void verfiy_that_ae_reference_number_is_entered_in_the_ae_reference_field_in_the_activity_log_section()
			throws Throwable {
		element("AEreferencetextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Aereferencetextbox"));
	}

	@Then("^Enter the comments in the comments section$")
	public void enter_the_comments_in_the_comments_section() throws Throwable {
		element("Commentstextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Commentstextbox"));
	}

	@Then("^Click on the 'Save Log' button$")
	public void click_on_the_save_log_button() throws Throwable {
		element("SaveLogButton").click();
	}

	@Then("^Accept OK button>>Click on place Refill Button$")
	public void Accept_OK_button_Click_on_place_Refill_Buttonk() throws Throwable {
		Alert alert = driver.switchTo().alert();
		alert.accept();
		driver.switchTo().frame(element("ApplicationPageIframe"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.elementToBeClickable(element("Application_PlaceRefillOrderbutton")));

		element("Application_PlaceRefillOrderbutton").click();
		// driver.switchTo().frame(element("ApplicationPageIframe"));

	}

	@Then("^Enter the Shipped to Date$")
	public void enter_the_shipped_to_date() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("ShippedtodateIcon"));
		element("ShippedtodateIcon").click();
		CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2020");
		driver.findElement(By.xpath("//span[text()='1']")).click();
		// driver.findElement(By.xpath("//span[text()='Today']")).click();

	}

	@Then("^Enter the Release Date and order Ship date less than 4 month$")
	public void enter_the_release_date_and_order_ship_date_less_than_4_month() throws Throwable {

		Thread.sleep(3000);
		element("EditReleaseDatebtn").click();

		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,250)", "");
		element("DatePickerIconReleaseDate").click();
		CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
			driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
			driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
			driver.findElement(By.xpath("//button[@title='Previous Month']")).click();	
			driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
			driver.findElement(By.xpath("//span[text()='14']")).click();

		Thread.sleep(5000);

		Thread.sleep(2000);

		CommonMethods.PerformClickOnObject(element("DatePickerIcon"));
		CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
		driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
		driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
		driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
		driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
		driver.findElement(By.xpath("//span[text()='14']")).click();

		Thread.sleep(5000);

	}

	@Then("^Click on place Refill Button$")
	public void click_on_place_refill_button() throws Throwable {
		driver.switchTo().frame(element("ApplicationPageIframe"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.elementToBeClickable(element("Application_PlaceRefillOrderbutton")));

		element("Application_PlaceRefillOrderbutton").click();
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}
	@And("^Search In Quick Find Search Box1$")
	public void search_in_quick_find_search_box1() throws Throwable {
		String url = getDataFromExcel(ModuleName, TestCaseID, "Setup URL");
		System.out.println(url);
		driver.get(url);
		Reporter.addStepLog("URL: " + url);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		driver.manage().window().maximize();
		Thread.sleep(2000);
		element("QuickFindSearchBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "QuickFind"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that agent is able to see comments in commentsbox while agent$")
	public void verify_that_agent_is_able_to_see_comments_in_commentsbox_while_agent() throws Throwable {
		Assert.assertTrue(element("PharmacistReviewCompleteColomn").isDisplayed());
		Assert.assertTrue(element("PharmacistCommentfirstTextbox").isDisplayed());
		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the message and create order button shouldnot be present$")

	public void verify_the_message_and_create_order_button_shouldnot_be_present() throws Throwable {

		CommonMethods.ScrolDownToTheObject(element("prescrpitionmessage"));
		Assert.assertTrue(element("prescrpitionmessage").isDisplayed());

		try {
			element("CreateOrderbtn").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

	}

	@Then("^click on saveoutcome$")
	public void click_on_saveoutcome() throws Throwable {
		Thread.sleep(3000);
		// element("saveoutcome").click();
		element("Application_SaveOutcomeBtn").click();// added by sharmila
		Thread.sleep(10000);

	}

	@Then("^checkwether we are in applicationpage$")
	public void checkwether_we_are_in_applicationpage() throws Throwable {
		Set<String> windowHandles = driver.getWindowHandles();
		for (String wh : windowHandles) {
			driver.switchTo().window(wh);
		}

		element("Viewordersbutton").isDisplayed();
	}

	@Then("^wait for fiveseconds$")
	public void wait_for_fiveseconds() throws Throwable {
		Thread.sleep(5000);
	}

	@Then("^Verify wether errormsg is displayed$")
	public void verify_wether_errormsg_is_displayed() throws Throwable {
		try {
			element("Errormsg").isDisplayed();

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {
			AssertJUnit.fail();

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		}

	}

	@Then("^Verify wether enrollmentdate is displayed$")
	public void verify_wether_enrollmentdate_is_displayed() throws Throwable {
		driver.switchTo().frame(element("ApplicationPageIframe"));
		assertTrue("enrollmentdate should be displayed",
				element("Application_SecondOrderNextRefillDate").isDisplayed());
	}

	@Then("^enter the RXdate$")
	public void enter_the_rxdate() throws Throwable {
		element("Rxdate").sendKeys("7/22/2018");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^wait for tenseconds$")
	public void wait_for_tenseconds() throws Throwable {
		Thread.sleep(25000);
	}

	@Then("^verify whether the required message is diaplayed$")
	public void verify_whether_the_required_message_is_diaplayed() throws Throwable {

		driver.switchTo().frame(element("PatientPageIframe"));
		Assert.assertTrue(element("Deniedapplicationerrormsg").isDisplayed(), "error msg should be displayed");
	}

	@And("^please Navigate to Application page and please click on PAP Appeal$")
	public void please_navigate_to_application_page_and_please_click_on_pap_appeal() throws Throwable {
		driver.navigate().refresh();
		Thread.sleep(5000);
		WebDriverWait wait = new WebDriverWait(driver, 10);
		wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//button[text()='PAP Appeal']"))));
		try {
			CommonMethods.PerformClickOnObject(element("Application_PAPAppealButton"));
			// element("Application_PAPAppealButton").click();
		} catch (Exception e) {

		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^verify createorderbutton is not displaying$")
	public void verify_createorderbutton_is_not_displaying() throws Throwable {
		Assert.assertTrue(!(element("CreateOrderbtn").isDisplayed()), "create order button should not be displayed");
	}

	@Then("^Verify the status of final Income$")
	public void verify_the_status_of_final_income() throws Throwable {
		String text = element("finalstatus").getText();
		AssertJUnit.assertEquals("Approved", text, "text should be approved");
	}

	@Then("^verify create order button is present and verify finaaloutcome status$")
	public void verify_create_order_button_is_present_and_verify_finaaloutcome_status() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);

		}
		driver.manage().window().maximize();

		String text = element("finalstatus").getText();
		AssertJUnit.assertEquals("Approved", text, "text should be approved");
		try {
			CommonMethods.PerformClickOnObject(element("CreateOrderButton"));
			element("NewWindowOrderOKButton").click();
		} catch (Exception e) {
			element("Appilcation_RefreshBtn").click();
			CommonMethods.PerformClickOnObject(element("Appilcation_ApplicationValidationViewBtn"));
			element("Appilcation_AuditIncomeTextBx").sendKeys("100");
			element("Appilcation_MonthlyRadioBtn").click();
			element("ApplicationSaveButton").click();
			element("Application_save_outcomebutton").click();
			element("Appilcation_RefreshBtn").click();
			element("CreateOrderButton").click();
			element("NewWindowOrderOKButton").click();
		}

		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Enter the RXDate 365 days back from system date$")
	public void enter_the_rxdate_365_days_back_from_system_date() throws Throwable {
		element("Rxdate").sendKeys("7/24/2018");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Enter the RX date 174 back from today's dat$")
	public void enter_the_rx_date_174_back_from_todays_dat() throws Throwable {
		element("Rxdate").sendKeys("1/31/2019");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^clickonsavebutton$")
	public void clickonsavebutton() throws Throwable {
		element("AppRXSignedChkBox").click();
		element("ApplicationSaveButton").click();
		WebDriverWait ww = new WebDriverWait(driver, 60);
		ww.until(ExpectedConditions.alertIsPresent());
		driver.switchTo().alert().accept();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Enter refilquantity$")
	public void enter_refilquantity() throws Throwable {
		Select s = new Select(element("refildropdown"));
		s.selectByVisibleText("4");
	}

	@And("^switch on to frame$")
	public void switch_on_to_frame() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}

	@Then("^Verify fulfilmentmethod and shipto field are noteditable$")
	public void verify_fulfilmentmethod_and_shipto_field_are_noteditable() throws Throwable {
		Assert.assertTrue(!element("Application_FullfillmentDropdown").isEnabled(),
				"fulfilment drpdown should not  be editable");
		Assert.assertTrue(!element("Application_ShipToDropdown").isEnabled(),
				"shipToDropdown field should not be editable");
	}

	@Then("^Verify fulfilmentdate shippingstreet and shipto are displayed$")
	public void verify_fulfilmentdate_shippingstreet_and_shipto_are_displayed() throws Throwable {
		Assert.assertTrue(element("shippingstreet").isDisplayed(), "shippingstrret should be displayed");
		Assert.assertTrue(element("shipto").isDisplayed(), "ship to details should be displayed");
		try {
			Assert.assertTrue(element("fulfilmentdetailstwo").isDisplayed(), "fulfilment details should be displayed");
		} catch (Exception e) {
			Assert.assertTrue(element("fulfilmentdetails").isDisplayed(), "fulfilment details should be displayed");
		}
	}

	@Then("^Verify fulfilmentmethod and shipto field are editable$")
	public void verify_fulfilmentmethod_and_shipto_field_are_editable() throws Throwable {
		Assert.assertTrue(element("Application_FullfillmentDropdown").isEnabled(),
				"fulfilment drpdown should   be editable");
		Assert.assertTrue(element("Application_ShipToDropdown").isEnabled(),
				"shipToDropdown field should  be editable");

	}

	@Then("^Verify fulfilmentdate and shippingstreet and shipto are displayed$")
	public void verify_fulfilmentdate_and_shippingstreet_and_shipto_are_displayed() throws Throwable {
		Assert.assertTrue(element("shippingstreet").isDisplayed(), "shippingstrret should be displayed");
		Assert.assertTrue(element("shipto").isDisplayed(), "ship to details should be displayed");
		try {
			Assert.assertTrue(element("fulfilmentdetailstwo").isDisplayed(), "fulfilment details should be displayed");
		} catch (Exception e) {
			Assert.assertTrue(element("fulfilmentdetails").isDisplayed(), "fulfilment details should be displayed");
		}

	}

	@And("^click on smartystreetsymbol$")
	public void click_on_smartystreetsymbol() throws Throwable {
		element("smartystreetsymbol").click();
	}

	@Then("^enteradress in the strret1textbox$")
	public void enteradress_in_the_strret1textbox() throws Throwable {
		element("strret1").clear();
		element("strret1").sendKeys("9500   Euclid   Avenue");
		element("savebutton").click();
	}

	@Then("^check validation message is displayed$")
	public void check_validation_message_is_displayed() throws Throwable {
		Thread.sleep(2000);
		Assert.assertTrue(element("warningmsg").isDisplayed(), "warning message should be displayed");
	}

	@Then("^enteradress in the strret1textbox with spelling mistakes$")
	public void enteradress_in_the_strret1textbox_with_spelling_mistakes() throws Throwable {
		element("strret1").clear();
		element("strret1").sendKeys(" 9500 eucled");
		element("savebutton").click();
	}

	@Then("^Verify user has opportunity to review and correct address if necessary$")
	public void verify_user_has_opportunity_to_review_and_correct_address_if_necessary() throws Throwable {
		element("warningmsgclosebutton").click();
		element("strret1").clear();
		element("citytextbox").clear();
		element("statetextbox").clear();

		element("strret1").sendKeys("9500 Euclid Ave");
		element("citytextbox").sendKeys("Cleveland");
		element("statetextbox").sendKeys("OH");
		element("savebutton").click();
		try {
			Assert.assertTrue(!element("warningmsg").isDisplayed(), "warning message shouldnot be displayed");
			AssertJUnit.fail();
		} catch (Exception e) {
			System.out.println("testpass");
		}
	}

	@Then("^enter the adress$")
	public void enter_the_adress() throws Throwable {

		element("strret1").clear();
		element("citytextbox").clear();
		element("statetextbox").clear();

		element("strret1").sendKeys("9500 Euclid Ave");
		element("citytextbox").sendKeys("Cleveland");
		element("statetextbox").sendKeys("OH");
		element("savebutton").click();
		element("savebutton").click();
		Thread.sleep(4000);
		Set<String> allwindows = driver.getWindowHandles();
		ArrayList<String> al = new ArrayList<String>(allwindows);
		driver.switchTo().window(al.get(0));

	}

	@Then("^switch to frame$")
	public void switch_to_frame() throws Throwable {
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}

	@And("^Verify whether the overincome message is displayedornot$")
	public void verify_whether_the_overincome_message_is_displayedornot() throws Throwable {
		String text = element("overincomewarningmsg").getText();
		AssertJUnit.assertEquals(text, "Patient's Income is over the Program Eligibility");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify the errormessages$")
	public void verify_the_errormessages() throws Throwable {
		Assert.assertTrue(element("mailingziperrormsg").isDisplayed(), "mailing zipcity errormsg should be displayed");
		Assert.assertTrue(element("mailingcityerrormsg").isDisplayed(), "mailing zipcity errormsg should be displayed");
		Assert.assertTrue(element("mailingstreeterrormsg").isDisplayed(),
				"mailing zipcity errormsg should be displayed");
		Assert.assertTrue(element("mailingstateerrormsg").isDisplayed(),
				"mailing zipcity errormsg should be displayed");

	}

	@And("^Click on Applicant$")
	public void click_on_applicant() throws Throwable {
		Thread.sleep(10000);

		Set<String> allwindows = driver.getWindowHandles();

		for (String wh : allwindows) {
			driver.switchTo().window(wh);
			break;

		}
		element("applicantid").click();

	}

	@And("^Click on Deletebutton$")
	public void click_on_editbutton() throws Throwable {
		Thread.sleep(3000);
		element("Letterbutton").click();
	}

	@And("^click on generatepdf$")
	public void click_on_generatepdf() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("Iframe"));
		element("Generatepdf").click();
	}

	@Then("^select Inboundcall$")
	public void select_inboundcall() throws Throwable {
		element("CasesListViewDropdown").click();
		CommonMethods.PerformClickOnObject(element("Inboundcall"));
	}

	@And("^Click on First casenumber$")
	public void click_on_first_casenumber() throws Throwable {
		CommonMethods.PerformClickOnObject(element("firstcase"));
	}

	@Then("^enter the patientdetails$")
	public void enter_the_patientdetails() throws Throwable {
		driver.findElement(By.xpath("//td[text()='First Name:']/following-sibling::td//input")).sendKeys("heena");
		driver.findElement(By.xpath("//td[text()='Last Name:']/following-sibling::td//input")).sendKeys("xyzs");
		driver.findElement(By.xpath("//td[text()=' Date of Birth:']/following-sibling::td//input"))
				.sendKeys("07/07/1994");
		driver.findElement(By.xpath("(//td[text()='Street Address:']/following-sibling::td/img)[1]")).click();
		// enter address in New Window
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		driver.findElement(By.xpath("//td[text()='Verify Manually:']/following-sibling::td/input")).click();
		// driver.findElement(By.xpath("//td[text()='Street
		// 1:']/following-sibling::td/input")).sendKeys("500 Atrium Dr");

		Robot r = new Robot();

		driver.findElement(By.xpath("//td[text()='Street 1:']/following-sibling::td/input")).sendKeys("500 Atrium Dr");
		r.keyPress(KeyEvent.VK_TAB);
		r.keyPress(KeyEvent.VK_TAB);
		driver.findElement(By.xpath("//td[text()='City:']/following-sibling::td/input")).sendKeys("Somerset");
		r.keyPress(KeyEvent.VK_TAB);
		driver.findElement(By.xpath("//td[text()='State:']/following-sibling::td/input")).sendKeys("NJ");
		r.keyPress(KeyEvent.VK_TAB);
		Thread.sleep(3000);
		Thread.sleep(2000);
		driver.findElement(By.xpath("//input[@value='save']")).click();
		Thread.sleep(3000);
		driver.switchTo().window(winHandleBefore);
		driver.switchTo().frame(element("Iframe2"));
		Thread.sleep(2000);
		driver.findElement(By.xpath(
				"//td[text()='Check if Shipping Address is same as Mailing Address']/parent::tr/td/input[@type='checkbox']"))
				.click();
		driver.findElement(
				By.xpath("//td[text()=' Home Phone:']/following-sibling::td/input[contains(@id,'personPhone')]"))
				.sendKeys("7349085599");
		driver.findElement(By.xpath("(//input[@value='Save'])[1]")).click();

	}

	@Then("^click on addpatientbutton$")
	public void click_on_addpatientbutton() throws Throwable {
		driver.switchTo().frame(element("Iframe2"));
		CommonMethods.PerformClickOnObject(element("addpatientbutton"));
	}

	@And("^click on cancelbutton$")
	public void click_on_cancelbutton() throws Throwable {
		element("cancelbutton").click();
	}

	@Then("^click on caseid$")
	public void click_on_caseid() throws Throwable {
		element("caseid").click();
	}

	@Then("^click on actualcaseid$")
	public void click_on_actualcaseid() throws Throwable {
		driver.switchTo().frame(element("ApplicationPageIframe"));
		element("Actualcaseid").click();
	}

	@And("^please Click on Editbutton$")
	public void please_click_on_editbutton() throws Throwable {
		element("editbuttonpath").click();
	}

	@Then("^Fill the mandatorydetails$")
	public void fill_the_mandatorydetails() throws Throwable {
		Thread.sleep(10000);
		CommonMethods.ScrolDownToTheObject(element("statusdropdownbutton"));
		CommonMethods.PerformClickOnObject(element("statusdropdownbutton"));
		element("newoption").click();
		element("safeteventcheckbox").click();
		element("AEWarmtransfertoPfizerunSuccessfulcheckbox").click();
		element("DocumentsSaveButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(7000);
	}

	@Then("^Click on adverse events button$")
	public void click_on_adverse_events_button() throws Throwable {

		CommonMethods.ScrolDownToTheObject(element("adverseeventbutton"));
		CommonMethods.PerformClickOnObject(element("adverseeventbutton"));

	}

	@And("^click on New button$")
	public void click_on_new_button() throws Throwable {
		Thread.sleep(2000);
		element("Newbutton").click();
	}

	@Then("^Enter all the details$")
	public void enter_all_the_details() throws Throwable {
		element("AEreporteddate").sendKeys("3/5/2017");
		CommonMethods.PerformClickOnObject(element("reporterconsent"));
		element("YESoption").click();
		CommonMethods.PerformClickOnObject(element("Aereportercontactinfo"));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("document.querySelectorAll('[title=\"YES\"]')[1].click()");

		CommonMethods.PerformClickOnObject(element("isthereporteranhcp"));
		js.executeScript("document.querySelectorAll('[title=\\\"YES\\\"]')[2].click()");
		// clicking on is reporter the prescribing hp
		js.executeScript("document.getElementsByClassName('select')[6].click()");
		js.executeScript("document.querySelectorAll('[title=\\\"YES\\\"]')[3].click()");
		element("CEPformNative").sendKeys("hello");
		// clicking on caller consent to contactHCP
		js.executeScript("document.getElementsByClassName('select')[7].click()");
		// clicking on yes
		js.executeScript("document.querySelectorAll('[title=\"YES\"]')[4].click()");
		// entering the productname in suspectproducts
		element("suspectproducts").sendKeys("viagra");
		element("Savebutton").click();

	}

	@And("^Clicks on Editbutton$")
	public void clicks_on_editbutton() throws Throwable {
		Thread.sleep(3000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("document.querySelector('[title=\"Edit\"]').click()");

	}

	@Then("^change the Aestatus$")
	public void change_the_aestatus() throws Throwable {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		element("AEstatuseditbutton").click();
		CommonMethods.PerformClickOnObject(element("Aeidentified"));
		CommonMethods.PerformClickOnObject(element("pendingqc1option"));
		element("svbutton").click();
	}

	@And("^Click on save$")
	public void click_on_save() throws Throwable {
		element("DocumentsSaveButton").click();
	}

	@Then("^click on AdverseEventlink and applauncher$")
	public void click_on_adverseeventlink_and_applauncher() throws Throwable {
		element("Adverseeventlink").click();
		Thread.sleep(2000);
		CommonMethods.PerformClickOnObject(element("adverseevents"));
	}

	@Then("^click on recentviewed button$")
	public void click_on_recentviewed_button() throws Throwable {
		Thread.sleep(10000);
		CommonMethods.PerformClickOnObject(element("recentlyviwed"));
		element("Aeqc1").click();

	}

	@Then("^check whether the statusisQc1inprogress$")
	public void check_whether_the_statusisqc1inprogress() throws Throwable {
		Assert.assertTrue(element("Qc1inprpgress").isDisplayed(), "Qc1 in progress should be displayed");
	}

	@Then("^click on the AdverseEventId and entername$")
	public void click_on_the_adverseeventid_and_entername() throws Throwable {
		element("Adverseeventid").click();
		element("AEstatuseditbutton").click();
		element("Savebutton").click();
	}

	@Then("^check the Aestatus$")
	public void check_the_aestatus() throws Throwable {
		Thread.sleep(6000);
		Assert.assertTrue(element("Qc1inprogress2").isDisplayed(), "status should be Qc1inprogress");
	}

	@Then("^click on recentviewe button$")
	public void click_on_recentviewe_button() throws Throwable {
		Thread.sleep(10000);
		CommonMethods.PerformClickOnObject(element("recentlyviwed"));
	}

	@Then("^click on Aeqc1option$")
	public void click_on_aeqc1option() throws Throwable {
		CommonMethods.PerformClickOnObject(element("AEQC1option"));
	}

	@And("^Navigate to New Tab$")
	public void navigate_to_new_tab() throws Throwable {
		Thread.sleep(10000);
		Set<String> totalwindows = driver.getWindowHandles();
		ArrayList<String> handles = new ArrayList<String>(totalwindows);
		driver.switchTo().window(handles.get(1));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.manage().window().maximize();
	}

	@Then("^Verify Createorder button not present$")
	public void verify_createorder_button_not_present() throws Throwable {
		try {
			CommonMethods.PerformClickOnObject(element("CreateOrderButton"));
			AssertJUnit.fail();

		} catch (Exception e) {
			System.out.println("testscript passed");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@Then("^Verify 'Enrollment End Date' must be end of year$")
	public void Verify_Enrollment_End_Date_must_be_end_of_year() throws Throwable {
		String EnrollmentEndDate = element("Application_EnrollmentEndDateTxt").getText();
		String[] date2 = EnrollmentEndDate.split("/");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		Assert.assertTrue(date2[0].equals(getDataFromExcel(ModuleName, TestCaseID, "EndDateOne")));
		Assert.assertTrue(date2[1].equals(getDataFromExcel(ModuleName, TestCaseID, "EndDateTwo")));
	}

	@Then("^Verify Difference between 'Enrollment Date' and 'Enrollment End Date' must be exactly one year$")
	public void Verify_Difference_between_Enrollment_Date_and_Enrollment_End_Date_must_be_exactly_one_year()
			throws Throwable {
		String EnrollmentDate = element("Application_EnrollmentDateTxt").getText();
		String[] date1 = EnrollmentDate.split("/");
		String EnrollmentEndDate = element("Application_EnrollmentEndDateTxt").getText();
		String[] date2 = EnrollmentEndDate.split("/");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		if ((date1[date1.length - 1] + 1) == (date2[date2.length - 1])) {
			Reporter.addStepLog(
					"Difference between 'Enrollment Date' and 'Enrollment End Date' must be exactly one year");
		} else {
			System.out.println("not exactly one year");
		}

	}

	@And("^Verify 'Products Information Description' Error Message Denied Click On 'Save Outcome' Button$")
	public void verify_products_information_description_error_message_Denied_click_on_save_outcome_button()
			throws Throwable {
		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();
		try {
			Thread.sleep(3000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			element("Appeals_LoeProductnotInPgmTxt").isDisplayed();
			assertTrue("'Verify 'Denied' Error Message", element("Appeals_DeniedTxt").getText()
					.equals(getDataFromExcel(ModuleName, TestCaseID, "EnrollmentOutcome")));
			element("SaveOutcomeButton").click();
		} catch (Exception e) {
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			assertTrue("'Verify 'Denied' Error Message", element("Appeals_DeniedTxt").getText()
					.equals(getDataFromExcel(ModuleName, TestCaseID, "EnrollmentOutcome")));
			element("SaveOutcomeButton").click();
		}

		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Verify Refill order should get created$")
	public void Verify_Refill_order_should_get_created() throws Throwable {
		Thread.sleep(5000);
		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));
		assertTrue(element("Application_OrderTypeRefillTxt").isDisplayed(), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify Product Group$")
	public void verify_product_group() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("ProductGroupTextBox").getAttribute("value")
				.equals(getDataFromExcel(ModuleName, TestCaseID, "Product Group")), "");
	}

	@Then("^Verify product 'FullFillment Method' and 'Ship to' Drop Down Values$")
	public void verify_product_fullfillment_method_and_ship_to_drop_down_values() throws Throwable {

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Select Drop1 = new Select(element("Application_FullfillmentDropdown"));
		WebElement Option = Drop1.getFirstSelectedOption();
		assertTrue(Option.getText().equals(getDataFromExcel(ModuleName, TestCaseID, "FulFillment Method")), "");

		Select Drop2 = new Select(element("Application_ShipToDropdown"));
		WebElement Option2 = Drop2.getFirstSelectedOption();
		assertTrue(Option2.getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Ship to")), "");

	}

	@Then("^Verify product Refill Drop Down Value$")
	public void verify_product_refill_drop_down_value() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Select Drop1 = new Select(element("Application_RefillsDropdown"));
		WebElement Option = Drop1.getFirstSelectedOption();
		assertTrue(Option.getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Refills")), "");
	}

	@Then("^Verify 'Herapin' brand is removed from CRM$")
	public void verify_herapin_brand_is_removed_from_crm() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Select Drop1 = new Select(element("ProductNameDropDown"));
		List<WebElement> list = Drop1.getOptions();
		String product = getDataFromExcel(ModuleName, TestCaseID, "ProductName");
		for (int i = 0; i < list.size() - 1; i++) {
			if (list.get(i).getText().equalsIgnoreCase(product)) {
				AssertJUnit.fail();
			}
		}

	}

	@Then("^Verify 'Product name' and 'NDC'$")
	public void verify_product_name_and_ndc() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("PortalTableProductNameValue").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "Portal Product")), "");
		assertTrue(element("PortalTableStrengthValue").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "Portal Product Strength")), "");

	}

	@Then("^Verify Refill button is Disabled$")
	public void verify_refill_button_is_disabled() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("PortalFirstPatientOrderRefillBtn").getAttribute("disabled")
				.contains(getDataFromExcel(ModuleName, TestCaseID, "disabled")), "");

	}

	@Then("^Verify Product Form in Portal$")
	public void verify_product_form_in_portal() throws Throwable {
		CommonMethods.ScrolDownToTheObject(driver.findElement(By.xpath("//table/tbody/tr[1]/td[2]/div")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Assert.assertTrue(driver.findElement(By.xpath("//table/tbody/tr[1]/td[2]/div")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Portal Product Strength")));
	}

	@Then("^Verify Product Form in Portal1$")
	public void verify_product_form_in_portal1() throws Throwable {
		CommonMethods.ScrolDownToTheObject(driver.findElement(By.xpath("//table/tbody/tr[1]/td[2]/div")));
		System.out.println("Verify product form is diplayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the product for which order is created$")
	public void verify_the_product_for_which_order_is_created() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("OrderPageFirstProduct").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "ProductName")), "");
	}

	@Then("^Verify the Number of Refills Remaining$")
	public void verify_the_number_of_refills_remaining() throws Throwable {

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("OrderPageRefillsRemaining").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "RefillsRemaining")), "");

	}

	@Then("^Verify 'Enrollment Outcome' Status$")
	public void verify_enrollment_outcome_status() throws Throwable {
		Thread.sleep(5000);

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		CommonMethods.ScrolDownToTheObject(element("ApplicationEnrollmentoutcome"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("ApplicationEnrollmentoutcome").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "EnrollmentOutCome")), "");

	}

	@Then("^Verify the Form and Strength of the Product$")
	public void verify_the_form_and_strength_of_the_product() throws Throwable {

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue((getDataFromExcel(ModuleName, TestCaseID, "FormStrength")
				.contains(element("OrderPageFirstProductForm").getText())), "");
		assertTrue((getDataFromExcel(ModuleName, TestCaseID, "FormStrength")
				.contains(element("OrderPageFirstProductFormStrength").getText())), "");

	}

	@Then("^Verify Form Strength Colomn Name$")
	public void verify_form_strength_colomn_name() throws Throwable {

		CommonMethods.ScrolDownToTheObject(element("FormStrenghthPckgSizeColmn"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("FormStrenghthPckgSizeColmn").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "ProductColmnName")), "");

	}

	@Then("^Verify Pill Qty Colomn Name$")
	public void verify_pill_qty_colomn_name() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("PillQtyColomnName"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("PillQtyColomnName").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "PillQtyColomnName")), "");

	}

	@Then("^Verify Strength Package Colomn Name$")
	public void verify_strength_package_colomn_name() throws Throwable {

		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.presenceOfElementLocated(

				By.xpath(returnLocatorValue("OrderPageStrngthPckgColomn"))));
		CommonMethods.ScrolDownToTheObject(element("OrderPageStrngthPckgColomn"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("OrderPageStrngthPckgColomn").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "ProductColmnName")), "");
	}

	@Then("^Verify 'Knowledge' link is present in the drop down$")
	public void verify_knowledge_link_is_present_in_the_drop_down() throws Throwable {
		Thread.sleep(3000);
		element("showNavigationMenuButton").click();
		try {
			driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			Assert.assertTrue(element("KnowledgeLink").isDisplayed());
		} catch (Exception e) {

			element("showNavigationMenuButton").click();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			Assert.assertTrue(element("KnowledgeLink").isDisplayed());
		}

	}

	@And("^Click On 'Knowledge' Link$")
	public void click_on_knowledge_link() throws Throwable {

		Thread.sleep(3000);
		element("showNavigationMenuButton").click();
		try {
			driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
			element("KnowledgeLink").click();
		} catch (Exception e) {

			element("showNavigationMenuButton").click();
			element("KnowledgeLink").click();
		}
	}

	@Then("^Verify User is Navigated to 'knowledge' page$")
	public void verify_user_is_navigated_to_knowledge_page() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Assert.assertTrue(element("knowledgePageHeader").isDisplayed());

	}

	@Then("^Verify 'Piblished Articles' is displayed in list$")
	public void verify_piblished_articles_is_displayed_in_list() throws Throwable {

		Thread.sleep(3000);
		driver.switchTo().defaultContent();
		element("PrescriptionProductDropDownIcon").click();
		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Assert.assertTrue(element("PublishedArticlesListValue").isDisplayed());

	}

	@And("^Click On 'Published Articles' Link$")
	public void click_on_published_articles_link() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().defaultContent();
		element("PrescriptionProductDropDownIcon").click();
		Thread.sleep(2000);
		element("PublishedArticlesListValue").click();

	}

	@Then("^Verify 'Best Practices of Global Search' is Present in the list$")
	public void verify_best_practices_of_global_search_is_present_in_the_list() throws Throwable {
		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Assert.assertTrue(element("BestPracticesofGlobalSearchLink").isDisplayed());

	}

	@And("^Click On 'Best Practices of Global Search'$")
	public void click_on_best_practices_of_global_search() throws Throwable {
		element("BestPracticesofGlobalSearchLink").click();

	}

	@Then("^Verify page title is 'Best Practices of Global Search'$")
	public void verify_page_title_is_best_practices_of_global_search() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Assert.assertTrue(element("BestPracticesofGlobalSearchPageHeader").isDisplayed());

	}

	@Then("^Verify URL Name is 'Global Search'$")
	public void verify_url_name_is_global_search() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("URLName"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Assert.assertTrue(element("URLName").isDisplayed());

	}

	@Then("^Click on all Reports Link$")
	public void click_on_all_reports_link() throws Throwable {
		Thread.sleep(2000);
		element("AppAllReport").click();
	}

	@And("^click on Search box in all reports page$")
	public void click_on_search_box_in_all_reports_page() throws Throwable {
		Thread.sleep(2000);
		element("AppSearchReport").click();
	}

	@And("^Search for Prioritized patients in Search box$")
	public void search_for_prioritized_patients_in_search_box() throws Throwable {
		Thread.sleep(2000);
		element("AppSearchReport").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Search Report"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Report is Present$")
	public void verify_that_report_is_present() throws Throwable {
		Thread.sleep(2000);
		Assert.assertTrue(element("AppReportName").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on the Down Arrow Present in Report$")
	public void click_on_the_down_arrow_present_in_report() throws Throwable {
		Thread.sleep(2000);
		element("AppReportDownArrow").click();
	}

	@Then("^Click on the Run Button$")
	public void click_on_the_run_button() throws Throwable {
		element("AppArrowRun").click();
		new WebDriverWait(driver, 30)
				.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//iframe[@title='Report Viewer']")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that report includes all the patients that are marked as Prioritized$")
	public void verify_that_report_includes_all_the_patients_that_are_marked_as_prioritized() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("PatientPageIframe"));

		// WebElement patientID =
		// driver.findElement(By.xpath("(//span[@data-tooltip='Patient ID'])[1]"));
		// System.out.println("Ashirbad:
		// "+patientID.getAttribute("data-tooltip-on-truncation").toString());
		// Assert.assertTrue(patientID.isDisplayed());

		Assert.assertTrue(element("AppReportPatientID").isDisplayed());
		Assert.assertTrue(element("AppReportPatientName").isDisplayed());
		Assert.assertTrue(element("AppReportProductname").isDisplayed());
		Assert.assertTrue(element("AppReportProductGroup").isDisplayed());
		Assert.assertTrue(element("AppreportPriority").isDisplayed());
		Assert.assertTrue(element("AppReportPriorityDate").isDisplayed());

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button For DEA$")
	public void set_field_to_npi_operator_to_contains_and_enter_any_value_click_on_search_buttonfor_dea()
			throws Throwable {
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		Select Drop = new Select(element("SelectInWindow"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor"));

		Select Drop2 = new Select(element("NPIOperatorDropDown"));
		Drop2.selectByVisibleText("starts with");

		element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue"));
		element("SearchButton").click();
		Thread.sleep(2000);
		element("FirstPractitionersRow").click();
		Thread.sleep(2000);
		element("AppPractionerExpired").click();
		Thread.sleep(2000);
		element("FirstAddContactRow").click();
		Thread.sleep(2000);
		element("UpdateApplicationPrescriptionButton").click();

		driver.switchTo().window(winHandleBefore);
		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe
		// slds-card iframe-parent']//iframe")));
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}

	@Then("^Enter the DEA Expiry date$")
	public void enter_the_dea_expiry_date() throws Throwable {
		Thread.sleep(3000);
		element("AppDEAExpiryDateTextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "DEA Expiry"));
	}

	@Then("^Verify the Error Msg missing HCP$")
	public void verify_the_error_msg_missing_hcp() throws Throwable {
		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		driver.manage().window().maximize();
		Assert.assertTrue(element("AppHCPError").isDisplayed());
		CommonMethods.PerformClickOnObject(element("SaveOutcomeButton"));
		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Verify the outcome status as pending$")
	public void verify_the_outcome_status_as_pending() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		AssertJUnit.assertEquals(element("AppOutcomeStatusText").getText(),
				getDataFromExcel(ModuleName, TestCaseID, "Outcome Status"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Navigate to the Patient details page > Click on Saving Program 'New'$")
	public void navigate_to_the_patient_details_page_click_on_saving_program_new() throws Throwable {
		Thread.sleep(3000);
		System.out.println("Navigate to the Patient details page");
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,450)");
		// element("AppSavingProgram").click();
		try {
			CommonMethods.PerformClickOnObject(element("AppSavingProgram"));
		} catch (Exception e) {

		}
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		element("AppSavingProNew").click();
		System.out.println("Click on New Button");
	}

	@Then("^Click on Insurance No radio Button$")
	public void click_on_insurance_no_radio_button() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		element("AppSavingInsuranceRadio").click();
	}

	@Then("^Select Household Size as '1' > Household income 1000 > check 'yearly' radio button$")
	public void select_household_size_as_1_household_income_1000_check_yearly_radio_button() throws Throwable {
		Select Drop1 = new Select(element("AppSavingHouseHoldSize"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "HouseholdSize"));
		element("AppSavingHouseholdIncome").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HouseholdIncome"));
		element("AppSavingYearlyRadio").click();
	}

	@And("^click on add product for Saving Program$")
	public void click_on_add_product_for_saving_program() throws Throwable {
		element("AppSavingAddProduct").click();
	}

	@Then("^Select product Name from dropdown$")
	public void select_product_name_from_dropdown() throws Throwable {
		Select Drop1 = new Select(element("AppSavingAddProductDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName"));
	}

	@Then("^Click on Save Button for saving Program$")
	public void click_on_save_button_for_saving_program() throws Throwable {
		Thread.sleep(2000);
		element("AppSavingProgramSave").click();
	}

	@Then("^Verify the Enrollment Status$")
	public void verify_the_enrollment_status() throws Throwable {
		Thread.sleep(5000);
		assertTrue("Verify Enrollment status", element("AppSavingEnrollmentstatus").getText()
				.equals(getDataFromExcel(ModuleName, TestCaseID, "Enrollment Status")));
	}

	@Then("^Verify that enrollment outcome is denied$")
	public void verify_that_enrollment_outcome_is_denied() throws Throwable {
		Thread.sleep(5000);
		driver.switchTo().defaultContent();
		String winHandleBefore = driver.getWindowHandle();
		System.out.println(driver.getWindowHandles().size());

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);

			System.out.println("Ashirbad Window Name: " + winHandle.toString());
			// ----------------------------
			driver.manage().window().maximize();
		}
		CommonMethods.ScrolDownToTheObject(element("Appeals_DeniedTxt"));
		Assert.assertTrue(element("Appeals_DeniedTxt").isDisplayed());

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Enrollment outcome is Incomplete$")
	public void verify_that_enrollment_outcome_is_incomplete() throws Throwable {
		Thread.sleep(5000);
		driver.switchTo().defaultContent();
		String winHandleBefore = driver.getWindowHandle();
		System.out.println(driver.getWindowHandles().size());

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);

			System.out.println("Ashirbad Window Name: " + winHandle.toString());
			// ----------------------------
			driver.manage().window().maximize();
		}
		CommonMethods.ScrolDownToTheObject(element("AppEnrolOutcomeIncomplte"));
		Assert.assertTrue(element("AppEnrolOutcomeIncomplte").isDisplayed());

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select product name and Form Strength for second product line$")
	public void select_product_name_and_form_strength_for_second_product_line() throws Throwable {
		Select Drop1 = new Select(element("Applicationproductdrop2"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName2"));

		Select Drop2 = new Select(element("ApplicationFormStrengh2"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2"));

		Select Drop3 = new Select(element("ApplicationSIGDrop2"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));
	}

	@And("^Click on Replacement Order Button$")
	public void click_on_replacement_order_button() throws Throwable {
		driver.switchTo().frame(element("PatientPageIframe"));
		Thread.sleep(3000);
		element("Application_ReplacementOrder").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the Outcome in Outcome logs as Denied$")
	public void verify_the_outcome_in_outcome_logs_as_denied() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		AssertJUnit.assertEquals(element("AppLogsOutcomeText").getText(),
				getDataFromExcel(ModuleName, TestCaseID, "Outcome"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that no pap appeal for PNOP alert msg is displayed$")
	public void verify_that_no_pap_appeal_for_pnop_alert_msg_is_displayed() throws Throwable {
		Thread.sleep(3000);
		Alert alert = driver.switchTo().alert();
		AssertJUnit.assertEquals(alert.getText(), getDataFromExcel(ModuleName, TestCaseID, "Alert Msg"));
		alert.accept();
	}

	@Then("^Verify the form strength is displayed$")
	public void verify_the_form_strength_is_displayed() throws Throwable {
		Select Drop2 = new Select(element("FormStrengthDropDown"));

		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength"));
		Assert.assertTrue(Drop2.getFirstSelectedOption().getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "FormStrength")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2"));
		Assert.assertTrue(Drop2.getFirstSelectedOption().getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength3"));
		Assert.assertTrue(Drop2.getFirstSelectedOption().getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "FormStrength3")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength4"));
		Assert.assertTrue(Drop2.getFirstSelectedOption().getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "FormStrength4")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that product should be defaulted to be shipped via Memphis & to HCP$")
	public void verify_that_product_should_be_defaulted_to_be_shipped_via_memphis_to_hcp() throws Throwable {

	}
	@Then("^select product Appeal from Dropdown and verify the error msg$")
	public void select_product_appeal_from_dropdown_and_verify_the_error_msg() throws Throwable {

		Thread.sleep(5000);
		driver.navigate().refresh();
		Thread.sleep(8000);
		try {
			driver.switchTo().frame(element("Frame_TypeOfAppeal"));
			// driver.switchTo().frame(element("PatientPageIframe1"));
			Select Drop1 = new Select(element("AppealTypeDropDown"));
			Drop1.selectByVisibleText("Product Appeal");
			Assert.assertTrue(element("AppProductappealerror").isDisplayed());
		} catch (Exception e) {
			// driver.switchTo().frame(element("Frame_TypeOfAppeal"));
			// driver.switchTo().frame(element("PatientPageIframe"));
			Select Drop1 = new Select(element("AppealTypeDropDown"));
			Drop1.selectByVisibleText("Product Appeal");
			Assert.assertTrue(element("AppProductappealerror").isDisplayed());
		}

	}

	@Then("^fetch the Application Number created$")
	public void fetch_the_application_number_created() throws Throwable {
		Variable1 = element("GeneratedApplicationNumber").getText();
		System.out.println(Variable1);
		Reporter.addStepLog("Application id is:" + Variable1);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		// String a="Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C,
		// Account__r.Name,Active__C from Application__C where Name='"+Variable1+"'";
		// Actions dc =new Actions(driver);
		// dc.doubleClick(element("AppEnrollmentdatedevloper")).perform();

	}

	@Then("^open the developer Console$")
	public void open_the_developer_console() throws Throwable {
		String url = getDataFromExcel(ModuleName, TestCaseID, "Developers URL");
		System.out.println(url);
		driver.get(url);
		Reporter.addStepLog("URL: " + url);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		driver.manage().window().maximize();

	}

	@Then("^Click on ok$")
	public void click_on_ok() throws Throwable {
		try {
			element("AppDevelopersConsoleErrormsgOk").click();
		} catch (Exception e) {

		}
	}

	@Then("^Click on Query Editor > pass the query > click on Execute$")
	public void click_on_query_editor_pass_the_query_click_on_execute() throws Throwable {
		Thread.sleep(2000);
		element("AppQUERYEditor").click();
		element("AppdeveloperQueryTextBox").click();
		element("AppdeveloperQueryTextBox").clear();
		// element("AppdeveloperQueryTextBox").sendKeys(getDataFromExcel(ModuleName,TestCaseID,
		// "AppdeveloperQueryTextBox")+"'"+Variable1+"'");
		element("AppdeveloperQueryTextBox")
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AppdeveloperQueryTextBox") + "'" + 327102 + "'");
		// String a="Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C,
		// Account__r.Name,Active__C from Application__C where Name='"+"Variable1"+"'";
		// element("AppdeveloperQueryTextBox").sendKeys("a");

		element("AppDeveloperExecuteButton").click();
		Thread.sleep(3000);
	}

	@And("^Edit the Enrollment End date in Devlopers console$")
	public void edit_the_enrollment_end_date_in_devlopers_console() throws Throwable {
		// Actions dc =new Actions(driver);
		// dc.doubleClick(element("AppEnrollmentdatedevloper")).perform();
		// element("AppEnrollmentdatedevloper").clear();
		// element("AppEnrollmentdatedevloper").sendKeys(getDataFromExcel(ModuleName,
		// TestCaseID, "EnrollmentDateEdited"));
		Actions assigner = new Actions(driver);
		assigner.moveToElement(element("AppEnrollmentdatedevloper"));
		assigner.doubleClick(element("AppEnrollmentdatedevloper")).perform();

		Thread.sleep(3000);
		// assigner.sendKeys(Keys.CONTROL,"a");
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.build().perform();
		Thread.sleep(3000);

		assigner.sendKeys("2019-08-25");
		assigner.build().perform();
		// element("AppdeveloperTRueField").click();
	}

	@Then("^Click on Save Rows Button$")
	public void click_on_save_rows_button() throws Throwable {
		element("AppDevelopersSaverows").click();
	}

	@Then("^In Application Page > Click on 'Application insurances' >  'New' for Reenrollment$")
	public void in_application_page_click_on_application_insurances_new_for_reenrollment() throws Throwable {
		try {
			element("ApplicationInsurancesLink").click();
			driver.navigate().refresh();
			element("DocumentsNewButton").click();
		} catch (Exception e) {
			element("ApplicationInsurancesLinkForRenrollment").click();
			driver.navigate().refresh();
			element("DocumentsNewButton").click();
		}
	}

	@Then("^Edit AE Page Details and click on save button$")
	public void edit_ae_page_details_and_click_on_save_button() throws Throwable {
		Thread.sleep(2000);
		assertTrue("Ensure Valid Practitioner pop up is displayed", element("AEEditPoPWindow").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("suspectproducttextbox").click();
		element("suspectproducttextbox").clear();
		element("suspectproducttextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "suspectproducttextbox1"));
	}

	@And("^Verify that Email CEP Form to DSU button is diabled after click$")
	public void verify_that_email_cep_form_to_dsu_button_is_diabled_after_click() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(2000);
		try {
			element("EmailCEPformtodsubutton");
			assertTrue(element("EmailCEPformtodsubutton").isDisplayed(), "");
			AssertJUnit.fail();
		} catch (Exception e) {
			System.out.println("Email CEP form to dsu Button is not exist");
		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that Email CEP form to DSU button is displayed$")
	public void verify_that_email_cep_form_to_dsu_button_is_displayed() throws Throwable {
		Thread.sleep(3000);
		driver.navigate().refresh();
		Thread.sleep(3000);
		driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='content iframe-parent']//iframe")));
		Thread.sleep(5000);
		CommonMethods.PerformClickOnObject(element("Previewbutton"));
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		assertTrue(element("EmailCEPformtodsubutton").isDisplayed(), "");
	}

	@Then("^Select the Fullfillment Method$")
	public void select_the_fullfillment_method() throws Throwable {
		Select Drop1 = new Select(element("Application_FullfillmentDropdown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FulFillment Method"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that Enrollment outcome is incomplete in OVM$")
	public void verify_that_enrollment_outcome_is_incomplete_in_ovm() throws Throwable {
		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		Thread.sleep(1000);
		driver.manage().window().maximize();

		Assert.assertTrue(element("AppEnrollmentOutcomeIncomplete").isDisplayed());

	}

	@Then("^Verify that Memphis pack count field is displayed$")
	public void verify_that_memphis_pack_count_field_is_displayed() throws Throwable {
		Thread.sleep(8000);
		element("Application_MemphisPackCount").click();
		Assert.assertTrue(element("Application_MemphisPackCount").isDisplayed());
		Thread.sleep(3000);
		System.out.println(element("Application_MemphisPackCount").getAttribute("value"));
		System.out.println(getDataFromExcel(ModuleName, TestCaseID, "value"));
		assertTrue("Memphis pack count", element("Application_MemphisPackCount").getAttribute("value")
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "value")));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Memphis pack count field is not updateable by agent$")
	public void verify_that_memphis_pack_count_field_is_not_updateable_by_agent() throws Throwable {
		Assert.assertTrue(element("Application_MemphisPackCount").isDisplayed());
		Thread.sleep(3000);
		assertTrue("Memphis pack count", element("Application_MemphisPackCount").getAttribute("disabled")
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "disabled")));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Memphis pack count field is displayed According to pillQty and Stock bottle Qty$")
	public void verify_that_memphis_pack_count_field_is_displayed_according_to_pillqty_and_stock_bottle_qty()
			throws Throwable {
		Thread.sleep(8000);
		element("Application_MemphisPackCount").click();
		int a = Integer.parseInt(getDataFromExcel(ModuleName, TestCaseID, "PillQty"))
				/ Integer.parseInt(getDataFromExcel(ModuleName, TestCaseID, "StockBottleQty"));
		System.out.println(a);
		assertTrue("Memphis pack count",
				element("Application_MemphisPackCount").getAttribute("value").equalsIgnoreCase(String.valueOf(a)));

	}

	@Then("^Verify that Notes button is getting displayed$")
	public void verify_that_notes_button_is_getting_displayed() throws Throwable {
		Assert.assertTrue(element("AppLOGINNotesButton").isDisplayed());
	}

	@And("^Click on Notes Button$")
	public void click_on_notes_button() throws Throwable {
		element("AppLOGINNotesButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Recently Viewed button is getting displayed$")
	public void verify_that_recently_viewed_button_is_getting_displayed() throws Throwable {
		Assert.assertTrue(element("AppNotesRecentlyViewed").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on New button in notes$")
	public void click_on_new_button_in_notes() throws Throwable {
		element("AppNotesNewButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Add Notes title and notes data in the popup$")
	public void add_notes_title_and_notes_data_in_the_popup() throws Throwable {
		element("AppNotesTitle").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Title"));
		element("AppNotesEnterNotes").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Body"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that user is able to create notes$")
	public void verify_that_user_is_able_to_create_notes() throws Throwable {
		Assert.assertTrue(element("AppNotesVerification").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Add to record button$")
	public void click_on_add_to_record_button() throws Throwable {
		element("AppNotesAddRecord").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^click on the searchbox in pop window of add record$")
	public void click_on_the_searchbox_in_pop_window_of_add_record() throws Throwable {
		element("AppNotesSearchBox").click();
		element("AppNotesSearchBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PresciptionNumber"));
		Thread.sleep(2000);
		element("AppSearchedprescriptionNo").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^click on add button in pop up$")
	public void click_on_add_button_in_pop_up() throws Throwable {
		element("AppNotesAddButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on share button in notes$")
	public void click_on_share_button_in_notes() throws Throwable {
		CommonMethods.PerformClickOnObject(element("AppNotesShareButton"));
		// element("AppNotesShareButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^click on the searchbox in pop window of share notes$")
	public void click_on_the_searchbox_in_pop_window_of_share_notes() throws Throwable {
		Thread.sleep(5000);
		element("AppNotesShareSearchbox").click();
		element("AppNotesShareSearchbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "People"));
		Thread.sleep(2000);
		element("AppNotesSearchedPeple").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Share button in pop up$")
	public void click_on_share_button_in_pop_up() throws Throwable {
		element("AppnotepeopleSharebutton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Delete notes button$")
	public void click_on_delete_notes_button() throws Throwable {
		Thread.sleep(5000);
		element("AppnotesDelete").click();
		Thread.sleep(2000);
		element("AppNoteDeletePopup").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click On Done button in notes$")
	public void click_on_done_button_in_notes() throws Throwable {
		element("AppNotesDoneButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Note got Displayed$")
	public void verify_that_note_got_displayed() throws Throwable {
		Assert.assertTrue(element("AppNotesSaved").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Navigation menu and select my notes$")
	public void click_on_navigation_menu_and_select_my_notes() throws Throwable {
		Thread.sleep(2000);
		CommonMethods.PerformClickOnObject(element("AppNotesNevigationmenu"));
		// element("AppNotesNevigationmenu").click();

		// Actions assigner = new Actions(driver);
		// assigner.moveToElement(element("AppNotesNevigationmenu"));
		// assigner.doubleClick(element("AppNotesNevigationmenu")).perform();
		Thread.sleep(3000);
		element("AppNotesMenuMyNotes").click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Navigation menu and select recently viewed$")
	public void click_on_navigation_menu_and_select_recently_viewed() throws Throwable {
		// element("AppNotesNevigationmenu").click();
		Thread.sleep(2000);
		CommonMethods.PerformClickOnObject(element("AppNotesNevigationmenu"));
		// Actions assigner = new Actions(driver);
		// assigner.moveToElement(element("AppNotesNevigationmenu"));
		// assigner.doubleClick(element("AppNotesNevigationmenu")).perform();
		Thread.sleep(2000);
		element("AppNotesRecentlyViewed").click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Navigation menu and select Shared with me$")
	public void click_on_navigation_menu_and_select_shared_with_me() throws Throwable {
		// element("AppNotesNevigationmenu").click();
		Thread.sleep(2000);
		CommonMethods.PerformClickOnObject(element("AppNotesNevigationmenu"));
		// Actions assigner = new Actions(driver);
		// assigner.moveToElement(element("AppNotesNevigationmenu"));
		// assigner.doubleClick(element("AppNotesNevigationmenu")).perform();
		Thread.sleep(2000);
		element("AppNotesSharedwithme").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on any Saved note$")
	public void click_on_any_saved_note() throws Throwable {
		element("AppNotesSaved").click();
	}

	@Then("^Verify that note is editable by user$")
	public void verify_that_note_is_editable_by_user() throws Throwable {
		element("AppNotesTitle").click();
		element("AppNotesTitle").clear();
	}

	@Then("^Verify that Saving Program Product page is Displayed$")
	public void verify_that_saving_program_product_page_is_displayed() throws Throwable {
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("AppSavingProgramNumber"));
		// element("AppSavingProgramNumber").click();
		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on the edit Button$")
	public void click_on_the_edit_button() throws Throwable {
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("AppSavingEditButton"));
		// element("AppSavingEditButton").click();
		Thread.sleep(3000);
		element("AppSavingEditButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that user is not able to edit application after saving program created$")
	public void verify_that_user_is_not_able_to_edit_application_after_saving_program_created() throws Throwable {

		try {
			Thread.sleep(3000);
			// System.out.println("save ");
			element("AppSavingEnrollmentstatus").click();
			Thread.sleep(8000);

		} catch (Exception e) {
			System.out.println("not editable ");
		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^In PAP Information section Select 'US Resident' as 'N' from drop down$")
	public void in_pap_information_section_select_us_resident_as_n_from_drop_down() throws Throwable {
		Select Drop = new Select(element("USResidentDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "USResident"));
	}

	@Then("^Enter the mandatory fields in Group C section$")
	public void enter_the_mandatory_fields_in_group_c_section() throws Throwable {
		driver.switchTo().frame(
				driver.findElement(By.xpath("//div[@class='iframe-parent slds-template_iframe slds-card']//iframe")));
		Thread.sleep(3000);
		element("DateofAdministrationdate").click();
		Select Drop1 = new Select(element("Yersolddropdown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Yersolddropdown"));
		element("Vaccientlottextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Vaccientlottextbox"));
		element("Termsandconditioncheckbox").click();
		Select Drop2 = new Select(element("18yearsdropdown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "18yearsdropdown"));
		element("ApplicationSaveButton").click();

		try {
			Thread.sleep(3000);
			System.out.println("save ");
			element("ApplicationSaveButton").click();
			Thread.sleep(8000);

		} catch (Exception e) {

		}
		Thread.sleep(5000);
		element("PAPDetermineOutcomeButton").click();
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify the error message displayed for the not US Resident in OVM window$")
	public void verify_the_error_message_displayed_for_the_not_us_resident_in_ovm_window() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		Assert.assertTrue(
				element("NotUSErrMsg").getText().contains(getDataFromExcel(ModuleName, TestCaseID, "NotUSErrMsg")));

		try {
			CommonMethods.PerformClickOnObject(element("Application_SaveOutcomeBtn"));
			// element("NewWindowOrderOKButton").click();
		} catch (Exception e) {
			element("Appilcation_RefreshBtn").click();
			element("Appilcation_ApplicationValidationViewBtn").click();
			element("Appilcation_AuditIncomeTextBx").sendKeys("100");
			element("Appilcation_MonthlyRadioBtn").click();
			element("ApplicationSaveButton").click();
			element("Appilcation_RefreshBtn").click();
			element("CreateOrderButton").click();
			element("NewWindowOrderOKButton").click();

		}

		driver.switchTo().window(winHandleBefore);

	}

	@Then("^Verify the error message displayed for the 'Product Not on Program'$")
	public void verify_the_error_message_displayed_for_the_product_not_on_program() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		Assert.assertTrue(element("productnotonprogramerror").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "productnotonprogramerror")));

		try {
			CommonMethods.PerformClickOnObject(element("Application_SaveOutcomeBtn"));
			// element("NewWindowOrderOKButton").click();
		} catch (Exception e) {
			element("Appilcation_RefreshBtn").click();
			element("Appilcation_ApplicationValidationViewBtn").click();
			element("Appilcation_AuditIncomeTextBx").sendKeys("100");
			element("Appilcation_MonthlyRadioBtn").click();
			element("ApplicationSaveButton").click();
			element("Appilcation_RefreshBtn").click();
			element("CreateOrderButton").click();
			element("NewWindowOrderOKButton").click();

		}

		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Verify the error message displayed for the Patient insurance not covered$")
	public void verify_the_error_message_displayed_for_the_patient_insurance_not_covered() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		Assert.assertTrue(element("Insuranceerrormessage").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "Insuranceerrormessage")));

		try {
			CommonMethods.PerformClickOnObject(element("Application_SaveOutcomeBtn"));
			// element("NewWindowOrderOKButton").click();
		} catch (Exception e) {
			element("Appilcation_RefreshBtn").click();
			element("Appilcation_ApplicationValidationViewBtn").click();
			element("Appilcation_AuditIncomeTextBx").sendKeys("100");
			element("Appilcation_MonthlyRadioBtn").click();
			element("ApplicationSaveButton").click();
			element("Appilcation_RefreshBtn").click();
			element("CreateOrderButton").click();
			element("NewWindowOrderOKButton").click();

		}

		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Verify the error message displayed for the LOE product$")
	public void verify_the_error_message_displayed_for_the_loe_product() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		Assert.assertTrue(element("LOEerrormessage").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "LOEerrormessage")));

		try {
			CommonMethods.PerformClickOnObject(element("Application_SaveOutcomeBtn"));
			// element("NewWindowOrderOKButton").click();
		} catch (Exception e) {
			element("Appilcation_RefreshBtn").click();
			element("Appilcation_ApplicationValidationViewBtn").click();
			element("Appilcation_AuditIncomeTextBx").sendKeys("100");
			element("Appilcation_MonthlyRadioBtn").click();
			element("ApplicationSaveButton").click();
			element("Appilcation_RefreshBtn").click();
			element("CreateOrderButton").click();
			element("NewWindowOrderOKButton").click();

		}

		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Navigate to 'View Logs' then verify the status$")
	public void navigate_to_view_logs_then_verify_the_status() throws Throwable {
		Thread.sleep(5000);
		element("Application_ApplicantLink").click();
		Thread.sleep(3000);
		element("ViewlogsButton").click();
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(
				ExpectedConditions.visibilityOfElementLocated((By.xpath("//div[@class='iframe-parent slds-template_iframe slds-card']//iframe"))));
		driver.switchTo().frame(
				driver.findElement(By.xpath("//div[@class='iframe-parent slds-template_iframe slds-card']//iframe")));
		Assert.assertTrue(
				element("Outcomevalue").getText().contains(getDataFromExcel(ModuleName, TestCaseID, "Outcomevalue")));
		Assert.assertTrue(element("Descriptionvalue").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "Descriptionvalue")));
		Assert.assertTrue(element("LetterTypestatus").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "LetterTypestatus")));
	}

	@And("^Click On 'Add Product' Button2$")
	public void click_on_add_product_buuton2() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(
				driver.findElement(By.xpath("//div[@class='iframe-parent slds-template_iframe slds-card']//iframe")));
		Thread.sleep(3000);
		element("AddProductButton").click();
	}

	@And("^Select Product Name Form Strength SIG and Pill Qty1$")
	public void select_product_name_form_strength_sig_and_pill_qty1() throws Throwable {

		Select Drop1 = new Select(element("ProductNameDropDown1"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName1"));

		Select Drop2 = new Select(element("FormStrengthDropDown1"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength1"));

		Select Drop3 = new Select(element("SIGDropDown1"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

		element("PillQtyTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty"));

	}

	@And("^Select AppRX Checkbox>Set RX Date>Click on 'Save' Button1$")
	public void select_apprx_checkboxset_rx_dateclick_on_save_button1() throws Throwable {
		element("AppRXSignedChkBox1").click();
		element("RXDateLink1").click();

		element("ApplicationSaveButton").click();

		try {
			Thread.sleep(3000);
			System.out.println("save ");
			element("ApplicationSaveButton").click();
			Thread.sleep(8000);

		} catch (Exception e) {

		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Click on Attach Button1$")
	public void click_on_attach_button1() throws Throwable {
		Thread.sleep(2000);
		WebDriverWait wait = new WebDriverWait(driver, 50);
		wait.until(ExpectedConditions
				.elementToBeClickable((By.xpath("(//input[contains(@id,'attbtn') and @class='btn'])[2]"))));

		/*
		 * wait.until(ExpectedConditions.elementToBeClickable(
		 * (By.xpath("//input[@id='thePage:theForm:PB1:rep:0:attbtn']")) ));
		 */
		// element("ApplicationAttachButton").click();
		CommonMethods.ScrolDownToTheObject(element("ApplicationAttachButton1"));
		// CommonMethods.PerformClickOnObject(element("ApplicationAttachButton"));
		element("ApplicationAttachButton1").click();
	}

	@Then("^Select 'Original RX' 'GovernmentID' Click on 'save' Button1$")
	public void select_original_rx_governmentid_click_on_save_button1() throws Throwable {
		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("Application_OriginalRx"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_OriginalRx"),
				getDataFromExcel(ModuleName, TestCaseID, "OriginalRX"));
		CommonMethods.ScrolDownToTheObject(element("Application_GovID"));
		CommonMethods.selectFromDropDownByVisibleText(element("Application_GovID"),
				getDataFromExcel(ModuleName, TestCaseID, "GovID"));
		element("Application_RefillsButton").click();
		CommonMethods.selectFromDropDownByVisibleText(element("Application_RefillsButton"),
				getDataFromExcel(ModuleName, TestCaseID, "Refills"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// Thread.sleep(2000);

		// CommonMethods.ScrolDownToTheObject(element("ApplicationSaveButton"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// element("ApplicationSaveButton").click();

		// driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

		// driver.switchTo().frame(element("PractitionerInformationIframe"));

	}

	// Manjunath_done

	@Then("^Go back to case page ,check whether the CEP form Sent to Pfizer checkbox in checked AE information section in case page$")
	public void go_back_to_case_page_check_whether_the_cep_form_sent_to_pfizer_checkbox_in_checked_ae_information_section_in_case_page()
			throws Throwable {
		Thread.sleep(3000);
		// element("Casenumberlink1").click();
		WebDriverWait wait = new WebDriverWait(driver, 60);
		CommonMethods.PerformClickOnObject(objRepo.getCasePageObject().Casenumberlink1);
		// wait.until(ExpectedConditions.)
		Thread.sleep(3000);
		// assertTrue("CEP Form Sent to Pfizer checbox checked",
		// element("CEPformsenttopfizercheckbox").isDisplayed());
		assertTrue("CEP Form Sent to Pfizer checbox checked",
				objRepo.getCasePageObject().CEPformsenttopfizercheckbox.isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	// Manjunath_done
	@Then("^Go back to case page ,check whether the CEP form Sent to Pfizer checkbox in checked AE information section in case page1$")
	public void go_back_to_case_page_check_whether_the_cep_form_sent_to_pfizer_checkbox_in_checked_ae_information_section_in_case_page1()
			throws Throwable {
		Thread.sleep(5000);
		// element("Casenumberlink1").click();
		CommonMethods.PerformClickOnObject(element("Casenumberlink1"));
		assertTrue("CEP Form Sent to Pfizer checbox checked", element("CEPformsenttopfizercheckbox").isDisplayed());
	}

	// manjunath_done
	@Then("^Go back to case page, check whether 'AE Warm transfer to Pfizer - Unsuccessful' is unchecked$")
	public void go_back_to_case_page_check_whether_ae_warm_transfer_to_pfizer_unsuccessful_is_unchecked()
			throws Throwable {
		Thread.sleep(9000);
		// element("Casenumberlink1").click();
		CommonMethods.PerformClickOnObject(element("Casenumberlink2"));
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");
		assertTrue("AE warm Transfer unsuccessful checkbox unchecked",
				element("AEwarmtransferunsuccessfulcheckboxunchecked").isDisplayed());
	}

	@Then("^Go back to case page, check whether 'AE Warm transfer to Pfizer - Unsuccessful' is unchecked1$")
	public void go_back_to_case_page_check_whether_ae_warm_transfer_to_pfizer_unsuccessful_is_unchecked1()
			throws Throwable {
		Thread.sleep(9000);

		CommonMethods.PerformClickOnObject(element("Casenumberlink2"));
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");
		assertTrue("AE warm Transfer unsuccessful checkbox unchecked",
				element("AEwarmtransferunsuccessfulcheckboxunchecked1").isDisplayed());
	}

	// manjunath
	@Then("^Check whether the 'AE Date Sent to DSU' is automaticaly populated once the email is generated$")
	public void check_whether_the_ae_date_sent_to_dsu_is_automaticaly_populated_once_the_email_is_generated()
			throws Throwable {
		Thread.sleep(5000);
		driver.navigate().refresh();
		Thread.sleep(5000);
		assertTrue("AE Date sent to DSU is displayed", element("AedatesenttoDSU").isDisplayed());
	}

	// Manjunath

	@Then("^Check whether the AER number can be entered in the AER number field$")
	public void check_whether_the_aer_number_can_be_entered_in_the_aer_number_field() throws Throwable {
		Thread.sleep(3000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("AERnumbericon"));
		// element("AERnumbericon").click();
		element("AENumbertextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AENumbertextbox"));
		element("OrderIHSavebutton").click();
	}

	// Manjunath
	@Then("^Click on the 'Save Log' button without entering any values$")
	public void click_on_the_save_log_button_without_entering_any_values() throws Throwable {
		Thread.sleep(5000);
		element("SaveLogButton").click();
		Assert.assertTrue(
				element("Aeerrormessage").getText().contains(getDataFromExcel(ModuleName, TestCaseID, "ErrorMessage")));
	}

	// manjunath
	@Then("^Verify User is not able to enter information in Comments$")
	public void verify_user_is_not_able_to_enter_information_in_comments() throws Throwable {
		assertTrue("Comments box is diabled", driver.findElement(By.xpath("//textarea[@type='text']")).isDisplayed());
	}

	// manjunath
	@Then("^Verify the User is able to see 'Cancel' Button under 'Edit' Button before saving record$")
	public void verify_the_user_is_able_to_see_cancel_button_under_edit_button_before_saving_record() throws Throwable {
		assertTrue("Cancel button is displayed",
				driver.findElement(By.xpath("//input[@value='Cancel']")).isDisplayed());
		assertTrue("Edit button is displayed", driver.findElement(By.xpath("//input[@value='Edit']")).isDisplayed());
	}

	// manjunath
	@Then("^Verify User is able to Cancel or Undo the Activity Log by clicking on the 'Cancel' Button$")
	public void verify_user_is_able_to_cancel_or_undo_the_activity_log_by_clicking_on_the_cancel_button()
			throws Throwable {
		driver.findElement(By.xpath("//input[@value='Cancel']")).click();
	}

	// manjunath
	@Then("^send the query using query editor$")
	public void send_the_query_using_query_editor() throws Throwable {
		try {
			Thread.sleep(3000);
			CommonMethods.PerformClickOnObject(element("Filebutton"));
			CommonMethods.PerformClickOnObject(element("Closeallbutton"));
			Thread.sleep(5000);
			element("Queryeditortextbox").click();
			element("Queryeditortextbox").clear();
			element("Queryeditortextbox")
					.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Queryeditortextbox") + "'" + Variable1 + "'");
			// element("Queryeditortextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID,
			// "Queryeditortextbox"));
		} catch (Exception e) {
			Thread.sleep(3000);
			element("AppDevelopersConsoleErrormsgOk").click();
			Thread.sleep(3000);
			CommonMethods.PerformClickOnObject(element("Filebutton"));
			CommonMethods.PerformClickOnObject(element("Closeallbutton"));
			Thread.sleep(5000);
			element("Queryeditortextbox").click();
			element("Queryeditortextbox").clear();
			element("Queryeditortextbox")
					.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Queryeditortextbox") + "'" + Variable1 + "'");
			// element("Queryeditortextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID,
			// "Queryeditortextbox"));
		}

	}

	// Manjunath
	@Then("^Click on 'Execute' button$")
	public void click_on_execute_button() throws Throwable {
		Thread.sleep(5000);
		element("Executebutton").click();
	}

	// manjunath
	@Then("^Change the Start Date and End Date$")
	public void change_the_start_date_and_end_date() throws Throwable {
		Thread.sleep(5000);
		Actions assigner = new Actions(driver);
		assigner.moveToElement(element("Enrollmentstartdate"));
		assigner.doubleClick(element("Enrollmentstartdate")).perform();
		Thread.sleep(3000);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.build().perform();
		Thread.sleep(3000);
		assigner.sendKeys("2018-07-29");
		assigner.build().perform();
		Thread.sleep(3000);
		Actions assigner1 = new Actions(driver);
		assigner1.moveToElement(element("Enrollmentenddate"));
		assigner1.doubleClick(element("Enrollmentenddate")).perform();
		Thread.sleep(3000);
		assigner1.sendKeys(Keys.BACK_SPACE);
		assigner1.sendKeys(Keys.BACK_SPACE);
		assigner1.sendKeys(Keys.BACK_SPACE);
		assigner1.sendKeys(Keys.BACK_SPACE);
		assigner1.sendKeys(Keys.BACK_SPACE);
		assigner1.sendKeys(Keys.BACK_SPACE);
		assigner1.sendKeys(Keys.BACK_SPACE);
		assigner1.sendKeys(Keys.BACK_SPACE);
		assigner1.sendKeys(Keys.BACK_SPACE);
		assigner1.sendKeys(Keys.BACK_SPACE);
		assigner1.build().perform();
		Thread.sleep(3000);
		assigner1.sendKeys("2019-07-29");
		assigner1.build().perform();
		/*
		 * element("Enrollmentenddate").sendKeys(Keys.ENTER);
		 * element("Enrollmentenddate").sendKeys(Keys.ENTER);
		 * element("Enrollmentenddate").clear();
		 * element("Enrollmentenddate").sendKeys(getDataFromExcel(ModuleName,TestCaseID,
		 * "Enrollmentenddate"));
		 */
	}

	// manjunath
	@Then("^Click on the 'Save Row' button$")
	public void click_on_the_save_row_button() throws Throwable {
		Thread.sleep(3000);
		element("saverowsbutton").click();
		element("saverowsbutton").click();
		element("saverowsbutton").click();
		element("saverowsbutton").click();
	}

	// Manjunath_script
	@And("^Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button2$")
	public void set_field_to_npi_operator_to_contains_and_enter_any_value_click_on_search_button2() throws Throwable {

		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		Select Drop = new Select(element("SelectInWindow"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor"));

		Select Drop2 = new Select(element("NPIOperatorDropDown"));
		Drop2.selectByVisibleText("starts with");

		element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue"));
		element("SearchButton").click();
		Thread.sleep(2000);
		element("FirstPractitionersRow").click();
		Thread.sleep(2000);
		element("SecondaddFacilityrow").click();
		Thread.sleep(2000);
		element("FirstAddContactRow").click();
		Thread.sleep(2000);
		element("UpdateApplicationPrescriptionButton").click();

		driver.switchTo().window(winHandleBefore);
		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe
		// slds-card iframe-parent']//iframe")));
		// driver.switchTo().frame(element("ApplicationPageIframe"));
		driver.switchTo().frame(
				driver.findElement(By.xpath("//div[@class='iframe-parent slds-template_iframe slds-card']//iframe")));
	}

	// manjunath
	@Then("^Verify the Order details for the newly added product$")
	public void verify_the_order_details_for_the_newlu_added_product() throws Throwable {
		Thread.sleep(8000);

		driver.switchTo()
				.frame(driver.findElement(By.xpath("//section[@class='tabContent active oneConsoleTab']//iframe")));
		Thread.sleep(1000);
		/// Assert.assertTrue(element("ProdunameforHeparin").getText().contains(getDataFromExcel(ModuleName,
		/// TestCaseID, "ProdunameforHeparin")));
		// Assert.assertTrue(element("Strengthpcksizeheparin").getText().contains(getDataFromExcel(ModuleName,
		/// TestCaseID, "Strengthpcksizeheparin")));
		assertTrue(element("ProdunameforHeparin").isDisplayed(), "");
		assertTrue(element("Strengthpcksizeheparin").isDisplayed(), "");
	}

	@Then("^Click on the 'AE Status' dropdown field and select 'CEP Sent to Pfizer' value and click on the save button$")
	public void click_on_the_ae_status_dropdown_field_and_select_cep_sent_to_pfizer_value_and_click_on_the_save_button()
			throws Throwable {
		CommonMethods.PerformClickOnObject(element("Aestatusediticon"));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("Aestatusdropdown"));
		List<WebElement> DropDown1 = driver.findElements(By.xpath(
				"//label[text()='AE Status']//following::div[1]//child::div[@role='listbox']//child::lightning-base-combobox-item//child::span[@class='slds-media__body']"));
		CommonMethods.selectDropDownByValue(DropDown1, getDataFromExcel(ModuleName, TestCaseID, "Aestatusdropdown3"));

		CommonMethods.PerformClickOnObject(element("adverseeventsavebutton2"));
	}

	@And("^Select First Application ID$")
	public void select_first_application_id() throws Throwable {
		element("ApplicationsLink").click();
		driver.navigate().refresh();
		element("firstapplicationlink1").click();
	}

	@Then("^Click on the 'AE Status' dropdown field and select 'Not an AE' value and click on the save button$")
	public void click_on_the_ae_status_dropdown_field_and_select_not_an_ae_value_and_click_on_the_save_button()
			throws Throwable {
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("Aestatusediticon"));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("Aestatusdropdown"));
		List<WebElement> DropDown1 = driver
				.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
		CommonMethods.selectDropDownByValue(DropDown1, getDataFromExcel(ModuleName, TestCaseID, "Aestatusdropdown4"));
		CommonMethods.PerformClickOnObject(element("adverseeventsavebutton2"));
		// element("adverseeventsavebutton1").click();
	}
	/*
	 * @Then("^Search for the applicaton number and enter the details$") public void
	 * search_for_the_applicaton_number_and_enter_the_details() throws Throwable {
	 * 
	 * 
	 * 
	 * element("showNavigationMenuButton").click();
	 * 
	 * 
	 * 
	 * try { Thread.sleep(3000); element("GlobalSearchLink").click(); }
	 * catch(Exception e) { element("showNavigationMenuButton").click();
	 * element("GlobalSearchLink").click(); }
	 * 
	 * element("ApplicationRadioButton").click();
	 * 
	 * 
	 * 
	 * }
	 */

	@And("^Edit the Enrollment Start Date and End date in Devlopers console$")
	public void Edit_the_Enrollment_Start_Date_and_End_date_in_Devlopers_console() throws Throwable {

		/*
		 * JavascriptExecutor js=(JavascriptExecutor)driver;
		 * 
		 * String
		 * value="var btn = document.getElementsByClassName('x-grid-cell-inner ')[8];var doubleClickEvent = document.createEvent('MouseEvents');doubleClickEvent.initEvent('dblclick',true, true);btn.dispatchEvent(doubleClickEvent)"
		 * ; js.executeScript(value);
		 * 
		 * Actions action=new Actions(driver);
		 * action.sendKeys(element("Application_FirstRowOfDevelopeConsole"),Keys.CONTROL
		 * +"a"); action.sendKeys(Keys.DELETE).build().perform();
		 * action.keyDown(Keys.CONTROL).sendKeys(String.valueOf("2018-09-26")).perform()
		 * ;
		 * 
		 * String
		 * value1="var btn = document.getElementsByClassName('x-grid-cell-inner ')[9];var doubleClickEvent = document.createEvent('MouseEvents');doubleClickEvent.initEvent('dblclick',true, true);btn.dispatchEvent(doubleClickEvent)"
		 * ; js.executeScript(value1);
		 * action.sendKeys(element("Application_FirstRowOfDevelopeConsole"),Keys.CONTROL
		 * +"a"); action.sendKeys(Keys.DELETE).build().perform();
		 * action.keyDown(Keys.CONTROL).sendKeys(String.valueOf("2019-10-27")).perform()
		 * ;
		 */

		// ReusabilityMethods.UpdateQueryInAnonymousWindow(element("AppDriverApexCode"),
		// Variable1,getDataFromExcel(ModuleName, TestCaseID,
		// "EnrollmentStartDate"),getDataFromExcel(ModuleName, TestCaseID,
		// "EnrollmentStartEndDate") );
		// String value="327138";
		// ReusabilityMethods.UpdateQueryInAnonymousWindow(element("AppDriverApexCode"),value
		// ,getDataFromExcel(ModuleName, TestCaseID,
		// "EnrollmentStartDate"),getDataFromExcel(ModuleName, TestCaseID,
		// "EnrollmentEndDate") );

		Actions action = new Actions(driver);
		action.sendKeys(element("AppDriverApexCode"), Keys.CONTROL + "a");
		action.sendKeys(Keys.DELETE).build().perform();
		// action.keyDown(Keys.CONTROL).sendKeys(String.valueOf("List<Application__c>
		// applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C,
		// Account__r.Name,Active__C from Application__C where
		// Name='330246'];for(Application__C ap : applist){ap.EnrollmentDate__C =
		// Date.newInstance( 2018, 9, 25 );ap.Enrollment_EndDate__C = Date.newInstance(
		// 2019, 9, 24 );}Update applist;")).perform();
		action.keyDown(Keys.CONTROL).sendKeys(String.valueOf(
				"List<Application__c> applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C from Application__C where Name='"
						+ Variable1
						+ "'];for(Application__C ap : applist){ap.EnrollmentDate__C = Date.newInstance( 2018, 9, 25 );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 9, 24 );}Update applist;"))
				.perform();
		// element("AppDriverApexCode").sendKeys("List<Application__c> applist = [Select
		// id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C
		// from Application__C where Name='329849'];for(Application__C ap :
		// applist){ap.EnrollmentDate__C = Date.newInstance( 2018, 9, 25
		// );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 9, 24 );}Update
		// applist;");

		System.out.println(
				"List<Application__c> applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C from Application__C where Name='"
						+ Variable1
						+ "'];for(Application__C ap : applist){ap.EnrollmentDate__C = Date.newInstance( 2018, 9, 25 );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 9, 24 );}Update applist;");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);

	}

	@And("^Under Insurance Information > Select 'Yes' radio button > Click on 'save' Button $")
	public void under_insurance_information_select_Yes_radio_button_click_on_save_button() throws Throwable {

		element("Application_InsuranceYesRadioBtn").click();
		element("ApplicationSaveButton").click();
		System.out.println("Click On Save Button");

	}

	@Then("^Enter ApplicationID from DropDown$")
	public void Enter_ApplicationID_from_DropDown() throws Throwable {
		element("FieldDropdown").click();
		Thread.sleep(3000);
		CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "ApplicationDropdownValue1"));

		element("PatientValueTextBox1").clear();
		element("PatientValueTextBox1").sendKeys(Variable1);
		// element("PatientValueTextBox1").sendKeys("330028");
	}

	/*
	 * @Then("^In RenrollmentApplication Page > Click on 'Application insurances' >  'New'$"
	 * ) public void
	 * in_Rerolmentapplication_page_click_on_application_insurances_new() throws
	 * Throwable { Thread.sleep(2000); driver.navigate().refresh();
	 * element("Application_ReEnrollmentApplicationInsuranceLink").click();
	 * 
	 * element("DocumentsNewButton").click();
	 * 
	 * }changes made by vivek
	 */

	@And("^Click on Debug menu in Developers console$")
	public void click_on_debug_menu_in_developers_console() throws Throwable {
		element("AppDriverConsoleDebug").click();
	}

	@Then("^Click on Console Apex Window text$")
	public void click_on_console_apex_window_text() throws Throwable {
		element("AppDriverConsoleApexwindow").click();
		Thread.sleep(2000);
	}

	@Then("^Enter the query in apex code text box$")
	public void enter_the_query_in_apex_code_text_box() throws Throwable {
		Actions action = new Actions(driver);
		action.sendKeys(element("AppDriverApexCode"), Keys.CONTROL + "a");
		action.sendKeys(Keys.DELETE).build().perform();
		action.keyDown(Keys.CONTROL).sendKeys(String.valueOf(
				"List<Application__c> applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C from Application__C where Name='"
						+ Variable1
						+ "'];for(Application__C ap : applist){ap.EnrollmentDate__C = Date.newInstance( 2018, 9, 25 );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 9, 24 );}Update applist;"))
				.perform();
		// action.keyDown(Keys.CONTROL).sendKeys(String.valueOf("List<Application__c>
		// applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C,
		// Account__r.Name,Active__C from Application__C where
		// Name='330247'];for(Application__C ap : applist){ap.EnrollmentDate__C =
		// Date.newInstance( 2018, 9, 25 );ap.Enrollment_EndDate__C = Date.newInstance(
		// 2019, 9, 24 );}Update applist;")).perform();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);

		// element("AppDriverApexCode").sendKeys(getDataFromExcel(ModuleName,TestCaseID,
		// "Query")+"'"+Variable1+"'");
	}

	@And("^click on Execute$")
	public void click_on_execute() throws Throwable {
		element("AppDriverOpenLogCheckbox").click();
		element("AppDriverOpenLogCheckbox").click();

		driver.findElement(By.xpath("(//span[text()='Execute'])[2]")).click();
		Thread.sleep(10000);

	}

	@And("^Click on 'PAP Determine Outcom' Button after attach$")
	public void click_on_pap_determine_outcom_button_after_attach() throws Throwable {
		// driver.switchTo().frame(3);
		// element("PAPDetermineOutcomeButton").click();
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

		driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(
				ExpectedConditions.visibilityOfElementLocated((By.xpath("//input[@value='PAP Determine Outcome']"))));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,800)");
		CommonMethods.ScrolDownToTheObject(element("PAPDetermineOutcomeButton"));
		try {
			CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));
		} catch (Exception e) {
			WebDriverWait wait1 = new WebDriverWait(driver, 20);
			wait1.until(ExpectedConditions.elementToBeClickable(element("PAPDetermineOutcomeButton")));
			CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));
		}

	}

	// Vivek code
	@Then("^Search for the applicaton number and enter the details$")
	public void search_for_the_applicaton_number_and_enter_the_details() throws Throwable {

		element("showNavigationMenuButton").click();
		element("GlobalSearchLink").click();
		Thread.sleep(3000);
		try {
			element("CasedropdownLink");
			element("showNavigationMenuButton").click();
			element("GlobalSearchLink").click();

		} catch (Exception e) {
			element("showNavigationMenuButton").click();
			element("GlobalSearchLink").click();
		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);

		driver.switchTo().frame(0);
		WebDriverWait wait = new WebDriverWait(driver, 20);
		wait.until(ExpectedConditions.elementToBeClickable(element("AppGlobleApplicationRadioButton")));
		element("AppGlobleApplicationRadioButton").click();
		Thread.sleep(3000);

		element("FieldDropdown").click();
		Thread.sleep(3000);
		CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "AppFieldOption"));
		Thread.sleep(5000);
		element("Valuetxtbox").sendKeys(Variable1);
		// element("Valuetxtbox").sendKeys("330247");
		element("AppLicationnumberSearch").click();
		Thread.sleep(2000);

		element("SearchedApplicationNumber").click();
		Thread.sleep(2000);
		driver.switchTo().defaultContent();

	}

	@And("^Edit the Enrollment Start Date In Developer console$")
	public void edit_the_enrollment_start_date_in_developer_console() throws Throwable {
		Actions assigner = new Actions(driver);
		assigner.moveToElement(element("AppEnrollStartDateDeveloper"));
		assigner.doubleClick(element("AppEnrollStartDateDeveloper")).perform();

		Thread.sleep(3000);
		// assigner.sendKeys(Keys.CONTROL,"a");
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.build().perform();
		Thread.sleep(3000);

		assigner.sendKeys("2017-09-25");
		assigner.build().perform();
	}

	@And("^Edit the ReEnrollment Start Date In Developer console$")
	public void edit_the_reenrollment_start_date_in_developer_console() throws Throwable {
		Actions assigner = new Actions(driver);
		assigner.moveToElement(element("AppEnrollStartDateDeveloper"));
		assigner.doubleClick(element("AppEnrollStartDateDeveloper")).perform();

		Thread.sleep(3000);
		// assigner.sendKeys(Keys.CONTROL,"a");
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.sendKeys(Keys.BACK_SPACE);
		assigner.build().perform();
		Thread.sleep(3000);

		assigner.sendKeys("2018-09-10");
		assigner.build().perform();
	}

	@And("^Edit the ReEnrollment End date in Devlopers console$")
	public void edit_the_reenrollment_end_date_in_devlopers_console() throws Throwable {
		Actions assigner = new Actions(driver);
		assigner.moveToElement(element("AppEnrollmentdatedevloper"));
		assigner.doubleClick(element("AppEnrollmentdatedevloper")).perform();

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].textContent = '2019-09-09';", element("AppEnrollmentdatedevloper"));

	}

	@Then("^Navigate to application page and click on Cancel application tab$")
	public void navigate_to_application_page_and_click_on_cancel_application_tab() throws Throwable {
		Thread.sleep(7000);
		element("AppCancelApplication").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on cancel application checkbox and select reason and click on Save$")
	public void click_on_cancel_application_checkbox_and_select_reason_and_click_on_save() throws Throwable {
		Thread.sleep(3000);
		element("AppCancelApplication").click();
		Select Drop = new Select(element("AppCancelReasonDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "CancelReason"));
		Thread.sleep(2000);
		element("AppCancelSaveButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on 'Attach Case' Button  > Select the type of document as Pap appeal > click on 'Attach' Button$")
	public void click_on_attach_case_button_select_the_type_of_document_as_pap_appeal_click_on_attach_button()
			throws Throwable {
		element("FirstAttachCase").click();
		/*
		 * DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy"); Date date = new
		 * Date(); System.out.println(dateFormat.format(date));
		 * 
		 * element("CasePage_ApplicationSignatureDateTxtBx").sendKeys(dateFormat.format(
		 * date));
		 */
		element("AppPAPAppealDocument").click();
		// element("Re-enrollmentCheckBox").click();
		element("InsuranceInformationCheckBox").click();
		element("AttachButton").click();

	}

	@Then("^click on the account name$")
	public void click_on_the_account_name() throws Throwable {
		Thread.sleep(10000);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.elementToBeClickable(element("AppAccountName")));
		CommonMethods.PerformClickOnObject(element("AppAccountName"));
		// element("AppAccountName").click();
	}

	@Then("^Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Incomplete > Enter Total OOPE > Click on save button$")
	public void select_reason_for_pap_appeal_as_loe_appeal_select_appeal_status_as_incomplete_enter_total_oope_click_on_save_button()
			throws Throwable {

		try {
			driver.switchTo().frame(element("PatientPageIframe"));
		} catch (Exception e) {

		}
		element("SelectLOEAppealInDropdown").click();
		element("ReasonForPAPAppealAddButton").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "Appeal Status2"));
		element("AppealsSaveButton").click();
	}

	@Then("^select Home Delivery Appeal from Dropdown and verify the error msg$")
	public void select_home_delivery_appeal_from_dropdown_and_verify_the_error_msg() throws Throwable {
		Thread.sleep(5000);
		driver.navigate().refresh();
		Thread.sleep(8000);

		try {
			driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
			Select Drop1 = new Select(element("AppealTypeDropDown"));
			Drop1.selectByVisibleText("Home Delivery Appeal");
			Assert.assertTrue(element("AppProductappealerror").isDisplayed());

		} catch (Exception e) {
			// driver.switchTo().frame(element("Frame_TypeOfAppeal"));
			// driver.switchTo().frame(element("PatientPageIframe"));
			Thread.sleep(3000);
			Select Drop1 = new Select(element("AppealTypeDropDown"));
			Drop1.selectByVisibleText("Home Delivery Appeal");
			Assert.assertTrue(element("AppProductappealerror").isDisplayed());

		}
//		driver.switchTo().frame(element("Frame_TypeOfAppeal"));
//		Select Drop1 = new Select(element("AppealTypeDropDown"));
//		Drop1.selectByVisibleText("Home Delivery Appeal");
//		Assert.assertTrue(element("AppProductappealerror").isDisplayed());
	}
	@Then("^select Enrollment Appeal from Dropdown and verify the Following fields$")
	public void select_enrollment_appeal_from_dropdown_and_verify_the_following_fields() throws Throwable {
		Thread.sleep(5000);
		driver.navigate().refresh();
		Thread.sleep(8000);

		try {
			driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
			Select Drop1 = new Select(element("AppealTypeDropDown"));
			Drop1.selectByVisibleText("Enrollment Appeal");

		} catch (Exception e) {
			// driver.switchTo().frame(element("Frame_TypeOfAppeal"));
			// driver.switchTo().frame(element("PatientPageIframe"));
			Thread.sleep(3000);
			Select Drop1 = new Select(element("AppealTypeDropDown"));
			Drop1.selectByVisibleText("Enrollment Appeal");

		}
		Thread.sleep(3000);
		Assert.assertTrue(element("AppEnrollmentInfo").isDisplayed());
		Assert.assertTrue(element("AppAppealInfo").isDisplayed());
		Assert.assertTrue(element("AppAppealStatusInfo").isDisplayed());
		Assert.assertTrue(element("AppLevel2Info").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the following fields Enrollment info >appeal info$")
	public void verify_the_following_fields_enrollment_info_appeal_info() throws Throwable {
		Assert.assertTrue(element("AppEnrollmentInfo").isDisplayed());
		Assert.assertTrue(element("AppAppealInfo").isDisplayed());
		Assert.assertTrue(element("AppAppealStatusInfo").isDisplayed());
		Assert.assertTrue(element("AppLevel2Info").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the following fields under Enrollment info >patient name>patient id>HH size$")
	public void verify_the_following_fields_under_enrollment_info_patient_namepatient_idhh_size() throws Throwable {
		Assert.assertTrue(element("AppEnrollINFOPatientName").isDisplayed());
		Assert.assertTrue(element("AppEnrollINFOPatientID").isDisplayed());
		Assert.assertTrue(element("AppEnrollINFOApplicationNumber").isDisplayed());
		Assert.assertTrue(element("AppEnrollINFOReasonDenial").isDisplayed());
		Assert.assertTrue(element("AppEnrollINFOHHSize").isDisplayed());
		Assert.assertTrue(element("AppEnrollINFOHHIncome").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the following fields under Appeal info >Available reason>Available documents$")
	public void verify_the_following_fields_under_appeal_info_available_reasonavailable_documents() throws Throwable {
		Assert.assertTrue(element("AppAppealInfoAvailableReason").isDisplayed());
		Assert.assertTrue(element("AppAppealInfoAvailableDocuments").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the following fields under Appeal Status info >Appeal Status>Appeal Date etc$")
	public void verify_the_following_fields_under_appeal_status_info_appeal_statusappeal_date_etc() throws Throwable {
		Assert.assertTrue(element("AppAppealStatusinfoAppealStatus").isDisplayed());
		Assert.assertTrue(element("AppAppealStatusinfoAppealDate").isDisplayed());
		Assert.assertTrue(element("AppAppealStatusinfototaloope").isDisplayed());
		Assert.assertTrue(element("AppAppealStatusinfoAppealUpdate").isDisplayed());
		Assert.assertTrue(element("AppAppealStatusinfoActivityNote").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the following fields under Level 2 Appeals >Client Appeals Checkbox$")
	public void verify_the_following_fields_under_level_2_appeals_client_appeals_checkbox() throws Throwable {
		element("AppLevel2Info").click();
		Assert.assertTrue(element("AppAppealLevel2ClientAppeal").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select Approval Status as Incomplete in Appeal page$")
	public void select_approval_status_as_incomplete_in_appeal_page() throws Throwable {
		element("AppAppealReason").click();
		element("ReasonForPAPAppealAddButton").click();
		element("AppAppealDateCompleted").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^select Outreach as outbound call$")
	public void select_outreach_as_outbound_call() throws Throwable {
		Thread.sleep(2000);
		CommonMethods.selectFromDropDownByVisibleText(element("AppAppealOutreachDropbox"),
				getDataFromExcel(ModuleName, TestCaseID, "Outreach"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Appeal Save Button$")
	public void click_on_appeal_save_button() throws Throwable {
		element("AppealsSaveButton").click();
	}

	@Then("^Verify that Outreach Dropbox is displaying$")
	public void verify_that_outreach_dropbox_is_displaying() throws Throwable {
		Thread.sleep(2000);
		Assert.assertTrue(element("AppAppealOutreachDropbox").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^fetch the Case number created$")
	public void fetch_the_case_number_created() throws Throwable {
		Variable2 = element("AppCaseNumber").getText();
		System.out.println(Variable2);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Search for the case number in appeal cases$")
	public void search_for_the_case_number_in_appeal_cases() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().defaultContent();
		Thread.sleep(2000);
		element("AppAppealCaseSearch").sendKeys(Variable2 + Keys.ENTER);
		
		Robot r = new Robot();
		r.keyPress(KeyEvent.VK_ENTER);
		
		Thread.sleep(4000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify following fields are displayed in Outreach$")
	public void verify_following_fields_are_displayed_in_outreach() throws Throwable {
		element("AppAppealOutreachDropbox").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Add some notes in Activity note text box$")
	public void add_some_notes_in_activity_note_text_box() throws Throwable {
		Thread.sleep(2000);
		// driver.switchTo().defaultContent();
		CommonMethods.ScrolDownToTheObject(element("AppActivityNoteTextarea"));
		element("AppActivityNoteTextarea").click();
		element("AppActivityNoteTextarea").sendKeys("Testing");

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that in Comments column there is outreach activity notes$")
	public void verify_that_in_comments_column_there_is_outreach_activity_notes() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		Assert.assertTrue(element("AppActivtyLogsComments").isDisplayed());
		// CommonMethods.ScrolDownToTheObject(element("AppActivtyLogsComments"));
		Assert.assertTrue(element("AppActivtyLogsComments").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Comments")));
	}

	@Then("^Verify that in Comments column there is outreach activity notes for activity comments$")
	public void verify_that_in_comments_column_there_is_outreach_activity_notes_for_activity_comments()
			throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		Assert.assertTrue(element("AppActivtyLogsComments").isDisplayed());
	}

	@Then("^click on application id under outcome validation logs$")
	public void click_on_application_id_under_outcome_validation_logs() throws Throwable {
		element("AppApplicationIdLogs").click();
	}

	@Then("^Select Outreach as Others$")
	public void select_outreach_as_others() throws Throwable {
		Thread.sleep(2000);
		CommonMethods.selectFromDropDownByVisibleText(element("AppAppealOutreachDropbox"),
				getDataFromExcel(ModuleName, TestCaseID, "Outreach2"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that in Comments column there is outreach2 activity notes$")
	public void verify_that_in_comments_column_there_is_outreach2_activity_notes() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		Assert.assertTrue(element("AppActivtyLogsComments").isDisplayed());
		// CommonMethods.ScrolDownToTheObject(element("AppActivtyLogsComments"));
		Assert.assertTrue(element("AppActivtyLogsComments").getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Comments2")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}
	// @Then("^Click on Add New log button$")
	// public void click_on_add_new_log_button() throws Throwable {

	// }
	@And("^Verify that Appeal note is present in Activity code Dropdown$")
	public void verify_that_appeal_note_is_present_in_activity_code_dropdown() throws Throwable {
		Thread.sleep(2000);
		Select Drop1 = new Select(element("AppActivityCodeDropdown"));
		Drop1.selectByVisibleText("Appeal Notes");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Add comments in Activity logs$")
	public void add_comments_in_activity_logs() throws Throwable {
		Thread.sleep(2000);
		// driver.switchTo().defaultContent();
		// CommonMethods.ScrolDownToTheObject(element("AppActivityLogComment"));
		element("AppActivityLogComment").click();
		element("AppActivityLogComment").sendKeys("Automation");
	}

	@Then("^Fetch the Application Number from outcome Validation Logs Page$")
	public void fetch_the_application_number_from_outcome_validation_logs_page() throws Throwable {
		Variable1 = element("AppApplicationIdLogs").getText();
		System.out.println(Variable1);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^get ApplicationId$")
	public void get_applicationid() throws Throwable {
		Thread.sleep(8000);

		// driver.switchTo().frame(driver.findElement(By.xpath("//section[@class='tabContent
		// active oneConsoleTab']//iframe")));

		ApplicationIDs = element("ApplicationIdLink1").getText();
		Thread.sleep(3000);
		// System.out.println("PatientIDs====" +PatientIds);

	}

	@Then("^Click on the view orders$")
		public void click_on_the_view_orders() throws Throwable {
			Thread.sleep(7000);
			for (String winHandle : driver.getWindowHandles()) {
				driver.switchTo().window(winHandle);
			}
			driver.manage().window().maximize();
			CommonMethods.PerformClickOnObject(element("OrderProduct_ViewOrder"));
			Thread.sleep(4000);
		}

	@Then("^select Application>>Field>>Value>>Search$")
	public void select_Application_Field_Value_Search() throws Throwable {

		Thread.sleep(3000);

		driver.switchTo().frame(0);

		// WebDriverWait wait = new WebDriverWait(driver, 30);
		// wait.until(ExpectedConditions.elementToBeClickable(element("OrderRadiobutton")));
		element("ApplicationRadioButton").click();
		// ApplicationRadioButton

		Thread.sleep(3000);
		element("FieldDropdown").click();

		CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "Application ID"));

		// Application ID
		Thread.sleep(2000);

		element("Valuetxtbox").sendKeys(ApplicationPage.ApplicationIDs);

		// element("Valuetxtbox").sendKeys("333921");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);

	}

	// <<<<<<<<<<<<<<<<<<<<<sourav code oct
	// 24th>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

	@And("^Do Click on 'PAP Determine Outcom' Button$")
	public void do_click_on_pap_determine_outcom_button() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));
	}

	@And("^Navigate to Previous Tab$")
	public void navigate_to_previous_tab() throws Throwable {
		Thread.sleep(4000);
		Set<String> totalwindows = driver.getWindowHandles();
		ArrayList<String> handles = new ArrayList<String>(totalwindows);
		driver.switchTo().window(handles.get(0));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// driver.manage().window().maximize();
		Thread.sleep(10000);
	}

	@And("^Check whether Logs are displayed$")
	public void check_whether_logs_are_displayed() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("ApplicationServicePageIframe"));
		Assert.assertTrue(element("AppOutcomeValidtionsLogs").isDisplayed(), "log section should be displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^please Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button And please Set 'Field' to 'NPI' > Operator to 'contains' > and enter any value > Click on 'Search' Button $")
	public void please_set_field_to_npi_operator_to_contains_and_enter_any_value_click_on_search_buttonand_please_set_field_to_npi_operator_to_contains_and_enter_any_value_click_on_search_button()
			throws Throwable {
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		Select Drop = new Select(element("SelectInWindow"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchFor"));

		Select Drop2 = new Select(element("NPIOperatorDropDown"));
		Drop2.selectByVisibleText("starts with");
		// Thread.sleep(7000);
		element("FirstValueTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NPIValue1"));
		// Thread.sleep(7000);
		CommonMethods.PerformClickOnObject(element("SearchButton"));
		Thread.sleep(2000);
		element("FirstPractitionersRow").click();
		Thread.sleep(2000);
		element("FirstAddFacilityRow").click();
		Thread.sleep(2000);
		element("FirstAddContactRow").click();
		Thread.sleep(2000);
		element("UpdateApplicationPrescriptionButton").click();

		driver.switchTo().window(winHandleBefore);
		// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template_iframe
		// slds-card iframe-parent']//iframe")));
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}

	@Then("^Verify Checkbox is not selected and date is not set$")
	public void verify_checkbox_is_not_selected_and_date_is_not_set() throws Throwable {
		assertTrue("CheckBox is not Selected", !element("PrescriberConsonentSignChkBox").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Do Select Product Name Form Strength SIG and Pill Qty$")
	public void do_select_product_name_form_strength_sig_and_pill_qty() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName1"));

		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength1"));

		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty"));
	}

	@And("^Click on PAP APEEAL$")
	public void click_on_pap_apeeal() throws Throwable {
		driver.switchTo().defaultContent();
		Thread.sleep(10000);
		element("PAPAppeal").click();
	}

	@And("^Check The Fields$")
	public void check_the_fields() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Enrollment Appeal");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(6000);
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		element("AppealInformation").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(6000);
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		element("Appealstatus").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^check The dropdown status$")
	public void check_the_dropdown_status() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Enrollment Appeal");
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Approved");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^select appeal cases and click on acountname$")
	public void select_appeal_cases_and_click_on_acountname() throws Throwable {
		try {
			element("CasesListViewDropdown").click();
			element("Appealcasesoption").click();
			CommonMethods.PerformClickOnObject(element("Acountname"));
			element("Appsids").click();
		} catch (Exception e) {
			driver.switchTo().alert().accept();
			driver.navigate().back();
			element("CasesListViewDropdown").click();
			element("Appealcasesoption").click();
			CommonMethods.PerformClickOnObject(element("Acountname"));
			element("Appsids").click();
		}
	}

	@Then("^Check the Reasons$")
	public void check_the_reasons() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Enrollment Appeal");
		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(6000);
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Check the Documents$")
	public void check_the_documents() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Enrollment Appeal");
		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(6000);
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Select s1 = new Select(driver.findElement(By.xpath("(//select[@class='lightningCustomClass'])[3]")));
		s1.selectByVisibleText("Letter of Appeal");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(4000);
		s1.selectByVisibleText("Letter of medical necessity");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(4000);
		s1.selectByVisibleText("No document – Income under 406%");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(4000);
		s1.selectByVisibleText("Other documents");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(4000);
		s1.selectByVisibleText("Proof of direct deposit of pension or SS");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(4000);
		s1.selectByVisibleText("Social security award letter");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(4000);
		s1.selectByVisibleText("State unemployment award letter");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^select Avalaible Documents$")
	public void select_avalaible_documents() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Enrollment Appeal");
		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(6000);
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Select s1 = new Select(driver.findElement(By.xpath("(//select[@class='lightningCustomClass'])[3]")));
		s1.selectByVisibleText("Exhausted unemployment letter");
		s1.selectByVisibleText("Legal separation, divorce decree or death certificate");
		s1.selectByVisibleText("PAP Appeals Form");
		s1.selectByVisibleText("Letter from patient");
		s1.selectByVisibleText("Letter from prescriber");
		s1.selectByVisibleText("Letter from previous employer");
		s1.selectByVisibleText("Letter of Appeal");
		s1.selectByVisibleText("Letter of medical necessity");
		s1.selectByVisibleText("No document – Income under 406%");
		s1.selectByVisibleText("Other documents");
		s1.selectByVisibleText("Proof of direct deposit of pension or SS");
		s1.selectByVisibleText("Social security award letter");
		s1.selectByVisibleText("State unemployment award letter");

	}

	@Then("^Enter all the fields$")
	public void enter_all_the_fields() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Enrollment Appeal");
		// element("Dateappealtextb0x").sendKeys("10/20/2019");
		Select d = new Select(driver.findElement(By.xpath("(//select[@title='Reason For Appeal - Available'])")));
		d.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[1]")).click();

		Select f = new Select(
				driver.findElement(By.xpath("//select[@title='Type of Document Received Pfizer - Available']")));
		f.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[2]")).click();

		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Approved");
		// element("savebutton").click();
		// clicking on save button
		driver.findElement(By.xpath("//input[@class='btn appealSaveBtn']")).click();
	}

	@Then("^clicks on save$")
	public void clicks_on_save() throws Throwable {
		element("ApplicationSaveButton").click();
	}

	@Then("^Verify Agent is not able to create order$")
	public void verify_agent_is_not_able_to_create_order() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Enrollment Appeal");
		// verifying the error msg
		Assert.assertTrue(
				driver.findElement(By.xpath("//*[text()='Only Denied Application is eligible for PAP Appeal']"))
						.isDisplayed(),
				"application should be denied");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	// <<<<<end of sourav code>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

	// <<2nd merging vivek code>>>>>
	@And("^Select Approval Status as Pending pfizer Review in Appeal page$")
	public void select_approval_status_as_pending_pfizer_review_in_appeal_page() throws Throwable {
		element("AppAppealReason").click();
		element("ReasonForPAPAppealAddButton").click();
		element("AppAppealDateCompleted").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Check the Client Appeals Checkbox$")
	public void check_the_client_appeals_checkbox() throws Throwable {
		element("AppLevel2Info").click();
		element("AppAppealLevel2ClientAppeal").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select Approval Status as Denied in Appeal page$")
	public void select_approval_status_as_denied_in_appeal_page() throws Throwable {
		element("AppAppealReason").click();
		element("ReasonForPAPAppealAddButton").click();
		element("AppAppealDateCompleted").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the Error msg re enrollment sent too early in ovm$")
	public void verify_the_error_msg_re_enrollment_sent_too_early_in_ovm() throws Throwable {
		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		// CommonMethods.ScrolDownToTheObject(element("SaveoutComeButton"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Assert.assertTrue(element("AppOVMReenrollmentTooEarly").isDisplayed());
		// element("AppOVMReenrollmentTooEarly").click();
	}

	@Then("^Verify that reenrollment start date will be current application expire 365 days$")
	public void verify_that_reenrollment_start_date_will_be_current_application_expire_365_days() throws Throwable {
		Thread.sleep(3000);
		Assert.assertTrue(element("ApplicationEnrollmentStartDate").isDisplayed());
		Assert.assertTrue(element("ApplicationEnrollmentEndDate").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that reenrollment end date will be year end$")
	public void verify_that_reenrollment_end_date_will_be_year_end() throws Throwable {
		Thread.sleep(3000);
		Assert.assertTrue(element("ApplicationEnrollmentStartDate").isDisplayed());
		Assert.assertTrue(element("ApplicationEnrollmentEndDate").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	// <<<<end of vivek code>>>>>>>

	// <<<sourav code for 2nd merging>>>>

	@Then("^Verify the Status$")
	public void verify_the_status() throws Throwable {
		Thread.sleep(5000);

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		Thread.sleep(1000);
		driver.manage().window().maximize();
		Assert.assertTrue(
				driver.findElement(By.xpath("//span[.='Denied because patient is not US Resident']")).isDisplayed(),
				"message should be denied");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Do Select Product Name Form Strength SIG and Pill Qty1$")
	public void do_select_product_name_form_strength_sig_and_pill_qty1() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName"));

		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength"));

		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

	}

	@And("^please Select Product Name Form Strength SIG and Pill Qty$")
	public void please_select_product_name_form_strength_sig_and_pill_qty() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown1"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName1"));

		Select Drop2 = new Select(element("FormStrengthDropDown1"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength1"));

		Select Drop3 = new Select(element("SIGDropDown1"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

		element("PillQtyTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty"));

		element("AppRXSignedChkBox1").click();
		element("RXDateLink1").click();

		element("ApplicationSaveButton").click();

		try {
			Thread.sleep(3000);
			System.out.println("save ");
			element("ApplicationSaveButton").click();
			Thread.sleep(8000);

		} catch (Exception e) {

		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Switch on to the frame$")
	public void switch_on_to_the_frame() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}

	@Then("^click on app prescription$")
	public void click_on_app_prescription() throws Throwable {
		Thread.sleep(7000);
		CommonMethods.PerformClickOnObject(element("ApplicationPrescriptionID"));
	}

	@Then("^Do Enter all the fields$")
	public void do_enter_all_the_fields() throws Throwable {
		
		Thread.sleep(6000);
		driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Select s = new Select(element("TypeOfAppealDropDown"));
		s.selectByVisibleText("Product Appeal");
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("document.getElementsByClassName('ProductListChk')[0].click()");
		Select d = new Select(driver.findElement(By.xpath("(//select[@title='Reason For Appeal - Available'])")));
		d.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[1]")).click();
		Select f = new Select(
		driver.findElement(By.xpath("//select[@title='Type of Document Received Pfizer - Available']")));
		f.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[2]")).click();
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Approved");
		driver.findElement(By.xpath("//input[@class='btn appealSaveBtn']")).click();
	}

	@And("^Do Click on Attach Button$")
	public void do_click_on_attach_button() throws Throwable {
		Thread.sleep(2000);
		WebDriverWait wait = new WebDriverWait(driver, 50);
		wait.until(ExpectedConditions
				.elementToBeClickable((By.xpath("(//input[contains(@id,'attbtn') and @class='btn'])[2]"))));

		/*
		 * wait.until(ExpectedConditions.elementToBeClickable(
		 * (By.xpath("//input[@id='thePage:theForm:PB1:rep:0:attbtn']")) ));
		 */
		// element("ApplicationAttachButton").click();
		CommonMethods.ScrolDownToTheObject(element("ApplicationAttachButton1"));
		// CommonMethods.PerformClickOnObject(element("ApplicationAttachButton"));
		element("ApplicationAttachButton1").click();
	}

	@Then("^Verify that no order for product2$")
	public void verify_that_no_order_for_product2() throws Throwable {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,400)");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^please Enter all the Fields$")
	public void please_enter_all_the_fields() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Product Appeal");
		// element("Dateappealtextb0x").sendKeys("10/20/2019");

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("document.getElementsByClassName('ProductListChk')[0].click()");
		js.executeScript("document.getElementsByClassName('ProductListChk')[1].click()");

		Select d = new Select(driver.findElement(By.xpath("(//select[@title='Reason For Appeal - Available'])")));
		d.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[1]")).click();

		Select f = new Select(
				driver.findElement(By.xpath("//select[@title='Type of Document Received Pfizer - Available']")));
		f.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[2]")).click();

		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Approved");
		// element("savebutton").click();
		// clicking on save button
		driver.findElement(By.xpath("//input[@class='btn appealSaveBtn']")).click();
	}

	@And("^Verify the correct reason$")
	public void verify_the_correct_reason() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Product Appeal");

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify the fields$")
	public void verify_the_fields() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Product Appeal");
		Thread.sleep(6000);
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		Assert.assertTrue(driver.findElement(By.xpath("//b[.='Available Reasons']")).isDisplayed(),
				"Avalaible reasons should be displayed");
		Assert.assertTrue(driver.findElement(By.xpath("//b[.='Selected Reasons']")).isDisplayed(),
				"Selected Reasons should be displayed");
		Select f = new Select(
				driver.findElement(By.xpath("//select[@title='Type of Document Received Pfizer - Available']")));
		f.selectByVisibleText("Exhausted unemployment letter");
		f.selectByVisibleText("Legal separation, divorce decree or death certificate");
		f.selectByVisibleText("PAP Appeals Form");
		f.selectByVisibleText("Letter from patient");
		f.selectByVisibleText("Letter from prescriber");
		f.selectByVisibleText("Letter from previous employer");
		f.selectByVisibleText("Letter of Appeal");
		f.selectByVisibleText("Letter of medical necessity");
		f.selectByVisibleText("No document – Income under 406%");
		f.selectByVisibleText("Other documents");
		f.selectByVisibleText("Proof of direct deposit of pension or SS");
		f.selectByVisibleText("Social security award letter");
		f.selectByVisibleText("State unemployment award letter");

		Assert.assertTrue(
				driver.findElement(By.xpath("//label[.='Date Appeal Completed :']/../div/span/input")).isDisplayed(),
				"Appeal completed checkbox should be displayed");

	}

	@Then("^Verify the Reasons$")
	public void verify_the_reasons() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Product Appeal");
		Thread.sleep(6000);
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^verify user is able to select documents$")
	public void verify_user_is_able_to_select_documents() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Product Appeal");
		Thread.sleep(6000);
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		Select f = new Select(
				driver.findElement(By.xpath("//select[@title='Type of Document Received Pfizer - Available']")));
		f.selectByVisibleText("Exhausted unemployment letter");
		f.selectByVisibleText("Legal separation, divorce decree or death certificate");
		f.selectByVisibleText("PAP Appeals Form");
		f.selectByVisibleText("Letter from patient");
		f.selectByVisibleText("Letter from prescriber");
		f.selectByVisibleText("Letter from previous employer");
		f.selectByVisibleText("Letter of Appeal");
		f.selectByVisibleText("Letter of medical necessity");
		f.selectByVisibleText("No document – Income under 406%");
		f.selectByVisibleText("Other documents");
		f.selectByVisibleText("Proof of direct deposit of pension or SS");
		f.selectByVisibleText("Social security award letter");
		f.selectByVisibleText("State unemployment award letter");
	}

	@Then("^Verify user is able to select$")
	public void verify_user_is_able_to_select() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Product Appeal");
		Thread.sleep(6000);
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Approved");
	}

	@Then("^please fill the fields$")
	public void please_fill_the_fields() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Product Appeal");
		// element("Dateappealtextb0x").sendKeys("10/20/2019");

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("document.getElementsByClassName('ProductListChk')[0].click()");
		// js.executeScript("document.getElementsByClassName('ProductListChk')[1].click()");

		Select d = new Select(driver.findElement(By.xpath("(//select[@title='Reason For Appeal - Available'])")));
		d.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[1]")).click();

		Select f = new Select(
				driver.findElement(By.xpath("//select[@title='Type of Document Received Pfizer - Available']")));
		f.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[2]")).click();

		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Incomplete");
		// element("savebutton").click();
		Select g = new Select(driver.findElement(By.xpath("//select[@class='outreach']")));
		g.selectByVisibleText("Outbound Call");
		// clicking on save button
		driver.findElement(By.xpath("//input[@class='btn appealSaveBtn']")).click();
	}

	@And("^please Click On First Patient$")
	public void please_click_on_first_patient() throws Throwable {

		element("NewButton").click();
		// driver.findElement(By.xpath("//label//span[.='Inbound Case']")).click();
		CommonMethods.PerformClickOnObject(element("Inboundcase"));
		Thread.sleep(2000);
		element("NextButton").click();
		assertTrue("Case Information Page is displayed", element("CaseInformationPageHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Edit Case Page is Displayed");
		JavascriptExecutor js = (JavascriptExecutor) driver;

		// js.executeScript("document.getElementsByClassName('select')[3].click()");

		// js.executeScript("document.querySelectorAll('[title=\\\"Yes\\\"]')[0].click()");

		element("ClientTextBx").click();
		element("ClientTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ClientName"));

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
		try {
			element("SearchedValuefromTextBox").click();
		} catch (Exception e) {
			element("ClientTextBx").click();
			element("ClientTextBx").clear();
			element("ClientTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ClientName"));
			element("SearchedValuefromTextBox").click();
		}
		System.out.println("Client is selected");
		CommonMethods.ScrolDownToTheObject(element("ProgramTextBx"));
		element("ProgramTextBx").click();
		element("ProgramTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ProgramName"));

		try {
			element("SearchedValuefromTextBox").click();

		} catch (Exception e) {
			element("ProgramTextBx").click();
			element("ProgramTextBx").clear();
			element("ProgramTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ProgramName"));
			element("SearchedValue").click();
		}

		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

		System.out.println("Program is selected");
		CommonMethods.PerformClickOnObject(element("StatusDropDown"));
		List<WebElement> DropDown = driver
				.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
		CommonMethods.selectDropDownByValue(DropDown, getDataFromExcel(ModuleName, TestCaseID, "Status"));

		CommonMethods.PerformClickOnObject(element("CaseOriginDropDown"));
		List<WebElement> DropDown1 = driver
				.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
		CommonMethods.selectDropDownByValue(DropDown1, getDataFromExcel(ModuleName, TestCaseID, "CaseOrigin"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Enterd All Mandatory Feilds");
		element("SaveButton").click();
		// WebDriverWait wait=new WebDriverWait(driver, 5);
		// wait.until(ExpectedConditions.alertIsPresent());
		// driver.switchTo().alert().accept();
		// driver.navigate().back();
	}

	@Then("^Login Using PAP cridentials$")
	public void login_using_pap_cridentials() throws Throwable {
		Thread.sleep(7000);
		// user=getDataFromExcel(ModuleName,TestCaseID, "papUserName");
		// if(user.contains(",")) {

		// element("pfizerUserIDTextbox").sendKeys(user.split(",")[0]);
		// }
		// else {
		// element("pfizerUserIDTextbox").sendKeys(user);

		// }
		element("pfizerUserIDTextbox").sendKeys("vivek.jakhar@conduent.com.pfizer.pfizerqa");
		// element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID,
		// "papPassword"));
		element("PasswordTxtbx").sendKeys("Jan@2020");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	//// <<<<<<end of sourav code>

	// <<<<<<<<<<<<<manoj code>>>>>>>>>>>>>>>>

	@Then("^Verify Outreach dropdown should display$")
	public void verify_outreach_dropdown_should_display() throws Throwable {

		try {
			driver.switchTo().frame(element("AppealFrame"));

		} catch (Exception e) {

		}
		Thread.sleep(3000);
		CommonMethods.ScrolDownToTheObject(element("OutreachDropDown"));
		assertTrue(element("OutreachDropDown").isDisplayed(), "");
		element("AppealsSaveButton").click();
	}

	@Then("^Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status$")
	public void select_reason_for_pap_appeal_as_loe_appeal_select_appeal_status() throws Throwable {

		element("SelectLOEAppealReasonsInDropdown").click();
		element("ReasonForPAPAppealAddButton").click();

		try {
			driver.switchTo().frame(element("AppealFrame"));
		} catch (Exception e) {
		}
		Thread.sleep(3000);
		element("AppealsStatusDropdown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "AppealStatus"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);

	}

	@And("^Select check box in Application Products$")
	public void select_check_box_in_application_products() throws Throwable {
		Thread.sleep(3000);
		element("AppProductChkbox").click();

	}

	@Then("^Outreach drop down value should consist of following values None, Outbound call and Other$")
	public void outreach_drop_down_value_should_consist_of_following_values_none_outbound_call_and_other()
			throws Throwable {

		Thread.sleep(3000);
		assertTrue(element("OutreachDropDown").isDisplayed(), "");
		element("OutreachDropDown").click();

		assertTrue("Verify Reason for Denial Message", element("OutreachOption1").getText()
				.equals(getDataFromExcel(ModuleName, TestCaseID, "OutreachOption1").trim()));
		assertTrue("Verify Reason for Denial Message", element("OutreachOption2").getText()
				.equals(getDataFromExcel(ModuleName, TestCaseID, "OutreachOption2").trim()));
		assertTrue("Verify Reason for Denial Message", element("OutreachOption3").getText()
				.equals(getDataFromExcel(ModuleName, TestCaseID, "OutreachOption3").trim()));

		// getAttributeValue
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		// element("AppealsSaveButton").click();

	}

	@Then("^Add notes in activity Notes$")
	public void add_notes_in_activity_notes() throws Throwable {
		Thread.sleep(2000);
		element("ActivtyNote").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Activitynote"));
		// CommonMethods.selectFromDropDownByVisibleText(element("ActivtyNote"),
		// getDataFromExcel(ModuleName, TestCaseID, "OutreachOption2"));

	}

	@Then("^Click on Applicants Name Link$")
	public void click_on_applicants_name_link() throws Throwable {
		Thread.sleep(10000);
		driver.navigate().refresh();
		Thread.sleep(5000);
		driver.switchTo().defaultContent();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", element("ApplicantNameLink"));
	}

	// @Then("^Verify that 'Activity Code' drop down should consist of 'Appeal
	// Notes' value for appeals agent$")
	// public void
	// verify_that_activity_code_drop_down_should_consist_of_appeal_notes_value_for_appeals_agent()
	// throws Throwable {
	// Thread.sleep(2000);
	// element("ActivityCodeDropdwn").click();
	//
	// assertTrue(element("ActivityCodeDropdwn").getText().equals(getDataFromExcel(ModuleName,
	// TestCaseID, "AppealNotes")));
	//
	// }

	@Then("^Verify that the appeal specialist is not able to create an Order$")
	public void verify_that_the_appeal_specialist_is_not_able_to_create_an_order() throws Throwable {

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		Thread.sleep(2000);
		driver.manage().window().maximize();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// Assert.assertFalse(element("CreateOrderButton").isDisplayed());

		try {

			WebElement ele1 = element("CreateOrderButton");
			System.out.println(ele1.isDisplayed());
		} catch (NoSuchElementException | NoSuchFrameException e) {

			System.out.println("appeal specialist is not able to create an Order");
		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select All Reason for PAP Appeal$")
	public void select_all_reason_for_pap_appeal() throws Throwable {

		// CommonMethods.PerformClickOnObject(element("SelectOutPatientInDropdown"));
		element("SelectOutPatientInDropdown").click();
		element("ReasonForPAPAppealAddButton").click();

		// CommonMethods.PerformClickOnObject(element("SelectIncomeInDropdown1"));
		element("SelectIncomeInDropdown1").click();
		element("ReasonForPAPAppealAddButton").click();

		// CommonMethods.PerformClickOnObject(element("SelectUSResidencyInDropdown1"));
		element("SelectUSResidencyInDropdown1").click();
		element("ReasonForPAPAppealAddButton").click();

		// CommonMethods.PerformClickOnObject(element("SelectChangeinCircumstancesInDropdown1"));
		element("SelectChangeinCircumstancesInDropdown1").click();
		element("ReasonForPAPAppealAddButton").click();

		CommonMethods.PerformClickOnObject(element("SelectOtherAppealInDropdown1"));
		element("SelectOtherAppealInDropdown1").click();
		// element("ReasonForPAPAppealAddButton").click();

		element("AppealsStatusDropdown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "AppealStatus"));
		element("AppealsSaveButton").click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify appeal specilist is able to create Enrollment appeal$")
	public void verify_appeal_specilist_is_able_to_create_enrollment_appeal() throws Throwable {

		element("SelectOtherAppealInDropdown").click();
		element("ReasonForPAPAppealAddButton").click();

		element("AppealsStatusDropdown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "AppealStatus"));
		element("AppealsSaveButton").click();

	}

	@And("^Select Outreach as Outbounds Call$")
	public void Select_outreach_as_outbounds_call() throws Throwable {

		Thread.sleep(3000);
		element("OutreachDropDown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("OutreachDropDown"),
				getDataFromExcel(ModuleName, TestCaseID, "OutboundCall"));
		// assertTrue(element("OutreachOption2").getText().equals(getDataFromExcel(ModuleName,
		// TestCaseID, "OutreachOption2").trim()));

	}

	@Then("^Click on Appeal save Button$")
	public void click_on_appeal_save_Button() throws Throwable {

		element("AppealsSaveButton").click();

	}

	@Then("^Click on 'Add New Log' button$")
	public void click_on_add_new_log_button() throws Throwable {
		try {

			driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
			Thread.sleep(7000);
			// driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='iframe-parent
			// slds-template_iframe slds-card']//iframe")));
		} catch (Exception e) {

		}
		Thread.sleep(7000);
		CommonMethods.ScrolDownToTheObject(element("AddNewLogButton"));
		element("AddNewLogButton").click();

	}

	// <<<<manoj end code>>>>>>>>>>>>>>>>>>>>>

	@Then("^Edit Enrollment End Date and Start Date For Application Sent Early$")
	public void Edit_Enrollment_End_Date_and_Start_Date_For_Application_Sent_Early() throws Throwable {
		Actions action = new Actions(driver);
		action.sendKeys(element("AppDriverApexCode"), Keys.CONTROL + "a");
		action.sendKeys(Keys.DELETE).build().perform();
		action.keyDown(Keys.CONTROL).sendKeys(String.valueOf(
				"List<Application__c> applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C from Application__C where Name='"
						+ Variable1
						+ "'];for(Application__C ap : applist){ap.EnrollmentDate__C = Date.newInstance( 2019, 11, 04 );ap.Enrollment_EndDate__C = Date.newInstance( 2020, 11, 03 );}Update applist;"))
				.perform();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);
	}

	// <<<sourav code of 25th November>

	@And("^Verify that prescriber consent sign and date should not populated$")
	public void verify_that_prescriber_consent_sign_and_date_should_not_populated() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("PrescriberConsonentSignChkBox"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^click on view orders and switch on to the frame$")
	public void click_on_view_orders_and_switch_on_to_the_frame() throws Throwable {
		Thread.sleep(10000);
		driver.switchTo().defaultContent();
		element("ViewOrderstab").click();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));

	}

	@Then("^Verify agent is able to create order by clicking supervisor overide$")
	public void verify_agent_is_able_to_create_order_by_clicking_supervisor_overide() throws Throwable {
		// clicking on supervisor overide
		driver.findElement(By.xpath("//input[@value='Supervisor Override']")).click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the application is Incomplete$")
	public void verify_the_application_is_incomplete() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("Incompleteerrormsg"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that Reenrollment end dates are not populated$")
	public void verify_that_reenrollment_end_dates_are_not_populated() throws Throwable {
		Thread.sleep(10000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,300)");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^In PAP Information section Do Select 'US Resident' as 'Y'$")
	public void in_pap_information_section_do_select_us_resident_as_y() throws Throwable {

		Select Drop = new Select(element("USResidentDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "USResident1"));
	}

	@Then("^Verify that Reenrollment end dates are populated$")
	public void verify_that_reenrollment_end_dates_are_populated() throws Throwable {
		Thread.sleep(10000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,300)");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^fill the details$")
	public void fill_the_details() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Home Delivery Appeal");
		// element("Dateappealtextb0x").sendKeys("10/20/2019");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		// JavascriptExecutor js = (JavascriptExecutor) driver;
		// js.executeScript("document.getElementsByClassName('ProductListChk')[0].click()");
		// js.executeScript("document.getElementsByClassName('ProductListChk')[1].click()");

		Select d = new Select(driver.findElement(By.xpath("(//select[@title='Reason For Appeal - Available'])")));
		d.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[1]")).click();

		Select f = new Select(
				driver.findElement(By.xpath("//select[@title='Type of Document Received Pfizer - Available']")));
		f.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[2]")).click();

		// CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		// Select s1 = new Select(element("Appealstatusdropdown"));
		// s1.selectByVisibleText("Incomplete");
		// element("savebutton").click();
		// Select g = new
		// Select(driver.findElement(By.xpath("//select[@class='outreach']")));
		// g.selectByVisibleText("Outbound Call");
		// clicking on save button
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Approved");
		driver.findElement(By.xpath("//input[@class='btn appealSaveBtn']")).click();
		Thread.sleep(3000);

	}

	@Then("^verify the error$")
	public void verify_the_error() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Home Delivery Appeal");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^click on lolappeal id$")
	public void click_on_lolappeal_id() throws Throwable {
		Thread.sleep(10000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,800)");
		Thread.sleep(5000);
		CommonMethods.PerformClickOnObject(element("LOlappealid"));
		Thread.sleep(5000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^please click on PAP Determine button$")
	public void please_click_on_pap_determine_button() throws Throwable {
		Thread.sleep(8000);
		try {
			CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));
		} catch (Exception e) {
			CommonMethods.PerformClickOnObject(element("PAPDetermineOutcomeButton"));
		}
	}

	@Then("^verify whether patient value is selected$")
	public void verify_whether_patient_value_is_selected() throws Throwable {
		Select Drop1 = new Select(element("Application_ShipToDropdown"));
		WebElement option = Drop1.getFirstSelectedOption();
		assertTrue("value should be to patient", option.getText().equals("Patient"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^click on Appsid$")
	public void click_on_appsid() throws Throwable {
		element("Appsids").click();
	}

	@And("^Do Select 'Prescriber Consonent Sign' CheckBox and Set 'Prescriber Consonent Sign Date'$")
	public void do_select_prescriber_consonent_sign_checkbox_and_set_prescriber_consonent_sign_date() throws Throwable {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("document.getElementById('thePage:theForm:block1:Sec1:sigInfo:PrescriberSignature').click()");
		js.executeScript("document.getElementsByClassName('lightningCustomClass')[4].value='11/20/2019'");
	}

	@Then("^Do select PatientID>>Field>>Value>>Search$")
	public void do_select_patientidfieldvaluesearch() throws Throwable {
		Thread.sleep(3000);

		driver.switchTo().frame(0);

		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.elementToBeClickable(element("PatientRadioButton")));
		element("PatientRadioButton").click();

		Thread.sleep(3000);
		element("FieldDropdown").click();

		CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "Patient ID"));

		Thread.sleep(2000);

		element("Valuetxtbox").sendKeys(NewPatient_ID);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);
	}

	// <<<<end of sourav code 25th november>>>>>

	@Then("^Verify that 'Activity Code' drop down should consist of 'Appeal Notes' value for appeals agent$")
	public void verify_that_activity_code_drop_down_should_consist_of_appeal_notes_value_for_appeals_agent()
			throws Throwable {

		Thread.sleep(5000);
		// CommonMethods.PerformClickOnObject(element("ActivityCodeDropdwn"));
		// element("ActivityCodeDropdwn").click();
		// element("ActivityCodeDropdwn").click();

		Select Drop1 = new Select(element("ActivityCodeDropdwn"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealNotes"));
		// CommonMethods.selectFromDropDownByVisibleText(element("ActivityCodeDropdwn"),
		// getDataFromExcel(ModuleName, TestCaseID, "AppealNotes"));
		// Select Drop1 = new Select(element("ActivityCodeDropdwn"));
		// Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID,
		// "AppealNotes"));
		// assertTrue(element("AppealNotes").getText().equals(getDataFromExcel(ModuleName,
		// TestCaseID, "AppealNotes")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that selected outreach value and activity notes is populating in the activity log$")
	public void verify_that_selected_outreach_value_and_activity_notes_is_populating_in_the_activity_log()
			throws Throwable {
		Thread.sleep(4000);

		List<WebElement> element = new ArrayList<WebElement>();
		element = driver.findElements(By.cssSelector("div > iframe"));
		int b = element.size();
		for (int i = 0; i <= b; i++) {
			try {
				driver.switchTo().frame(i);
				break;
			} catch (Exception e) {
				assertTrue(element("ActivityCode").isDisplayed(), "");
				assertTrue(element("Comments").isDisplayed(), "");
			}

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		}
	}

	// Vivek code-27th Novmerging code
	@Then("^Click on Enrollment Application number Link$")
	public void click_on_enrollment_application_number_link() throws Throwable {
		Thread.sleep(3000);
		element("EnrollmentAppNumberlink").click();
		Thread.sleep(3000);
	}

	@And("^click on ReEnrollment Processing Queue$")
	public void click_on_reenrollment_processing_queue() throws Throwable {
		element("AppReEnrollProcessingQueue").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the Status in ReEnrollment Processing Queue$")
	public void verify_the_status_in_reenrollment_processing_queue() throws Throwable {
		Assert.assertTrue(element("AppReEnrollProcessingStatus").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Edit the Enrollment Start Date and End date in Devlopers console Expire Enrollment$")
	public void edit_the_enrollment_start_date_and_end_date_in_devlopers_console_expire_enrollment() throws Throwable {
		Actions action = new Actions(driver);
		action.sendKeys(element("AppDriverApexCode"), Keys.CONTROL + "a");
		action.sendKeys(Keys.DELETE).build().perform();
		action.keyDown(Keys.CONTROL).sendKeys(String.valueOf(
				"List<Application__c> applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C from Application__C where Name='"
						+ Variable1
						+ "'];for(Application__C ap : applist){ap.EnrollmentDate__C = Date.newInstance( 2018, 11, 06 );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 11, 05 );}Update applist;"))
				.perform();
		// element("AppDriverApexCode").sendKeys("List<Application__c> applist = [Select
		// id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C
		// from Application__C where Name='327222'];for(Application__C ap :
		// applist){ap.EnrollmentDate__C = Date.newInstance( 2018, 9, 25
		// );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 9, 24 );}Update
		// applist;");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);
	}

	@Then("^Click on Prescription Queued and verify the due date$")
	public void click_on_prescription_queued_and_verify_the_due_date() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^After Changing the ship To type Verify the Fullfillment method$")
	public void after_changing_the_ship_to_type_verify_the_fullfillment_method() throws Throwable {
		Thread.sleep(3000);
		CommonMethods.ScrolDownToTheObject(element("Application_MedvantxDrpdownvalue"));
		assertTrue(element("Application_MedvantxDrpdownvalue").getText()
				.equals(getDataFromExcel(ModuleName, TestCaseID, "FullfillmentMethodvalue")), "");
		// assertTrue(element("Application_PatientDrpdownvalue").getText().equals(getDataFromExcel(ModuleName,
		// TestCaseID, "ShipTovalue")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify the Error Msg in OVM like Group A product can’t be shipped to Patient$")
	public void verify_the_error_msg_in_ovm_like_group_a_product_cant_be_shipped_to_patient() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		Thread.sleep(1000);
		driver.manage().window().maximize();
		CommonMethods.ScrolDownToTheObject(element("SaveoutComeButton"));
		// WebDriverWait wait = new WebDriverWait(driver, 30);
		// wait.until(ExpectedConditions
		// .visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation
		// Information']"))));

		Assert.assertTrue(element("AppGroupAErrorMedvantx").isDisplayed());
		Assert.assertTrue(element("AppGroupAErrorMsgShipping").isDisplayed());

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^select the ship to type in second product line$")
	public void select_the_ship_to_type_in_second_product_line() throws Throwable {
		Select Drop1 = new Select(element("Application_ShipToDropdown2"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ShipTovalue2"));
	}

	@Then("^Select 'Original RX' and 'GovernmentID' in second product line$")
	public void select_original_rx_and_governmentid_in_second_product_line() throws Throwable {
		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("AppSecondOriginalRx"));
		CommonMethods.selectFromDropDownByVisibleText(element("AppSecondOriginalRx"),
				getDataFromExcel(ModuleName, TestCaseID, "OriginalRX"));
		CommonMethods.selectFromDropDownByVisibleText(element("AppSecondGovId"),
				getDataFromExcel(ModuleName, TestCaseID, "GovID"));
		// element("Application_RefillsButton").click();
		// CommonMethods.selectFromDropDownByVisibleText(element("Application_RefillsButton"),getDataFromExcel(ModuleName,
		// TestCaseID, "Refills"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(2000);

		CommonMethods.ScrolDownToTheObject(element("ApplicationSaveButton"));
		element("ApplicationSaveButton").click();
		Thread.sleep(8000);

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that no incomplete letter is generated like Group A product can’t be shipped to Patient$")
	public void verify_that_no_incomplete_letter_is_generated_like_group_a_product_cant_be_shipped_to_patient()
			throws Throwable {
		Thread.sleep(3000);
		driver.navigate().refresh();
		Thread.sleep(2000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated(
				(By.xpath("//h3[text()='Event Log']/parent::div/following-sibling::div//b[text()='Activity Code']"))));
		CommonMethods.ScrolDownToTheObject(element("EventLogActivityCodeColumnHeader"));
		Thread.sleep(5000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^fetch the Application Number created for reenrollment$")
	public void fetch_the_application_number_created_for_reenrollment() throws Throwable {
		Variable1 = element("GeneratedApplicationNumberReenroll").getText();
		System.out.println(Variable1);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Product Outcome is Rejected$")
	public void verify_that_product_outcome_is_rejected() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		Thread.sleep(1000);
		driver.manage().window().maximize();

		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated((By.xpath("//h2[text()='Patient Validation Information']"))));
		CommonMethods.ScrolDownToTheObject(element("AppProductOutcomeRejected"));
		Assert.assertTrue(element("AppProductOutcomeRejected").isDisplayed());
		// Assert.assertTrue(element("AppGroupAErrorMsgShipping").isDisplayed());

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that the Created Case is displayed under Appeal cases$")
	public void verify_that_the_created_case_is_displayed_under_appeal_cases() throws Throwable {
		Thread.sleep(8000);
		Assert.assertTrue(element("AppSearchedCaseNumberApeal").isDisplayed());
		// assertTrue("case number should be
		// displayed",element("AppSearchedCaseNumberApeal").getText().equalsIgnoreCase("Variable1"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Appeal Cases List View in not present in agent login$")
	public void verify_that_appeal_cases_list_view_in_not_present_in_agent_login() throws Throwable {
		try {
			element("ApplicationAppealCase").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		} catch (Exception e) {
			System.out.println("Appeal cases list view is not present");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@Then("^Verify that Appeal Cases List View is present in Appeal specialist login$")
	public void verify_that_appeal_cases_list_view_is_present_in_appeal_specialist_login() throws Throwable {
		Thread.sleep(2000);
		Assert.assertTrue(element("ApplicationAppealCase").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on the searched case number$")
	public void click_on_the_searched_case_number() throws Throwable {
		element("AppSearchedCaseNumberApeal").click();

	}

	@And("^Check the Appeal Processed Checkbox$")
	public void check_the_appeal_processed_checkbox() throws Throwable {
		driver.switchTo().defaultContent();
		Thread.sleep(5000);
		CommonMethods.PerformClickOnObject(element("AppAppealProcessEditButton"));
		// element("AppAppealProcessEditButton").click();
		Thread.sleep(5000);
		element("AppAppealProcessCheckbox").click();
		// Thread.sleep(3000);
		element("AppCasePageSavebutton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that After Appeal processed true the case is not displayed in Appeal Cases$")
	public void verify_that_after_appeal_processed_true_the_case_is_not_displayed_in_appeal_cases() throws Throwable {

		Thread.sleep(5000);
		try {
			element("AppSearchedCaseNumberApeal").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			AssertJUnit.fail();
		} catch (Exception e) {
			System.out.println("Searched case number is not present");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@Then("^Refresh the page$")
	public void refresh_the_page() throws Throwable {
		driver.navigate().refresh();
	}

	@And("^Verify that status is not Closed incomplete in Appeal cases$")
	public void verify_that_status_is_not_closed_incomplete_in_appeal_cases() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify that status incomplete or pending pfizer review in Appeal cases$")
	public void verify_that_status_incomplete_or_pending_pfizer_review_in_appeal_cases() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select Home delivery Appeal from dropdown$")
	public void select_home_delivery_appeal_from_dropdown() throws Throwable {

		Thread.sleep(8000);
   	driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
   	Thread.sleep(2000);
		
   	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
   	 Select Drop1 = new Select(element("TypeOfAppealDropDown"));
		Drop1.selectByVisibleText("Home Delivery Appeal");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}


	@Then("^Select Appeal Status as Approved$")
	public void select_appeal_status_as_approved() throws Throwable {

		Select d = new Select(driver.findElement(By.xpath("(//select[@title='Reason For Appeal - Available'])")));
		d.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[1]")).click();

		Select f = new Select(
				driver.findElement(By.xpath("//select[@title='Type of Document Received Pfizer - Available']")));
		f.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[2]")).click();
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		
		Thread.sleep(2000);
		element("AppealsStatusDropdown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "AppealStatus"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		driver.findElement(By.xpath("//input[@class='btn appealSaveBtn']")).click();
		Thread.sleep(3000);

	}

	@Then("^Enter all the required fields$")
	public void enter_all_the_required_fields() throws Throwable {
		Select d = new Select(driver.findElement(By.xpath("(//select[@title='Reason For Appeal - Available'])")));
		d.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[1]")).click();

		Select f = new Select(
				driver.findElement(By.xpath("//select[@title='Type of Document Received Pfizer - Available']")));
		f.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[2]")).click();

		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select Dropdown1 = new Select(element("Appealstatusdropdown"));
		Dropdown1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
		CommonMethods.selectFromDropDownByVisibleText(element("AppAppealOutreachDropbox"),
				getDataFromExcel(ModuleName, TestCaseID, "Outreach"));
		driver.findElement(By.xpath("//input[@class='btn appealSaveBtn']")).click();
		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Enter all the required fields approved$")
	public void enter_all_the_required_fields_approved() throws Throwable {
		Select d = new Select(driver.findElement(By.xpath("(//select[@title='Reason For Appeal - Available'])")));
		d.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[1]")).click();

		Select f = new Select(
				driver.findElement(By.xpath("//select[@title='Type of Document Received Pfizer - Available']")));
		f.selectByValue("0");
		driver.findElement(By.xpath("(//img[@title='Add'])[2]")).click();

		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select Dropdown1 = new Select(element("Appealstatusdropdown"));
		Dropdown1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
		// CommonMethods.selectFromDropDownByVisibleText(element("AppAppealOutreachDropbox"),
		// getDataFromExcel(ModuleName, TestCaseID, "Outreach"));
		driver.findElement(By.xpath("//input[@class='btn appealSaveBtn']")).click();
		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Ship to Is defaulted to Patient for Reenrollment application$")
	public void verify_that_ship_to_is_defaulted_to_patient_for_reenrollment_application() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("Application_MedvantxDrpdownvalue"));
		assertTrue(element("Application_PatientDrpdownvalue").getText()
				.equals(getDataFromExcel(ModuleName, TestCaseID, "ShipTovalue")), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select Product Name Form Strength SIG and Pill Qty other than enrollment$")
	public void select_product_name_form_strength_sig_and_pill_qty_other_than_enrollment() throws Throwable {
		Select Drop1 = new Select(element("ProductNameDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ProductName2"));

		Select Drop2 = new Select(element("FormStrengthDropDown"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "FormStrength2"));

		Select Drop3 = new Select(element("SIGDropDown"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SIG"));

		element("PillQtyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty3"));

	}

	// <<Vivek---end--code>>>

	// <<vivek code of 6th Dec>>>>
	@Then("^Verify that Appeal is attached with ReEnrollment Application$")
	public void verify_that_appeal_is_attached_with_reenrollment_application() throws Throwable {
		Thread.sleep(7000);
		CommonMethods.ScrolDownToTheObject(element("AppAppealTabAppPage"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(5000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that All the product are listed there in Appeals page under Application product name$")
	public void verify_that_all_the_product_are_listed_there_in_appeals_page_under_application_product_name()
			throws Throwable {
		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select Product Appeal from dropdown$")
	public void select_product_appeal_from_dropdown() throws Throwable {
		Thread.sleep(5000);
		driver.navigate().refresh();
		Thread.sleep(7000);
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Thread.sleep(3000);
		Select Drop1 = new Select(element("AppealTypeDropDown"));
		Drop1.selectByVisibleText("Product Appeal");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(2000);
		element("ApplicationProductsCheckbox").click();
	}

	@Then("^Verify new window to attach Second ReEnrollment document has opened and Select Document>Click on 'AttaCh'$")
	public void verify_new_window_to_attach_Second_ReEnrollment_document_has_opened_and_select_documentclick_on_attach()
			throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		assertTrue("New window has opened", element("SelectSupportDocumentChckbox").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		// element("SelectSupportDocumentChckbox").click();
		try {
		element("AppAttachSuportingSecondDocument").click();
	}catch(Exception e){
		element("SelectSupportDocumentChckbox").click();
	}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("ApplicationNewWindowAttachBtn").click();

		Thread.sleep(3000);

		WebDriverWait ww = new WebDriverWait(driver, 10);
		ww.until(ExpectedConditions.alertIsPresent());
		Alert alert = driver.switchTo().alert();
		alert.accept();
		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Select 'Select Service Offering' to Re-Enrollment$")
	public void select_select_service_offering_to_reenrollment() throws Throwable {
		// driver.switchTo().frame(element("ApplicationPageIframe"));
		Select Drop = new Select(element("SelectServiceOfferingDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Service Offer 2"));
		element("EPR_ApplicationBrowseLink").click();
		element("EPR_ApplicationDocumentNameCheckbox").click();

		element("ERP_ApplicationInformationAttachBtn").click();
		element("ERP_ApplicationInformationProceedLink").click();
		assertTrue("Application Information Page is Displayed", element("ApplicationInformationHeader").isDisplayed());
		System.out.println("Application Information Page is Displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Select 'Select Service Offering' to Enrollment and attach second document$")
	public void select_select_service_offering_to_enrollment_and_attach_second_document() throws Throwable {
		// driver.switchTo().frame(element("ApplicationServicePageIframe"));
		Thread.sleep(5000);
		Select Drop = new Select(element("SelectServiceOfferingDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ServiceOffer"));
		element("EPR_ApplicationBrowseLink").click();

		// element("EPR_ApplicationDocumentNameCheckbox").click();
		element("AppSelectSupprotingDocSecond").click();

		element("ERP_ApplicationInformationAttachBtn").click();
		element("ERP_ApplicationInformationProceedLink").click();
		assertTrue("Application Information Page is Displayed", element("ApplicationInformationHeader").isDisplayed());
		System.out.println("Application Information Page is Displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	// <<vivek: End of the code 6th Dec>>>>

	// <<Sourav code 6th DEC>
	@And("^Do Select the 'Ship To' type$")
	public void do_select_the_ship_to_type() throws Throwable {
		Thread.sleep(5000);
		try {
			driver.switchTo().frame(element("ApplicationPageIframe"));
		} catch (Exception e) {

		}
		Select Drop1 = new Select(element("Application_ShipToDropdown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Ship To1"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^please verify whether patient value is selected$")
	public void please_verify_whether_patient_value_is_selected() throws Throwable {
		Select Drop1 = new Select(element("Application_ShipToDropdown1"));
		WebElement option = Drop1.getFirstSelectedOption();
		assertTrue("value should be to patient", option.getText().equals("Patient"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^fill in the details$")
	public void fill_in_the_details() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("AppealTypeDropDown"));
		s.selectByVisibleText("Enrollment Appeal");
		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(6000);
		Select d = new Select(element("reasonforappeal"));
		d.selectByValue("0");
		d.selectByVisibleText("US Residency");
		// driver.findElement(By.xpath("(//img[@title='Add'])[1]")).click();
		element("Image1").click();

		// Select f = new Select(driver.findElement(By.xpath("//select[@title='Type of
		// Document Received Pfizer - Available']")));
		Select f = new Select(element("TypeofDocument"));
		f.selectByValue("0");
		// driver.findElement(By.xpath("(//img[@title='Add'])[2]")).click();
		element("Image2").click();
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Approved");
		// element("savebutton").click();
		// clicking on save button
		// driver.findElement(By.xpath("//input[@class='btn appealSaveBtn']")).click();
		element("Appealsavebtn").click();
	}

	@Then("^check create order button is not dosplaying and error msg$")
	public void check_create_order_button_is_not_dosplaying_and_error_msg() throws Throwable {
		try {
			Assert.assertTrue(!(element("CreateOrderbtn").isDisplayed()),
					"create order button should not be displayed");
		} catch (Exception e) {
			System.out.println("test pass");
		}

		Assert.assertTrue(element("Errormessages").isDisplayed(), "error msg should display");
	}

	@And("^Please select the Ship To type$")
	public void please_select_the_ship_to_type() throws Throwable {
		Select Drop1 = new Select(element("Application_ShipToDropdown1"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Ship To"));

	}

	@And("^click on create order$")
	public void click_on_create_order() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("CreateOrderbtn"));
		element("CreateOrderbtn").click();
	}

	@Then("^verify the buttons are present$")
	public void verify_the_buttons_are_present() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("TypeOfAppealDropDown"));
		s.selectByVisibleText("Home Delivery Appeal");
		Assert.assertTrue(element("Appealsavebtn").isDisplayed());
		Assert.assertTrue(element("AppealCancelbutton").isDisplayed());
	}

	@Then("^Verify the dropdown is present$")
	public void verify_the_dropdown_is_present() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Enrollment Appeal");
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Incomplete");
		Thread.sleep(3000);
		Assert.assertTrue(element("Outreachdropdown").isDisplayed());
	}

	@Then("^Verify the dropdown is present with Values$")
	public void verify_the_dropdown_is_present_with_values() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("TypeOfAppealDropDown"));
		s.selectByVisibleText("Home Delivery Appeal");
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Incomplete");
		Thread.sleep(3000);
		Assert.assertTrue(element("Outreachdropdown").isDisplayed());
		Select s2 = new Select(element("Outreachdropdown"));
		s2.selectByVisibleText("Outbound Call");
		s2.selectByVisibleText("Other");

	}

	@Then("^select appeal cases and click on View Logs$")
	public void select_appeal_cases_and_click_on_view_logs() throws Throwable {
		// element("CasesListViewDropdown").click();
		element("ApplicationAppealCase").click();
		Thread.sleep(6000);
		CommonMethods.PerformClickOnObject(element("AppAccountName"));
		Thread.sleep(6000);
		element("ViewlogsButton").click();

	}

	@And("^click On Add new Log$")
	public void click_on_add_new_log() throws Throwable {
		element("AddNewLogButton").click();
	}

	@Then("^Check the Values in Dropdown$")
	public void check_the_values_in_dropdown() throws Throwable {
		Select s = new Select(element("Activitycodedropdown"));
		s.selectByVisibleText("Appeal Incomplete");
		Thread.sleep(5000);
		element("Activitycodedropdown").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify save button is disabled$")
	public void verify_save_button_is_disabled() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Assert.assertTrue(!element("ApplicationSaveButton").isEnabled(), "save button should be disabled");
	}

	@Then("^do the necessary changes and Save$")
	public void do_the_necessary_changes_and_save() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select f = new Select(element("TypeofDocument"));
		f.selectByValue("1");
		element("Image2").click();
		element("Appealsavebtn").click();
	}

	@Then("^Scroll down to pap button$")
	public void scroll_down_to_pap_button() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("PAPDetermineOutcomeButton"));
	}

	// <<Sourav: End of the code 6th Dec>>>>

	// <<vivek code 16th nove>>>>

	@Then("^Verify that Enrollment details are read only View$")
	public void verify_that_enrollment_details_are_read_only_view() throws Throwable {

		driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		CommonMethods.ScrolDownToTheObject(element("AddProductButton"));
		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Application number Link for Enrollment$")
	public void click_on_application_number_link_for_enrollment() throws Throwable {
		driver.switchTo().defaultContent();
		CommonMethods.PerformClickOnObject(element("EnrollmentAppNumberlink"));

	}

	@Then("^Verify that Application Signature Date Field is not Present$")
	public void verify_that_application_signature_date_field_is_not_present() throws Throwable {
		// element("PatientorPatientRepresentativeSignatureDate");
		element("FirstAttachCase").click();

		try {
			element("PatientorPatientRepresentativeSignatureDate");
			assertTrue(element("PatientorPatientRepresentativeSignatureDate").isDisplayed(), "");
			AssertJUnit.fail();
		} catch (Exception e) {
			System.out.println("Application signature field is not present");
		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Edit the Enrollment Start Date and End date in Devlopers console after 90 days$")
	public void edit_the_enrollment_start_date_and_end_date_in_devlopers_console_after_90_days() throws Throwable {
		Actions action = new Actions(driver);
		action.sendKeys(element("AppDriverApexCode"), Keys.CONTROL + "a");
		action.sendKeys(Keys.DELETE).build().perform();
		action.keyDown(Keys.CONTROL).sendKeys(String.valueOf(
				"List<Application__c> applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C from Application__C where Name='"
						+ Variable1
						+ "'];for(Application__C ap : applist){ap.EnrollmentDate__C = Date.newInstance( 2019, 5, 11 );ap.Enrollment_EndDate__C = Date.newInstance( 2020, 5, 10 );}Update applist;"))
				.perform();
		// element("AppDriverApexCode").sendKeys("List<Application__c> applist = [Select
		// id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C
		// from Application__C where Name='327222'];for(Application__C ap :
		// applist){ap.EnrollmentDate__C = Date.newInstance( 2018, 9, 25
		// );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 9, 24 );}Update
		// applist;");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);

	}

	@Then("^In 'Application Information' section Select 'Application Source' > Future 'Patient or Patient Representative Signature'$")
	public void in_application_information_section_select_application_source_future_patient_or_patient_representative_signature()
			throws Throwable {
		Select Drop = new Select(element("ApplicationSourceDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ApplicationSource"));

		element("AppRepresentativeSignatureDate").click();
		element("AppRepresentativeSignatureDate").sendKeys("12/25/2019");

	}

	@Then("^Verify that it is not able to save application because Repesentative Signature date can not  be Future Date$")
	public void verify_that_it_is_not_able_to_save_application_because_repesentative_signature_date_can_not_be_future_date()
			throws Throwable {

	}

	// <<vivek endcode 16th nove>>>>
	// <<Sourav code 16th Dec>>
	@Then("^do fill the details$")
	public void do_fill_the_details() throws Throwable {
		driver.switchTo().defaultContent();
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		Select s = new Select(element("Appealdropdown"));
		s.selectByVisibleText("Product Appeal");
		// element("Dateappealtextb0x").sendKeys("10/20/2019");
		Thread.sleep(15000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		// JavascriptExecutor js = (JavascriptExecutor) driver;
		// js.executeScript("document.getElementsByClassName('ProductListChk')[0].click()");
		// js.executeScript("document.getElementsByClassName('ProductListChk')[1].click()");

		// Select d = new Select(driver.findElement(By.xpath("(//select[@title='Reason
		// For Appeal - Available'])")));
		Select d = new Select(element("reasonforappeal"));
		d.selectByValue("0");
		// driver.findElement(By.xpath("(//img[@title='Add'])[1]")).click();
		element("Image1").click();

		// Select f = new Select(driver.findElement(By.xpath("//select[@title='Type of
		// Document Received Pfizer - Available']")));
		Select f = new Select(element("TypeofDocument"));
		f.selectByValue("0");
		// driver.findElement(By.xpath("(//img[@title='Add'])[2]")).click();
		element("Image2").click();

		// CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		// Select s1 = new Select(element("Appealstatusdropdown"));
		// s1.selectByVisibleText("Incomplete");
		// element("savebutton").click();
		// Select g = new
		// Select(driver.findElement(By.xpath("//select[@class='outreach']")));
		// g.selectByVisibleText("Outbound Call");
		// clicking on save button
		CommonMethods.ScrolDownToTheObject(element("AppealInformation"));
		CommonMethods.ScrolDownToTheObject(element("Appealstatus"));
		Select s1 = new Select(element("Appealstatusdropdown"));
		s1.selectByVisibleText("Closed- Incomplete");
		// driver.findElement(By.xpath("//input[@class='btn appealSaveBtn']")).click();
		element("Appealsavebtn").click();
	}

	@Then("^click on orderidcheckbox$")
	public void click_on_orderidcheckbox() throws Throwable {
		CommonMethods.PerformClickOnObject(element("OrderIdcheckbox"));
		Thread.sleep(3000);
	}

	@Then("^check the refill msg isdisplayed$")
	public void check_the_refill_msg_isdisplayed() throws Throwable {

		element("Application_PlaceRefillOrderbutton").click();
	}

	@Then("^click on application id1$")
	public void click_on_application_id1() throws Throwable {
		element("Refilapllicationid").click();
		driver.switchTo().defaultContent();
	}

	@And("^check the message$")
	public void check_the_message() throws Throwable {
		Assert.assertTrue(element("Homedeliveryerrormsg").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^verify the checkboxes are selected$")
	public void verify_the_checkboxes_are_selected() throws Throwable {
		driver.switchTo().defaultContent();
		Thread.sleep(6000);
		// Assert.assertTrue(element("Activeapplicationcheckbox").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.PerformClickOnObject(element("Apllicantuniqueno"));
		CommonMethods.PerformClickOnObject(element("enrolmentid"));
		Thread.sleep(6000);
		Assert.assertTrue(!element("enrolmentchkbox").isSelected());
	}

	@And("^set the end date to two months after$")
	public void set_the_end_date_to_two_months_after() throws Throwable {
		Actions action = new Actions(driver);
		action.sendKeys(element("AppDriverApexCode"), Keys.CONTROL + "a");
		action.sendKeys(Keys.DELETE).build().perform();
		action.keyDown(Keys.CONTROL).sendKeys(String.valueOf(
				"List<Application__c> applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C from Application__C where Name='"
						+ Variable1
						+ "'];for(Application__C ap : applist){ap.EnrollmentDate__C = Date.newInstance( 2019, 2, 8 );ap.Enrollment_EndDate__C = Date.newInstance( 2020, 2, 8 );}Update applist;"))
				.perform();
		// element("AppDriverApexCode").sendKeys("List<Application__c> applist = [Select
		// id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C
		// from Application__C where Name='327222'];for(Application__C ap :
		// applist){ap.EnrollmentDate__C = Date.newInstance( 2018, 9, 25
		// );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 9, 24 );}Update
		// applist;");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);

	}

	@And("^check the status of checkbox$")
	public void check_the_status_of_checkbox() throws Throwable {
		// Assert.assertTrue(element("FutureReEnrollmentCheckBox").isSelected());
		CommonMethods.ScrolDownToTheObject(element("FutureReEnrollmentCheckBox"));
		// Assert.assertTrue(element("FutureReEnrollmentCheckBox").isSelected());
		Thread.sleep(4000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.PerformClickOnObject(element("Apllicantuniqueno"));
		CommonMethods.PerformClickOnObject(element("enrolmentid"));
		Thread.sleep(6000);

		Assert.assertTrue(!element("FutureReEnrollmentCheckBox").isSelected());

	}

	@And("^Check the difference of days$")
	public void check_the_difference_of_days() throws Throwable {
		SimpleDateFormat k = new SimpleDateFormat("dd MM yyyy");
		String Afterdate = element("ApplicationEnrollmentEndDate").getText();
		String Beforedate = element("Representativesigndt").getText();
		String dateBeforeString = Beforedate.replaceAll("/", " ");
		String dateAfterString = Afterdate.replaceAll("/", " ");

		Date dateBefore = k.parse(dateBeforeString);
		Date dateAfter = k.parse(dateAfterString);
		long difference = dateAfter.getTime() - dateBefore.getTime();
		float daysBetween = (difference / (1000 * 60 * 60 * 24));
		System.out.println("Number of Days between dates: " + daysBetween);

		if (daysBetween > 90) {
			System.out.println("test pass");
		} else {
			AssertJUnit.fail();
		}

	}

	@Then("^check the status$")
	public void check_the_status() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("Appsenttooearly"));
		Assert.assertTrue(element("Appsenttooearly").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_SaveOutcomeBtn").click();
	}

	@Then("^Again check the status$")
	public void again_check_the_status() throws Throwable {
		Assert.assertTrue(element("AppLogsOutcomeText").isDisplayed());
	}

	@And("^Under Insurance Information > Select 'Yes' radio button > Click on 'save' Button1$")
	public void under_insurance_information_select_yes_radio_button_click_on_save_button1() throws Throwable {
		element("Insuranceyesbutton").click();
		element("ApplicationSaveButton").click();
		System.out.println("Click On Save Button");

	}

	@And("^Verify the Event log is created$")
	public void verify_the_event_log_is_created() throws Throwable {
		Thread.sleep(6000);
		CommonMethods.PerformClickOnObject(element("Apllicantuniqueno"));
		element("ViewlogsButton").click();
		driver.switchTo().frame(element("ApplicationPageIframe"));
		CommonMethods.ScrolDownToTheObject(element("Papdenied"));
		Assert.assertTrue(element("Papdenied").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify the errormsg$")
	public void verify_the_errormsg() throws Throwable {
		Thread.sleep(7000);
		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		element("cannotcreateerror").isDisplayed();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Edit the Enrollment Start Date and End date in Devlopers console after 180 days$")
	public void edit_the_enrollment_start_date_and_end_date_in_devlopers_console_after_180_days() throws Throwable {
		Actions action = new Actions(driver);
		action.sendKeys(element("AppDriverApexCode"), Keys.CONTROL + "a");
		action.sendKeys(Keys.DELETE).build().perform();
		action.keyDown(Keys.CONTROL).sendKeys(String.valueOf(
				"List<Application__c> applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C from Application__C where Name='"
						+ Variable1
						+ "'];for(Application__C ap : applist){ap.EnrollmentDate__C = Date.newInstance( 2019, 4, 10 );ap.Enrollment_EndDate__C = Date.newInstance( 2020, 4, 10 );}Update applist;"))
				.perform();
		// element("AppDriverApexCode").sendKeys("List<Application__c> applist = [Select
		// id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C
		// from Application__C where Name='327222'];for(Application__C ap :
		// applist){ap.EnrollmentDate__C = Date.newInstance( 2018, 9, 25
		// );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 9, 24 );}Update
		// applist;");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);
	}

	@And("^Do Click on 'Application Prescriptions' > 'New'$")
	public void do_click_on_application_prescriptions_new() throws Throwable {
		CommonMethods.PerformClickOnObject(element("Appprescriplink"));
		// element("ApplicationPrescriptionsLink").click();
		driver.navigate().refresh();
		element("DocumentsNewButton").click();
	}

	@And("^Verify Application is Incomplete$")
	public void verify_application_is_incomplete() throws Throwable {
		Assert.assertTrue(element("Incomplete").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	// <<Sourav end code>

	// <<Vivek code 3rd jan>

	@And("^Verify No ReEnrollment is Allowed For Group c product$")
	public void Verify_No_ReEnrollment_is_Allowed_For_Group_c_product() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		Assert.assertTrue(element("AppAvailedPrevnar").isDisplayed());
		// element("AppAvailedPrevnar").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		// driver.switchTo().window(winHandleBefore);

	}

	@Then("^Select Reason for PAP Appeal as 'US Residency'$")
	public void select_reason_for_pap_appeal_as_us_residency() throws Throwable {
		element("EPR_AppealUSResidencyReason").click();
		element("ReasonForPAPAppealAddButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// CommonMethods.PerformClickOnObject(element("AppealsSaveButton"));
	}

	@Then("^Select Reason for PAP Appeal as 'LOE Appeal'$")
	public void select_reason_for_pap_appeal_as_loe_appeal() throws Throwable {

		element("SelectLOEAppealInDropdown").click();
		element("ReasonForPAPAppealAddButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
		// getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
		// element("AppealsSaveButton").click();
	}

	@Then("^Select Reason for PAP Appeal as 'LOE Appeal' > Select Appeal Status as Approved > Enter Total OOPE$")
	public void select_reason_for_pap_appeal_as_loe_appeal_select_appeal_status_as_approved_enter_total_oope()
			throws Throwable {

		element("SelectLOEAppealInDropdown").click();
		element("ReasonForPAPAppealAddButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
	}

	@And("^Select AppRX Checkbox>Set RX Date>Click on 'Save' Button2$")
	public void select_apprx_checkboxset_rx_dateclick_on_save_button2() throws Throwable {
		element("AppRXSignedChkBox").click();
		// element("RXDateLink").click();

		element("ApplicationSaveButton").click();

		try {
			Thread.sleep(3000);
			System.out.println("save ");
			element("ApplicationSaveButton").click();
			Thread.sleep(8000);

		} catch (Exception e) {

		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Select Appeal status$")
	public void select_appeal_status() throws Throwable {
		Thread.sleep(2000);
		element("AppealsStatusDropdown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "AppealStatus"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	// @And("^Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again$")
	// public void select_apprx_checkboxset_rx_dateclick_on_save_button_again()
	// throws Throwable {
	//
	//
	// System.out.println("Inside Method");
	// try
	// {
	//// Alert a = driver.switchTo().alert();
	// System.out.println("Alert Message: ");
	//
	//// a.dismiss();
	//
	// //driver.switchTo().parentFrame();
	//
	//// driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
	// WebDriverWait wait = new WebDriverWait(driver, 30);
	// wait.until(ExpectedConditions.visibilityOfElementLocated(
	// (By.xpath("//input[contains(@id,'apprxsign')]"))));
	//
	// CommonMethods.PerformClickOnObject(element("AppRXSignedChkBox"));
	// CommonMethods.PerformClickOnObject(element("RXDateLink"));
	// //Thread.sleep(3000);
	// CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));
	//
	// }
	// catch(Exception e) {
	//
	// //CommonMethods.PerformClickOnObject(element("AppRXSignedChkBox"));
	// CommonMethods.PerformClickOnObject(element("RXDateLink"));
	//
	// CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));
	//
	// }
	//
	//
	//
	//
	//
	//
	// try {
	// Thread.sleep(3000);
	// System.out.println("save ");
	// element("ApplicationSaveButton").click();
	// Thread.sleep(8000);
	//
	//
	//
	//
	//
	// } catch (Exception e) {
	//
	//
	//
	//
	//
	// }
	// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	//
	//
	//
	//
	//
	// }

	@Then("^Verify Future Reenrollment CheckBox is checked$")
	public void verify_future_reenrollment_checkbox_is_checked() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("AppFutureReenrolllment"));
		assertTrue(element("AppFutureReenrolllment").getAttribute("class").contains("checked"), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify Active Application CheckBox is Unchecked$")
	public void verify_active_application_checkbox_is_unchecked() throws Throwable {
		assertTrue(element("AplicationActivecheckbox2").getAttribute("class").contains("unchecked"), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	// manoj code

	@And("^In PAP Information section Do Select 'US Resident' as 'N'$")
	public void in_pap_information_section_do_select_us_resident_as_n() throws Throwable {

		Select Drop = new Select(element("USResidentDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "USResident1"));
	}

	@Then("^Navigate to the Patient details page > Click on Applications 'New'$")
	public void navigate_to_the_patient_details_page_click_on_applications_new() throws Throwable {

		// Thread.sleep(80000);
		// CommonMethods.PerformClickOnObject(element("PatientAccountLink"));
		// element("PatientAccountLink").click();
		System.out.println("Navigate to the Patient details page");

		try {
			// element("ApplicationsLink").click();

			CommonMethods.PerformClickOnObject(element("ApplicationsLink"));
			System.out.println("Click on Applications Link");
		} catch (Exception e) {

		}
		driver.navigate().refresh();
		Thread.sleep(20000);
		element("DocumentsNewButton").click();
		System.out.println("Click on New Button");

	}

	@Then("^In Application Page > Click on 'Application insurances' >  'New'$")
	public void In_Application_Page_Click_on_Application_insurances_New() throws Throwable {

		try {
			// element("ApplicationInsurancesLink").click();
			CommonMethods.PerformClickOnObject(element("ApplicationInsurancesLink"));

		} catch (Exception e) {

		}

		driver.navigate().refresh();
		element("DocumentsNewButton").click();

	}

	@Then("^Click on Application number under the 'Applications'$")
	public void click_on_application_number_under_the_applications() throws Throwable {

		try {
			// element("ApplicationnumberLink").click();
			CommonMethods.PerformClickOnObject(element("ApplicationnumberLink"));

		} catch (Exception e) {

		}

	}

	@Then("^In RenrollmentApplication Page > Click on 'Application insurances' >  'New'$")
	public void In_RenrollmentApplication_Page_Click_on_Application_insurances_New() throws Throwable {
		Thread.sleep(2000);
		driver.navigate().refresh();
		try {
			CommonMethods.PerformClickOnObject(element("Application_ReEnrollmentApplicationInsuranceLink"));
			
		} catch (Exception e) {

		}
		element("DocumentsNewButton").click();

	}

	// sourav code
	@Then("^PLEASE Verify new window to attach document has opened and Select Document>Click on 'AttaCh'$")
	public void please_verify_new_window_to_attach_document_has_opened_and_select_documentclick_on_attach()
			throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		assertTrue("New window has opened", element("SelectSupportDocumentChckbox").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		// element("SelectSupportDocumentChckbox").click();
		element("SupportDocumentChckbox").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("ApplicationNewWindowAttachBtn").click();

		Thread.sleep(3000);

		Alert alert = driver.switchTo().alert();
		alert.accept();
		driver.switchTo().window(winHandleBefore);
	}

	@And("^check the days diffrence$")
	public void check_the_days_diffrence() throws Throwable {

		String endDate = element("ApplicationEnrollmentEndDate").getText();
		String startDate = element("Enrollmentdate").getText();

		SimpleDateFormat sdFormat = new SimpleDateFormat("MM/DD/yyyy");

		Date startDateObj = sdFormat.parse(startDate);
		Date endDateObj = sdFormat.parse(endDate);

		long timeDiff = endDateObj.getTime() - startDateObj.getTime();
		long daysDiff = timeDiff / (1000 * 60 * 60 * 24);
		System.out.println("Time difference in days: " + daysDiff);

		if (daysDiff == 365) {
			System.out.println("test pass");
		} else {
			AssertJUnit.fail();
		}
	}

	@And("^Edit the Enrollment Start Date and End date in Devlopers console within 2 months$")
	public void edit_the_enrollment_start_date_and_end_date_in_devlopers_console_within_2_months() throws Throwable {

		Actions action = new Actions(driver);
		action.sendKeys(element("AppDriverApexCode"), Keys.CONTROL + "a");
		action.sendKeys(Keys.DELETE).build().perform();
		action.keyDown(Keys.CONTROL).sendKeys(String.valueOf(
				"List<Application__c> applist = [Select id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C from Application__C where Name='"
						+ Variable1
						+ "'];for(Application__C ap : applist){ap.EnrollmentDate__C = Date.newInstance( 2019, 2, 10 );ap.Enrollment_EndDate__C = Date.newInstance( 2020, 2, 10 );}Update applist;"))
				.perform();
		// element("AppDriverApexCode").sendKeys("List<Application__c> applist = [Select
		// id, Name, EnrollmentDate__C, Enrollment_EndDate__C, Account__r.Name,Active__C
		// from Application__C where Name='327222'];for(Application__C ap :
		// applist){ap.EnrollmentDate__C = Date.newInstance( 2018, 9, 25
		// );ap.Enrollment_EndDate__C = Date.newInstance( 2019, 9, 24 );}Update
		// applist;");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(3000);

	}

	@Then("^please select service offering to reenrollment$")
	public void please_select_service_offering_to_reenrollment() throws Throwable {
		driver.switchTo().frame(element("ApplicationPageIframe"));
		Select Drop = new Select(element("SelectServiceOfferingDropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Service Offer 2"));
		element("EPR_ApplicationBrowseLink").click();
		// element("EPR_ApplicationDocumentNameCheckbox").click();
		element("AppSelectSupprotingDocSecond").click();

		element("ERP_ApplicationInformationAttachBtn").click();
		element("ERP_ApplicationInformationProceedLink").click();
		assertTrue("Application Information Page is Displayed", element("ApplicationInformationHeader").isDisplayed());
		System.out.println("Application Information Page is Displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	// vivek code march3rd

	@Then("^Click on Application number under the 'Applications' second$")
	public void click_on_application_number_under_the_applications_second() throws Throwable {
		driver.navigate().refresh();
		Thread.sleep(5000);
		element("ApplicationnumberLink").click();
	}

	@Then("^Select Reason for PAP Appeal as 'Out Patient' > Select Appeal Status as Approved > Enter Total OOPE > Click on save button$")
	public void select_reason_for_pap_appeal_as_us_residency_select_appeal_status_as_approved_enter_total_oope_click_on_save_button()
			throws Throwable {
		element("Appeals_SelectOutPatientInDropdown").click();
		element("ReasonForPAPAppealAddButton").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "Appeal Status"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("AppealsSaveButton").click();
	}

	@And("^Select AppRX Checkbox>Set RX Date>Click on 'Save' Button Again$")
	public void select_apprx_checkboxset_rx_dateclick_on_save_button_again() throws Throwable {

		System.out.println("Inside Method");
		try {
			// Alert a = driver.switchTo().alert();
			System.out.println("Alert Message: ");

			// a.dismiss();

			// driver.switchTo().parentFrame();

			// driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions.visibilityOfElementLocated((By.xpath("//input[contains(@id,'apprxsign')]"))));

			CommonMethods.PerformClickOnObject(element("AppRXSignedChkBox"));
			CommonMethods.PerformClickOnObject(element("RXDateLink"));
			// Thread.sleep(3000);
			CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));

		} catch (Exception e) {

			// CommonMethods.PerformClickOnObject(element("AppRXSignedChkBox"));
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

	@Then("^Verify the msg that more than one product can not be added on same prescription$")
	public void verify_the_msg_that_more_than_one_product_can_not_be_added_on_same_prescription() throws Throwable {

		assertTrue(element("AppErrorMorethanonepresciption").isDisplayed(), "");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// String text = element("AppErrorMorethanonepresciption").getText();
		// String x= "You cannot create another prescription as there is an already
		// existing prescription (AP-412395 for the same medication and practitioner )
		// Please use the existing prescription.";
		// if(text.contains(x)) {
		// System.out.println("pass");
		// }
		//
		// else {
		// Assert.fail();
		// }
	}

	@And("^Select Second AppRX Checkbox>Set RX Date>Click on 'Save' Button$")
	public void select_Second_apprx_checkboxset_rx_dateclick_on_save_button() throws Throwable {

		/*
		 * CommonMethods.ScrolDownToTheObject(element("AppRXSignedChkBoxTwo"));
		 * element("AppRXSignedChkBoxTwo").click(); element("RXDateLinkTwo").click();
		 * 
		 * 
		 * 
		 * element("ApplicationSaveButton").click();
		 * 
		 * 
		 * 
		 * try { Thread.sleep(3000); System.out.println("save ");
		 * element("ApplicationSaveButton").click(); Thread.sleep(8000);
		 * 
		 * 
		 * 
		 * } catch (Exception e) {
		 * 
		 * 
		 * 
		 * } Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		 */

		System.out.println("Inside Method");
		try {
			// Alert a = driver.switchTo().alert();
			System.out.println("Alert Message: ");

			// a.dismiss();

			// driver.switchTo().parentFrame();

			// driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions
					.visibilityOfElementLocated((By.xpath("(//input[contains(@id,'apprxsign')])[2]"))));
			if (element("AppRXSignedChkBoxTwo") != null) {
				System.out.println("object is formed");
			}
			CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
			Thread.sleep(2000);
			// CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
			// try {
			// if(element("AppRXSignedChkBoxTwo").isSelected())
			// {
			// System.out.println("checkbox is selected");
			// }
			// }
			// catch(Exception e){
			//
			// CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
			// }

			CommonMethods.PerformClickOnObject(element("RXDateLinkTwo"));
			// Thread.sleep(3000);
			CommonMethods.PerformClickOnObject(element("ApplicationSaveButton"));

		} catch (Exception e) {

			CommonMethods.PerformClickOnObject(element("AppRXSignedChkBoxTwo"));
			CommonMethods.PerformClickOnObject(element("RXDateLinkTwo"));

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

	@Then("^Select Pill quantity more than 280 in Third$")
	public void select_pill_quantity_more_than_280_in_third() throws Throwable {

		driver.switchTo().frame(element("Frame_PrescriptionPageIframe"));
		element("AppThirdPillTextbox").clear();
		element("AppThirdPillTextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PillQty3"));

	}

	@Then("^Verify 'No Enrollment for Group C product' Error Message is displayed$")
	public void verify_no_enrollment_for_group_c_product_error_message_is_displayed() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		element("AppAvailedPrevnar").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		driver.close();
		driver.switchTo().window(winHandleBefore);

	}

	/*
	 * @And("^In Application page Verify the Approval status$") public void
	 * In_Application_page_Verify_the_Approval_status() throws Throwable {
	 * 
	 * Thread.sleep(3000); JavascriptExecutor jse = (JavascriptExecutor)driver;
	 * jse.executeScript("window.scrollBy(0,250)");
	 * 
	 * 
	 * //
	 * assertTrue("Verify Approval status",element("ApprovalStatusText").getText().
	 * equals(getDataFromExcel(ModuleName, TestCaseID, "Approval Status")));
	 * 
	 * assertTrue(element("ApprovalStatusText").isDisplayed()); }
	 */ // manoj code is commented

	@Then("^Verify that Duplicate NDC Red Alert message is intact$")
	public void verify_that_duplicate_ndc_red_alert_message_is_intact() throws Throwable {
		Assert.assertTrue(element("CannotCreateAnotherPresxErrMsg").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Inactivation pop up for existing prescription should be intact for Duplicate NDC$")
	public void inactivation_pop_up_for_existing_prescription_should_be_intact_for_duplicate_ndc() throws Throwable {

		assertTrue("Ensure Valid Practitioner pop up is displayed",
				element("Application_PrescriptionIsAlreadyPresentTxt").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_PrescriptionIsAlreadyPresentYesbtn").isDisplayed();
		element("Application_PrescriptionIsAlreadyPresentNobtn").isDisplayed();
	}

	@And("^Click on 'Application Prescriptions' > 'New'1 $")
	public void click_on_application_prescriptions_new1() throws Throwable {
		Thread.sleep(3000);

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		CommonMethods.PerformClickOnObject(element("ApplicationPrescriptionsLink"));
		driver.navigate().refresh();
		element("DocumentsNewButton").click();

	}

	@Then("^Verify the GroupCError Msg and click on Save outcome$")
	public void verify_the_groupcerror_msg_and_click_on_save_outcome() throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		Thread.sleep(3000);
		driver.manage().window().maximize();

		try {
			Assert.assertTrue(objRepo.getInitialandRefillHardstopperNDCObject().ErrormsgGroupC.isDisplayed());
		} catch (Exception e) {

		}
		CommonMethods.PerformClickOnObject(element("SaveOutcomeButton"));
		driver.switchTo().window(winHandleBefore);

	}

	@Then("^Verify that following Incomplete reason 'No ReEnrollment available for Group C products' displays$")
	public void verify_that_following_incomplete_reason_no_reenrollment_available_for_group_c_products_displays()
			throws Throwable {
		Thread.sleep(5000);
		String winHandleBefore = driver.getWindowHandle();
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		Thread.sleep(3000);
		driver.manage().window().maximize();
		try {
			Assert.assertTrue(objRepo.getInitialandRefillHardstopperNDCObject().ErrormsgGroupCreenroll.isDisplayed());
		} catch (Exception e) {
			System.out.println("No Re-Enrollment available for Group C products");
		}
		CommonMethods.PerformClickOnObject(element("SaveOutcomeButton"));
		driver.switchTo().window(winHandleBefore);

	}

	@Then("^Verify that On Clicking Refill button following error message$")
	public void verify_that_on_clicking_refill_button_following_error_message() throws Throwable {

		Assert.assertTrue(objRepo.getInitialandRefillHardstopperNDCObject().RefillErrormsg.isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@When("^Select Global Search from Dropdown1$")
	public void select_global_search_from_dropdown1() throws Throwable {
		Thread.sleep(5000);
		driver.navigate().refresh();
		try {
			Thread.sleep(3000);
		} catch (Exception e) {
			driver.switchTo().alert().accept();
		}
		Thread.sleep(3000);
		element("showNavigationMenuButton").click();

		element("GlobalSearchLink").click();
		try {
			driver.switchTo().alert().accept();
		} catch (Exception e) {

		}

	}
	 @And("^Verify Prescriber Missing details flag is getting disabled$")
	    public void verify_prescriber_missing_details_flag_is_getting_disabled() throws Throwable {
		 Thread.sleep(3000);
		 Alert alert1 = driver.switchTo().alert();
			String alttext = alert1.getText();
			System.out.println(alttext);

			assertTrue("Practitioner Details are mandatory is Displayed", alttext.contains("Practitioner Details are mandatory"));
			alert1.accept();
	    }
}
