package pharmaTestSuite.steps.stepsPharma;

import static org.junit.Assert.assertTrue;
import static org.testng.AssertJUnit.assertTrue;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementNotVisibleException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.NoSuchWindowException;
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
import objectRepository.GetObj;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

@SuppressWarnings("unused")
public class OrderProductIHPage extends GetObj {

	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;

	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;

	//HomePage homepage=new HomePage(webDriverFactory);

	@SuppressWarnings("static-access")
	public OrderProductIHPage(WebDriverFactory DriverFactory) throws Exception
	{
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();

	}

	@Then("^Verify Order Product IH page opens$")
	public void verify_order_product_ih_page_opens() throws Throwable {

		Thread.sleep(5000);
		driver.navigate().refresh();
		Thread.sleep(10000);
		Assert.assertTrue(element("OrderProductIHHeader").isDisplayed());		    	

	}	
	@Then("^Enter the order ship date$")
	public void enter_the_order_ship_date() throws Throwable {

		Thread.sleep(5000);
		element("EditReleaseDatebtn").click();

		Thread.sleep(5000);
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(0,250)", "");
		element("DatePickerIconReleaseDate").click();// element modified by sharmila
		CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
		driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
		driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
		driver.findElement(By.xpath("//span[text()='14']")).click();

		Thread.sleep(5000);

		Thread.sleep(2000);
		CommonMethods.PerformClickOnObject(element("DatePickerIcon"));// element modified by sharmila
		CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2019");
		driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
		driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
		driver.findElement(By.xpath("//span[text()='14']")).click();

		Thread.sleep(5000);

	}
	
	@Then("^Click on Save$")			  
	public void click_on_save() throws Throwable {
		String winHandleBefore = driver.getWindowHandle();

		
		WebDriverWait wait = new WebDriverWait(driver, 30);

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//div//button[@title='Save']")));
		Actions a = new Actions(driver);
		Thread.sleep(5000);
		a.moveToElement(element("OrderProductSaveButton")).build().perform();
		CommonMethods.PerformClickOnObject(element("OrderProductSaveButton"));

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}	

	@Then("^Click on Save again$")			  
	public void click_on_save_again() throws Throwable {

		element("OrderProductSaveButtonagain").click();
	}
	@Then("^Click on Order Product Detail IH$")
	public void click_on_orderproduct_detail_ih() throws Throwable {
		driver.switchTo().defaultContent();
		Thread.sleep(8000);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		// js.executeScript("window.scrollBy(0,-350)", "");
		js.executeScript("scroll(0, -250);");

		driver.findElement(By.xpath("(//h2/a/span[contains(@title,'Order Product IH Details')])")).click();
		Thread.sleep(5000);
		CommonMethods.PerformClickOnObject(element("OrderInIHdetails1"));
	}	


	@When("^Update the status to Shipped$")
	public void update_the_status_to_shipped() throws Throwable {

		driver.navigate().refresh();	
		element("StatusEditIHDetail").click();


		driver.manage().timeouts().pageLoadTimeout(30, TimeUnit.SECONDS);
		// CommonMethods.ScrolDownToTheObject(element("ClickonStatusBox"));
		Thread.sleep(3000);

		try {
			element("ClickonStatusBox").click();
		}catch(ElementNotVisibleException e) {
			element("ClickonStatusBox").click();
		}
		element("ClickonStatusBox").sendKeys("Shipped");
		Thread.sleep(2000);
		WebDriverWait wait = new WebDriverWait(driver, 30);
		By option = By.xpath("//a[@title='Shipped']");
		wait.until(ExpectedConditions.elementToBeClickable(option));
		driver.findElement(option).click();

		Thread.sleep(5000);	 



	}

	@Then("^Go back to Order Product IH page$")
	public void go_back_to_orderproduct_ih_page() throws Throwable {

		Thread.sleep(8000);
		JavascriptExecutor js=((JavascriptExecutor) driver);
		js.executeScript("window.scrollTo(0, -document.body.scrollHeight)");
		try{
			CommonMethods.PerformClickOnObject(element("OrderproductIHIDlink"));
			//element("OrderproductIHIDlink").click();
		}catch(Exception e) {		
		}
		Thread.sleep(3000);
		driver.navigate().refresh();
	}
	@Then("^Click on Order product shipping > New$")
	public void click_on_order_product_shipping_new() throws Throwable {
		try{
			CommonMethods.PerformClickOnObject(element("OrderProductShippingLink"));
			
		}catch(Exception e) {
			
		}
	//	element("OrderProductShippingLink").click();
		//driver.navigate().refresh();
		element("DocumentsNewButton").click();	    

	}		    

	@Then("^Enter Days Supply$")
	public void enter_days_supply() throws Throwable {

		element("DaysSupplyTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "DaysSupplyTextBox"));		  		    

	}

	@And("^Enter Shipped to status$")
	public void enter_shipped_to_status() throws Throwable {

		element("ShippedtostatusTextBox").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "ShippedtostatusTextBox"));


	}

	@Then("^Click on Order shipping ID$")
	public void click_on_order_shipping_id() throws Throwable {

		Thread.sleep(3000);
		element("OrdershippingIDLink").click();    

	}
	@Then("^Click on Application ID link$")
	public void click_on_application_id_link() throws Throwable {
		try{
			CommonMethods.PerformClickOnObject(element("ApplicationIDLink"));
			
		}catch(Exception e) {
			
		}
		Thread.sleep(3000);
	//	element("ApplicationIDLink").click();    

	}	

	//vinutha//	  


//	@And("^Update the status In Order Product IH Details$")
//	public void Update_the_status_In_Order_Product_IH_Details() throws Throwable {
//
//		driver.navigate().refresh();     
//        JavascriptExecutor jse = (JavascriptExecutor)driver;
//        jse.executeScript("window.scrollBy(0,365)");
//      CommonMethods.PerformClickOnObject(element("StatusEditIHDetail"));
//      Thread.sleep(3000);
//      CommonMethods.PerformClickOnObject(element("OrderProduct_StatusDropdown"));
//      element("OrderProduct_ShippedDropDwnValue").click();
//
////		List<WebElement> DropDown = driver.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a")); 
////
////		CommonMethods.selectDropDownByValue(DropDown, getDataFromExcel(ModuleName,TestCaseID, "ShippedtostatusTextBox"));
//		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
//		/* Thread.sleep(2000);
//				 WebDriverWait wait = new WebDriverWait(driver, 30);
//				 By option = By.xpath("//a[@title='Shipped']");
//				 wait.until(ExpectedConditions.elementToBeClickable(option));
//				 driver.findElement(option).click();
//
//				 Thread.sleep(5000);*/	 	
//
//	}
//	@And("^Update the status In Order Product IH Details$")
//    public void Update_the_status_In_Order_Product_IH_Details() throws Throwable {
//
// 
//
//        driver.navigate().refresh();    
//
// 
//
//          JavascriptExecutor jse = (JavascriptExecutor)driver;
//          jse.executeScript("window.scrollBy(0,365)");
//          
//        CommonMethods.PerformClickOnObject(element("StatusEditIHDetail"));
//Thread.sleep(3000);
//        CommonMethods.PerformClickOnObject(element("OrderProduct_StatusDropdown"));
//    
//
// 
//
//element("OrderProduct_ShippedDropDwnValue").click();
//        //List<WebElement> DropDown = driver.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a")); 
//        /*List<WebElement> DropDown = driver.findElements(By.xpath("//div[@id='dropdown-element-357']//lightning-base-combobox-item//span//span"));
//        CommonMethods.selectDropDownByValue(DropDown, getDataFromExcel(ModuleName,TestCaseID, "ShippedtostatusTextBox"));
//        Thread.sleep(5000);
//        Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));*/
//        /* Thread.sleep(2000);
//                 WebDriverWait wait = new WebDriverWait(driver, 30);
//                 By option = By.xpath("//a[@title='Shipped']");
//                 wait.until(ExpectedConditions.elementToBeClickable(option));
//                 driver.findElement(option).click();
//
//                 Thread.sleep(5000);*/     
//
//    }
	@And("^Update the status In Order Product IH Details$")
	public void Update_the_status_In_Order_Product_IH_Details() throws Throwable {

		driver.navigate().refresh();	

		  JavascriptExecutor jse = (JavascriptExecutor)driver;
          jse.executeScript("window.scrollBy(0,365)");
          
		CommonMethods.PerformClickOnObject(element("StatusEditIHDetail"));
Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("OrderProduct_StatusDropdown"));
	

element("OrderProduct_ShippedDropDwnValue").click();
		//List<WebElement> DropDown = driver.findElements(By.xpath("//div[contains(@class,'--short visible positioned')]/div/ul/li/a")); 
		/*List<WebElement> DropDown = driver.findElements(By.xpath("//div[@id='dropdown-element-357']//lightning-base-combobox-item//span//span"));
		CommonMethods.selectDropDownByValue(DropDown, getDataFromExcel(ModuleName,TestCaseID, "ShippedtostatusTextBox"));
		Thread.sleep(5000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));*/
		/* Thread.sleep(2000);
				 WebDriverWait wait = new WebDriverWait(driver, 30);
				 By option = By.xpath("//a[@title='Shipped']");
				 wait.until(ExpectedConditions.elementToBeClickable(option));
				 driver.findElement(option).click();

				 Thread.sleep(5000);*/	 



	}
	@Then("^Click on Order Product Shipping Link$")
	public void Click_on_Order_Product_Shipping_Links() throws Throwable {
		CommonMethods.PerformClickOnObject(element("OrderProduct_OrderShippingLink")); 
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	@And("^Click on First>>PatientID link$")
	public void Click_on_First_PatientID_link() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("GlobalSearch_FirstOrderID").click();
		Thread.sleep(2000);
		driver.navigate().refresh();
		CommonMethods.PerformClickOnObject(element("ApplicationnumberLink"));
		Thread.sleep(2000);

	}

	@Then("^Accept OK>>Click on place Refill Button$")
	public void Accept_OK_Click_on_place_Refill_Buttonk() throws Throwable {
		Thread.sleep(3000);
		try {
		Alert alert=driver.switchTo().alert(); //revert it back
		alert.accept();
		}
		catch(Exception e) {
			
		}
		try{
			driver.switchTo().frame(element("ApplicationPageIframe"));
		}catch(Exception e) {
			
		}
		
		WebDriverWait wait = new WebDriverWait(driver, 30); 
		wait.until(ExpectedConditions.elementToBeClickable(element("Application_PlaceRefillOrderbutton")));

		element("Application_PlaceRefillOrderbutton").click();
		Thread.sleep(8000);
	}



//	@Then("^select PatientID>>Field>>Value>>Search$")
//	public void select_PatientID_Field_Value_Search() throws Throwable {
//
//
//		Thread.sleep(3000);
//
//		driver.switchTo().frame(0);
//
//		WebDriverWait wait = new WebDriverWait(driver, 30); 
//		wait.until(ExpectedConditions.elementToBeClickable(element("PatientRadioButton")));
//		element("PatientRadioButton").click();
//
//
//		Thread.sleep(3000);
//		element("FieldDropdown").click();
//
//		CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"),getDataFromExcel(ModuleName, TestCaseID, "Patient ID"));
//
//		Thread.sleep(2000);
//
//		element("Valuetxtbox").sendKeys(ApplicationPage.PatientIds);	
//		//element("Valuetxtbox").sendKeys("90737328");
//		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
//		Thread.sleep(3000);
//	}
	@Then("^select PatientID>>Field>>Value>>Search$")
	public void select_PatientID_Field_Value_Search() throws Throwable {


		Thread.sleep(3000);

		driver.switchTo().frame(0);

		WebDriverWait wait = new WebDriverWait(driver, 30); 
		wait.until(ExpectedConditions.elementToBeClickable(element("PatientRadioButton")));
		element("PatientRadioButton").click();


		Thread.sleep(3000);
		element("FieldDropdown").click();

		CommonMethods.selectFromDropDownByVisibleText(element("FieldDropdown"),getDataFromExcel(ModuleName, TestCaseID, "Patient ID"));

		Thread.sleep(2000);
		//element("Valuetxtbox").sendKeys("21172902");	
		element("Valuetxtbox").sendKeys(ApplicationPage.PatientIds);	
		//element("Valuetxtbox").sendKeys("55084892");
		Thread.sleep(5000);
		//Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		
	}

	@Then("^Click on ReplacementOrder>>Select Reason$")
	public void Click_on_ReplacementOrder_Select_Reason() throws Throwable {

		driver.switchTo().frame(element("ApplicationPageIframe"));
		WebDriverWait wait = new WebDriverWait(driver, 30); 
		wait.until(ExpectedConditions.elementToBeClickable(element("Application_ReplacementOrder")));

		element("Application_ReplacementOrder").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_Reason").click();
		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
		CommonMethods.selectFromDropDownByVisibleText(element("Application_Reason"),getDataFromExcel(ModuleName, TestCaseID, "ReasonForReplacement"));


	}
	@Then("^Click on Save and Proceed$")
	public void Click_on_Save_and_Proceed() throws Throwable {
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_SaveAndProceed").click();
		driver.switchTo().frame(element("ApplicationPageIframe"));

	}

	@Then("^Click on CorrectionOrder>>Select Reason$")
	public void Click_on_CorrectionOrder_Select_Reason() throws Throwable {

		driver.switchTo().frame(element("ApplicationPageIframe"));
		WebDriverWait wait = new WebDriverWait(driver, 30); 
		wait.until(ExpectedConditions.elementToBeClickable(element("Application_CorrectionOrder")));

		element("Application_CorrectionOrder").click();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		element("Application_Reason").click();
		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
		CommonMethods.selectFromDropDownByVisibleText(element("Application_Reason"),getDataFromExcel(ModuleName, TestCaseID, "ReasonForReplacement"));


	}

	@Then("^Click on Dosage Increase$")
	public void Click_on_Dosage_Increase() throws Throwable { 
		Thread.sleep(4000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	try {
		driver.switchTo().frame(element("ApplicationPageIframe"));
	}catch(Exception e) {
		
	}
		WebDriverWait wait = new WebDriverWait(driver, 30); 
		wait.until(ExpectedConditions.elementToBeClickable(element("Application_DosageIncreaseBtn")));
		element("Application_DosageIncreaseBtn").click();
	}


	@Then("^Verify Popup Contains 'Order>>Release>>Arrival Information'$")
	public void Verify_Popup_Contains_Order_Release_Arrival_Information() throws Throwable {
		Thread.sleep(3000);
		String winHandleBefore = driver.getWindowHandle();

		for(String winHandle : driver.getWindowHandles()){
			driver.switchTo().window(winHandle);
		}
		driver.manage().window().maximize() ;

		WebDriverWait wait = new WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated(
				(By.xpath("//h2[text()='Patient Validation Information']"))
				));

		element("CreateOrderButton").click();


		try {
			element("OrderProduct_OrderPop").isDisplayed();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));


			element("NewWindowOrderOKButton").click();
		} 
		catch (Exception e) {
			element("Appilcation_RefreshBtn").click();
			element("Appilcation_ApplicationValidationViewBtn").click();
			element("Appilcation_AuditIncomeTextBx=Xpath;").sendKeys("100");
			element("Appilcation_MonthlyRadioBtn").click();
			element("ApplicationSaveButton").click();
			element("Appilcation_RefreshBtn").click();
			element("CreateOrderButton").click();
			element("NewWindowOrderOKButton").click();
		}
		driver.switchTo().window(winHandleBefore);
	}

	@Then("^Verify Order should get created$")
	public void verify_Order_Should_Created() throws Throwable {
		List<WebElement> List=new ArrayList<WebElement>();
		List=driver.findElements(By.xpath("//*[@id=\"pg:frm:j_id47:j_id48:EventTable\"]/table//tr"));
		int size=List.size();
		int i;
		for(i=1;i<=size;i++) {
			if(driver.findElement(By.xpath("(//*[@id=\"pg:frm:j_id47:j_id48:EventTable\"]/table//tr/td[3]/span)["+i+"]")).getText().equalsIgnoreCase("Order Created")) {
				Thread.sleep(2000);
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				break;
			}
		}
	}

	@And("^Verify Activity Log section should be empty and 'Outcome validation log' and 'Event log' should get created$")
	public void verify_ActivityLog_OutcomeValidation_EventLog() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));
		Assert.assertEquals(element("Activity_Log_Title").getText(),getDataFromExcel(ModuleName, TestCaseID, "Activity Log Title"));
		Assert.assertEquals(element("Event_Log_Title").getText(),getDataFromExcel(ModuleName, TestCaseID, "Event Log Title"));
		Assert.assertEquals(element("Outcome_Validations_Log_Title").getText(),getDataFromExcel(ModuleName, TestCaseID, "Outcome Validations Log Title"));
		Assert.assertTrue(element("Activity_Log_Table").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}
	@When("^Scroll down to Activity Log section$")
	public void scroll_Down_To_ActivityLogSection() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));
		CommonMethods.ScrolDownToTheObject(element("Activity_Log_Title"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@Then("^User should able to Scroll the page to Activity Section$")
	public void able_To_scroll_Down_To_ActivityLogSection() throws Throwable {
		// driver.switchTo().frame(element("PractitionerInformationIframe"));
		Assert.assertEquals(element("Activity_Log_Title").getText(),getDataFromExcel(ModuleName, TestCaseID, "Activity Log Title"));  } 


	@When("^Click on 'Add New Log'$")
	public void click_AddNewLog() throws Throwable {
		element("Event_Log_Add_New_LogButton").click();
	}

	@Then("^Activity logs should get added after clicking on 'Add new log'$")
	public void activityLog_Should_Added() throws Throwable {
		Assert.assertTrue(element("Activity_Log_TableWithData").isDisplayed());
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@And("^Verify 'Disaster relief' is one of the drop down value$")
	public void verify_Disaster_relief() throws Throwable {
		Select select = new Select(element("ActivityLog_ActivityCode_Dropdown"));
		List<WebElement> option = select.getOptions();
		int i;
		for(i=0;i<option.size();i++) {
			if(getDataFromExcel(ModuleName, TestCaseID, "Disasterrelief_DropDownValue").equalsIgnoreCase(option.get(i).getText())) {
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				break;
			}	
		}
		if(i>=option.size()) {
			Assert.fail();
		}
	}
	@When("^Select 'Disaster relief'$")
	public void select_Disasterrelief() throws Throwable {
		Select Drop = new Select(element("ActivityLog_ActivityCode_Dropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Disasterrelief_DropDownValue"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@When("^'Disaster relief' should get added and reflect in Activity code field$")
	public void Disasterrelief_Added_inActivitycode() throws Throwable {
		Select select = new Select(element("ActivityLog_ActivityCode_Dropdown"));
		WebElement option = select.getFirstSelectedOption();
		Assert.assertTrue(option.getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Disasterrelief_DropDownValue")));  
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}

	@When("^Add 'Comments', 'AE reference' and 'CallBack Number'$")
	public void add_Comments_AE_ReferenceCallBackNumber() throws Throwable {
		element("ActivityLog_CommentsTextArea").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Comments"));
		element("ActivityLog_AEreferenceTextArea").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AEreference"));
		element("ActivityLog_CallBackNumberTextArea").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "CallBackNumber"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));  	
	}
	@Then("^User should able to add 'Comments', 'AE reference' and 'CallBack Number'$")
	public void able_Add_Comments_AE_ReferenceCallBackNumber() throws Throwable {
		element("ActivityLog_CommentsTextArea").isDisplayed();
		element("ActivityLog_AEreferenceTextArea").isDisplayed();
		element("ActivityLog_CallBackNumberTextArea").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}
	@And("^Click on 'Save Log' button$")
	public void click_Save_Log() throws Throwable {
		element("ActivityLog_SaveLogButton").click();

	}
	@Then("^User should able to save the entered values and values should display$")
	public void able_To_Save_EnteredData() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));
		CommonMethods.ScrolDownToTheObject(element("Activity_Log_Title"));
		Assert.assertTrue(element("ActivityLog_CommentsData").getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Comments")));
		Assert.assertTrue(element("ActivityLog_AEreferenceData").getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "AEreference")));
		Assert.assertTrue(element("ActivityLog_CallBackNumberData").getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "CallBackNumber")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}
	@And("^Click on Edit button$")
	public void click_EditActivityLog_Button() throws Throwable {
		element("ActivityLog_EditActivityLogButton").click();

	}
	@And("^Replace old values with new values in 'Comments', 'AE reference' and 'CallBack Number'$")
	public void able_Edit_Comments_AE_ReferenceCallBackNumber() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));
		element("ActivityLog_CommentsEditedData").clear();
		element("ActivityLog_AEreferenceEditedData").clear();
		element("ActivityLog_CallBackNumberEditedData").clear();

		element("ActivityLog_CommentsEditedData").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Edited_Comments"));
		element("ActivityLog_AEreferenceEditedData").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Edited_AEreference"));
		element("ActivityLog_CallBackNumberEditedData").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Edited_CallBackNumber"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));      

	}


	@When("^User should able to see the new values after clicking Save log button$")
	public void able_View_Comments_AE_ReferenceCallBackNumber() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));
		CommonMethods.ScrolDownToTheObject(element("Activity_Log_Title"));
		Assert.assertTrue(element("ActivityLog_CommentsData").getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Edited_Comments")));
		Assert.assertTrue(element("ActivityLog_AEreferenceData").getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Edited_AEreference")));
		Assert.assertTrue(element("ActivityLog_CallBackNumberData").getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "Edited_CallBackNumber")));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}
	@Then("^User should able to save the record and no error or alert pop up should display for remaining blank fields while saving$")
	public void user_Should_able_tosave_Record_Noerror() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));
		CommonMethods.ScrolDownToTheObject(element("Activity_Log_Title"));
		element("ActivityLog_LogID").isDisplayed();
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	}


	@Then("^user should able to add new logs and able to save the same$")
	public void able_Add_NewLog_Comments_AE_ReferenceCallBackNumber() throws Throwable {
		//driver.switchTo().frame(element("PractitionerInformationIframe"));
		CommonMethods.ScrolDownToTheObject(element("Activity_Log_Title"));

		Select Drop = new Select(element("ActivityLog_ActivityCode_Dropdown"));
		Drop.selectByVisibleText(getDataFromExcel(ModuleName, TestCaseID, "Disasterrelief_DropDownValue"));
		element("ActivityLog_CommentsTextArea").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Comments"));
		element("ActivityLog_AEreferenceTextArea").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AEreference"));
		element("ActivityLog_CallBackNumberTextArea").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "CallBackNumber"));
		element("ActivityLog_SaveLogButton").click();
		CommonMethods.ScrolDownToTheObject(element("Activity_Log_Title"));
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver)); 
	}

	@Then("^User should only be able to edit 'Comments','AE reference' and 'CallBack Number' fields$")
	public void able_Edit_Comments_AE_ReferenceCallBackNumberNotLogIDDate() throws Throwable {
		driver.switchTo().frame(element("PractitionerInformationIframe"));
		Assert.assertTrue(element("ActivityLog_CommentsEditedData").isEnabled());	    	
		Assert.assertTrue(element("ActivityLog_AEreferenceEditedData").isEnabled());
		Assert.assertTrue(element("ActivityLog_CallBackNumberEditedData").isEnabled());
		Assert.assertFalse(!element("ActivityLog_DateTime").isEnabled());
		Assert.assertFalse(!element("ActivityLog_LogID").isEnabled());

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver)); 
	}



	@Then("^Shipment Authorization Record must get opened$")
	public void ShipmentAuthorizationRecord() throws Throwable {
		Assert.assertTrue(element("Admin_ShipmentAuthorizationDetail_PageTitle").isDisplayed());
	}
	@Then("^Verify the RX Flag status in the record$")
	public void Verify_RX_Flag_Status() throws Throwable {
		Assert.assertTrue(element("Admin_Rx_Status").isDisplayed());
	}
	@Then("^RX Flag status should be 'N'$")
	public void Verify_RX_Flag_Status_N() throws Throwable {
		Assert.assertTrue(element("Admin_Rx_Status_N").getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "AdminRxStatus")));

	}
	@Then("^RX Flag status should be 'R'$")
	public void Verify_RX_Flag_Status_R() throws Throwable {
		Assert.assertTrue(element("Admin_Rx_Status_N").getText().equalsIgnoreCase(getDataFromExcel(ModuleName, TestCaseID, "AdminRxStatus")));

	}

	@Then("^Enter the Release Date and order Ship date less than 1 month$")
	public void enter_the_release_date_and_order_ship_date_less_than_1_month() throws Throwable {

		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("EditReleaseDatebtn"));

		Thread.sleep(5000);
//		JavascriptExecutor jse = (JavascriptExecutor)driver;
//		jse.executeScript("window.scrollBy(0,200)", "");
		
		CommonMethods.PerformClickOnObject(element("DatePickerIconReleaseDate"));
		CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2020");
		driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
		//driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
		//driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
		driver.findElement(By.xpath("//span[text()='14']")).click();

		Thread.sleep(5000);

		Thread.sleep(2000);
		CommonMethods.PerformClickOnObject(element("EditShipDatebtn"));
		Thread.sleep(5000);
//		WebElement ele1 =  driver.findElement(By.xpath("//span[text()='Program Name']/../following-sibling::input")); 
//		CommonMethods.PerformClickOnObject(ele1);
	//	element("DatePickerIcon").click();
		//CommonMethods.PerformClickOnObject(element("DatePickerIcon"));
		Thread.sleep(5000);
		CommonMethods.selectFromDropDownByVisibleText(driver.findElement(By.xpath("//select")), "2020");
		//driver.findElement(By.xpath("//a[@class='navLink prevMonth']")).click();
		driver.findElement(By.xpath("//button[@title='Previous Month']")).click();
		driver.findElement(By.xpath("//span[text()='14']")).click();

		Thread.sleep(5000);

	}	





}










