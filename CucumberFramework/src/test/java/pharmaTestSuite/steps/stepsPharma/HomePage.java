
package pharmaTestSuite.steps.stepsPharma;

import static org.junit.Assert.assertTrue;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.jasypt.util.text.StrongTextEncryptor;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.UnhandledAlertException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import com.sun.mail.util.MailConnectException;
import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import objectRepository.GetObj;

import objectRepository.ObjectManager;
import utility.CommonMethods;
import utility.EmailUtility;
import utility.WebDriverFactory;
import utility.screenshotUtility;

@SuppressWarnings("unused")
public class HomePage extends GetObj {

	StrongTextEncryptor decryptor = new StrongTextEncryptor();
	GetObj loginPfizer;
	WebDriverFactory webDriverFactory;
	public static WebDriver driver;
	boolean present;
	public String Portal_PatientID = null;
	String TestCaseID = PfizerTestCaseID.TCID;
	String ModuleName = PfizerTestCaseID.SheetName;
	static ObjectManager objRepo;

	@SuppressWarnings("static-access")
	public HomePage(WebDriverFactory DriverFactory) throws Exception {
		super(DriverFactory);
		webDriverFactory = DriverFactory;
		this.driver = webDriverFactory.getWebDriver();

	}

	@Then("^Verify User should able to login in pfizer$")
	public void Verify_User_should_able_to_login_in_pfizer() throws Exception, Exception {
		decryptor.setPassword("Auto@2020");
		Thread.sleep(8000);
		driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
		try {
			driver.switchTo().alert().accept();
		} catch (NoAlertPresentException e1) {
			System.out.println("no alert popup displaye");
		}
		try {
			CommonMethods.alertDismiss();
			driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
			element("RemindMeLaterLink").click();
			driver.navigate().refresh();
			assertTrue("SBM is displayed", element("objSbm").isDisplayed());
			// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
			// "Logged In Succesfully");
			driver.navigate().refresh();
			driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
			System.out.println("Logged In Succesfully1");
		} catch (NoSuchElementException Ex) {

			try {
				assertTrue("SBM is displayed", element("objSbm").isDisplayed());
				driver.navigate().refresh();
				Thread.sleep(2000);
				driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

				Thread.sleep(5000);
				// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver),
				// "Logged In Succesfully");
				System.out.println("Logged In Succesfully2");
				try {
					driver.switchTo().alert().accept();
				} catch (NoAlertPresentException e1) {
					System.out.println("No Prescriber message");
				}
			} catch (UnhandledAlertException e) {
				driver.switchTo().alert().accept();
				try {

					driver.switchTo().alert().accept();
				} catch (NoAlertPresentException e1) {

				}
			}

			catch (NoSuchElementException | NoAlertPresentException e) {
				System.out.println("Enter The OTP");
				String OTPtoEnter;
				if (LoginLogOutPage.user.contains("Admin")) {
					System.out.println(getDataFromExcel(ModuleName, TestCaseID, "AdminOutlookUserName"));
					System.out.println(getDataFromExcel(ModuleName, TestCaseID, "AdminOutlookPassword"));
					OTPtoEnter = EmailUtility.GetOTP(getDataFromExcel(ModuleName, TestCaseID, "AdminOutlookUserName"),
							getDataFromExcel(ModuleName, TestCaseID, "AdminOutlookPassword"));
				} else {
					OTPtoEnter = EmailUtility.GetOTP(getDataFromExcel(ModuleName, TestCaseID, "UserID"),
							getDataFromExcel(ModuleName, TestCaseID, "UserPwd"));
					// OTPtoEnter =
					// EmailUtility.GetOTP(decryptor.decrypt(getDataFromExcel(ModuleName,
					// TestCaseID, "UserID")),
					// decryptor.decrypt(getDataFromExcel(ModuleName, TestCaseID, "UserPwd")));
				}
				element("VerificationCodeTextBox").sendKeys(OTPtoEnter);
				element("OTPVerifyButton").click();
				Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Enter the OTP");
				driver.navigate().refresh();
			} catch (MailConnectException e) {
				System.out.println("Enter The OTP");
				String OTPtoEnter;
				if (LoginLogOutPage.user.contains("Admin")) {
					OTPtoEnter = EmailUtility.GetOTP(getDataFromExcel(ModuleName, TestCaseID, "AdminOutlookUserName"),
							getDataFromExcel(ModuleName, TestCaseID, "AdminOutlookPassword"));
				} else {
					OTPtoEnter = EmailUtility.GetOTP(getDataFromExcel(ModuleName, TestCaseID, "UserID"),
							getDataFromExcel(ModuleName, TestCaseID, "UserPwd"));
					// OTPtoEnter =
					// EmailUtility.GetOTP(decryptor.decrypt(getDataFromExcel(ModuleName,
					// TestCaseID, "UserID")),
					// decryptor.decrypt(getDataFromExcel(ModuleName, TestCaseID, "UserPwd")));
				}
				try {
					element("VerificationCodeTextBox").sendKeys(OTPtoEnter);
					element("OTPVerifyButton").click();
					driver.navigate().refresh();
				} catch (Exception e1) {

				}

			}
		} catch (UnhandledAlertException e) {

			try {
				driver.switchTo().alert().accept();
			} catch (NoAlertPresentException e1) {
				System.out.println("no alert popup");
			}

		}

		// driver.navigate().refresh();
		 Thread.sleep(8000);
		 try {
		 driver.switchTo().alert().accept();
		 }
		 catch(NoAlertPresentException e1)
		 {
		 System.out.println("no alert popup seen");
		 }

		CommonMethods.closeAllTabsInPfizer();
		Thread.sleep(5000);
		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		// //------------------Temp Commented
		// driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
		// List<WebElement> DropDown =
		// driver.findElements(By.xpath("//ul[@class='tabBarItems
		// slds-grid']/li[@role='presentation']"));
		//
		// System.out.println("Ashirbad Number of open tabs: "+DropDown.size());
		//
		// for (int i =0;i<DropDown.size();i++ ) {
		// try {
		// WebElement CloseButton =
		// driver.findElement(By.xpath("(//button[contains(@title,'Close')])[1]"));
		// //CloseButton.click();
		// CommonMethods.PerformClickOnObject(CloseButton);
		// System.out.println("Ashirbad Closed Tab: "+(i+1));
		// Thread.sleep(1000);
		//
		// } catch (UnhandledAlertException e) {
		//
		// try {
		// driver.switchTo().alert().accept();
		// } catch (NoAlertPresentException e2) {
		// // TODO: handle exception
		// }
		//
		//
		// }
		//
		//
		//
		// }

	}

	@When("^Select Case$")
	public void Select_Case() throws Throwable {
		System.out.println(driver.findElement(By.xpath("//div[@data-message-id='loginAsSystemMessage']")).getText());
		// driver.navigate().refresh();
		CommonMethods.closeAllTabsInPfizer();
		try {
			WebDriverWait wait = new WebDriverWait(driver, 30);
			wait.until(ExpectedConditions.visibilityOfElementLocated(

					By.xpath("//a[text()='Clear All']")

			));
			WebElement clearAllCallBack = driver.findElement(By.xpath("//a[text()='Clear All']"));
			clearAllCallBack.click();
		} catch (Exception e) {
			// TODO: handle exception
		}
		try {
			Thread.sleep(8000);
			CommonMethods.PerformClickOnObject(element("showNavigationMenuButton"));
			// element("showNavigationMenuButton").click();
			Thread.sleep(3000);
			CommonMethods.PerformClickOnObject(element("caseLink"));
			Thread.sleep(7000);
			// element("caseLink").click();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {
			try {
				driver.switchTo().alert().accept();
			} catch (Exception e2) {
				// TODO: handle exception
			}

		}
	}

	// @When("^Select Case$")
	// public void Select_Case() throws Throwable {
	// System.out.println(driver.findElement(By.xpath("//div[@data-message-id='loginAsSystemMessage']")).getText());
	//// try {
	// Thread.sleep(8000);
	// driver.navigate().to("https://pfizerpas--pfizerqa.lightning.force.com/lightning/o/Case/list?filterName=Recent");
	//
	// Thread.sleep(3000);
	// List<WebElement> DropDown =
	// driver.findElements(By.xpath("//ul[@class='tabBarItems
	// slds-grid']/li[@role='presentation']"));
	// try {
	// for (int i =0;i<DropDown.size();i++ ) {
	// try {
	// WebElement CloseButton =
	// driver.findElement(By.xpath("(//button[contains(@title,'Close')])[1]"));
	// //CloseButton.click();
	// CommonMethods.PerformClickOnObject(CloseButton);
	//
	// } catch (UnhandledAlertException e) {
	//
	//
	// driver.switchTo().alert().accept();
	// }
	//
	//
	//
	// }
	//
	//// CommonMethods.PerformClickOnObject(element("showNavigationMenuButton"));
	//// //element("showNavigationMenuButton").click();
	//// Thread.sleep(3000);
	//// CommonMethods.PerformClickOnObject(element("caseLink"));
	//// // element("caseLink").click();
	//// Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
	// }
	// catch(Exception e) {
	// driver.switchTo().alert().accept();
	// }
	// }

	@Then("^Verify Alerts Panel on the portal page$")
	public void verify_Alerts_Panel_on_the_portal_page() throws Throwable {

		Thread.sleep(3000);
		try {
			assertTrue("Alert heading in Dashboard page", element("AlertsHeading").isDisplayed());
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver), "Logged In Succesfully");
			System.out.println("Logged In Succesfully");

			Assert.assertEquals(element("AlertRefillDue").getText(), "Refill Due");

		} catch (Exception e) {

		}

	}

	@Then("^Check Patient ID in portal$")
	public void check_patient_id_in_portal() throws Throwable {

		Portal_PatientID = element("PatientID").getText();

	}

	@When("^Select Global Search$")
	public void select_Global_Search() throws Throwable {
		try {
			WebDriverWait wait = new WebDriverWait(driver, 5);
			wait.until(ExpectedConditions.alertIsPresent());
			driver.switchTo().alert().accept();
		} catch (Exception e) {

		}
		element("showNavigationMenuButton").click();
		Thread.sleep(3000);
		try {
			element("GlobalSearchLink").click();
		} catch (Exception e) {
			element("showNavigationMenuButton").click();
			element("GlobalSearchLink").click();
		}

		Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));

	}

	// Manjunath_done
	@Then("^Select Reports$")
	public void select_reports() throws Throwable {
		System.out.println(driver.findElement(By.xpath("//div[@data-message-id='loginAsSystemMessage']")).getText());
		try {
			Thread.sleep(2000);
			CommonMethods.PerformClickOnObject(element("showNavigationMenuButton"));
			// element("showNavigationMenuButton").click();
			Thread.sleep(3000);
			CommonMethods.PerformClickOnObject(element("Reportslink"));
			// element("caseLink").click();
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
		} catch (Exception e) {
			driver.switchTo().alert().accept();
		}

	}

	// manjunath_done
	@Then("^Select appropriate report folder 'AE Reports'$")
	public void select_appropriate_report_folder_ae_reports() throws Throwable {
		assertTrue("AE Warm Transfer to DSU Unsuccessful", element("Aewarmsuccesfulllink").isDisplayed());
		assertTrue("Daily Report - AE's without AER#", element("Dailyreportlink").isDisplayed());
		assertTrue("End of Month Report of all  AE Warm Tran", element("Endofmonthreportlink").isDisplayed());
	}

	// Manjunath_done
	@Then("^Select the 'AE Reports' folder$")
	public void select_the_ae_reports_folder() throws Throwable {
		Thread.sleep(3000);
		element("Allfolderslink").click();
		Thread.sleep(3000);
		CommonMethods.PerformClickOnObject(element("Aereportslink"));
		// element("Aereportslink").click();
	}

	// manjunath_done
	@Then("^Verify user can access 'AE Warm Transfer to DSU Unsuccessful' report folder$")
	public void verify_user_can_access_ae_warm_transfer_to_dsu_unsuccessful_report_folder() throws Throwable {
		// element("Aewarmsuccesfulllink").click();
		CommonMethods.PerformClickOnObject(element("Aewarmsuccesfulllink"));
		driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template__container']//iframe")));
		Thread.sleep(3000);
		assertTrue("AE Warm Transfer to DSU Unsuccessful", element("AEWarmtitletext").isDisplayed());
	}

	// manjunath_done
	@Then("^Verify user can access 'Daily Report - AE's without AER#' report folder$")
	public void verify_user_can_access_daily_report_aes_without_aer_report_folder() throws Throwable {
		CommonMethods.PerformClickOnObject(element("Dailyreportlink"));
		driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template__container']//iframe")));
		Thread.sleep(3000);
		assertTrue("Daily Report - AE's without AER#", element("DailyReportstitletext").isDisplayed());
	}

	// Manjunath_done
	@Then("^Verify user can access 'End of Month Report of all AE Warm Tran' report folder$")
	public void verify_user_can_access_end_of_month_report_of_all_ae_warm_tran_report_folder() throws Throwable {
		CommonMethods.PerformClickOnObject(element("Endofmonthreportlink"));
		driver.switchTo().frame(driver.findElement(By.xpath("//div[@class='slds-template__container']//iframe")));
		Thread.sleep(3000);
		assertTrue("End of Month Report of all  AE Warm Tran", element("Endofmonthtitletext").isDisplayed());
	}

}
