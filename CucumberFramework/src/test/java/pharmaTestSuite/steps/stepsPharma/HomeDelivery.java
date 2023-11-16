package pharmaTestSuite.steps.stepsPharma;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchFrameException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import objectRepository.GetObj;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

public class HomeDelivery extends GetObj {

	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;
	public static String RX_ID;
	public static String PrescriptionID;
	public static String ApplicationID;

	@SuppressWarnings("static-access")
	public HomeDelivery(WebDriverFactory DriverFactory) throws Exception {
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();
	}

	@Then("^Verify that manual auto populated Appeals Notes should display to agent$")
	public void verify_that_manualauto_populated_appeals_notes_should_display_to_agent() throws Throwable {
		List<WebElement> element = new ArrayList<WebElement>();
		element = driver.findElements(By.cssSelector("div > iframe"));
		int b = element.size();
		for (int i = 0; i <= b; i++) {
			try {
				driver.switchTo().frame(i);
				break;
			} catch (Exception e) {
				assertTrue(element("ActivityCode").isDisplayed());
				System.out.println("Appeal Notes is displayed");
				assertTrue(element("Comments2").isDisplayed());
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			}

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

	}

	@Then("^Click on Appeal save button$")
	public void click_on_appeal_save_button() throws Throwable {

		Thread.sleep(2000);
		element("AppealsSaveButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Select Outreach as Outbound Call$")
	public void select_outreach_as_outbound_call() throws Throwable {

		Thread.sleep(3000);
		element("OutreachDropDown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("OutreachDropDown"),
				getDataFromExcel(ModuleName, TestCaseID, "OutboundCall"));
		// assertTrue(element("OutreachOption2").getText().equals(getDataFromExcel(ModuleName,
		// TestCaseID, "OutreachOption2").trim()));

	}

	@Then("^Verify that 'Activity Code' drop down should not consist of 'Appeal Notes' value for appeals agent$")
	public void verify_that_activity_code_drop_down_should_not_consist_of_appeal_notes_value_for_appeals_agent()
			throws Throwable {

		Thread.sleep(5000);
		// CommonMethods.PerformClickOnObject(element("ActivityCodeDropdwn"));
		// element("ActivityCodeDropdwn").click();
		// element("ActivityCodeDropdwn").click();
		try {

			CommonMethods.selectFromDropDownByVisibleText(element("ActivityCodeDropdwn"),
					getDataFromExcel(ModuleName, TestCaseID, "AppealNotes"));
			// Select Drop1 = new Select(element("ActivityCodeDropdwn"));
			// Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID,
			// "AppealNotes"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {
			System.out.println("Appeal Notes not present for agent login");

		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that all the other outbound outreaches made should be tracked at the activity log manually by appeals agent$")
	public void verify_that_all_the_other_outboundoutreaches_made_should_be_tracked_at_the_activity_log_manually_by_appeals_agent()
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
				// assertTrue( element("ActivityCode").isDisplayed());
				assertTrue(element("Comments2").isDisplayed());
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			}

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@Then("^Verify in OVM display 'Group A Product cannot be shipped to patient'$")
	public void verify_in_ovm_display_group_a_product_cannot_be_shipped_to_patient() throws Throwable {

		Thread.sleep(7000);
		String winHandleBefore = driver.getWindowHandle();
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		driver.manage().window().maximize();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		// try {
		//
		// WebElement ele1 = element("CreateOrderButton");
		// System.out.println(ele1.isDisplayed());
		// } catch (NoSuchElementException | NoSuchFrameException e) {
		//
		// System.out.println("Create Order button should not display");
		//// assertTrue("Group A Product cannot be shipped to
		// patient",element("OVM_ReasonProd").isDisplayed());
		// }
		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("OVM_ReasonProd"));
		// assertTrue("Group A Product cannot be shipped to
		// patient",element("OVM_ReasonProd").isDisplayed());
		assertTrue(element("OVM_ReasonProd").isDisplayed(), "Group A Product cannot be shipped to patient");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("SaveOutcomeButton"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		driver.switchTo().window(winHandleBefore);

	}

	@Then("^Verify that 'Appeal Notes' value should display below 'Appeals Incomplete Letter Sent'$")
	public void verify_that_appeal_notes_value_should_display_below_appeals_incomplete_letter_sent() throws Throwable {

		Thread.sleep(5000);

		Select Drop1 = new Select(element("ActivityCodeDropdwn"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealCode"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		Select Drop2 = new Select(element("ActivityCodeDropdwn"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "AppealNotes"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// assertTrue(element("AppealCode1").getText().equals(getDataFromExcel(ModuleName,
		// TestCaseID, "AppealCode")));
		// assertTrue(element("AppealCode2").getText().equals(getDataFromExcel(ModuleName,
		// TestCaseID, "AppealNotes")));

	}

	@Then("^Verify that selected outreach value is populating in the activity log$")
	public void verify_that_selected_outreach_value_is_populating_in_the_activity_log() throws Throwable {
		Thread.sleep(4000);

		List<WebElement> element = new ArrayList<WebElement>();
		element = driver.findElements(By.cssSelector("div > iframe"));
		int b = element.size();
		for (int i = 0; i <= b; i++) {
			try {
				driver.switchTo().frame(i);
				break;
			} catch (Exception e) {
				// assertTrue( element("ActivityCode").isDisplayed());
				assertTrue(element("Comments").isDisplayed());
			}

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		}
	}

	@Then("^Verify that changes should not be saved$")
	public void verify_that_changes_should_not_be_saved() throws Throwable {

		Thread.sleep(4000);
		try {
			assertTrue(element("AppealsSaveButton").isDisplayed());
		} catch (Exception e) {
			System.out.println("Appeal Save button is still appearing on page,so changes not saved");
		}
		// element("AppealsSaveButton").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Check the Client Appeal checkbox$")
	public void check_the_client_appeal_checkbox() throws Throwable {

		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("Level2Appeals"));
		CommonMethods.PerformClickOnObject(element("Level2Appeals"));
		// element("Level2Appeals").click();
		assertTrue(element("ClientAppealChkBox").isDisplayed());
		// element("ClientAppealChkBox").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that user is able select one of the status$")
	public void verify_that_user_is_able_select_one_of_the_status() throws Throwable {

		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("AppealsStatusDropdown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "AppealStatus"));
		// element("AppealsSaveButton").click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that user is able select Available Documents after appeal$")
	public void verify_that_user_is_able_select_available_documents_after_appeal() throws Throwable {

		Thread.sleep(4000);
		element("AvailDocs1").click();
		element("AvailDocs2").click();
		element("AvailDocs3").click();
		element("AvailDocs4").click();
		element("AvailDocs5").click();
		element("AvailDocs6").click();
		element("AvailDocs7").click();
		element("AvailDocs8").click();
		element("AvailDocs9").click();
		element("AvailDocs10").click();
		element("AvailDocs11").click();
		element("AvailDocs12").click();
		System.out.println("user is able to select Documents");

	}

	@Then("^Verify that user is able select reason for PAP Appeal based on document received patient HCP$")
	public void verify_that_user_is_able_select_reason_for_pap_appeal_based_on_document_received_patient_hcp()
			throws Throwable {

		Thread.sleep(3000);
		element("SelectPatientHardship").click();
		element("SelectHCPReason1").click();
		System.out.println("User is able to select reason");
	}

	@Then("^Verify that 'Reason of PAP Appeal' should consist all values$")
	public void verify_that_reason_of_pap_appeal_should_consist_all_values() throws Throwable {

		Thread.sleep(3000);
		assertTrue(element("SelectPatientHardship").isDisplayed());
		assertTrue(element("SelectHCPReason1").isDisplayed());

	}

	@Then("^Verify it displays 'Cannot create an appeal on this application'$")
	public void verify_it_displays_cannot_create_an_appeal_on_this_application() throws Throwable {
		Thread.sleep(3000);
		assertTrue(element("AppealErrorMsg").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that system should display error message like 'Only Denied Application is eligible for PAP Appeal'$")
	public void verify_that_system_should_display_error_message_like_only_denied_application_is_eligible_for_pap_appeal()
			throws Throwable {
		Thread.sleep(4000);
		assertTrue(element("Errormsgg").isDisplayed());
	}

	@Then("^Verify Specialist is able to create an Home Delivery Appeal and system should not throw an error message$")
	public void verify_specialist_is_able_to_create_an_home_delivery_appeal_and_system_should_not_throw_an_error_message()
			throws Throwable {
		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		Thread.sleep(2000);
		driver.manage().window().maximize();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// Assert.assertFalse(element("CreateOrderButton").isDisplayed());

		try {
			WebElement ele1 = element("AppealErrorMsg");
			System.out.println(ele1.isDisplayed());
			// assertTrue( element("ApplicationPrescriptionsLink").isDisplayed());
			// System.out.println(" Specialist is able to create an Home Delivery Appeal");

		} catch (Exception e) {

			System.out.println("system should not throw an error message");
		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that Supervisor Override button should not be present$")
	public void verify_that_supervisor_override_button_should_not_be_present() throws Throwable {

		Thread.sleep(5000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		Thread.sleep(2000);
		driver.manage().window().maximize();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// Assert.assertFalse(element("CreateOrderButton").isDisplayed());

		try {
			WebElement ele1 = element("SupervisorOverrideButton");
			System.out.println(ele1.isDisplayed());
		} catch (NoSuchElementException | NoSuchFrameException e) {

			System.out.println("Supervisor Override button should not be present");
		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Click on View Logs button$")
	public void click_on_view_logs_button() throws Throwable {
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("ViewLogsBtnn"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Select reasons for appeal$")
	public void select_reasons_for_appeal() throws Throwable {

		Thread.sleep(3000);
		element("SelectPatientHardship").click();
		element("ReasonForPAPAppealAddButton").click();
		element("SelectHCPReason1").click();
		element("ReasonForPAPAppealAddButton").click();

	}

	@Then("^Select Appeal Status$")
	public void select_appeal_status() throws Throwable {
		Thread.sleep(2000);
		element("AppealsStatusDropdown").click();
		CommonMethods.selectFromDropDownByVisibleText(element("AppealsStatusDropdown"),
				getDataFromExcel(ModuleName, TestCaseID, "AppealStatus"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Click on Add new log button$")
	public void click_on_add_new_log_button() throws Throwable {

		driver.switchTo().frame(element("ApplicationPageIframe"));
		CommonMethods.ScrolDownToTheObject(element("AddNewLogBtn"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(4000);
		element("AddNewLogBtn").click();

	}

	@Then("^Click On Save Log Button$")
	public void click_on_save_log_button() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(4000);
		element("SaveLogBtn").click();

	}

	@Then("^Ship to patient$")
	public void ship_to_patient() throws Throwable {

		Thread.sleep(3000);
		Select Drop1 = new Select(element("ShipTo"));
		Thread.sleep(1000);
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "ShipTovalue"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Click on 'Application Prescriptions' and link$")
	public void click_on_application_prescriptions_and_link() throws Throwable {

		CommonMethods.PerformClickOnObject(element("ApplicationPrescriptionsLink"));
		// element("ApplicationPrescriptionsLink").click();
		driver.navigate().refresh();
		element("AppPresclink").click();

	}

	@Then("^Select type of Appeal as home delievery$")
	public void select_type_of_appeal_as_enrollment_home_delievery() throws Throwable {
		driver.switchTo().frame(element("AppealFrame1"));
		element("TypeOfAppealDropDown").click();

		CommonMethods.selectFromDropDownByVisibleText(element("TypeOfAppealDropDown"),
				getDataFromExcel(ModuleName, TestCaseID, "Appeal TypeNew"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Select type of Appeal as Enrollment$")
	public void select_type_of_appeal_as_enrollment() throws Throwable {
		Thread.sleep(6000);
		driver.switchTo().frame(element("Frame_AppealsPrescriptionPage"));
		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Select Drop1 = new Select(element("TypeOfAppealDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Appeal Type"));
	}

	@Then("^Verify that only one Home delivery appeal can be done per patient$")
	public void verify_that_only_one_home_delivery_appeal_can_be_done_per_patient() throws Throwable {

		Thread.sleep(3000);
		assertTrue(element("AppealErrorMsg2").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on Appeal link$")
	public void click_on_appeal_link() throws Throwable {

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.PerformClickOnObject(element("AppealsLink"));
		Thread.sleep(2000);

	}

	@Then("^Verify that should become read only once appeals record is saved$")
	public void verify_that_should_become_read_only_once_appeals_record_is_saved() throws Throwable {

		Thread.sleep(3000);
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		assertTrue(element("AppealStatusPage").isDisplayed());

		assertTrue(element("AppealReasonPage").isDisplayed());

	}

	@Then("^Verify that 'Home Delivery Appeal' should be one of value of 'What type of Appeal is this' drop down$")
	public void verify_that_home_delivery_appeal_should_be_one_of_value_of_what_type_of_appeal_is_this_drop_down()
			throws Throwable {

		Thread.sleep(6000);
		driver.switchTo().frame(element("ApplicationPageIframe"));
		Thread.sleep(2000);
		Select Drop1 = new Select(element("TypeOfAppealDropDown"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Appeal Type"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that 'Home Delivery Appeal' should consist all accordions$")
	public void verify_that_home_delivery_appeal_should_consist_all_accordions() throws Throwable {
		Thread.sleep(2000);
		assertTrue(element("Enrollment_Information").isDisplayed());
		assertTrue(element("Appeal_Information").isDisplayed());
		CommonMethods.ScrolDownToTheObject(element("Appeal_Status_Information"));
		assertTrue(element("Appeal_Status_Information").isDisplayed());
		assertTrue(element("Level2Appeals").isDisplayed());

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that Enrollment Information Accordion should consist components$")
	public void verify_that_enrollment_information_accordion_should_consist_components() throws Throwable {
		Thread.sleep(2000);
		assertTrue(element("Enrollment_Information").isDisplayed());
		assertTrue(element("AccordionPatientName").isDisplayed());
		assertTrue(element("AccordionApplicationNumber").isDisplayed());
		assertTrue(element("AccordionHouseholdsize").isDisplayed());
		assertTrue(element("AccordionPatientID").isDisplayed());
		assertTrue(element("AccordionReason_for_Denial").isDisplayed());
		assertTrue(element("AccordionHouseholdIncome").isDisplayed());
		assertTrue(element("AccordionAppeal_Products").isDisplayed());

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify that Appeal Information Accordion should consist components$")
	public void verify_that_appeal_information_accordion_should_consist_components() throws Throwable {
		Thread.sleep(2000);
		assertTrue(element("Appeal_Information").isDisplayed());
		assertTrue(element("ReasonPAP").isDisplayed());
		assertTrue(element("Documents_Received").isDisplayed());
		assertTrue(element("SubReasonText").isDisplayed());
		assertTrue(element("DateApCompletedText").isDisplayed());

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Appeal Status Information Accordion should consist components$")
	public void verify_that_appeal_status_information_accordion_should_consist_components() throws Throwable {
		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("Appeal_Status_Information"));
		assertTrue(element("Appeal_Status_Information").isDisplayed());
		assertTrue(element("AccordionAppealStatus").isDisplayed());
		assertTrue(element("DateApRcvdText").isDisplayed());
		assertTrue(element("OOPEText").isDisplayed());
		assertTrue(element("UpdatedateText").isDisplayed());
		assertTrue(element("ActivityNoteText").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Verify that Activity Notes Text field value should be populated$")
	public void verify_that_activity_notes_text_field_value_should_be_populated() throws Throwable {

		Thread.sleep(4000);

		List<WebElement> element = new ArrayList<WebElement>();
		element = driver.findElements(By.cssSelector("div > iframe"));
		int b = element.size();
		for (int i = 0; i <= b; i++) {
			try {
				driver.switchTo().frame(i);
				break;
			} catch (Exception e) {
				assertTrue(element("ActivityCode").isDisplayed());
				assertTrue(element("Comments").isDisplayed());
			}

			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}
	}

	@Then("^Verify that Level2 Appeals Accordion should consist of 'Client Appeal' checkbox$")
	public void verify_that_level2_appeals_accordion_should_consist_of_client_appeal_checkbox() throws Throwable {

		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("Level2Appeals"));
		CommonMethods.PerformClickOnObject(element("Level2Appeals"));
		// element("Level2Appeals").click();
		assertTrue(element("ClientAppealChkBox").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify 'PAP Appeals' list is removed from the list$")
	public void verify_pap_appeals_list_is_removed_from_the_list() throws Throwable {

		try {
			element("CasesListViewDropdown").click();
			assertTrue(element("PAPAppeallist").isDisplayed());
		} catch (Exception e) {
			System.out.println("PAP Appeals list is removed from list");

		}

	}

	@Then("^Verify question mark symbol is not precending Reason for PAP Appeal in Appeal Information Section$")
	public void verify_question_mark_symbol_is_not_precending_reason_for_pap_appeal_in_appeal_information_section()
			throws Throwable {

		Thread.sleep(2000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.ScrolDownToTheObject(element("Appeal_Information"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		System.out.println("Verify ? is not precending Reason for PAP Appeal in Appeal Information Section");

	}

	@Then("^Verify type of appeal drop down is read only once an appeal record is saved$")
	public void verify_type_of_appeal_drop_down_is_read_only_once_an_appeal_record_is_saved() throws Throwable {

		try {

			driver.switchTo().frame(element("ApplicationPageIframe"));
			Thread.sleep(2000);
			Select Drop1 = new Select(element("TypeOfAppealDropDown"));
			Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Appeal Type"));
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

		catch (Exception e) {
			System.out.println(" type of appeal drop down is read only once an appeal record is saved");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Click on Appeal Hyperlink$")
	public void click_on_appeal_hyperlink() throws Throwable {

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,300)");
		Thread.sleep(8000);

		CommonMethods.PerformClickOnObject(element("AppealsHyperlink"));
		// element("AppealsHyperlink").click();
		// element("AppealsLink").click();
		Thread.sleep(2000);

	}

}
