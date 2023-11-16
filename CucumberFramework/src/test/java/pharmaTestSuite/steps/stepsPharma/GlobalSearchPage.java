package pharmaTestSuite.steps.stepsPharma;

import static org.testng.AssertJUnit.assertTrue;
import java.util.List;
import java.util.Set;

import org.junit.Assert;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
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

@SuppressWarnings("unused")
public class GlobalSearchPage extends GetObj {

	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;

	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;

	// HomePage homepage=new HomePage(webDriverFactory);
	// ApplicationPage apppage=new ApplicationPage(webDriverFactory);

	@SuppressWarnings("static-access")
	public GlobalSearchPage(WebDriverFactory DriverFactory) throws Exception {
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();

	}

	@Then("^Select order option$")
	public void select_paitent_option() throws Throwable {

		Thread.sleep(3000);

		driver.switchTo().frame(0);

		WebDriverWait wait = new WebDriverWait(driver, 20);

		wait.until(ExpectedConditions.elementToBeClickable(element("OrderRadiobutton")));
		element("OrderRadiobutton").click();

	}

	@Then("^Select patient option$")
	public void select_patient_option() throws Throwable {

		Thread.sleep(2000);

		int size = driver.findElements(By.tagName("iframe")).size();
		System.out.println("size of frame in patient page" + size);

		driver.switchTo().frame(0);

		WebDriverWait wait = new WebDriverWait(driver, 20);

		wait.until(ExpectedConditions.elementToBeClickable(element("PatientRadiobutton")));
		element("PatientRadiobutton").click();

	}

	@Then("^Enter Feild and Value details$")
	public void enter_Feild_and_Value_details() throws Throwable {

		try {
			Select fielddropdown = new Select(element("FieldDropdown"));
			fielddropdown.selectByValue(getDataFromExcel(ModuleName, TestCaseID, "FieldOption"));
		} catch (StaleElementReferenceException e) {
			Select fielddropdown = new Select(element("FieldDropdown"));
			fielddropdown.selectByValue(getDataFromExcel(ModuleName, TestCaseID, "FieldOption"));
		}
		// String a = homepage.Portal_PatientID;

		Thread.sleep(5000);
		element("Valuetxtbox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PatientID"));

	}

	@Then("^Enter Order Feild and Value details$")
	public void enter_order_feild_and_value_details() throws Throwable {

		try {
			Thread.sleep(3000);
			Select fielddropdown = new Select(element("FieldDropdown"));
			fielddropdown.selectByValue(getDataFromExcel(ModuleName, TestCaseID, "OrderFieldOption"));
		} catch (StaleElementReferenceException e) {
			Select fielddropdown = new Select(element("FieldDropdown"));
			fielddropdown.selectByValue(getDataFromExcel(ModuleName, TestCaseID, "OrderFieldOption"));

		}
		Thread.sleep(5000);
		element("Valuetxtbox").sendKeys(ApplicationPage.OrderID);
		// element("Valuetxtbox").sendKeys("527550");
		System.out.println(ApplicationPage.OrderID);

	}

	@Then("^Click on Search$")
	public void click_on_Search() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Searchbtn").click();
		Thread.sleep(2000);

	}

	@When("^Click on Patient ID$")
	public void click_on_Patient_ID() throws Throwable {

		element("PatientIDClick").click();
	}

	@When("^Click on Order ID$")
	public void click_on_order_ID() throws Throwable {

		element("OrderIDlink").click();

	}

	@When("^Click on Order ID link$")
	public void click_on_order_ID_link() throws Throwable {

		element("GlobalSearch_FirstOrderID").click();

		String initialOrder = element("OrderProduct_InitialOrder").getText();
		if (initialOrder.equals(getDataFromExcel(ModuleName, TestCaseID, "Order Type"))) {
			System.out.println("Initail order got created");
		}

		else {
			System.out.println("Initail order not created");
		}

	}

	@Then("^Verify 'PO Number' Radio Button is Present$")
	public void verify_po_number_radio_button_is_present() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));
		Assert.assertTrue(element("PONumberRadioButton").isDisplayed());
		element("PONumberRadioButton").click();
		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Verify Search Criteria has PO Number,Patient FName,LName and ID$")
	public void verify_search_criteria_has_po_numberpatient_fnamelname_and_id() throws Throwable {

		Thread.sleep(3000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		Select Drop1 = new Select(element("PONumberdropdown1"));
		WebElement option = Drop1.getFirstSelectedOption();
		Assert.assertTrue(option.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Value1")));

		List<WebElement> list = driver
				.findElements(By.xpath("(//select[contains(@name,'theForm:theGlobalSearch')])[3]/option"));
		System.out.println("list Size :" + list.size());
		int i;
		String Value2 = getDataFromExcel(ModuleName, TestCaseID, "Value2");
		for (i = 2; i <= list.size(); i++) {

			if (driver
					.findElement(By.xpath("(//select[contains(@name,'theForm:theGlobalSearch')])[3]/option[" + i + "]"))
					.getText().equalsIgnoreCase(Value2)) {
				Reporter.addStepLog("is Present");
				break;
			}

		}

		if (i > list.size()) {
			Assert.fail();
		}
		String Value3 = getDataFromExcel(ModuleName, TestCaseID, "Value3");
		for (i = 1; i <= list.size(); i++) {

			if (driver
					.findElement(By.xpath("(//select[contains(@name,'theForm:theGlobalSearch')])[3]/option[" + i + "]"))
					.getText().equalsIgnoreCase(Value3)) {
				Reporter.addStepLog("is Present");
				break;
			}

		}

		if (i > list.size()) {
			Assert.fail();
		}
		String Value4 = getDataFromExcel(ModuleName, TestCaseID, "Value4");
		for (i = 1; i <= list.size(); i++) {

			if (driver
					.findElement(By.xpath("(//select[contains(@name,'theForm:theGlobalSearch')])[3]/option[" + i + "]"))
					.getText().equalsIgnoreCase(Value4)) {
				Reporter.addStepLog("is Present");
				break;
			}
		}

		if (i > list.size()) {
			Assert.fail();
		}

	}

	@And("^Verify first field of 'Field' search criteria is 'PO Number' and not editable$")
	public void verify_first_field_of_field_search_criteria_is_po_number_and_not_editable() throws Throwable {
		Select Drop1 = new Select(element("PONumberdropdown1"));
		WebElement option = Drop1.getFirstSelectedOption();
		Assert.assertTrue(option.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Value1")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		try {
			Drop1.deselectAll();
			Assert.fail();
		} catch (Exception e) {

		}
	}

	@And("^Verify Operator search criteria is grayed out and is set to 'equals' by default$")
	public void verify_operator_search_criteria_is_grayed_out_and_is_set_to_equals_by_default() throws Throwable {
		Select Drop1 = new Select(element("FirstOperatorDropdown"));
		WebElement option = Drop1.getFirstSelectedOption();
		Assert.assertTrue(option.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Operator")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		try {
			Drop1.deselectAll();
			Assert.fail();
		} catch (Exception e) {

		}

	}

	@And("^Enter 'PO Number' Search Value and Click On Search$")
	public void enter_po_number_search_value_and_click_on_search() throws Throwable {
		element("PatientValueTextBox1").clear();
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "SearchValue"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Global_SearchButton").click();
		Thread.sleep(3000);// added by sharmila
	}

	@Then("^Verify proper alert validation message$")
	public void verify_proper_alert_validation_message() throws Throwable {

		Alert alert = driver.switchTo().alert();
		Assert.assertTrue(alert.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "AlertMessage")));
		alert.accept();
	}

	@Then("^Verify All the fields Resulted of PO Number$")
	public void verify_all_the_fields_resulted_of_po_number() throws Throwable {

		String ExpectedFileds = getDataFromExcel(ModuleName, TestCaseID, "Expected Fields");
		String Arr[] = ExpectedFileds.split(",");
		CommonMethods.ScrolDownToTheObject(driver.findElement(By.xpath(
				"//h2[text()='Shipment Authorization']/ancestor::div/following-sibling::div//table/thead/tr/th[1]")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		for (int i = 0; i < Arr.length; i++) {
			for (int j = 1; j <= Arr.length; j++) {
				if (driver.findElement(By.xpath(
						"//h2[text()='Shipment Authorization']/ancestor::div/following-sibling::div//table/thead/tr/th["
								+ j + "]"))
						.getText().equalsIgnoreCase(Arr[i])) {
					CommonMethods.ScrolDownToTheObject(driver.findElement(By.xpath(
							"//h2[text()='Shipment Authorization']/ancestor::div/following-sibling::div//table/thead/tr/th["
									+ j + "]")));
					break;
				}
				if (j > Arr.length) {
					Assert.fail();
				}
			}

		}
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Click on Patient ID Link$")
	public void click_on_patient_id_link() throws Throwable {
		element("POnumberPatientIDResultLink").click();

	}

	@And("^Click on Order Id$")
	public void click_on_order_id() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));
		element("POnumberOrderIDResultLink").click();
	}

	@And("^Click on Practitioner Id$")
	public void click_on_practitioner_id() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));
		element("POnumberPractitionerIDResultLink").click();
	}

	@Then("^Verify user is navigated to Patient's information Screen$")
	public void verify_user_is_navigated_to_patients_information_screen() throws Throwable {

		Thread.sleep(5000);
		for (String ChildWindow : driver.getWindowHandles()) {
			driver.switchTo().window(ChildWindow);
		}

		driver.manage().window().maximize();

		driver.close();

		Thread.sleep(5000);
		for (String ChildWindow : driver.getWindowHandles()) {
			driver.switchTo().window(ChildWindow);
		}
		driver.manage().window().maximize();

	}

	@Then("^Verify user is navigated to order information Screen$")
	public void verify_user_is_navigated_to_order_information_screen() throws Throwable {
		Thread.sleep(5000);
		for (String ChildWindow : driver.getWindowHandles()) {
			driver.switchTo().window(ChildWindow);
		}

		driver.manage().window().maximize();

		driver.close();
		Thread.sleep(5000);
		for (String ChildWindow : driver.getWindowHandles()) {
			driver.switchTo().window(ChildWindow);
		}

		driver.manage().window().maximize();

	}

	@Then("^Verify user is navigated to Practitioner information Screen$")
	public void verify_user_is_navigated_to_practitioner_information_screen() throws Throwable {
		Thread.sleep(5000);
		for (String ChildWindow : driver.getWindowHandles()) {
			driver.switchTo().window(ChildWindow);
		}

		driver.manage().window().maximize();

		driver.close();
		Thread.sleep(5000);
		for (String ChildWindow : driver.getWindowHandles()) {
			driver.switchTo().window(ChildWindow);
		}

		driver.manage().window().maximize();

	}

	@And("^Enter 'PO Number', First Name and click on Search$")
	public void enter_po_number_first_name_and_click_on_search() throws Throwable {
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PO Number"));
		Select Drop1 = new Select(element("PONumberdropdown2"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchBy1"));
		Select Drop2 = new Select(element("PONumberdropdown3"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Operator"));
		element("PatientValueTextBox2").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "First Name"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Global_SearchButton").click();
		Thread.sleep(2000);

	}

	@Then("^Verify Result is according to First Name and PO Number$")
	public void verify_result_is_according_to_first_name_and_po_number() throws Throwable {

		CommonMethods.ScrolDownToTheObject(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "PO Number")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[3])[3]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "First Name")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Enter 'PO Number', First Name,Last Name and click on Search$")
	public void enter_po_number_first_namelast_name_and_click_on_search() throws Throwable {
		element("PONumberRadioButton").click();
		Thread.sleep(3000);
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PO Number"));
		Select Drop1 = new Select(element("PONumberdropdown2"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchBy1"));
		Select Drop2 = new Select(element("PONumberdropdown3"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Operator"));
		element("PatientValueTextBox2").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "First Name"));
		Select Drop3 = new Select(element("PONumberdropdown4"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchBy2"));
		Select Drop4 = new Select(element("PONumberdropdown5"));
		Drop4.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Operator"));
		element("PatientValueTextBox3").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Last Name"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Global_SearchButton").click();
		Thread.sleep(2000);

	}

	@Then("^Verify Result is according to First Name,Last Name and PO Number$")
	public void verify_result_is_according_to_first_namelast_name_and_po_number() throws Throwable {

		CommonMethods.ScrolDownToTheObject(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "PO Number")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[3])[3]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "First Name")));
		Assert.assertTrue(driver.findElement(By.xpath("//table/tbody/tr[1]/td[4]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Last Name")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Enter 'PO Number', First Name,Last Name,Patient ID and click on Search$")
	public void enter_po_number_first_namelast_namepatient_id_and_click_on_search() throws Throwable {
		element("PONumberRadioButton").click();
		Thread.sleep(3000);
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PO Number"));
		Select Drop1 = new Select(element("PONumberdropdown2"));
		Drop1.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchBy1"));
		Select Drop2 = new Select(element("PONumberdropdown3"));
		Drop2.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Operator"));
		element("PatientValueTextBox2").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "First Name"));
		Select Drop3 = new Select(element("PONumberdropdown4"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchBy2"));
		Select Drop4 = new Select(element("PONumberdropdown5"));
		Drop4.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Operator"));
		element("PatientValueTextBox3").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Last Name"));
		Select Drop5 = new Select(element("PONumberdropdown6"));
		Drop5.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchBy3"));
		Select Drop6 = new Select(element("PONumberdropdown7"));
		Drop6.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Operator"));
		element("PatientValueTextBox4").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Patient ID"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Global_SearchButton").click();
		Thread.sleep(2000);

	}

	@Then("^Verify Result is according to First Name,Last Name,Patient ID and PO Number$")
	public void verify_result_is_according_to_first_namelast_namepatient_id_and_po_number() throws Throwable {
		CommonMethods.ScrolDownToTheObject(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "PO Number")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[3])[3]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "First Name")));
		Assert.assertTrue(driver.findElement(By.xpath("//table/tbody/tr[1]/td[4]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Last Name")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[2]/a)")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Patient ID")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Enter 'PO Number', Last Name and click on Search$")
	public void enter_po_number_last_name_and_click_on_search() throws Throwable {
		element("PONumberRadioButton").click();
		Thread.sleep(3000);
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PO Number"));
		Select Drop3 = new Select(element("PONumberdropdown4"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchBy2"));
		Select Drop4 = new Select(element("PONumberdropdown5"));
		Drop4.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Operator"));
		element("PatientValueTextBox3").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Last Name"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Global_SearchButton").click();
		Thread.sleep(2000);

	}

	@Then("^Verify Result is according to Last Name and PO Number$")
	public void verify_result_is_according_to_last_name_and_po_number() throws Throwable {
		CommonMethods.ScrolDownToTheObject(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "PO Number")));
		Assert.assertTrue(driver.findElement(By.xpath("//table/tbody/tr[1]/td[4]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Last Name")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Enter 'PO Number', Last Name,Patient ID and click on Search$")
	public void enter_po_number_last_namepatient_id_and_click_on_search() throws Throwable {
		element("PONumberRadioButton").click();
		Thread.sleep(3000);
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PO Number"));
		Select Drop3 = new Select(element("PONumberdropdown4"));
		Drop3.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchBy2"));
		Select Drop4 = new Select(element("PONumberdropdown5"));
		Drop4.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Operator"));
		element("PatientValueTextBox3").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Last Name"));
		Select Drop5 = new Select(element("PONumberdropdown6"));
		Drop5.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchBy3"));
		Select Drop6 = new Select(element("PONumberdropdown7"));
		Drop6.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Operator"));
		element("PatientValueTextBox4").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Patient ID"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Global_SearchButton").click();
		Thread.sleep(2000);

	}

	@Then("^Verify Result is according to Last Name,Patient ID and PO Number$")
	public void verify_result_is_according_to_last_namepatient_id_and_po_number() throws Throwable {
		CommonMethods.ScrolDownToTheObject(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "PO Number")));
		Assert.assertTrue(driver.findElement(By.xpath("//table/tbody/tr[1]/td[4]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Last Name")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[2]/a)")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Patient ID")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Enter 'PO Number', Pateint ID and click on Search$")
	public void enter_po_number_pateint_id_and_click_on_search() throws Throwable {
		element("PONumberRadioButton").click();
		Thread.sleep(3000);
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PO Number"));
		Select Drop5 = new Select(element("PONumberdropdown6"));
		Drop5.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "SearchBy3"));
		Select Drop6 = new Select(element("PONumberdropdown7"));
		Drop6.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Operator"));
		element("PatientValueTextBox4").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Patient ID"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Global_SearchButton").click();
		Thread.sleep(2000);

	}

	@Then("^Verify Result is according to Pateint ID and PO Number$")
	public void verify_result_is_according_to_pateint_id_and_po_number() throws Throwable {
		CommonMethods.ScrolDownToTheObject(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[1])[5]")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "PO Number")));
		Assert.assertTrue(driver.findElement(By.xpath("(//table/tbody/tr[1]/td[2]/a)")).getText()
				.equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Patient ID")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@Then("^Verify 'No Matching Result' Message$")
	public void verify_no_matching_result_message() throws Throwable {
		CommonMethods.ScrolDownToTheObject(element("NoResultsReturnedMessageError"));
		Assert.assertTrue(element("NoResultsReturnedMessageError").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Enter Invaid 'PO Number' Search Value and Click On Search$")
	public void enter_invaid_po_number_search_value_and_click_on_search() throws Throwable {
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "InvalidSearchValue"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Global_SearchButton").click();

	}

	@And("^Enter Null 'PO Number' Search Value and Click On Search$")
	public void enter_null_po_number_search_value_and_click_on_search() throws Throwable {
		element("PatientValueTextBox1").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "NullSearchValue"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Global_SearchButton").click();
	}

	@Then("^Verify No alert pop up is appeared$")
	public void verify_no_alert_pop_up_is_appeared() throws Throwable {
		try {
			driver.switchTo().alert().accept();
			Assert.fail();
		} catch (Exception e) {
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		}

	}

}
