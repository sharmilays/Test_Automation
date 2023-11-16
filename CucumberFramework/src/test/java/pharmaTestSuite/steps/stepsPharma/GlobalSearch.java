package pharmaTestSuite.steps.stepsPharma;

import static org.testng.AssertJUnit.assertTrue;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import junit.framework.Assert;
import objectRepository.GetObj;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

public class GlobalSearch extends GetObj {

	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;

	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;


	@SuppressWarnings("static-access")
	public GlobalSearch(WebDriverFactory DriverFactory) throws Exception
	{
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();

	}



	@When("^Select Global Search from Dropdown$")
	public void select_global_search_from_dropdown() throws Throwable {
		
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
	}

	@Then("^Verify the radio buttons present of Global Search page$")
	public void verify_the_radio_buttons_present_of_global_search_page() throws Throwable {

		   driver.navigate().refresh();
		   Thread.sleep(5000);
		  try {
		   driver.switchTo().frame(element("PatientPageIframe"));
		   System.out.println("Navigated to frame");
		  }catch(Exception e) {
		   System.out.println("No Frame");
		  }  
		//  try {
		//   driver.switchTo().alert().accept();
		//  }catch(NoSuchWindowException e) {
		//   System.out.println("No Alert displayed");
		//  }    
		   assertTrue("Patient Radio Button is displayed",element("PatientRadioButton").isDisplayed());
		   assertTrue("Practitioner Radio Button is displayed",element("PractitionerRadioButton").isDisplayed());
		   assertTrue("Facility Radio Button is displayed",element("FacilityRadioButton").isDisplayed());
		   assertTrue("Order Radio Button is displayed",element("OrderRadioButton").isDisplayed());
		   assertTrue("Application Radio Button is displayed",element("ApplicationRadioButton").isDisplayed());
		   assertTrue("Prescription Radio Button is displayed",element("PrescriptionRadioButton").isDisplayed());
		   assertTrue("External Inquiry Radio Button is displayed",element("ExternalInquiryRadioButton").isDisplayed());
		   assertTrue("PO Number Radio Button is displayed",element("PONumberRadioButton").isDisplayed());
		   Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify 'Field' drop down values for 'Patient' radio button$")
	public void verify_field_drop_down_values_for_patient_radio_button() throws Throwable {

		element("PatientRadioButton").click();	
		System.out.println(getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue1"));
		Thread.sleep(3000);
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue1"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue2"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue3"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue4"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue5"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue6"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue7"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue8"));

		element("Patientdropdown").click();	
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.selectFromDropDownByVisibleText(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue1"));

	}

	@Then("^Verify 'Field' drop down values for 'Practitioner' radio button$")
	public void verify_field_drop_down_values_for_practitioner_radio_button() throws Throwable {
		element("PractitionerRadioButton").click();
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Practitionerdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue1"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Practitionerdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue2"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Practitionerdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PractitionerDropdownValue1"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Practitionerdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PractitionerDropdownValue2"));

		element("Practitionerdropdown").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.selectFromDropDownByVisibleText(element("Practitionerdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue1"));
	}

	@Then("^Verify 'Field' drop down values for 'Facility' radio button$")
	public void verify_field_drop_down_values_for_facility_radio_button() throws Throwable {
		element("FacilityRadioButton").click();
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Facilitydropdown"), getDataFromExcel(ModuleName,TestCaseID, "FacilityDropdownValue1"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Facilitydropdown"), getDataFromExcel(ModuleName,TestCaseID, "FacilityDropdownValue2"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Facilitydropdown"), getDataFromExcel(ModuleName,TestCaseID, "FacilityDropdownValue3"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Facilitydropdown"), getDataFromExcel(ModuleName,TestCaseID, "FacilityDropdownValue4"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Facilitydropdown"), getDataFromExcel(ModuleName,TestCaseID, "FacilityDropdownValue5"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Facilitydropdown"), getDataFromExcel(ModuleName,TestCaseID, "FacilityDropdownValue6"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Facilitydropdown"), getDataFromExcel(ModuleName,TestCaseID, "FacilityDropdownValue7"));
		element("Facilitydropdown").click();	
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.selectFromDropDownByVisibleText(element("Facilitydropdown"), getDataFromExcel(ModuleName,TestCaseID, "FacilityDropdownValue1"));
	}

	@Then("^Verify 'Field' drop down values for 'Order' radio button$")
	public void verify_field_drop_down_values_for_order_radio_button() throws Throwable {
		element("OrderRadioButton").click();
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Orderdropdown"), getDataFromExcel(ModuleName,TestCaseID, "OrderDropdownValue1"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Orderdropdown"), getDataFromExcel(ModuleName,TestCaseID, "OrderDropdownValue2"));
		element("Orderdropdown").click();	
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.selectFromDropDownByVisibleText(element("Orderdropdown"), getDataFromExcel(ModuleName,TestCaseID, "OrderDropdownValue1"));
	}

	@Then("^Verify 'Field' drop down values for 'Application' radio button$")
	public void verify_field_drop_down_values_for_application_radio_button() throws Throwable {
		element("ApplicationRadioButton").click();
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Applicationdropdown"), getDataFromExcel(ModuleName,TestCaseID, "ApplicationDropdownValue1"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Applicationdropdown"), getDataFromExcel(ModuleName,TestCaseID, "ApplicationDropdownValue1"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Applicationdropdown"), getDataFromExcel(ModuleName,TestCaseID, "ApplicationDropdownValue1"));
		element("Applicationdropdown").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.selectFromDropDownByVisibleText(element("Applicationdropdown"), getDataFromExcel(ModuleName,TestCaseID, "ApplicationDropdownValue1"));
	}

	@Then("^Verify 'Field' drop down values for ' Prescription'radio button$")
	public void verify_field_drop_down_values_for_prescriptionradio_button() throws Throwable {
		element("PrescriptionRadioButton").click();
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Prescriptiondropdown"), getDataFromExcel(ModuleName,TestCaseID, "PrescriptionDropdownValue1"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Prescriptiondropdown"), getDataFromExcel(ModuleName,TestCaseID, "PrescriptionDropdownValue2"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Prescriptiondropdown"), getDataFromExcel(ModuleName,TestCaseID, "PrescriptionDropdownValue3"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Prescriptiondropdown"), getDataFromExcel(ModuleName,TestCaseID, "PrescriptionDropdownValue4"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Prescriptiondropdown"), getDataFromExcel(ModuleName,TestCaseID, "PrescriptionDropdownValue5"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Prescriptiondropdown"), getDataFromExcel(ModuleName,TestCaseID, "PrescriptionDropdownValue6"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Prescriptiondropdown"), getDataFromExcel(ModuleName,TestCaseID, "PrescriptionDropdownValue7"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("Prescriptiondropdown"), getDataFromExcel(ModuleName,TestCaseID, "PrescriptionDropdownValue8"));

		element("Prescriptiondropdown").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.selectFromDropDownByVisibleText(element("Prescriptiondropdown"), getDataFromExcel(ModuleName,TestCaseID, "PrescriptionDropdownValue2"));
	}

	@Then("^Verify 'Field' drop down values for ' External Inquiry'radio button$")
	public void verify_field_drop_down_values_for_external_inquiryradio_button() throws Throwable {
		element("ExternalInquiryRadioButton").click();

		CommonMethods.VerifyDropDownValuesBySelectClass(element("ExternalInquirydropdown"), getDataFromExcel(ModuleName,TestCaseID, "ExternalInquiryDropdownValue1"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("ExternalInquirydropdown"), getDataFromExcel(ModuleName,TestCaseID, "ExternalInquiryDropdownValue2"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("ExternalInquirydropdown"), getDataFromExcel(ModuleName,TestCaseID, "ExternalInquiryDropdownValue3"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("ExternalInquirydropdown"), getDataFromExcel(ModuleName,TestCaseID, "ExternalInquiryDropdownValue4"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("ExternalInquirydropdown"), getDataFromExcel(ModuleName,TestCaseID, "ExternalInquiryDropdownValue5"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("ExternalInquirydropdown"), getDataFromExcel(ModuleName,TestCaseID, "ExternalInquiryDropdownValue6"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("ExternalInquirydropdown"), getDataFromExcel(ModuleName,TestCaseID, "ExternalInquiryDropdownValue7"));
		element("ExternalInquirydropdown").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.selectFromDropDownByVisibleText(element("ExternalInquirydropdown"), getDataFromExcel(ModuleName,TestCaseID, "ExternalInquiryDropdownValue1"));
	}

	@Then("^Verify 'Field' drop down values for 'PO Number' radio button$")
	public void verify_field_drop_down_values_for_po_number_radio_button() throws Throwable {
		element("PONumberRadioButton").click();
		CommonMethods.VerifyDropDownValuesBySelectClass(element("PONumberdropdown1"), getDataFromExcel(ModuleName,TestCaseID, "PONumberDropdownValue1"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("PONumberdropdown2"), getDataFromExcel(ModuleName,TestCaseID, "ExternalInquiryDropdownValue3"));
		CommonMethods.VerifyDropDownValuesBySelectClass(element("PONumberdropdown2"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue3"));
		element("PONumberdropdown2").click();
		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.selectFromDropDownByVisibleText(element("PONumberdropdown2"), getDataFromExcel(ModuleName,TestCaseID, "ExternalInquiryDropdownValue3"));
		Thread.sleep(2000);
	}



	@Then("^Click On 'Patient' Radio Button$")
	public void click_on_patient_radio_button() throws Throwable {
		element("PatientRadioButton").click();	
	}

	@And("^click on search button in global Page$")
	public void click_on_search_button_in_global_page() throws Throwable {
		Thread.sleep(2000);
		WebDriverWait wait = new WebDriverWait(driver, 50);
		wait.until(ExpectedConditions.elementToBeClickable((By.xpath("//input[@type='submit' and @value='Search']"))));
		element("Global_SearchButton").click();
		//CommonMethods.PerformClickOnObject(element("Global_SearchButton"));

	}
	@Then("^Select a value in feild dropdown$")
	public void select_a_value_in_feild_dropdown() throws Throwable {
		Thread.sleep(3000);
		CommonMethods.selectFromDropDownByVisibleText(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientDropdownValue1"));  	

	}

	@Then("^Enter the text in value feild$")
	public void enter_the_text_in_value_feild() throws Throwable {
		System.out.println(getDataFromExcel(ModuleName,TestCaseID, "FeildText"));
		Thread.sleep(2000);
		element("PatientValueTextBox1").clear();
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "FeildText"));
	}

	@Then("^Verify No alert pop is displayed$")
	public void verify_no_alert_pop_is_displayed() throws Throwable {

		assertTrue("Patient Radio Button is displayed",element("NoResultsReturnedMessageError").isDisplayed());	
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify 'Patient' radio button is selected$")
	public void verify_patient_radio_button_is_selected() throws Throwable {
		assertTrue("Patient Radio Button is Selected",element("PatientRadioButton").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify 'Please select field' message error Popup$")
	public void verify_please_select_field_message_error_popup() throws Throwable {
		String alertText =driver.switchTo().alert().getText();
		//String alertText = CommonMethods.getAlertText();
		
		System.out.println(alertText);
		assertTrue("'Please select field' text in alert",alertText.equals(getDataFromExcel(ModuleName, TestCaseID, "ValidationErrorMessage1")));
		CommonMethods.acceptAlert();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}



	@And("^Verify 'Please enter value' message error Popup$")
	public void verify_please_enter_value_message_error_popup() throws Throwable {

		//	assertTrue("'Please select Value' text in alert",CommonMethods.isAlertPresent());
		String alertText = CommonMethods.getAlertText();
		System.out.println(alertText);
		assertTrue("'Please select Value' text in alert",alertText.equals(getDataFromExcel(ModuleName, TestCaseID, "ValidationErrorMessage2")));
		CommonMethods.acceptAlert();

	}


	@Then("^Click On 'Practitioner' Radio Button$")
	public void click_on_practitioner_radio_button() throws Throwable {
		element("PractitionerRadioButton").click();
	}


	@Then("^Click On 'Facility' Radio Button$")
	public void click_on_facility_radio_button() throws Throwable {
		element("FacilityRadioButton").click();
	}


	@Then("^Click On 'Order' Radio Button$")
	public void click_on_order_radio_button() throws Throwable {
		element("OrderRadioButton").click();
	}

	@Then("^Click On 'Application' Radio Button$")
	public void click_on_application_radio_button() throws Throwable {
		element("ApplicationRadioButton").click();
	}


	@Then("^Click On 'Prescription' Radio Button$")
	public void click_on_prescription_radio_button() throws Throwable {
		element("PrescriptionRadioButton").click();
	}

	@Then("^Click On 'External Inquiry' Radio Button$")
	public void click_on_external_inquiry_radio_button() throws Throwable {
		element("ExternalInquiryRadioButton").click();
	}


	@Then("^Click On 'PO number' Radio Button$")
	public void click_on_po_number_radio_button() throws Throwable {
		element("PONumberRadioButton").click();
	}


	@And("^Verify 'Practitioner' radio button is selected$")
	public void verify_practitioner_radio_button_is_selected() throws Throwable {
		assertTrue("Patient Radio Button is Selected",element("PractitionerRadioButton").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify 'Facility' radio button is selected$")
	public void verify_facility_radio_button_is_selected() throws Throwable {
		assertTrue("Patient Radio Button is Selected",element("FacilityRadioButton").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Verify 'Order' radio button is selected$")
	public void verify_order_radio_button_is_selected() throws Throwable {
		assertTrue("Patient Radio Button is Selected",element("OrderRadioButton").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify 'Application' radio button is selected$")
	public void verify_application_radio_button_is_selected() throws Throwable {
		assertTrue("Patient Radio Button is Selected",element("ApplicationRadioButton").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify 'Prescription' radio button is selected$")
	public void verify_prescription_radio_button_is_selected() throws Throwable {
		assertTrue("Patient Radio Button is Selected",element("PrescriptionRadioButton").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify 'External Inquiry' radio button is selected$")
	public void verify_external_inquiry_radio_button_is_selected() throws Throwable {
		assertTrue("Patient Radio Button is Selected",element("ExternalInquiryRadioButton").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify 'PO number' radio button is selected$")
	public void verify_po_number_radio_button_is_selected() throws Throwable {
		assertTrue("Patient Radio Button is Selected",element("PONumberRadioButton").isSelected());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}


	@And("^Select 'Contains' from operator dropdown$")
	public void select_contains_from_operator_dropdown() throws Throwable {
		CommonMethods.selectFromDropDownByVisibleText(element("FirstOperatorDropdown"), getDataFromExcel(ModuleName,TestCaseID, "containsOperatorValue"));
	}

	@And("^Select 'equals' from operator dropdown$")
	public void select_equals_from_operator_dropdown() throws Throwable {

		CommonMethods.selectFromDropDownByVisibleText(element("FirstOperatorDropdown"), getDataFromExcel(ModuleName,TestCaseID, "equalsOperatorValue"));
	}

	@And("^Select 'starts with' from operator dropdown$")
	public void select_starts_with_from_operator_dropdown() throws Throwable {
		CommonMethods.selectFromDropDownByVisibleText(element("FirstOperatorDropdown"), getDataFromExcel(ModuleName,TestCaseID, "startwithOperatorValue"));
	}

	@And("^Select 'ends with' from operator dropdown$")
	public void select_ends_with_from_operator_dropdown() throws Throwable {
		CommonMethods.selectFromDropDownByVisibleText(element("FirstOperatorDropdown"), getDataFromExcel(ModuleName,TestCaseID, "endswithOperatorValue"));
	}

	@Then("^Select a 'Patient ID' in feild dropdown$")
	public void select_a_patient_id_in_feild_dropdown() throws Throwable {

		CommonMethods.selectFromDropDownByVisibleText(element("Patientdropdown"), getDataFromExcel(ModuleName,TestCaseID, "PatientIDPatientDropdownValue"));

	}


	@Then("^Verify Patient Result displayed based on 'ends with'$")
	public void verify_patient_result_displayed_based_on_end_with() throws Throwable {
		assertTrue("Combination with contains",element("FirstPatienIDInGlobalSearch").getText().endsWith(getDataFromExcel(ModuleName,TestCaseID, "Ends With").toString()));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify Patient Result displayed based on 'starts with'$")
	public void verify_patient_result_displayed_based_on_start_with() throws Throwable {   
		assertTrue("Combination with contains",element("FirstPatienIDInGlobalSearch").getText().startsWith(getDataFromExcel(ModuleName,TestCaseID, "Starts With").toString()));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify Patient Result displayed based on 'equals'$")
	public void verify_patient_result_displayed_based_on_equals() throws Throwable {
		assertTrue("Combination with contains",element("FirstPatienIDInGlobalSearch").getText().equals(getDataFromExcel(ModuleName,TestCaseID, "Equals").toString()));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));	

	}

	@Then("^Verify Patient Result displayed based on 'Contains'$")
	public void verify_patient_result_displayed_based_on_contains() throws Throwable {
		Thread.sleep(2000);

		assertTrue("Combination with contains",element("FirstPatienIDInGlobalSearch").getText().contains(getDataFromExcel(ModuleName,TestCaseID, "Contains").toString()));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));	
	}


	@And("^Enter the 'Patien Id' in value feild$")
	public void enter_the_patien_id_in_value_feild() throws Throwable {
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "Patient ID"));

	}


	@Then("^Enter the 'Invalid PO Number' in value feild$")
	public void enter_the_invalid_po_number_in_value_feild() throws Throwable {
		Thread.sleep(2000);
		element("PatientValueTextBox1").clear();
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "InvalidPONumber"));


	}

	@And("^Enter the equal text in value feild$")
	public void enter_the_equla_text_in_value_feild() throws Throwable {
		Thread.sleep(2000);
		element("PatientValueTextBox1").clear();
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "Equals"));
	}



	@And("^Enter the Start with text in value feild$")
	public void enter_the_start_with_text_in_value_feild() throws Throwable {
		Thread.sleep(2000);
		element("PatientValueTextBox1").clear();
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "Starts With"));
	}

	@Then("^Verify 'Invalid PO Number' pop up is displayed$")
	public void verify_invalid_po_number_pop_up_is_displayed() throws Throwable {
		String alertText = CommonMethods.getAlertText();
		assertTrue("'Please select field' text in alert",alertText.equals(getDataFromExcel(ModuleName, TestCaseID, "ValidationErrorMessage2")));
		CommonMethods.acceptAlert();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}


	@Then("^Verify No Alert pop is Appeared and result is Dispalyed$")
	public void verify_no_alert_pop_is_appeared_and_result_is_dispalyed() throws Throwable {
		assertTrue("PO Number result is Displayed displayed",element("PONumberResult").isDisplayed());	
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}
}





