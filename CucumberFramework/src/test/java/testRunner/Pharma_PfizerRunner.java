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
		
 		features = {"src/test/java/pharmaTestSuite/featureFiles/Pharma"},
		glue = {"pharmaTestSuite.steps"},
		monochrome = true, 
	//	dryRun = true,

				//tags = {"@191924,@191956,@192071,@192082,@192083,@192084,@192085,@192088,@192095,@183317,@183318,@183320"},
				//	tags = {"@191815,@191816,@191817,@191817_2,@191818,@191818_2,@191819,@191819_2,@191873,@191873_2,@191874"},
	tags = {"@192026"},
	//,@304868,@304870,@304873,@304874,@304875
		//	,@228558,@228610,@228673,@228687,@228594,@228562,@228992,@229115,@229125,@228868,@229293,@229377,@229394,@229535,@229537,@229619,@229638
		//	,@166076,@166155,@219200
		///,@372633,@372635,@372636
		snippets = SnippetType.UNDERSCORE,//SnippetType.CAMELCASE,	
		strict = true,
		
		plugin = {"pretty:target/cucumber/pretty.txt",
				"html:target/cucumber",
				"json:target/cucumber/cucumber.json",
				"usage:target/cucumber/cucumber-usage.json",
				"junit:target/XML/Cucumber.xml",
				"rerun:src/test/java/pharmaTestSuite/featureFiles/Pharma/rerun.txt",
				"com.vimalselvam.cucumber.listener.ExtentCucumberFormatter:"}	
		)

	
@Listeners(utility.ListnerTestNG.class)

public class Pharma_PfizerRunner extends ExtendedTestNGRunner {
//ExtendedTestNGRunner{	
	
@org.testng.annotations.AfterClass()
	
	public static void teardown1() throws MessagingException {
	
	Report.extentEnvironmentInfo();  
	
}


}
