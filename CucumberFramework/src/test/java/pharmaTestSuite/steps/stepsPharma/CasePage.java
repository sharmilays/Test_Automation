package pharmaTestSuite.steps.stepsPharma;

import static org.testng.Assert.assertEquals;
import static org.testng.AssertJUnit.assertTrue;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.NoSuchFrameException;
import org.openqa.selenium.UnhandledAlertException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import objectRepository.CasePageObject;
import objectRepository.GetObj;
import objectRepository.ObjectManager;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.FileInputStream;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.xssf.binary.XSSFBSharedStringsTable;
import org.apache.poi.xssf.binary.XSSFBSheetHandler;
import org.apache.poi.xssf.binary.XSSFBStylesTable;
import org.apache.poi.xssf.eventusermodel.XSSFBReader;
import org.xml.sax.SAXException;
import java.io.InputStream;
import org.apache.poi.xssf.eventusermodel.XSSFSheetXMLHandler;
import org.apache.poi.xssf.usermodel.XSSFComment;

import java.io.IOException;

@SuppressWarnings("unused")
public class CasePage extends GetObj {

	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	String DocumentURL;
	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;
	static ObjectManager objRepo;
	static CasePageObject Case_Page_objects;

	@SuppressWarnings("static-access")
	public CasePage(WebDriverFactory DriverFactory) throws Exception {
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();
		objRepo = new ObjectManager(DriverFactory);
		Case_Page_objects = objRepo.getCasePageObject();

	}

	@Then("^Verify Case is Dispalyed in Table or Split View$")
	public void Verify_Case_is_Dispalyed_in_Table_or_Split_View() throws Throwable, Exception {
		try {

			element("TableViewIcon");
			System.out.println("Opened in Split View");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (NoSuchElementException e) {
			System.out.println("Opened in Table View");
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			element("SplitViewIcon").click();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			System.out.println("It will oven in Table View");

			element("TableItemInSplitView").click();
			Thread.sleep(7000);
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (UnhandledAlertException e) {
			driver.switchTo().alert().accept();
		}

	}

	@And("^Select Record Type as Inbound Or Outbound Calls for new case and click on Next Button$")
	public void select_record_type_as_inbound_or_outbound_calls_for_new_case_and_click_on_next_button()
			throws Throwable {
		// element("InboundFaxRadioButton").click();
		CommonMethods.PerformClickOnObject(driver.findElement(By.xpath("//label/span[text()='Inbound Call']")));
//		driver.findElement(By.xpath("//label/span[text()='Inbound Call']")).click();
		System.out.println("Click on 'Inbound/Outbound Calls' Radio Button ");

		Thread.sleep(2000);
		element("NextButton").click();
		System.out.println("Click on 'Next'  Button ");

	}

	@Then("^Verify Case Edit page is opened for New case$")
	public void verify_Case_Edit_page_is_opened_for_New_case() throws Throwable {
		assertTrue("Case Information Page is displayed", element("CaseInformationPageHeader").isDisplayed());
		System.out.println("Edit Case Page is displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Edit Case Page is Displayed");
	}

	@Then("^Verify New Case Page should get opened with record type Radio Button's$")
	public void verify_New_Case_Page_should_get_opened_with_record_type_Radio_Button_s() throws Throwable {

		assertTrue("Inbound or Outbound Calls Radio Button is displayed",
				element("InboundFaxRadioButton").isDisplayed());
		System.out.println("Inbound/Outbound Calls Radio Button is displayed");
		assertTrue("Inbound Fax Radio Button is displayed", element("InboundFaxRadioButton").isDisplayed());
		System.out.println("Inbound Fax Radio Button is displayed");
		assertTrue("Pfizer Inbound Portal Radio Button is displayed",
				element("PfizerInboundPortalRadioButton").isDisplayed());
		System.out.println("Pfizer Inbound Portal Radio Button is displayed");
		assertTrue("Safety Event RadioButton is displayed", element("SafetyEventRadioButton").isDisplayed());
		System.out.println("Safety Event RadioButton is displayed");
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"Inbound/Outbound Calls, Inbound Fax ,Pfizer Inbound Portal , Safety Event Radio button's is Exits");

	}

	@Then("^Verify Case Number, Case Origin ,Status , Subject Data's Should Displayed$")
	public void verify_Case_Number_Case_Origin_Status_Subject_Data_s_Should_Displayed() throws Throwable {

		assertTrue("Case Number is displayed", element("CaseNumberSortedButton").isDisplayed());
		System.out.println("Case Number is displayed");

		assertTrue("Case Origin is displayed", element("CaseOriginSortedButton").isDisplayed());
		System.out.println("Case Origin is displayed");

		assertTrue("Subject is displayed", element("SubjectSortedButton").isDisplayed());
		System.out.println("Subject Number is displayed");

		assertTrue("Status is displayed", element("StatusSortedButton").isDisplayed());
		System.out.println("Status is displayed");

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				"Case Number, Case Origin ,Status , Subject fields is Displayed");
		Reporter.addStepLog("Case Number, Case Origin ,Status , Subject fields is Exits");
	}

	@Then("^Click on New button$")
	public void click_on_New_button() throws Throwable {
//		element("NewButton").click();
		
		CommonMethods.PerformClickOnObject(element("NewButton"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Logged In Succesfully");
	}

	@Then("^Enter All mandatory feilds in Case edit page$")
	public void enter_All_mandatory_feilds_in_Case_edit_page() throws Throwable {

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
			element("SearchedValuefromTextBox").click();
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

		JavascriptExecutor js = (JavascriptExecutor) driver;

		js.executeScript("document.getElementsByClassName('select')[3].click()");

		js.executeScript("document.querySelectorAll('[title=\\\"Yes\\\"]')[0].click()");
		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
		// "Enterd All Mandatory Feilds");
		element("Cases_AEWarmTransferCheckbox").click();

		// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
		// "Enterd All Mandatory Feilds");
		element("SaveButton").click();
		Thread.sleep(2000);
		try {
			WebDriverWait wait = new WebDriverWait(driver, 5);
			// wait.until(ExpectedConditions.alertIsPresent());
			// driver.switchTo().alert().accept();
			// driver.navigate().back();
			driver.findElement(By.xpath("//button[@title='Close New Adverse Event: Unlocked']")).click();
			// element(ApplicationPageObjects.ClosingAdverseEventPage).click();
		}

		catch (Exception e) {

		}

	}

	@Then("^Click On Save Button$")
	public void Click_On_Save_Button() throws Throwable {
		element("SaveButton").click();
		System.out.println("Click on save button");
	}

	@Then("^Select Documnet Intake$")
	public void select_documnet_intake() throws Throwable {
		element("CasesListViewDropdown").click();
		CommonMethods.closeAllInactiveTabsInPfizer();
		element("DocumentIntakeInListbox").click();

		Thread.sleep(3000);

	}

	@And("^Click on First Patient$")
	public void click_on_first_patient() throws Throwable {
		Thread.sleep(3000);
		System.out.println("click on new button");
		CommonMethods.alertDismiss();

		CommonMethods.PerformClickOnObject(element("NewButton"));
		// element("NewButton").click();
		driver.findElement(By.xpath("//label/span[text()='Inbound Call']")).click();
		Thread.sleep(2000);
		element("NextButton").click();
		assertTrue("Case Information Page is displayed", element("CaseInformationPageHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Edit Case Page is Displayed");
		 JavascriptExecutor js= (JavascriptExecutor) driver;
		
		 js.executeScript("document.getElementsByClassName('select')[3].click()");
		
		 js.executeScript("document.querySelectorAll('[title=\\\"Yes\\\"]')[0].click()");

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
		// element("SearchedValuefromTextBox").click();

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
		// CommonMethods.PerformClickOnObject(element("StatusDropDown"));
		// List<WebElement> DropDown =
		// driver.findElements(By.xpath("//div[contains(@class,'--short visible
		// positioned')]/div/ul/li/a"));
		// CommonMethods.selectDropDownByValue(DropDown,
		// getDataFromExcel(ModuleName,TestCaseID, "Status"));

		// WebElement statusDropdown =
		// driver.findElement(By.xpath("//label[text()='Status']//following::div[1]//child::div[@role='combobox']//child::input"));
		// CommonMethods.PerformClickOnObject(statusDropdown);
		// List<WebElement> dropDown =
		// driver.findElements(By.xpath("//label[text()='Status']//following::div[1]//child::div[@role='listbox']//child::lightning-base-combobox-item//child::span[@class='slds-media__body']"));
		// CommonMethods.selectDropDownByValue(dropDown,
		// getDataFromExcel(ModuleName,TestCaseID, "Status"));

		CommonMethods.PerformClickOnObject(element("CaseOriginDropDown"));
		List<WebElement> DropDown1 = driver
				.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
		CommonMethods.selectDropDownByValue(DropDown1, getDataFromExcel(ModuleName, TestCaseID, "CaseOrigin"));

		driver.findElement(
				By.xpath("//span[text()='Safety Event Identified']/../following-sibling::div//div//div//div/a"))
				.click();

		driver.findElement(By.xpath("//a[@title='Yes']")).click();

		element("Cases_AEWarmTransferCheckbox").click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Enterd All Mandatory Feilds");
		element("SaveButton").click();
		Thread.sleep(2000);

		try {
			WebDriverWait wait = new WebDriverWait(driver, 5);
			// wait.until(ExpectedConditions.alertIsPresent());
			// driver.switchTo().alert().accept();
			// driver.navigate().back();
			driver.findElement(By.xpath("//button[@title='Close New Adverse Event: Unlocked']")).click();
			// element(ApplicationPageObjects.ClosingAdverseEventPage).click();
		}

		catch (Exception e) {

		}
	}


	@And("^Click on First Patient without Selecting Checkbox$")
	public void click_on_first_patient_without_Selecting_Checkbox() throws Throwable {
		Thread.sleep(3000);
		System.out.println("click on new button");
		CommonMethods.alertDismiss();

		CommonMethods.PerformClickOnObject(element("NewButton"));
		// element("NewButton").click();
		driver.findElement(By.xpath("//label/span[text()='Inbound Call']")).click();
		Thread.sleep(2000);
	//	element("NextButton").click();
		assertTrue("Case Information Page is displayed", element("CaseInformationPageHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Edit Case Page is Displayed");
		// JavascriptExecutor js= (JavascriptExecutor) driver;
		//
		// js.executeScript("document.getElementsByClassName('select')[3].click()");
		//
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
		// element("SearchedValuefromTextBox").click();

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
		// CommonMethods.PerformClickOnObject(element("StatusDropDown"));
		// List<WebElement> DropDown =
		// driver.findElements(By.xpath("//div[contains(@class,'--short visible
		// positioned')]/div/ul/li/a"));
		// CommonMethods.selectDropDownByValue(DropDown,
		// getDataFromExcel(ModuleName,TestCaseID, "Status"));

		// WebElement statusDropdown =
		// driver.findElement(By.xpath("//label[text()='Status']//following::div[1]//child::div[@role='combobox']//child::input"));
		// CommonMethods.PerformClickOnObject(statusDropdown);
		// List<WebElement> dropDown =
		// driver.findElements(By.xpath("//label[text()='Status']//following::div[1]//child::div[@role='listbox']//child::lightning-base-combobox-item//child::span[@class='slds-media__body']"));
		// CommonMethods.selectDropDownByValue(dropDown,
		// getDataFromExcel(ModuleName,TestCaseID, "Status"));

		CommonMethods.PerformClickOnObject(element("CaseOriginDropDown"));
		List<WebElement> DropDown1 = driver
				.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
		CommonMethods.selectDropDownByValue(DropDown1, getDataFromExcel(ModuleName, TestCaseID, "CaseOrigin"));

		driver.findElement(
				By.xpath("//span[text()='Safety Event Identified']/../following-sibling::div//div//div//div/a"))
				.click();

		driver.findElement(By.xpath("//a[@title='Yes']")).click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Enterd All Mandatory Feilds");
		element("SaveButton").click();
		Thread.sleep(2000);
		try {
			WebDriverWait wait = new WebDriverWait(driver, 5);
			wait.until(ExpectedConditions.alertIsPresent());
			driver.switchTo().alert().accept();
			// driver.navigate().back();
			driver.findElement(By.xpath("//button[@title='Close New Adverse Event: Unlocked']")).click();
			// element(ApplicationPageObjects.ClosingAdverseEventPage).click();
		}

		catch (Exception e) {

		}
	}

	@And("^Delete the Account Name$")
	public void Delete_the_Account_Name() throws Throwable {
		element("Casepage_AccountNameStatusEditBtn").click();
		Thread.sleep(1000);
		element("Casepage_AccountNameDeleteBtn").click();
		Thread.sleep(1000);
		element("CasesPage_AccountNameSearchIcon").click();

	}

	//
	@And("^Change the Cases Status as NEW$")
	public void Change_the_Cases_Status_as_NEW() throws Throwable {
		CommonMethods.PerformClickOnObject(element("StatusDropDown"));
		List<WebElement> DropDown = driver
				.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
		CommonMethods.selectDropDownByValue(DropDown, getDataFromExcel(ModuleName, TestCaseID, "Status"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Enterd All Mandatory Feilds");

	}

	// Asima-----------------------------

	@Then("^Verify user should able to click on Log A Call Back and verify add button and click on it$")
	public void verify_user_should_able_to_click_on_Log_A_Call_Back_and_verify_add_button_and_click_on_it()
			throws Throwable {
		Thread.sleep(1000);
		element("LogACallBackTab").click();
		assertTrue(element("AddButton_LogACallBackTab").isDisplayed());
		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.PerformClickOnObject(element("AddButton_LogACallBackTab"));
	}

	@And("^Click on Add Button and verify all fields$")
	public void click_on_add_button_and_verify_all_fields() throws Throwable {

		Thread.sleep(2000);
		assertTrue("Subject Field is displayed", element("Subject").isDisplayed());
		assertTrue("CallBackBy Field is displayed", element("CallBackBy").isDisplayed());
		assertTrue("AssignedTo Field is displayed", element("AssignedTo").isDisplayed());
		assertTrue("DueDate Field is displayed", element("DueDate").isDisplayed());
		assertTrue("CallBackTo Field is displayed", element("CallBackTo").isDisplayed());
		assertTrue("HCP/Patient Field is displayed", element("HCP/Patient").isDisplayed());
		assertTrue("CallCategory Field is displayed", element("CallCategory").isDisplayed());

		// assertTrue("CallbackNumber Field is
		// displayed",element("CallbackNumber").isDisplayed());

		assertTrue("ReminderSet Field is displayed", element("ReminderSet").isDisplayed());
		assertTrue("CallAttempt1Details Field is displayed", element("CallAttempt1Details").isDisplayed());
		assertTrue("CallAttempt2Details Field is displayed", element("CallAttempt2Details").isDisplayed());
		assertTrue("CallAttempt3Details Field is displayed", element("CallAttempt3Details").isDisplayed());
		assertTrue("Comments Field is displayed", element("Comments").isDisplayed());
		assertTrue("Dispostion Field is displayed", element("Dispostion").isDisplayed());

	}

	@Then("^Click on Add Button and verify 'CallBack By drop down' options$")
	public void click_on_Add_Button_and_verify_CallBack_By_drop_down_options() throws Throwable {

		String xpath = returnLocatorValue("HCPOrPatientTextbox");
		new WebDriverWait(driver,20).until(ExpectedConditions.elementToBeClickable(By.xpath(xpath)));
		CommonMethods.PerformClickOnObject(element("HCPOrPatientTextbox"));
//		element("HCPOrPatientTextbox").click();
		new WebDriverWait(driver,20).until(ExpectedConditions.elementToBeClickable(By.xpath(returnLocatorValue("CallBackByDropDown"))));
		CommonMethods.PerformClickOnObject(element("CallBackByDropDown"));
//		element("CallBackByDropDown").click();
		Thread.sleep(3000);
		// CommonMethods.ScrolDownToTheObject(element("CallBackByDropDown"));
		assertTrue("Agent is displayed in drop down", element("Agent").isDisplayed());
		assertTrue("Call Escalation Supervisor is displayed in drop down",
		element("CallEscalationSupervisor").isDisplayed());
		assertTrue("Pharmacist is displayed in drop down", element("Pharmacist").isDisplayed());
		assertTrue("Supervisor is displayed in drop down", element("Supervisor").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Select Agent call back from Subject dropdown$")
	public void select_Agent_call_back_from_Subject_dropdown() throws Throwable {

		CommonMethods.PerformClickOnObject(element("SubjectInputBox"));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("SubjectDropdownAgentCallBack"));

	}

	@Then("^Verify assigned to field to Agenet PAP$")
	public void verify_assigned_to_field_to_Agenet_PAP() throws Throwable {

		String Username = getDataFromExcel(ModuleName, TestCaseID, "Agent PAP");
		
		assertTrue(element("AssignedToText").getText().equalsIgnoreCase(Username));

	}

	@Then("^Click on Add Button and verify 'Subject drop down' options$")
	public void click_on_Add_Button_and_verify_Subject_drop_down_options() throws Throwable {

		Thread.sleep(3000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,-1500)", "");

		element("SubjectInputBox").click();
		Thread.sleep(2000);
		assertTrue("Agent is displayed in drop down", element("SubjectDropdownAgentCallBack").isDisplayed());
		assertTrue("Agent is displayed in drop down", element("SubjectDropdownSupervisorCallBack").isDisplayed());
		assertTrue("Agent is displayed in drop down",
				element("SubjectDropdownCallEscalationTeamCallBack").isDisplayed());
		assertTrue("Agent is displayed in drop down",
				element("SubjectDropdownCallEscalationSupervisorCallBack").isDisplayed());
		assertTrue("Agent is displayed in drop down", element("SubjectDropdownManagerCallBack").isDisplayed());
		assertTrue("Agent is displayed in drop down", element("SubjectDropdownPharmacistCallBack").isDisplayed());

	}

	@Then("^Enter values in fields$")
	public void enter_values_in_fields() throws Throwable {
		WebDriverWait wait = new WebDriverWait(driver, 30);
		JavascriptExecutor jse = (JavascriptExecutor) driver;

		CommonMethods.PerformClickOnObject(element("CallBackByTextBox"));
		By option = By.xpath("//a[@title='Agent']");
		wait.until(ExpectedConditions.elementToBeClickable(option));
		driver.findElement(option).click();

		Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
		int todayInt = calendar.get(Calendar.DAY_OF_MONTH);
		System.out.println("Today Int: " + todayInt);
		String todayStr = Integer.toString(todayInt);
		System.out.println("Today Str: " + todayStr);
		jse.executeScript("window.scrollBy(0,-550)", "");
		CommonMethods.PerformClickOnObject(element("DueDatePicker"));
		WebElement dateWidgetFrom = driver.findElement(
				By.xpath("//div[contains(@class,'uiDatePickerGrid--default uiDatePickerGrid')]//table/tbody"));
		List<WebElement> rows = dateWidgetFrom.findElements(By.tagName("tr"));

		List<WebElement> columns = dateWidgetFrom.findElements(By.tagName("td"));
		for (WebElement cell : columns) {

			if (cell.getText().equals(todayStr)) {
				cell.click();
				break;
			}
		}

		// try {
		// Thread.sleep(4000);
		// } catch (InterruptedException e) {
		// e.printStackTrace();
		// }
		//
		// element("HCP/PatientTextBox").click();
		element("HCPOrPatientTextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HCP/PatientName"));
		element("HCP/PatientTextBox").clear();
		element("HCPOrPatientTextbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HCP/PatientName"));
		CommonMethods.PerformClickOnObject(element("SearchedValuefromTextBox"));

		// driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
		// try {
		// element("SearchedValuefromTextBox").click();
		// } catch (Exception e) {
		// element("HCP/PatientTextBox").click();
		// element("HCP/PatientTextBox").clear();
		// element("HCP/PatientTextBox").sendKeys(getDataFromExcel(ModuleName,TestCaseID,
		// "HCP/PatientName"));
		// wait.until(ExpectedConditions.elementToBeClickable(element("HCP/PatientTextBox")));
		// element("SearchedValuefromTextBox").click();
		// }

		CommonMethods.PerformClickOnObject(element("CallBackToTextBox"));
		By CallBackTooption = By.xpath("//a[@title='HCP']");
		wait.until(ExpectedConditions.elementToBeClickable(CallBackTooption));
		driver.findElement(CallBackTooption).click();

		CommonMethods.PerformClickOnObject(element("CallCategoryTextBox"));
		By CallCatoption = By.xpath("//a[@title='Refill']");
		driver.findElement(CallCatoption).click();

		// element("CallBackNumberTextBox").sendKeys(getDataFromExcel(ModuleName,TestCaseID,
		// "Number"));

		jse.executeScript("window.scrollBy(0,-550)", "");
		CommonMethods.ScrolDownToTheObject(
				driver.findElement(By.xpath("//span[text()='Available']/following-sibling::div/ul")));
		driver.findElement(By.xpath("//span[text()='Available']/following-sibling::div/ul")).click();
		element("RelatedProductNA").click();
		wait.until(ExpectedConditions.elementToBeClickable(element("RelatedProductNA")));
		element("Arrowbutton").click();

	}

	@Then("^Click on Status drop down and select In Progress$")
	public void click_on_Status_drop_down_and_select_In_Progress() throws Throwable {

		CommonMethods.PerformClickOnObject(element("StatusDropDown"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		By option = By.xpath("//a[@title='In Progress']");
		wait.until(ExpectedConditions.elementToBeClickable(option));
		driver.findElement(option).click();

		// List<WebElement> DropDownIN =
		// driver.findElements(By.xpath("//div[contains(@class,'uiMenuList')]/div/ul/li/a"));

		// CommonMethods.selectDropDownByValue(DropDownIN,
		// getDataFromExcel(ModuleName,TestCaseID, "Status"));

	}

	@Then("^Enter Date and Time in Call Attempt(\\d+)$")
	public void enter_Date_and_Time_in_Call_Attempt(int arg1) throws Throwable {

		Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
		int todayInt = calendar.get(Calendar.DAY_OF_MONTH);
		System.out.println("Today Int: " + todayInt);
		String todayStr = Integer.toString(todayInt);
		System.out.println("Today Str: " + todayStr);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("scroll(0, -300);");

		// element("Attempt1DatePicker").click();
		// WebElement dateWidgetFrom =
		// driver.findElement(By.xpath("//div[contains(@class,'uiDatePicker--default
		// uiDatePicker')]//table/tbody"));
		// List<WebElement> rows = dateWidgetFrom.findElements(By.tagName("tr"));
		// List<WebElement> columns = dateWidgetFrom.findElements(By.tagName("td"));
		// for (WebElement cell: columns) {
		//
		// if (cell.getText().equals(todayStr)) {
		// cell.click();
		// break;
		// }
		// }
		//
		// try {
		// Thread.sleep(4000);
		// } catch (InterruptedException e) {
		// e.printStackTrace();
		// }

		// element("Attempt1Time").sendKeys(getDataFromExcel(ModuleName,TestCaseID,
		// "Time"));

	}

	@Then("^Click on save and verify yser should able to save$")
	public void click_on_save_and_verify_yser_should_able_to_save() throws Throwable {

		CommonMethods.ScrolDownToTheObject(element("SaveButtonCallLog"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		CommonMethods.PerformClickOnObject(element("SaveButtonCallLog"));
	}

	@Then("^Click on Status drop down and select Completed$")
	public void click_on_Status_drop_down_and_select_Completed() throws Throwable {

		CommonMethods.PerformClickOnObject(element("StatusDropDown"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		By option = By.xpath("//a[@title='Completed']");
		wait.until(ExpectedConditions.elementToBeClickable(option));
		driver.findElement(option).click();

	}

	@Then("^Verify task should be created with Open Status$")
	public void verify_task_should_be_created_with_Open_Status() throws Throwable {

		Thread.sleep(3000);
		assertTrue("Open Task Status", element("OpenTaskStatus").getText().contains("New"));

	}

	@Then("^Verify new task under Open Activities$")
	public void verify_new_task_under_Open_Activities() throws Throwable {

		Thread.sleep(2000);

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,356);");
		CommonMethods.PerformClickOnObject(element("OpenActivitieslink"));
		Thread.sleep(2000);
		assertTrue("Open Task Status in open activities",
				element("OpenTaskStatusinOpenActivities").getText().contains("Open"));
		assertTrue("Open Task Status in open activities",
				element("SubjectinOpenActivities").getText().contains("Agent Call Back"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify task is related to case$")
	public void verify_task_is_related_to_case() throws Throwable {

		String CaseNo = element("CaseNoinCasePage").getText();
		Thread.sleep(8000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,356);");
		CommonMethods.PerformClickOnObject(element("AgentCallBackLinkinOpenActivities"));
		Thread.sleep(2000);
		CommonMethods.ScrolDownToTheObject(element("CaseNoinRelatedToFeild"));
		assertEquals(CaseNo, element("CaseNoinRelatedToFeild").getText());

	}

	@Then("^Click on Account name and verify call back button$")
	public void click_on_Account_name_and_verify_call_back_button() throws Throwable {

		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,-800)", "");
		Thread.sleep(3000);
		element("AccountnameinAgentcallBackPage").getText();
		element("AccountnameinAgentcallBackPage").click();
		Thread.sleep(3000);
		element("ViewCallBackButton").click();
		// driver.switchTo().frame(1);
		// driver.switchTo().frame(element("ApplicationPageIframe"));
		// element("AccountnameinRelatedTask").getText();
		// assertEquals(element("AccountnameinAgentcallBackPage").getText(),element("AccountnameinRelatedTask").getText());

	}

	@Then("^Verify new task under Activity History$")
	public void verify_new_task_under_Activity_History() throws Throwable {

		Thread.sleep(3000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,356);");
		assertTrue(element("AgentCallBacklinkinActivityHistory").getText().contains("Agent Call Back"));

	}

	@Then("^Click on Agent Call back in open activities and enter disposition and change status to complete$")
	public void click_on_Agent_Call_back_in_open_activities_and_enter_disposition_and_change_status_to_complete()
			throws Throwable {

		driver.navigate().back();
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,356);");
		CommonMethods.PerformClickOnObject(element("AgentCallBackLinkinOpenActivities"));
		Thread.sleep(3000);
		// CommonMethods.ScrolDownToTheObject(element("EditDisposition"));
		jse.executeScript("window.scrollBy(0,356);");
		CommonMethods.PerformClickOnObject(element("EditDisposition"));
		Thread.sleep(3000);

		CommonMethods.PerformClickOnObject(element("DispositionDropDown"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		By option = By.xpath("//a[@title='Dropped Call']");
		wait.until(ExpectedConditions.elementToBeClickable(option));
		driver.findElement(option).click();
		element("SaveBtninAgentCallBackPage").click();
		Thread.sleep(2000);
		jse.executeScript("window.scrollBy(0,-800)", "");
		Thread.sleep(5000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("scroll(0, -250);");
		CommonMethods.ScrolDownToTheObject(element("MarkCompleteButton"));
		CommonMethods.PerformClickOnObject(element("MarkCompleteButton"));
		Thread.sleep(3000);

	}

	@Then("^Navigate to case page and verify task under Activity history$")
	public void navigate_to_case_page_and_verify_task_under_Activity_history() throws Throwable {

		// CommonMethods.ScrolDownToTheObject(element("CaseNoinRelatedToFeild"));
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,500)", "");
		element("CaseNoinRelatedToFeild").click();
		Thread.sleep(2000);
		// driver.navigate().refresh();
		// Thread.sleep(5000);
		// Alert alert=driver.switchTo().alert();
		// alert.accept();
		// driver.navigate().back();
		element("AgentCallBacklinkinActivityHistory").isDisplayed();

	}

	@Then("^Verify Status, AssignedTo and DueDate Fields should present$")
	public void verify_Status_AssignedTo_and_DueDate_Fields_should_present() throws Throwable {

		assertTrue(element("StatusHeading").isDisplayed());
		assertTrue(element("AssignedToHeading").isDisplayed());
		assertTrue(element("DueDateHeading").isDisplayed());

	}

	@Then("^Click on Agent Call back in open activities and change status to complete$")
	public void click_on_Agent_Call_back_in_open_activities_and_change_status_to_complete() throws Throwable {

		Thread.sleep(5000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,356);");
		CommonMethods.PerformClickOnObject(element("AgentCallBackLinkinOpenActivities"));
		Thread.sleep(2000);
		element("MarkCompleteButton").click();

	}

	@Then("^Verify Disposition reason is mandatory message should come$")
	public void verify_Disposition_reason_is_mandatory_message_should_come() throws Throwable {

		assertTrue(element("DispostionMandatorymsg").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Click on Agent Call back in open activities and change status to In Progress$")
	public void click_on_Agent_Call_back_in_open_activities_and_change_status_to_In_Progress() throws Throwable {

		Thread.sleep(8000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,500);");
		try {
			CommonMethods.PerformClickOnObject(element("AgentCallBackLinkinOpenActivities"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		Thread.sleep(2000);
		try {
			
			jse.executeScript("window.scrollBy(0,500)", "");
			new WebDriverWait(driver, 20).until(ExpectedConditions.javaScriptThrowsNoExceptions("document.querySelectorAll(\\\"button[title='Edit Status']\\\")[0].click()"));
			jse.executeScript("document.querySelectorAll(\"button[title='Edit Status']\")[0].click()");

		} catch (Exception e) {
			// TODO: handle exception
			jse.executeScript("document.querySelectorAll(\"button[title='Edit Status']\")[0].click()");
		}//		CommonMethods.PerformClickOnObject(element("StatusEditIcon"));
		CommonMethods.PerformClickOnObject(element("StatusEditdropdown"));
		WebDriverWait wait = new WebDriverWait(driver, 30);
		By option = By.xpath("//a[@title='In Progress']");
		wait.until(ExpectedConditions.elementToBeClickable(option));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		driver.findElement(option).click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Update Call Attempts and verify Task History$")
	public void update_Call_Attempts_and_verify_Task_History() throws Throwable {
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,-500)", "");

		element("CallAttemptsDropDown").click();
		By option = By.xpath("//a[@title='Call Attempt 1']");
		driver.findElement(option).click();
		element("SaveBtninAgentCallBackPage").click();
		Thread.sleep(2000);
		jse.executeScript("window.scrollBy(0,500)", "");

		
		WebElement searchbox = null;
		WebElement ele1 = null;
		int size = driver.findElements(By.tagName("iframe")).size();
		System.out.println(size);

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		for (int i = 0; i <= size; ++i) {

			try {

				driver.switchTo().frame(i);
				break;
			} catch (NoSuchElementException | NoSuchFrameException e) {
				System.out.println("f " + i);
			}

		}

		driver.switchTo().defaultContent();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
}

	@And("^Click on First Patient1$")
	public void click_on_first_patient1() throws Throwable {
		Thread.sleep(3000);
		element("NewButton").click();
		driver.findElement(By.xpath("//label/span[text()='Inbound Call']")).click();
		Thread.sleep(2000);
		element("NextButton").click();
		assertTrue("Case Information Page is displayed", element("CaseInformationPageHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Edit Case Page is Displayed");
//		element("ClientTextBx").click();
//		element("ClientTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ClientName"));
//
//		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
//		try {
//			element("SearchedValuefromTextBox").click();
//		} catch (Exception e) {
//			element("ClientTextBx").click();
//			element("ClientTextBx").clear();
//			element("ClientTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ClientName"));
//			element("SearchedValuefromTextBox").click();
//		}
//		System.out.println("Client is selected");
//		Thread.sleep(3000);
//		CommonMethods.PerformClickOnObject(element("ProgramTextBx"));
//		// element("ProgramTextBx").click();
//		element("ProgramTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ProgramName"));
//
//		try {
//			element("SearchedValuefromTextBox").click();
//
//		} catch (Exception e) {
//			element("ProgramTextBx").click();
//			element("ProgramTextBx").clear();
//			element("ProgramTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ProgramName"));
//			element("SearchedValuefromTextBox").click();
//		}
//
//		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
//
//		System.out.println("Program is selected");
		CommonMethods.PerformClickOnObject(element("StatusDropDown"));
		List<WebElement> DropDown = driver
				.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
		CommonMethods.selectDropDownByValue(DropDown, getDataFromExcel(ModuleName, TestCaseID, "Status"));

		JavascriptExecutor js = (JavascriptExecutor) driver;

		js.executeScript("document.getElementsByClassName('select')[3].click()");

		js.executeScript("document.querySelectorAll('[title=\\\"Yes\\\"]')[0].click()");

		CommonMethods.PerformClickOnObject(driver.findElement(
				By.xpath("//span[text()='AE Warm Transfer to Pfizer–Unsuccessful']/../following-sibling::input")));

		// CommonMethods.PerformClickOnObject(driver.findElement(By.xpath(
		// "//label/span[text()='AE Warm transfer to Pfizer -
		// Successful']/../following-sibling::input[@type='checkbox']")));
		element("safetyeventcallnotestextbox")
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "safetyeventcallnotestextbox"));

		CommonMethods.PerformClickOnObject(element("CaseOriginDropDown"));
		List<WebElement> DropDown1 = driver
				.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
		CommonMethods.selectDropDownByValue(DropDown1, getDataFromExcel(ModuleName, TestCaseID, "CaseOrigin"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Enterd All Mandatory Feilds");
		Thread.sleep(2000);
		element("SaveButton").click();
		Thread.sleep(2000);
		// driver.switchTo().alert().accept();
		try {
			WebDriverWait wait = new WebDriverWait(driver, 5);
			wait.until(ExpectedConditions.alertIsPresent());
			driver.switchTo().alert().accept();
			driver.navigate().back();
		}

		catch (Exception e) {

		}

	}
	

	// Manjunath_script
	@Then("^Verify that the Patient Info label should be display correctly as in AE page$")
	public void verify_that_the_patient_info_label_should_be_display_correctly_as_in_ae_page() throws Throwable {
		assertTrue(element("Patientinfolabel").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "Patientinfolabel")));
	}

	// Manjunath_script
	@Then("^Verify whether in the AE caller type field should display Patient HCP value$")
	public void verify_whether_in_the_ae_caller_type_field_should_display_patient_hcp_value() throws Throwable {
		CommonMethods.PerformClickOnObject(
				driver.findElement(By.xpath("//span[text()='AE Caller Type']/../following-sibling::div//a")));
		Thread.sleep(3000);
		assertTrue("AEpatientdropdownvalue", element("AEpatientdropdownvalue").isDisplayed());
		assertTrue("AEHCPdropdownvalue", element("AEHCPdropdownvalue").isDisplayed());
	}

	// Manjunath_script
	@Then("^Click on the case number and verify that the case is closed$")
	public void click_on_the_case_number_and_verify_that_the_case_is_closed() throws Throwable {
		Thread.sleep(3000);
		element("Defaulttabheader").click();
		// CommonMethods.ScrolDownToTheObject(element("Caselink"));
		Thread.sleep(3000);
		// element("Caselink").click();
		CommonMethods.PerformClickOnObject(driver.findElement(By.xpath(
				"(//div[@class='listItemBody withActions']//a[@class='textUnderline outputLookupLink slds-truncate forceOutputLookup'])[2]")));
		Thread.sleep(3000);
		// CommonMethods.ScrolDownToTheObject(element("Casestatus"));
		assertTrue(element("Casestatus").getText().contains(getDataFromExcel(ModuleName, TestCaseID, "Casestatus")));
	}

	// Manjunath_script
	@Then("^Enter all the information in the AE page and click on the save button$")
	public void enter_all_the_information_in_the_ae_page_and_click_on_the_save_button() throws Throwable {
		Thread.sleep(3000);
		// element("AEReporteddate").click();
		objRepo.getCasePageObject().AEReporteddate.click();
		CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2020");
		driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
		driver.findElement(By.xpath("//span[text()='14']")).click();
		String dropDownValues = "//div[@class='select-options' and @role='menu']/ul[@role='presentation']/li[@role='presentation']/a";

		CommonMethods.PerformClickOnObject(element("Reorterconsenttofurtherfollowupdropdown"));
		List<WebElement> DropDown1 = driver.findElements(By.xpath(dropDownValues));
		CommonMethods.selectDropDownByValue(DropDown1,
				getDataFromExcel(ModuleName, TestCaseID, "Reorterconsenttofurtherfollowupdropdown"));

		CommonMethods.PerformClickOnObject(element("AEReortercontactinfo"));
		List<WebElement> DropDown2 = driver.findElements(By.xpath(dropDownValues));
		CommonMethods.selectDropDownByValue(DropDown2,
				getDataFromExcel(ModuleName, TestCaseID, "AEReortercontactinfo"));

		CommonMethods.PerformClickOnObject(element("isthereporteranHCP"));
		List<WebElement> DropDown3 = driver.findElements(By.xpath(dropDownValues));
		CommonMethods.selectDropDownByValue(DropDown3, getDataFromExcel(ModuleName, TestCaseID, "isthereporteranHCP"));

		CommonMethods.PerformClickOnObject(element("isthereportertheprescribinghcp"));
		List<WebElement> DropDown4 = driver.findElements(By.xpath(dropDownValues));
		CommonMethods.selectDropDownByValue(DropDown4,
				getDataFromExcel(ModuleName, TestCaseID, "isthereportertheprescribinghcp"));

		CommonMethods.PerformClickOnObject(element("callerconsenttocontacthcp"));
		List<WebElement> DropDown5 = driver.findElements(By.xpath(dropDownValues));
		CommonMethods.selectDropDownByValue(DropDown5,
				getDataFromExcel(ModuleName, TestCaseID, "callerconsenttocontacthcp"));

		// element("suspectproducttextbox")
		objRepo.getCasePageObject().suspectproducttextbox
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "suspectproducttextbox"));
		// element("cepformnativetextbox")
		objRepo.getCasePageObject().cepformnativetextbox
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "cepformnativetextbox"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

		Thread.sleep(3000);
		// CommonMethods.PerformClickOnObject(element("adverseeventsavebutton1"));
		try {
			objRepo.getCasePageObject().adverseEventSaveButton.click();
		} catch (Exception e) {
			// TODO: handle exception
			driver.findElement(By.xpath("(//div//button[@title='Save'])[2]")).click();
		}

	}

	@Then("^Verfiy that the AE status field is 'AE identified' in the AE page$")
	public void verfiy_that_the_ae_status_field_is_ae_identified_in_the_ae_page() throws Throwable {
		Thread.sleep(3000);
		assertTrue(objRepo.getCasePageObject().aeStatus.getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "Aestatus")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// assertTrue(element("Aestatus").getText().contains(getDataFromExcel(ModuleName,
		// TestCaseID, "Aestatus")));
	}

	@Then("^Click on the 'AE Status' dropdown field and select 'QC1 Pending' value and click on the save button$")
	public void click_on_the_ae_status_dropdown_field_and_select_qc1_pending_value_and_click_on_the_save_button()
			throws Throwable {
		CommonMethods.PerformClickOnObject(element("Aestatusediticon"));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(objRepo.getCasePageObject().Aestatusdropdown);
		List<WebElement> DropDown1 = driver.findElements(By.xpath(
				"//label[text()='AE Status']//following::div[1]//child::div[@role='listbox']//child::lightning-base-combobox-item//child::span[@class='slds-media__body']"));
		CommonMethods.selectDropDownByValue(DropDown1, getDataFromExcel(ModuleName, TestCaseID, "Aestatusdropdown"));
		CommonMethods.PerformClickOnObject(objRepo.getCasePageObject().adverseEventSaveButton);
	}

	@Then("^Click on the Edit hyperlink of AE page and enter the name in the QC1 field$")
	public void click_on_the_edit_hyperlink_of_ae_page_and_enter_the_name_in_the_qc1_field() throws Throwable {
		Thread.sleep(3000);
		// element("Qc1editicon").click();
		CommonMethods.PerformClickOnObject(objRepo.getCasePageObject().editIconQC1);
		Thread.sleep(3000);
		// element("Searchpeople").sendKeys("Vinutha");
		objRepo.getCasePageObject().searchPeopleQC1TextBox.sendKeys("PAP Agent");
		// element("Searchpeople").sendKeys("Gowtham");
		Thread.sleep(3000);
		// element("Vinutha").click();
		driver.findElement(By.xpath("//lightning-base-combobox-formatted-text[@title='PAP Agent']")).click();
		// element("Gowtham").click();
		Thread.sleep(3000);
		// element("adverseeventsavebutton2").click();
		CommonMethods.PerformClickOnObject(objRepo.getCasePageObject().adverseEventSaveButton);
	}

	@Then("^Check whether the AE status is changed to 'QC 1 in Progress'$")
	public void check_whether_the_ae_status_is_changed_to_qc_1_in_progress() throws Throwable {
		Thread.sleep(3000);
		assertTrue(element("Qc1status").getText().contains(getDataFromExcel(ModuleName, TestCaseID, "Qc1status")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Go back to AE page Click on the Edit hyperlink of AE page and change the AE status 'Pending QC2' and click on the save button$")
	public void go_back_to_ae_page_click_on_the_edit_hyperlink_of_ae_page_and_change_the_ae_status_pending_qc2_and_click_on_the_save_button()
			throws Throwable {
		CommonMethods.PerformClickOnObject(element("Aestatusediticon"));
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("Aestatusdropdown"));
		List<WebElement> DropDown1 = driver.findElements(By.xpath(
				"//label[text()='AE Status']//following::div[1]//child::div[@role='listbox']//child::lightning-base-combobox-item//child::span[@class='slds-media__body']"));
		CommonMethods.selectDropDownByValue(DropDown1, getDataFromExcel(ModuleName, TestCaseID, "Aestatusdropdown1"));
		// CommonMethods.PerformClickOnObject(element("adverseeventsavebutton1"));
		element("adverseeventsavebutton2").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Click on the Edit hyperlink of AE page and enter the name in the QC2 field$")
	public void click_on_the_edit_hyperlink_of_ae_page_and_enter_the_name_in_the_qc2_field() throws Throwable {
		Thread.sleep(3000);
		// element("Qc2editicon").click();
		CommonMethods.PerformClickOnObject(objRepo.getCasePageObject().editIconQC2);
		Thread.sleep(3000);
		// element("Searchpeople1").sendKeys("Vinutha");
		objRepo.getCasePageObject().searchPeopleQC2TextBox.sendKeys("PAP Agent");

		Thread.sleep(3000);
		// element("Vinutha").click();
		driver.findElement(By.xpath("//lightning-base-combobox-formatted-text[@title='PAP Agent']")).click();

		Thread.sleep(3000);

		// element("adverseeventsavebutton2").click();
		objRepo.getCasePageObject().adverseEventSaveButton.click();

	}

	@Then("^Check whether the AE status is changed to 'QC 2 in Progress'$")
	public void check_whether_the_ae_status_is_changed_to_qc_2_in_progress() throws Throwable {
		assertTrue(element("Qc2status").getText().contains(getDataFromExcel(ModuleName, TestCaseID, "Qc2status")));
		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Enter all the information in the Adverse Event page with Not an AE in the AE status and Click save button$")
	public void enter_all_the_information_in_the_adverse_event_page_with_not_an_ae_in_the_ae_status_and_click_save_button()
			throws Throwable {
		Thread.sleep(3000);
		element("AEReporteddate").click();
		CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
		driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
		driver.findElement(By.xpath("//span[text()='14']")).click();

		CommonMethods.PerformClickOnObject(element("Aestatus1fordropdown"));
		List<WebElement> DropDown1x = driver
				.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
		CommonMethods.selectDropDownByValue(DropDown1x,
				getDataFromExcel(ModuleName, TestCaseID, "Aestatus1fordropdown"));

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
		element("adverseeventsavebutton2").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Go to case page by clicking the case number hyerlink and click on the edit link$")
	public void go_to_case_page_by_clicking_the_case_number_hyerlink_and_click_on_the_edit_link() throws Throwable {
		Thread.sleep(3000);
		element("Casenumberlink1").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^Check the checkbox for the 'Safety Event' checkbox and click on save button$")
	public void check_the_checkbox_for_the_safety_event_checkbox_and_click_on_save_button() throws Throwable {
		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,365)");

		driver.findElement(By.xpath("//span[text()='Safety Event Identified']/../following-sibling::div/button"))
				.click();

		// driver.findElement(By.xpath("//a[@title='Yes']")).click();

		// CommonMethods.PerformClickOnObject(
		//// driver.findElement(By.xpath("//span[text()='Safety
		// Event']/../following-sibling::div/button")));
		// driver.findElement(By.xpath("//span[text()='Safety Event
		// Identified']/../following-sibling::div/button")));
		// Thread.sleep(3000);
		// CommonMethods.PerformClickOnObject(
		// driver.findElement(By.xpath("//span[text()='Safety
		// Event']/../following-sibling::input")));
		element("OrderIHSavebutton").click();
	}

	// manjunath_done
	@Then("^Go to the AE Page Click on the 'Email CEP Form to DSU' button$")
	public void go_to_the_ae_page_click_on_the_email_cep_form_to_dsu_button() throws Throwable {
		Thread.sleep(3000);
		driver.navigate().refresh();
		Thread.sleep(3000);
		driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='content iframe-parent']//iframe")));
		Thread.sleep(5000);
		CommonMethods.PerformClickOnObject(element("Previewbutton"));
		Thread.sleep(5000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		String winHandleBefore = driver.getWindowHandle();

		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();

		CommonMethods.PerformClickOnObject(element("EmailCEPformtodsubutton"));
		Thread.sleep(9000);
		driver.switchTo().alert().accept();
		driver.switchTo().window(winHandleBefore);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	// Manjunath_done
	@Then("^Click on the 'Refresh' button and click on 'Save' button from preview$")
	public void click_on_the_refresh_button_and_click_on_save_button_from_preview() throws Throwable {
		Thread.sleep(3000);
		Thread.sleep(5000);
		driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='content iframe-parent']//iframe")));
		CommonMethods.PerformClickOnObject(element("Previewbutton"));
		String winHandleBefore = driver.getWindowHandle();
		for (String winHandle : driver.getWindowHandles()) {
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize();
		CommonMethods.PerformClickOnObject(element("Savebuttonfrompreview"));
		Thread.sleep(5000);
		WebDriverWait ww = new WebDriverWait(driver, 10);
		ww.until(ExpectedConditions.alertIsPresent());
		Alert alert = driver.switchTo().alert();
		alert.accept();
		driver.switchTo().window(winHandleBefore);
	}

	// manjunath_done

	@Then("^Close the window and click on the edit button and edit the information in the AE page$")
	public void close_the_window_and_click_on_the_edit_button_and_edit_the_information_in_the_ae_page()
			throws Throwable {
		
					
		Thread.sleep(6000);
//		CommonMethods.PerformClickOnObject(element("AEeditbutton1"));
		CommonMethods.PerformClickOnObject(element("Qc2editicon"));
		Thread.sleep(3000);
		element("Searchpeople1").sendKeys("Vinutha");
		// element("Searchpeople1").sendKeys("Gowtham");
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("Vinutha"));
	//	element("Vinutha").click();
		
		element("adverseeventsavebutton2").click();
	}
	// manju_done
	@Then("^Go back to AE page ,check whether the AE status 'QC1 in Progress' is changed to CEP Sent to Pfizer$")
	public void go_back_to_ae_page_check_whether_the_ae_status_qc1_in_progress_is_changed_to_cep_sent_to_pfizer()
			throws Throwable {
		driver.navigate().refresh();
		Thread.sleep(5000);
		assertTrue(element("cepsentstatus").getText()
				.contains(getDataFromExcel(ModuleName, TestCaseID, "Aestatusdropdown3")));
	}

	@Then("^Enter the incorrect text and verify whether spell check in raised with the possible values$")
	public void enter_the_incorrect_text_and_verify_whether_spell_check_in_raised_with_the_possible_values()
			throws Throwable {
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

		element("HcpoccupationSpeciality")
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "HcpoccupationSpeciality"));

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
		element("adverseeventsavebutton2").click();
	}

	// Manjunath_script
	@Then("^Enter the alpha numeric in the 'AE Reporter Telephone no' in the Reporter name and Contact section in the AE page and click on Save button$")
	public void enter_the_alpha_numeric_in_the_ae_reporter_telephone_no_in_the_reporter_name_and_contact_section_in_the_ae_page_and_click_on_save_button()
			throws Throwable {
		Thread.sleep(3000);
		element("AEReporteddate").click();
		CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
		driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
		driver.findElement(By.xpath("//span[text()='14']")).click();

		element("Aereportertelephonenumber")
				.sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Aereportertelephonenumber"));

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
		element("adverseeventsavebutton2").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	// <<<vivek code Nov27th merging>>>>

	@And("^Click on First Patient Inbound fax$")
	public void click_on_first_patient_inbound_fax() throws Throwable {
		Thread.sleep(3000);

		element("NewButton").click();
		driver.findElement(By.xpath("//label/span[text()='Inbound Fax']")).click();
		Thread.sleep(2000);
		element("NextButton").click();

		assertTrue("Case Information Page is displayed", element("CaseInformationPageHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Edit Case Page is Displayed");
		// driver.navigate().refresh();
		// JavascriptExecutor js= (JavascriptExecutor) driver;
		// js.executeScript("document.getElementsByClassName('select')[3].click()");
		// js.executeScript("document.querySelectorAll('[title=\\\"Yes\\\"]')[0].click()");

		element("AppCasefaxAssignedTo").click();
		element("AppCasefaxAssignedTo").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AssignedTo"));

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
		try {
			element("SearchedValuefromTextBox").click();
		} catch (Exception e) {

			try {
				element("AppCasefaxAssignedTo").click();
				element("AppCasefaxAssignedTo").clear();
				element("AppCasefaxAssignedTo").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AssignedTo"));
				element("SearchedValuefromTextBox").click();

				element("AppUserResultCancelbutton").click();

				element("AppCasefaxAssignedTo").click();
				element("AppCasefaxAssignedTo").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AssignedTo"));
				element("SearchedValuefromTextBox").click();

			}

			catch (Exception r) {

			}
		}
		System.out.println("Client is selected");
		// CommonMethods.ScrolDownToTheObject(element("ProgramTextBx"));
		// element("ProgramTextBx").click();
		// element("ProgramTextBx").sendKeys(getDataFromExcel(ModuleName,TestCaseID,
		// "ProgramName"));
		//
		// try {
		// element("SearchedValuefromTextBox").click();
		//
		// } catch (Exception e) {
		// element("ProgramTextBx").click();
		// element("ProgramTextBx").clear();
		// element("ProgramTextBx").sendKeys(getDataFromExcel(ModuleName,TestCaseID,
		// "ProgramName"));
		// element("SearchedValuefromTextBox").click();
		// }
		//
		// driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		//
		// System.out.println("Program is selected");
		element("SaveButton").click();
	}

	// <<<vivek end code Nov27th merging>>>>

	@And("^Click on First Patient and Verify Checkbox$")
	public void Click_on_First_Patient_and_Verify_Checkbox() throws Throwable {
		Thread.sleep(3000);
		System.out.println("click on new button");
		CommonMethods.PerformClickOnObject(element("NewButton"));
		// element("NewButton").click();
		driver.findElement(By.xpath("//label/span[text()='Inbound Call']")).click();
		Thread.sleep(2000);
		element("NextButton").click();
		assertTrue("Case Information Page is displayed", element("CaseInformationPageHeader").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Edit Case Page is Displayed");
		// JavascriptExecutor js= (JavascriptExecutor) driver;
		//
		// js.executeScript("document.getElementsByClassName('select')[3].click()");
		//
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
		// element("SearchedValuefromTextBox").click();

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
		// CommonMethods.PerformClickOnObject(element("StatusDropDown"));
		// List<WebElement> DropDown =
		// driver.findElements(By.xpath("//div[contains(@class,'--short visible
		// positioned')]/div/ul/li/a"));
		// CommonMethods.selectDropDownByValue(DropDown,
		// getDataFromExcel(ModuleName,TestCaseID, "Status"));

		// WebElement statusDropdown =
		// driver.findElement(By.xpath("//label[text()='Status']//following::div[1]//child::div[@role='combobox']//child::input"));
		// CommonMethods.PerformClickOnObject(statusDropdown);
		// List<WebElement> dropDown =
		// driver.findElements(By.xpath("//label[text()='Status']//following::div[1]//child::div[@role='listbox']//child::lightning-base-combobox-item//child::span[@class='slds-media__body']"));
		// CommonMethods.selectDropDownByValue(dropDown,
		// getDataFromExcel(ModuleName,TestCaseID, "Status"));

		CommonMethods.PerformClickOnObject(element("CaseOriginDropDown"));
		List<WebElement> DropDown1 = driver
				.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
		CommonMethods.selectDropDownByValue(DropDown1, getDataFromExcel(ModuleName, TestCaseID, "CaseOrigin"));

		driver.findElement(
				By.xpath("//span[text()='Safety Event Identified']/../following-sibling::div//div//div//div/a"))
				.click();

		driver.findElement(By.xpath("//a[@title='Yes']")).click();

		Case_Page_objects.AEWarmTransferCheckbox.click();

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Enterd All Mandatory Feilds");
		element("SaveButton").click();
		Thread.sleep(2000);
		try {
			WebDriverWait wait = new WebDriverWait(driver, 5);
			wait.until(ExpectedConditions.alertIsPresent());
			driver.switchTo().alert().accept();
			// driver.navigate().back();
			driver.findElement(By.xpath("//button[@title='Close New Adverse Event: Unlocked']")).click();
			// element(ApplicationPageObjects.ClosingAdverseEventPage).click();
		}

		catch (Exception e) {

		}
	}
	@And("^Click on First Patient and perform inbound call$")
	public void click_on_first_patient_and_perform_inbound_call() throws Throwable {
	
	Thread.sleep(3000);
	System.out.println("click on new button");
	CommonMethods.alertDismiss();

	CommonMethods.PerformClickOnObject(element("NewButton"));
	Thread.sleep(3000);
	//CommonMethods.PerformClickOnObject(element("AppsideSplitviewClose"));
	// element("NewButton").click();
	driver.findElement(By.xpath("//label/span[text()='Inbound Call']")).click();
	Thread.sleep(2000);
	element("NextButton").click();
	assertTrue("Case Information Page is displayed", element("CaseInformationPageHeader").isDisplayed());
	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Edit Case Page is Displayed");
	 JavascriptExecutor js= (JavascriptExecutor) driver;
	
	 js.executeScript("document.getElementsByClassName('select')[3].click()");
	
	 js.executeScript("document.querySelectorAll('[title=\\\"Yes\\\"]')[0].click()");

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
	// element("SearchedValuefromTextBox").click();

	try {
		element("SearchedValuefromTextBox").click();

	} catch (Exception e) {
		element("ProgramTextBx").click();
		element("ProgramTextBx").clear();
		element("ProgramTextBx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ProgramName"));
		element("SearchedValue").click();
	}

	driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

//	System.out.println("Program is selected");
	// CommonMethods.PerformClickOnObject(element("StatusDropDown"));
	// List<WebElement> DropDown =
	// driver.findElements(By.xpath("//div[contains(@class,'--short visible
	// positioned')]/div/ul/li/a"));
	// CommonMethods.selectDropDownByValue(DropDown,
	// getDataFromExcel(ModuleName,TestCaseID, "Status"));

	// WebElement statusDropdown =
	// driver.findElement(By.xpath("//label[text()='Status']//following::div[1]//child::div[@role='combobox']//child::input"));
	// CommonMethods.PerformClickOnObject(statusDropdown);
	// List<WebElement> dropDown =
	// driver.findElements(By.xpath("//label[text()='Status']//following::div[1]//child::div[@role='listbox']//child::lightning-base-combobox-item//child::span[@class='slds-media__body']"));
	// CommonMethods.selectDropDownByValue(dropDown,
	// getDataFromExcel(ModuleName,TestCaseID, "Status"));

	CommonMethods.PerformClickOnObject(element("CaseOriginDropDown"));
	List<WebElement> DropDown1 = driver
			.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a"));
	CommonMethods.selectDropDownByValue(DropDown1, getDataFromExcel(ModuleName, TestCaseID, "CaseOrigin"));

	driver.findElement(
			By.xpath("//span[text()='Safety Event Identified']/../following-sibling::div//div//div//div/a"))
			.click();

	driver.findElement(By.xpath("//a[@title='Yes']")).click();

	element("Cases_AEWarmTransferCheckbox").click();

	Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Enterd All Mandatory Feilds");
	element("SaveButton").click();
	Thread.sleep(2000);

	try {
//		WebDriverWait wait = new WebDriverWait(driver, 5);
//		 wait.until(ExpectedConditions.alertIsPresent());
//		 driver.switchTo().alert().accept();
		 driver.navigate().back();
		driver.findElement(By.xpath("//button[@title='Close New Adverse Event: Unlocked']")).click();
		// element(ApplicationPageObjects.ClosingAdverseEventPage).click();
	}

	catch (Exception e) {
		//driver.findElement(By.xpath("//button[@title='Close New Adverse Event: Unlocked']")).click();
	}
}



	@Then("^Close The AdverseEventPage$")
	public void Close_The_AdverseEventPage() throws Throwable {

		try {
			CommonMethods.alertDismiss();
			CommonMethods.PerformClickOnObject(
					driver.findElement(By.xpath("//button[contains(@title,'Close New Adverse Event')]")));
			// driver.findElement(By.xpath("//button[contains(@title,'Close New Adverse
			// Event')]")).click();

		} catch (Exception e) {
			// TODO: handle exception
			// CommonMethods.alertDismiss();
			try {
				CommonMethods.PerformClickOnObject(
						driver.findElement(By.xpath("//button[contains(@title,'Close New Adverse Event')]")));
			} catch (Exception e2) {
				// TODO: handle exception
			}
			
		}
		Thread.sleep(5000);
	}

@Then("^Fetch CaseID from excelsheet>Search>Click on Support Document pdf link>Read DocumentURL>Click on View File>Validate pdf URL$")
public void fetch_caseid_from_excelsheetsearchclick_on_support_document_pdf_linkread_documenturlclick_on_view_filevalidate_pdf_url() throws Throwable {
		FileInputStream fis = new FileInputStream("C:\\TestAutomation\\CucumberFramework\\src\\test\\resources\\TestData\\CaseNumber.xlsx");
		XSSFWorkbook workbook = new XSSFWorkbook(fis);

		int sheets = workbook.getNumberOfSheets();
		for (int s = 0; s < sheets; s++) {
			if (workbook.getSheetName(s).equalsIgnoreCase("PfizerCaseNumber")) {
				XSSFSheet sheet = workbook.getSheetAt(s);

				int rowCount = sheet.getLastRowNum() - sheet.getFirstRowNum();
				for (int i = 1; i < rowCount + 1; i++) {
					Row row = sheet.getRow(i);
					for (int j = 0; j < row.getLastCellNum(); j++) {

						// Print Excel data in console

						System.out.println(row.getCell(j).getStringCellValue());
						driver.findElement(By.xpath("//*[@name='Case-search-input']"))
								.sendKeys(row.getCell(j).getStringCellValue());
						Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Enter Case ID which fetched from Excel");
						 Reporter.addStepLog("Case ID which fetched from Excel: "+row.getCell(j).getStringCellValue());
						Thread.sleep(2000);
						driver.findElement(By.xpath("//*[@name='Case-search-input']")).sendKeys(Keys.ENTER);
						Thread.sleep(2000);
						driver.findElement(By.xpath("(//*[contains(@class,'outputLookupLink')])[1]")).click();
						Thread.sleep(5000);
						// driver.findElement(By.xpath("(//*[contains(@class,'primaryField')])[2]/div/a")).click();
						// driver.findElement(By.xpath("(//*[contains(@class,'forceRecordLayout')])[2]/div[2]/h3[@class='primaryField']/div/a")).click();
						// driver.findElement(By.xpath("//*[contains(@class,'textUnderline')]")).click();
						// driver.findElement(By.xpath("//*[contains(text(),'pdf')]")).click();

						JavascriptExecutor js = (JavascriptExecutor) driver;
						js.executeScript("arguments[0].click();",
						driver.findElement(By.xpath("(//*[contains(text(),'pdf')])[2]")));
						Thread.sleep(3000);

						// String DocumentURL=driver.findElement(By.xpath("//span[text()='Document
						// URL']/parent::div/following-sibling::div/span/../lightning-formatted-url/a")).getText();

						try {
							driver.findElement(By.xpath("(//*[contains(@href,'s3')])[3]")).isDisplayed();
							DocumentURL = driver.findElement(By.xpath("(//*[contains(@href,'s3')])[3]")).getText();
						} catch (Exception e) {
							driver.findElement(By.xpath("(//*[contains(@href,'s3')])[2]")).isDisplayed();
							DocumentURL = driver.findElement(By.xpath("(//*[contains(@href,'s3')])[2]")).getText();
						}

						System.out.println("DocumentURL Readed: " + DocumentURL);// https://s3.amazonaws.com/ipas.test.inventivhealth.com.newaws/pfizer/rxpathways/fax/groupa/20071400000005.pdf
						Reporter.addStepLog("DocumentURL Readed: "+DocumentURL);
						String[] DocumentURLvalue = DocumentURL.split("/pfizer/");
						String DocumentURLvaluetrimed = DocumentURLvalue[0];
						System.out.println("DocumentURLvalue trimed: " + DocumentURLvaluetrimed);// https://s3.amazonaws.com/ipas.test.inventivhealth.com.newaws
						Thread.sleep(2000);

						String[] DocumentURLPDFvalue = DocumentURL.split("/groupa/");
						String DocumentURLPDFvaluetrimed = DocumentURLPDFvalue[1];
						System.out.println("DocumentURLPDFvalue trimed: " + DocumentURLPDFvaluetrimed);// 20071400000005.pdf
						Thread.sleep(2000);
						Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "DocumentURL Readed");
						Thread.sleep(2000);
						
						Reporter.addStepLog("Scenario1---------Started");
						
						JavascriptExecutor js1 = (JavascriptExecutor) driver;
						// js1.executeScript("arguments[0].click();",
						// driver.findElement(By.xpath("(//*[contains(text(),'View File')])[4]")));
						js1.executeScript("arguments[0].click();",
						driver.findElement(By.xpath("//*[contains(@name,'View_File')]")));
						Thread.sleep(5000);
						JavascriptExecutor js2 = (JavascriptExecutor) driver;
						js2.executeScript("arguments[0].click();",
						driver.findElement(By.xpath("(//*[text()='Cancel'])[2]")));
						Thread.sleep(8000);

						try {
							WebDriverWait wait = new WebDriverWait(driver, 10);
							wait.until(ExpectedConditions.alertIsPresent());
							driver.switchTo().alert().accept();
						} catch (Exception e) {
							System.out.println("No Alert displayed");
						}
						Thread.sleep(5000);
						String parentWindow = driver.getWindowHandle();
						for (String winHandle : driver.getWindowHandles()) {
							driver.switchTo().window(winHandle);
						}
						Thread.sleep(3000);
						String expectedURL = driver.getCurrentUrl();
						System.out.println("PDF Expected URL: " + expectedURL);
						Reporter.addStepLog("Got expectedURL 1: "+expectedURL);
						Thread.sleep(3000);

						if (expectedURL.contains(DocumentURLvaluetrimed)
								&& expectedURL.contains(DocumentURLPDFvaluetrimed)) {
							Assert.assertTrue(true);
							System.out.println("PDF URL 1 Validated sucessfully");
							Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "PDF URL 1 Validated sucessfully");
							Thread.sleep(2000);
						} else {
							Assert.assertTrue(false);

						}
						driver.close();
						driver.switchTo().window(parentWindow);

						Thread.sleep(3000);

						// JavascriptExecutor js2 = (JavascriptExecutor) driver;
						// js2.executeScript("arguments[0].click();",
						// driver.findElement(By.xpath("(//*[text()='Cancel'])[2]")));
						// Thread.sleep(3000);

						JavascriptExecutor js0 = (JavascriptExecutor) driver;
						js0.executeScript("arguments[0].click();",
						driver.findElement(By.xpath("//*[contains(@title,'pdf') and @type='button']")));
						// js0.executeScript("arguments[0].click();",
						// driver.findElement(By.xpath("(//*[contains(@class,'slds-button_icon-container')
						// and @type='button'])[4]")));
						// Thread.sleep(3000);
						// driver.findElement(By.xpath("(//*[contains(@class,'outputLookupLink')])[1]")).click();
						Thread.sleep(5000);
						CommonMethods.closeAllInactiveTabsInPfizer();

						Thread.sleep(3000);

						// --Scenario-2
						System.out.println("Scenario1---------Ended");
						Reporter.addStepLog("Scenario1---------Ended");
						System.out.println("---------");
						System.out.println("Scenario2---------Started");
						Reporter.addStepLog("Scenario2---------Started");
						CommonMethods.PerformClickOnObject(element("ViewAll"));
						Thread.sleep(8000);
						// element("ViewFileSF").sendKeys(Keys.ENTER);
						// CommonMethods.PerformClickOnObject(element("ViewFileSF"));

						JavascriptExecutor js4 = (JavascriptExecutor) driver;
						// js1.executeScript("arguments[0].click();",
						// driver.findElement(By.xpath("(//*[contains(text(),'View File')])[4]")));
						js4.executeScript("arguments[0].click();",
						driver.findElement(By.xpath("//a[contains(text(),'View File')]")));
						Thread.sleep(8000);

						// String parentWindow1 = driver.getWindowHandle();
						// for(String winHandle1 : driver.getWindowHandles()){
						// driver.switchTo().window(winHandle1);
						// }
						// ArrayList<String> tabs = new ArrayList<String>(driver.getWindowHandles());
						// int tabsize = tabs.size();
						// System.out.println("No. of tabs : "+tabsize);
						// driver.switchTo().window(tabs.get(1));

						try {
							WebDriverWait wait = new WebDriverWait(driver, 10);
							wait.until(ExpectedConditions.alertIsPresent());
							driver.switchTo().alert().accept();

						} catch (Exception e) {
							System.out.println("No Alert displayed");
						}
						Thread.sleep(10000);

						// String parentWindow1 = driver.getWindowHandle();
						// for(String winHandle1 : driver.getWindowHandles()){
						// driver.switchTo().window(winHandle1);
						// }
						ArrayList<String> tabs2 = new ArrayList<String>(driver.getWindowHandles());
						int tabsize2 = tabs2.size();
						System.out.println("No. of tabs : " + tabsize2);
						driver.switchTo().window(tabs2.get(1));
						// System.out.println("URL1"+driver.getCurrentUrl());
						// driver.switchTo().window(tabs2.get(2));
						// System.out.println("URL2"+driver.getCurrentUrl());

						Thread.sleep(5000);
						String expectedURL1 = driver.getCurrentUrl();

						System.out.println("expectedURL1 : " + expectedURL1);
						Reporter.addStepLog("Got expectedURL 2 : "+expectedURL1);
						Thread.sleep(3000);
						if (expectedURL1.contains(DocumentURLvaluetrimed)
								&& expectedURL1.contains(DocumentURLPDFvaluetrimed)) {
							Assert.assertTrue(true);
							System.out.println("PDF URL 2 Validated sucessfully");
						
						} else {
							Assert.assertTrue(false);

						}

						for (int k = tabsize2 - 1; k >= 1; k--) {
							driver.switchTo().window(tabs2.get(k));
							Thread.sleep(2000);
							String presenttitle = driver.getTitle();
							System.out.println("Scenario 2 present driver title--:" + presenttitle);

							Thread.sleep(2000);
							driver.close();
							Thread.sleep(2000);
						}

						// driver.close();
						// driver.switchTo().window(tabs2.get(2));
						// driver.close();
						driver.switchTo().window(tabs2.get(0));
						Thread.sleep(8000);
						JavascriptExecutor js3 = (JavascriptExecutor) driver;
						js3.executeScript("arguments[0].click();", driver.findElement(
								By.xpath("//*[contains(@title,'Close Supporting Documents') and @type='button']")));
						Thread.sleep(3000);
						System.out.println("Scenario2---------Ended");
						Reporter.addStepLog("Scenario2---------Ended");
						System.out.println("---------");
						System.out.println("Scenario3---------Started");
						Reporter.addStepLog("Scenario3---------Started");
						JavascriptExecutor js5 = (JavascriptExecutor) driver;
						// js1.executeScript("arguments[0].click();",
						// driver.findElement(By.xpath("(//*[contains(text(),'View File')])[4]")));
						js3.executeScript("arguments[0].click();",
								driver.findElement(By.xpath("//*[contains(@href,'ViewFile')]")));
						// js5.executeScript("arguments[0].click();",
						// driver.findElement(By.xpath("//*[contains(text(),'View
						// File:')]/parent::div/div[2]/span/a")));
						Thread.sleep(3000);

						try {
							WebDriverWait wait = new WebDriverWait(driver, 10);
							wait.until(ExpectedConditions.alertIsPresent());
							driver.switchTo().alert().accept();

						} catch (Exception e) {
							System.out.println("no alert 2");
						}
						Thread.sleep(10000);

						ArrayList<String> tabs3 = new ArrayList<String>(driver.getWindowHandles());
						int tabsize3 = tabs3.size();
						System.out.println("No. of tabs : " + tabsize3);
						driver.switchTo().window(tabs3.get(1));
						// System.out.println("URL1"+driver.getCurrentUrl());
						// driver.switchTo().window(tabs2.get(2));
						// System.out.println("URL2"+driver.getCurrentUrl());

						Thread.sleep(5000);
						String expectedURL2 = driver.getCurrentUrl();

						System.out.println("PDFexpectedURL3 : " + expectedURL2);
						Reporter.addStepLog("Got expectedURL 3 : "+expectedURL2);
						Thread.sleep(3000);
						if (expectedURL2.contains(DocumentURLvaluetrimed)
								&& expectedURL2.contains(DocumentURLPDFvaluetrimed)) {
							Assert.assertTrue(true);
							System.out.println("PDF URL 3 Validated sucessfully");
							
						} else {
							Assert.assertTrue(false);

						}
						Thread.sleep(5000);
						// String presentdrivertitle=driver.getTitle();
						// System.out.println("present driver title--:"+presentdrivertitle);
						// for(i=0;i<=tabsize3;i++) {
						// if(driver.getTitle().contains("pdf") ||
						// driver.getTitle().contains("Lightning")) {
						// driver.close();
						// }
						// }
						// driver.switchTo().window(parentWindow);
						// driver.switchTo().window(tabs2.get(3));
						// driver.close();
						// driver.switchTo().window(tabs2.get(2));
						// driver.close();
						// driver.switchTo().window(tabs2.get(1));
						for (int l = tabsize3 - 1; l >= 1; l--) {
							driver.switchTo().window(tabs3.get(l));
							Thread.sleep(2000);
							String presentdrivertitle = driver.getTitle();
							System.out.println("Scenario 3 present driver title--:" + presentdrivertitle);

							Thread.sleep(2000);
							driver.close();
							Thread.sleep(2000);
						}

						driver.switchTo().window(tabs2.get(0));
						Thread.sleep(3000);

						try {
							JavascriptExecutor js6 = (JavascriptExecutor) driver;
							js6.executeScript("arguments[0].click();",
									driver.findElement(By.xpath("//*[contains(@title,'Close Tab') and @type='button']")));

						} catch (Exception e) {
							System.out.println("No close Element");
						}
						try {
							JavascriptExecutor js7 = (JavascriptExecutor) driver;
							js7.executeScript("arguments[0].click();",
									driver.findElement(By.xpath("//*[contains(@title,'Close') and @type='button']")));

						} catch (Exception e) {
							System.out.println("No close 1 Element");
						}

					
						Thread.sleep(8000);
						System.out.println("---------");
						Reporter.addStepLog("Scenario3---------Ended");
						driver.findElement(By.xpath("//*[@name='Case-search-input']")).clear();
						CommonMethods.closeAllInactiveTabsInPfizer(driver);

					}

				}
			}
		}
	}

//@Then("^Fetch CaseID from XLSB File>Search>Click on Support Document pdf link>Read DocumentURL>Click on View File>Validate pdf URL$")
//public void fetch_caseid_from_xlsb_filesearchclick_on_support_document_pdf_linkread_documenturlclick_on_view_filevalidate_pdf_url() throws Throwable {
//
//	String xlsbFileName = "C:\\TestAutomation\\CucumberFramework\\src\\test\\resources\\TestData\\report1594734718479.xlsb";
//
//    OPCPackage pkg;
//
//    try {
//        pkg = OPCPackage.open(xlsbFileName);
//        XSSFBReader r = new XSSFBReader(pkg);
//        XSSFBSharedStringsTable sst = new XSSFBSharedStringsTable(pkg);
//        XSSFBStylesTable xssfbStylesTable = r.getXSSFBStylesTable();
//        XSSFBReader.SheetIterator it = (XSSFBReader.SheetIterator) r.getSheetsData();
//
//        List<String> sheetTexts = new ArrayList<>();
//        while (it.hasNext()) {
//            InputStream is = it.next();
//            String name = it.getSheetName();
//            TestSheetHandler testSheetHandler = new TestSheetHandler();
//            testSheetHandler.startSheet(name);
//            XSSFBSheetHandler sheetHandler = new XSSFBSheetHandler(is,
//                    xssfbStylesTable,
//                    it.getXSSFBSheetComments(),
//                    sst, testSheetHandler,
//                    new DataFormatter(),
//                    false);
//            sheetHandler.parse();
//            testSheetHandler.endSheet();
//            sheetTexts.add(testSheetHandler.toString());
//        }
//        System.out.println("output text:"+sheetTexts);
//
//    } catch (InvalidFormatException e) {
//        // TODO Auto-generated catch block
//        e.printStackTrace();
//    } 
//
//}
//
//public class TestSheetHandler implements XSSFSheetXMLHandler.SheetContentsHandler {
//
//    private final StringBuilder sb = new StringBuilder();
//
//    public void startSheet(String sheetName) {
//        sb.append("<sheet name=\"").append(sheetName).append(">");
//    }
//
//    public void endSheet() {
//        sb.append("</sheet>");
//    }
//
//    @Override
//    public void startRow(int rowNum) {
//        sb.append("\n<tr num=\"").append(rowNum).append(">");
//    }
//
//    public void endRow(int rowNum) {
//        sb.append("\n</tr num=\"").append(rowNum).append(">");
//    }
//
//    public void cell(String cellReference, String formattedValue, XSSFComment comment) {
//        formattedValue = (formattedValue == null) ? "" : formattedValue;
//        if (comment == null) {
//            sb.append("\n\t<td ref=\"").append(cellReference).append("\">").append(formattedValue).append("</td>");
//        } else {
//            sb.append("\n\t<td ref=\"").append(cellReference).append("\">")
//                    .append(formattedValue)
//                    .append("<span type=\"comment\" author=\"")
//                    .append(comment.getAuthor()).append("\">")
//                    .append(comment.getString().toString().trim()).append("</span>")
//                    .append("</td>");
//        }
//    }
//
//    @Override
//    public void headerFooter(String text, boolean isHeader, String tagName) {
//        if (isHeader) {
//            sb.append("<header tagName=\"").append(tagName).append("\">").append(text).append("</header>");
//        } else {
//            sb.append("<footer tagName=\"").append(tagName).append("\">").append(text).append("</footer>");
//
//        }
//    }
//
//    @Override
//    public String toString() {
//        return sb.toString();
//    }
//
//	@Override
//	public void endRow() {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void cell(String cellReference, String formattedValue) {
//		// TODO Auto-generated method stub
//		
//	}
//}

}
