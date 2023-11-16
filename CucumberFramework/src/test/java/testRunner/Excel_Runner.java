package testRunner;


import java.io.File;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.mail.MessagingException;

//import org.junit.After;
//import org.junit.AfterClass;
//import org.junit.BeforeClass;
//import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import org.testng.annotations.Test;

import org.testng.annotations.Test;

import com.vimalselvam.cucumber.listener.ExtentProperties;
import com.vimalselvam.cucumber.listener.Reporter;

import pharmaTestSuite.steps.Hooks;

import com.aventstack.extentreports.GherkinKeyword;
import com.aventstack.extentreports.gherkin.model.Feature;
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
import com.github.mkolisnyk.cucumber.runner.ReportRunner;
import com.github.mkolisnyk.cucumber.runner.runtime.ExtendedRuntimeOptions;
import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

import bsh.This;
import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;
import cucumber.api.testng.AbstractTestNGCucumberTests;
import cucumber.api.testng.CucumberFeatureWrapper;
import cucumber.api.testng.TestNGCucumberRunner;
import gherkin.formatter.model.Tag;
import utility.CommonMethods;
import utility.EmailUtility;
import utility.Report;
import utility.WebDriverFactory;
import utility.screenshotUtility;


//public class Pharma_PfizerCustomRunner {
//
//}

@SuppressWarnings("unused")



@Listeners(utility.ListnerTestNG.class)

public class Excel_Runner {	
	
//	 private TestNGCucumberRunner testNGCucumberRunner;
	 private CustomTestNgRunner testNGCucumberRunner;
	

  

  //@org.testng.annotations.BeforeClass(alwaysRun = true)	
	 @BeforeClass(alwaysRun = true)
      public void setUpClass() throws Throwable {
						 testNGCucumberRunner = new CustomTestNgRunner(this.getClass(), 
								 "C:\\TestAutomation\\CucumberFramework\\src\\test\\resources\\TestData\\TestController.xlsx", 
					    			"TestController");
		}

  
  @AfterClass(alwaysRun=true)
    public void tearDownClass() throws Exception {
      //super.tearDownClass();
	  testNGCucumberRunner.finish();
  }

  
  @Test(groups = "cucumber", description = "Runs Cucumber Feature", dataProvider = "features")
  public void feature(CucumberFeatureWrapper cucumberFeature) {
      try {
    	  
    	  		String featureName = cucumberFeature.getCucumberFeature().getGherkinFeature().getName();
    	  		System.out.println("Ashirbad 2019 Feature Name: "+featureName);
		        testNGCucumberRunner.runCucumber(cucumberFeature.getCucumberFeature());
      } catch (Exception e) {
          e.printStackTrace();
      }
      finally {
		 
	}
  }
  
  
  @DataProvider
  public Object[][] features() {
	  
    return testNGCucumberRunner.provideFeatures();
  }
	  

}
