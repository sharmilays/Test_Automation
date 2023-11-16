package pharmaTestSuite.steps.stepsPharma;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.jasypt.util.text.StrongTextEncryptor;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import com.vimalselvam.cucumber.listener.Reporter;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import objectRepository.GetObj;
import utility.CommonMethods;
import utility.WebDriverFactory;
import utility.screenshotUtility;

	
	public class LoginLogOutPage extends GetObj {

		StrongTextEncryptor decryptor = new StrongTextEncryptor();
		GetObj loginPfizer;
		 WebDriverFactory webDriverFactory;
		public static WebDriver driver;
		boolean present;
		String TestCaseID = PfizerTestCaseID.TCID;
		String ModuleName = PfizerTestCaseID.SheetName;
		public static String user;

		
		@SuppressWarnings("static-access")
		public LoginLogOutPage(WebDriverFactory DriverFactory) throws Exception
		{
			super(DriverFactory);
			webDriverFactory = DriverFactory;
			this.driver = webDriverFactory.getWebDriver();
			
			
		}

		

		 @Given("^open Browser and enter url$")
		    public void open_Browser_and_enter_url() throws IOException, Exception {
			 
			String url = getDataFromExcel(ModuleName, TestCaseID, "URL");
			System.out.println(url);
			
			driver.get(url);
			Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
			
		}

		 @When("^Enter username and password$")
         public void Enter_username_and_password() throws Throwable {
             user=getDataFromExcel(ModuleName,TestCaseID, "UserName");
             if(user.contains(",")) {              
                 element("pfizerUserIDTextbox").sendKeys(user.split(",")[0]);
             }
             else {
                 element("pfizerUserIDTextbox").sendKeys(user);
             }
             element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Password"));
             
             Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
             
             
         }
		 
		 @When("^Enter username and password as EncryptedValues$")
         public void Enter_username_and_password_as_EncryptedValues() throws Throwable {
             user=getDataFromExcel(ModuleName,TestCaseID, "UserName");
             StrongTextEncryptor decryptor = new StrongTextEncryptor();
     		decryptor.setPassword("Auto@2020");
     		
             if(user.contains(",")) {              
                 element("pfizerUserIDTextbox").sendKeys(user.split(",")[0]);
             }
             else {
                 element("pfizerUserIDTextbox").sendKeys(decryptor.decrypt(user));
             }
             element("PasswordTxtbx").sendKeys(decryptor.decrypt(getDataFromExcel(ModuleName, TestCaseID, "Password")));
             
             Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
             
             
         }

			@When("^Click On Login Button$")
			public void Click_On_Login_Button() throws Throwable {
				
				CommonMethods.ScrolDownToTheObject(element("loginButton"));
				element("loginButton").click();
				System.out.println("Click On Login button");
				
			}
			
			
			@Then("^Then Logout from the PFIZER$")
			public void then_Logout_from_the_PFIZER() throws Throwable {
				Thread.sleep(10000);
				driver.switchTo().defaultContent();
				
				Thread.sleep(3000);
				 CommonMethods.closeAllTabsInPfizer();//added by sharmila
				    Thread.sleep(5000);//added by sharmila
				element("UserIcon").click();
				Thread.sleep(3000);	
				element("LogOutButton").click();
				System.out.println("Logged Out From Pfizer");
				
			}
				
			    @Then("^Close All the All Tabs$")
			    public void close_all_the_all_tabs() throws Throwable {
					driver.switchTo().defaultContent();
					List<WebElement> DropDown = driver.findElements(By.xpath("//ul[@class='tabBarItems slds-grid']/li[@role='presentation']"));
					
					for (int i =0;i<DropDown.size();i++ ) {
						WebElement CloseButton = driver.findElement(By.xpath("(//button[contains(@title,'Close')])[1]"));
						CloseButton.click();
						
					}
			    }
				
				
				
				@Given("^open Browser and enter portal url$")
				public void open_Browser_and_enter_portal_url() throws Throwable {
				    
					String portalurl = getDataFromExcel(ModuleName, TestCaseID, "PortalURL");
					System.out.println(portalurl);
					Thread.sleep(3000);
					driver.get(portalurl);
					Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
					//Thread.sleep(10000);
				    
				}

				@When("^Enter portal username and password$")
				public void enter_portal_username_and_password() throws Throwable {
					
					Thread.sleep(3000);
					System.out.println("size of frame" +driver.findElements(By.tagName("iframe")).size());
					driver.switchTo().frame(0);
					element("portalUserIDTextbox").click();
					element("portalUserIDTextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "PortalUserName"));
					element("portalPasswordTxtbx").click();
					element("portalPasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PortalPassword"));					
					Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));	
					

				    
				}

				@When("^Click On portal Login Button$")
				public void click_On_portal_Login_Button() throws Throwable {
					
					element("portalloginButton").click();
					Thread.sleep(3000);
					try {
						driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
						element("portalUserIDTextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "PortalUserName"));
						element("portalPasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "PortalPassword"));
						System.out.println("Click On Login button");
					}catch(Exception e) {
						
					}
					
				    
				}	
				
				
				@Then("^Login to CRM using valid credentials$")
				public void login_to_CRM_using_valid_credentials() throws Throwable {
				    
					open_Browser_and_enter_url();
					Enter_username_and_password();
					Click_On_Login_Button();
					
				}
				
				@Then("^Login to CRM using valid admin credentials$")                
				public void login_to_CRM_using_valid_admin_credentials() throws Throwable {
	                   
                    open_Browser_and_enter_url();
                                        user=getDataFromExcel(ModuleName,TestCaseID, "AdminUserName");
                                        if(user.contains(",")) {
                                           
                                            element("pfizerUserIDTextbox").sendKeys(user.split(",")[0]);
                                        }
                                        else {
                                            element("pfizerUserIDTextbox").sendKeys(user);
                                        }
                   
                    element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AdminPassword"));
                    Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
                    Thread.sleep(5000);
                    Click_On_Login_Button();
                   
                }
				
				@Then("^Logout from Portal$")
				public void logout_from_portal() throws Throwable {
					
					driver.switchTo().defaultContent();
					
					Thread.sleep(1000);	

					JavascriptExecutor js = (JavascriptExecutor) driver; 
 
					js.executeScript("arguments[0].click();", element("portallogoutButton"));
						
					System.out.println("Logged Out From Portal");
					
				}				
				
				@Then("^Login to CRM using valid Agent credentials$")
				 public void Login_to_CRM_using_valid_Agent_credentials() throws Throwable {
					 
					 element("pfizerUserIDTextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "AgentUserName"));
						Reporter.addStepLog("Username : "+getDataFromExcel(ModuleName,TestCaseID, "AgentUserName"));
						
						element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AgentPassword"));
						
						Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
				 }
				
				@When("^Enter username and password of Pharmacist Admin User Name and Password$")
                public void Enter_username_and_password_of_Pharmacist_Admin_User_Name_and_Password() throws Throwable {

					element("pfizerUserIDTextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "Pharmacist Admin User Name"));
                       element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "Pharmacist Admin Password"));
                       Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
                }
				
				@Then("^Login as Supervisor$")
                public void login_as_supervisor() throws Throwable {
                         open_Browser_and_enter_url();
                         
                         user=getDataFromExcel(ModuleName,TestCaseID, "SupervisorUserName");
                         if(user.contains(",")) {
                        	 element("pfizerUserIDTextbox").sendKeys(user.split(",")[0]); 
                         }
                         else {
                        	 
                        	 element("pfizerUserIDTextbox").sendKeys(user);
                        	 
                         }
                         element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "SupervisorPassword"));
                         
                         Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
                         Thread.sleep(5000);
                         Click_On_Login_Button();
                         
                  }
				@Then("^Login to Application Using Appeal Specialist$")               
				public void Login_to_Application_Using_Appeal_Specialist() throws Throwable {
	                   
                    open_Browser_and_enter_url();
                                        user=getDataFromExcel(ModuleName,TestCaseID, "AppealSpecialistUsername");
                                        if(user.contains(",")) {
                                           
                                            element("pfizerUserIDTextbox").sendKeys(user.split(",")[0]);
                                        }
                                        else {
                                            element("pfizerUserIDTextbox").sendKeys(user);
                                        }
                   
                    element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AppealSpecialistPassword"));
                    Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
                    Thread.sleep(5000);
                    Click_On_Login_Button();
                   
                }
				
				@And("^Login as Appeal Specialist Team$")
                public void login_as_appeal_specialist_team() throws Throwable {
                    open_Browser_and_enter_url();
                   
                    element("pfizerUserIDTextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "AppealUserName"));
                    element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AppealPassword"));
                    Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
                    Thread.sleep(5000);
                    Click_On_Login_Button();
                }	

				
				@Then("^Login with Appeal specialist team credentials$")
                public void login_with_appeal_specialist_team_credentials() throws Throwable {
                    open_Browser_and_enter_url();
                   
                    element("pfizerUserIDTextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "AppealteamId"));
                    element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AppealPwd"));
                    Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
                    Thread.sleep(5000);
                    Click_On_Login_Button();
               
                }
				
				
				@Then("^Login as Supervisor1$")
                public void login_as_supervisor1() throws Throwable {
                     open_Browser_and_enter_url();
                    element("pfizerUserIDTextbox").sendKeys(getDataFromExcel(ModuleName,TestCaseID, "AppealteamId"));
                    element("PasswordTxtbx").sendKeys(getDataFromExcel(ModuleName, TestCaseID, "AppealPwd"));
                    Reporter.addScreenCaptureFromPath(screenshotUtility.getScreenshot(driver));
                    Thread.sleep(5000);
                    Click_On_Login_Button();
               
               
                }
				
}
