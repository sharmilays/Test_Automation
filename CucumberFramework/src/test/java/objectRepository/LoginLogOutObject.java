package objectRepository;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import net.bytebuddy.implementation.bind.annotation.FieldProxy;
import utility.WebDriverFactory;

public class LoginLogOutObject {
	
	WebDriver driver;
	 WebDriverFactory webDriverFactory;
	 
		@FindBy(id="username")
		public WebElement pfizerUserIDTextbox;
		
		
//		public LogInLogOutPageObjectClass(WebDriverFactory driverFactory)
//		{
//			webDriverFactory = driverFactory;
//	       try {
//				this.driver = webDriverFactory.getWebDriver();
//			} catch (IllegalAccessException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}  
//			PageFactory.initElements(driver, this);
//		}
	
	public LoginLogOutObject(WebDriver driver)
	{
		
		PageFactory.initElements(driver, this);
	}

}
