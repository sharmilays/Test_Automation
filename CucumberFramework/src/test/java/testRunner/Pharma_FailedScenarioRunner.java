package testRunner;

import java.io.File;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.mail.MessagingException;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import com.vimalselvam.cucumber.listener.ExtentProperties;
import com.vimalselvam.cucumber.listener.Reporter;

import pharmaTestSuite.steps.Hooks;

import com.github.mkolisnyk.cucumber.reporting.CucumberBenchmarkReport;
import com.github.mkolisnyk.cucumber.reporting.CucumberConsolidatedReport;
import com.github.mkolisnyk.cucumber.reporting.CucumberRetrospectiveOverviewReport;
import com.github.mkolisnyk.cucumber.reporting.types.benchmark.BenchmarkReportInfo;
import com.github.mkolisnyk.cucumber.reporting.types.benchmark.BenchmarkReportModel;
import com.github.mkolisnyk.cucumber.reporting.types.consolidated.ConsolidatedItemInfo;
import com.github.mkolisnyk.cucumber.reporting.types.consolidated.ConsolidatedReportBatch;
import com.github.mkolisnyk.cucumber.reporting.types.consolidated.ConsolidatedReportModel;
import com.github.mkolisnyk.cucumber.runner.ExtendedCucumber;

import com.github.mkolisnyk.cucumber.runner.ExtendedCucumberOptions;
import com.github.mkolisnyk.cucumber.runner.ExtendedTestNGRunner;

import bsh.This;
import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;
import cucumber.api.testng.AbstractTestNGCucumberTests;
import utility.CommonMethods;
import utility.EmailUtility;
import utility.Report;
import utility.WebDriverFactory;
import utility.screenshotUtility;



@SuppressWarnings("unused")

//@RunWith(ExtendedCucumber.class)


@ExtendedCucumberOptions(
jsonReport = "target/cucumber/cucumber.json",
jsonUsageReport = "target/cucumber/cucumber-usage.json",
outputFolder = "target/AdvancedReport/",
detailedReport = true,
detailedAggregatedReport = true,
overviewChartsReport = true,
overviewReport = true,
featureOverviewChart = true,
usageReport = true,
coverageReport = false,
systemInfoReport = true,
retryCount = 0,
toPDF = false,
//excludeCoverageTags = {"@flaky" },
includeCoverageTags = {""})





@CucumberOptions(
		
 		features = {"@src/test/java/pharmaTestSuite/featureFiles/Pharma/rerun.txt"},
		glue = {"pharmaTestSuite.steps"},
		monochrome = true, 
	//	dryRun = true,
		snippets = SnippetType.UNDERSCORE,//SnippetType.CAMELCASE,	
		strict = true,
		
		plugin = {"pretty:target/cucumber/pretty.txt",
				"html:target/cucumber",
				"json:target/cucumber/cucumber.json",
				"usage:target/cucumber/cucumber-usage.json",
				"junit:target/XML/Cucumber.xml",
				
				"com.vimalselvam.cucumber.listener.ExtentCucumberFormatter:"}	
		)

	
@Listeners(utility.ListnerTestNG.class)

public class Pharma_FailedScenarioRunner extends AbstractTestNGCucumberTests {
//ExtendedTestNGRunner{	
	
@org.testng.annotations.AfterClass()
	
	public static void teardown1() throws MessagingException {
	
	Report.extentEnvironmentInfo();  
	
}


}
