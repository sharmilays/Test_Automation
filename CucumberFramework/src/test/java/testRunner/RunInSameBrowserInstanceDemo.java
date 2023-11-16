package testRunner;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;

import org.openqa.selenium.By;
import org.openqa.selenium.Capabilities;
import org.openqa.selenium.UnexpectedAlertBehaviour;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.RemoteWebDriver;

public class RunInSameBrowserInstanceDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		String exePath = System.getProperty("user.dir")+"\\src\\test\\resources\\WebDrivers\\chromedriver.exe";
		System.setProperty("webdriver.chrome.driver", exePath);

		ChromeOptions options = new ChromeOptions();



//		Map<String,Object> pref = new HashMap<String, Object>();
//		pref.put("profile.exit_type", "none");
//		pref.put("profile.exited_cleanly", Boolean.valueOf("True"));
//		options.setExperimentalOption("prefs", pref);
		
		options.addArguments("--disable-notifications");
		options.addArguments("disable-infobars");
		options.setCapability(CapabilityType.UNEXPECTED_ALERT_BEHAVIOUR, UnexpectedAlertBehaviour.IGNORE);
		options.setCapability("exit_type", "none");	
		options.addArguments("user-data-dir=C:/Users/52027059/AppData/Local/Google/Chrome/User Data/Default");
		options.addArguments("--start-maximized");

//		options.setExperimentalOption("useAutomationExtension", false);
//      options.setExperimentalOption("excludeSwitches", Collections.singletonList("enable-automation"));
		options.setExperimentalOption("debuggerAddress", "localhost:2054");
		WebDriver driver = new ChromeDriver(options);

		
		////-----------------------My Code----------------------
		
		
		Capabilities cap = ((RemoteWebDriver) driver).getCapabilities();
		
		Map<String, Object> asMap = cap.asMap();
		System.out.println(asMap.get("goog:chromeOptions").toString());
		String h = asMap.get("goog:chromeOptions").toString();
		System.out.println(h.split(":")[1].replace("}", ""));
//		asMap.entrySet().forEach(mapEntry->{
//			System.out.println("Key: "+mapEntry.getKey()+" Value: "+mapEntry.getValue());
//		});
//		asMap.forEach((key,value)->{
//			System.out.println("Key: "+key+" Value: "+value);
//		});
		
		
	   ////-------------------------------------------------------
		
		driver.manage().timeouts().implicitlyWait(50, TimeUnit.SECONDS);
	




//		String url ="https://test.salesforce.com/";
//		driver.get(url);
		driver.findElement(By.id("username")).sendKeys("sayyed.safwan2@conduent.com.pfizer.pfizerqa"); 
		driver.findElement(By.id("password")).sendKeys("July@1234");
//		driver.findElement(By.xpath("//input[@id='Login']")).click();
		

	}

}
