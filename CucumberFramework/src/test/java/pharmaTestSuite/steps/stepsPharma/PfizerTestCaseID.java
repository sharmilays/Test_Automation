package pharmaTestSuite.steps.stepsPharma;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.Given;

public class PfizerTestCaseID{
	
	public static String TCID;
	public static String SheetName;
	
	 @Given("^TestCaseID Is \"([^\"]*)\"$")
	    public void testcaseid_is_something(String tcid) throws Throwable {
		 
		 TCID = tcid;
		 System.out.println("Pfizer Case ID: "+TCID);
		 Reporter.addStepLog("Pfizer Case ID: "+TCID);
	        
	    }
	
	    @Given("^TestCaseID Is \"([^\"]*)\" and TestDataSheet Is \"([^\"]*)\"$")
	    public void testcaseid_is_something_and_testdatasheet_is_something(String tcid, String testdatasheet) throws Throwable {
	    	TCID = tcid;
	    	SheetName = testdatasheet;
			 System.out.println("Pfizer Case ID: "+TCID);
			 Reporter.addStepLog("Pfizer Case ID: "+TCID);
			 
			 System.out.println("Pfizer Sheet Name: "+SheetName);
	    }

}
