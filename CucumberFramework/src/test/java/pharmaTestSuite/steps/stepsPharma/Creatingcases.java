package pharmaTestSuite.steps.stepsPharma;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.DirectoryNotEmptyException;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Paths;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.Test;

import utility.CommonMethods;

public class Creatingcases {

	@Test(invocationCount=1)

	
//	 public void CasesCount() throws Throwable {
//		  CommonMethods.CaseCreation(500);
//	}		
	
	public void PatientCount() throws Throwable {
		CommonMethods.CreatePatients(200);
												
	}
//	public void CaseIDdriven() throws Throwable {
//		CommonMethods.CaseIDdriven();
//												
//	}
//
//	public void CreatePatientIntercept() throws Throwable {
//		CommonMethods.CreatePatientIntercept(100);
//												
//	}


//	public void CreateReEnrollmentPatients() throws Throwable {
//		CommonMethods.CreateReEnrrollmentPatients(500);
//
//	}
//	public void CreateURLIntercept() throws Throwable {
//		CommonMethods.CreateURLIntercept(1);
//												
//	}

}


 			