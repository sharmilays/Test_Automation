package utility;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Capabilities;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.UnexpectedAlertBehaviour;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import utility.ConfigFile;

import com.paulhammant.ngwebdriver.*;

@SuppressWarnings("unused")
public class WebDriverFactory {
	
	public static WebDriver driver;
	
	public static  String browserType = ConfigFile.getConfigValue("Browser").toString();
			
			//"chrome";

	//public static ThreadLocal<WebDriver> dr = new ThreadLocal<WebDriver>();
	
	public WebDriverFactory() throws IllegalAccessException
	{
		setWebDriver();
		
	}
		public  static WebDriver create(String type) throws IllegalAccessException
		{
			
			switch(type.toLowerCase()) {
			case "chrome":
				
				
				String exePath = System.getProperty("user.dir")+"\\src\\test\\resources\\WebDrivers\\chromedriver.exe";
				
				System.setProperty("webdriver.chrome.driver", exePath);

				ChromeOptions options = new ChromeOptions();
				
				
				
				Map<String,Object> pref = new HashMap<String, Object>();
				pref.put("profile.exit_type", "none");
				pref.put("profile.exited_cleanly", Boolean.valueOf("True"));
				pref.put("profile.default_content_setting_values.notifications", 2);
				options.setExperimentalOption("prefs", pref);
//				options.addArguments("--disable-notifications");
//				options.addArguments("disable-infobars");
//				options.setExperimentalOption("useAutomationExtension", false);
                options.setExperimentalOption("excludeSwitches", Collections.singletonList("enable-automation"));
				options.setCapability(CapabilityType.UNEXPECTED_ALERT_BEHAVIOUR, UnexpectedAlertBehaviour.IGNORE);
				options.setCapability("exit_type", "none");	
				options.setUnhandledPromptBehaviour(UnexpectedAlertBehaviour.DISMISS);
				//options.addArguments("user-data-dir=C:/Users/52006894/AppData/Local/Google/Chrome/User Data/Default");
//				options.addArguments("user-data-dir=C:/Users/52027059/AppData/Local/Google/Chrome/User Data/Default");
				options.addArguments("user-data-dir=C:/Users/"+System.getProperty("user.name")+"/AppData/Local/Google/Chrome/User Data/Default");
				
//				options.addArguments("user-data-dir=D:/Chrome_Selenium");
				//options.addArguments("headless","window-size=1400,800"); //to execute in headless mode
				options.addArguments("--start-maximized");
						
				

				driver = new ChromeDriver(options);		
				
				////-----Ashirbad New Code for Debugging In same Browser Instance------------------------------
				Capabilities cap = ((RemoteWebDriver) driver).getCapabilities();
				
				Map<String, Object> asMap = cap.asMap();
				String chromeInstance  = asMap.get("goog:chromeOptions").toString();
				try {
					ConfigFile.writeToConfig("Common", "chromeLocalHost", chromeInstance.replaceAll("[^\\d ]", ""));
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println(chromeInstance);
				asMap.entrySet().forEach(mapEntry->{
					System.out.println("Key: "+mapEntry.getKey()+" Value: "+mapEntry.getValue());
				});
				asMap.forEach((key,value)->{
					System.out.println("Key: "+key+" Value: "+value);
				});
				
				////-------------------------------------------------------------------------------------------
				
				
				driver.manage().deleteAllCookies();
				driver.manage().timeouts().pageLoadTimeout(180, TimeUnit.SECONDS);
			 	//driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
				
				break;
								
			case "grid":
				DesiredCapabilities d = DesiredCapabilities.chrome();
				break;
			case "chromebeta":
				
				
				String exePath1 = System.getProperty("user.dir")+"\\src\\test\\resources\\WebDrivers\\chromedriver.exe";
				
				System.setProperty("webdriver.chrome.driver", exePath1);

				ChromeOptions options1 = new ChromeOptions();
				
				
				
				Map<String,Object> pref1 = new HashMap<String, Object>();
				pref1.put("profile.exit_type", "none");
				pref1.put("profile.exited_cleanly", Boolean.valueOf("True"));
				options1.setExperimentalOption("prefs", pref1);
//				options1.addArguments("--disable-notifications");
//				options1.addArguments("disable-infobars");
//				options1.setExperimentalOption("useAutomationExtension", false);
                options1.setExperimentalOption("excludeSwitches", Collections.singletonList("enable-automation"));
				options1.setCapability(CapabilityType.UNEXPECTED_ALERT_BEHAVIOUR, UnexpectedAlertBehaviour.IGNORE);
				options1.setCapability("exit_type", "none");	
				options1.setUnhandledPromptBehaviour(UnexpectedAlertBehaviour.DISMISS);
				//options.addArguments("user-data-dir=C:/Users/52006894/AppData/Local/Google/Chrome/User Data/Default");
//				options1.addArguments("user-data-dir=C:/Users/52015533/AppData/Local/Google/Chrome/User Data/Default");
				options1.addArguments("user-data-dir=C:/Users/"+System.getProperty("user.name")+"/AppData/Local/Google/Chrome/User Data/Default");
//				options.addArguments("user-data-dir=D:/Chrome_Selenium");
				//options.addArguments("headless","window-size=1400,800"); //to execute in headless mode
				options1.addArguments("--start-maximized");
						
				

				driver = new ChromeDriver(options1);
				driver.manage().deleteAllCookies();
				driver.manage().timeouts().pageLoadTimeout(180, TimeUnit.SECONDS);
			 	//driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
				
				break;
				
				
				
			case "chromedebug":
				
				System.out.println("Inside Chrome Debug");
				String exePath2 = System.getProperty("user.dir")+"\\src\\test\\resources\\WebDrivers\\ChromeBrowser83\\chromedriver.exe";
				
				System.setProperty("webdriver.chrome.driver", exePath2);

				ChromeOptions options2 = new ChromeOptions();
			
				options2.addArguments("--disable-notifications");
				options2.addArguments("disable-infobars");
				options2.setCapability(CapabilityType.UNEXPECTED_ALERT_BEHAVIOUR, UnexpectedAlertBehaviour.IGNORE);
				options2.setCapability("exit_type", "none");	
				options2.setUnhandledPromptBehaviour(UnexpectedAlertBehaviour.DISMISS);
				options2.addArguments("user-data-dir=C:/Users/"+System.getProperty("user.name")+"/AppData/Local/Google/Chrome/User Data/Default");
				
//				options.addArguments("user-data-dir=D:/Chrome_Selenium");
				//options.addArguments("headless","window-size=1400,800"); //to execute in headless mode
				options2.addArguments("--start-maximized");
						
//				options2.setExperimentalOption("debuggerAddress", "localhost:14344");
				
				options2.setExperimentalOption("debuggerAddress", "localhost:"+ConfigFile.ini.get("Common", "chromeLocalHost"));
						
						

				driver = new ChromeDriver(options2);		
				Capabilities cap2  = ((RemoteWebDriver) driver).getCapabilities();
						
				Map<String, Object> asMap2 = cap2.asMap();
				System.out.println("Chrome is executing on = "+asMap2.get("goog:chromeOptions").toString());
				
				driver.manage().deleteAllCookies();
				driver.manage().timeouts().pageLoadTimeout(180, TimeUnit.SECONDS);
			 	//driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
				
				break;
				
			default:
				throw new IllegalAccessException();
			}
			return driver;
			
		}
		
		public  WebDriver setWebDriver() throws IllegalAccessException {
			
			
		//	WebDriverFactory.browserType="Chrome";
		//	WebDriver driver = create("Chrome");
			//System.out.println("Browser Value from Config File"+ConfigFile.ConfigValue("Browser"));
//			System.out.println("Ashirbad Browser Type: "+WebDriverFactory.browserType);
			WebDriver driver = create(WebDriverFactory.browserType);
					//create(ConfigFile.ConfigValue("Browser").toString());
					
			//dr.set(driver);
			return driver;
			
			
			
		}
		public   WebDriver getWebDriver() throws IllegalAccessException{
			//return dr.get();
			return driver;
		}
		
		
		
		
}
