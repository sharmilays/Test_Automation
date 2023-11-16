package pharmaTestSuite.steps.stepsPharma;

import static org.junit.Assert.assertTrue;

import org.openqa.selenium.WebDriver;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import objectRepository.GetObj;
import utility.CommonMethods;
import utility.WebDriverFactory;

public class BridgedApplication extends GetObj {
	
	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;

	
	@SuppressWarnings("static-access")
	public BridgedApplication(WebDriverFactory DriverFactory) throws Exception
	{
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();
		
	}


    
    @And("^Verify LIS Bridge should be active and approval status should be Appoved$")
    public void verify_lis_bridge_should_be_active_and_approval_status_should_be_appoved() throws Throwable {
 
    	CommonMethods.ScrolDownToTheObject(element("ApprovalStatusText"));
    	assertTrue("Verify Approval status",element("ApprovalStatusText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Approval Status")));
    	assertTrue("Verify Bridge status",element("BridgeStatusText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Bridge Status")));
    	assertTrue("Bridge Type",element("BridgeTypeText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Bridge Type")));
    	
    }
    
    @And("^Verify LIS Bridge should be Inactive and approval status should be Appoved$")
    public void verify_lis_bridge_should_be_inactive_and_approval_status_should_be_appoved() throws Throwable {
    	CommonMethods.ScrolDownToTheObject(element("ApprovalStatusText"));
    	assertTrue("Verify Approval status",element("ApprovalStatusText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Approval Status")));
    	assertTrue("Verify Bridge status",element("BridgeStatusText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Bridge Status")));
    	assertTrue("Bridge Type",element("BridgeTypeText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Bridge Type")));
    	
    }
    
    
    @And("^Verify Medicaid Bridge should be Inactive and approval status should be Appoved$")
    public void verify_medicaid_bridge_should_be_inactive_and_approval_status_should_be_appoved() throws Throwable {
    	assertTrue("Verify Approval status",element("ApprovalStatusText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Approval Status")));
    	assertTrue("Verify Bridge status",element("BridgeStatusText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Bridge Status")));
    	assertTrue("Bridge Type",element("BridgeTypeText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Bridge Type")));
    	
    }

    
    @And("^Verify Medicaid Bridge should be active and approval status should be Appoved$")
    public void verify_medicaid_bridge_should_be_active_and_approval_status_should_be_appoved() throws Throwable {
    	assertTrue("Verify Approval status",element("ApprovalStatusText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Approval Status")));
    	assertTrue("Verify Bridge status",element("BridgeStatusText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Bridge Status")));
    	assertTrue("Bridge Type",element("BridgeTypeText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Bridge Type")));
  
    }
    
    
    @Then("^Click on Application Insurances$")
    public void click_on_application_insurances() throws Throwable {
    	element("ApplicationInsurancesLink").click();
    }

    @Then("^Select 'Status' and 'Source' from Dropdown and save$")
    public void select_status_and_source_from_dropdown_and_save() throws Throwable {
    	driver.switchTo().frame(element("PatientPageIframe"));
    	CommonMethods.selectFromDropDownByVisibleText(element("StatusDropdown"), getDataFromExcel(ModuleName, TestCaseID, "StatusDropdown"));
    //	CommonMethods.selectFromDropDownByVisibleText(element("SourceDropdown"), getDataFromExcel(ModuleName, TestCaseID, "SourceDropdown"));
    	element("ApplicationSaveButton").click();
    	CommonMethods.acceptAlert();
    
    }

    @And("^Click on First Existing Insurances$")
    public void click_on_first_existing_insurances() throws Throwable {
    	element("FirstLinkInInsourance").click();
    	
    }
	


    	
    @Then("^Click on 'Application' Link > First existing Application$")
    public void click_on_application_link_first_existing_application() throws Throwable {
    	
    	CommonMethods.PerformClickOnObject(element("ApplicationPrescriptionsLink"));
    	
    	element("FirstLinkInApplicationPrescriptions").click();
    }

    @And("^Click on 'Application Prescriptions' Link > First existing Application$")
    public void click_on_application_prescriptions_link_first_existing_application() throws Throwable {
    	CommonMethods.PerformClickOnObject(element("ApplicationPrescriptionsLink"));
    	element("FirstLinkInApplicationPrescriptions").click();
    	driver.switchTo().frame(element("PatientPageIframe"));
    	
    }
    @And("^Verify Approval Status in Application Page$")
    public void Verify_Approval_Status_in_Application_Page() throws Throwable {
    	assertTrue("Verify Approval status",element("ApprovalStatusText").getText().equals(getDataFromExcel(ModuleName, TestCaseID, "Approval Status")));

    }

	
}
