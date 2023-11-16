package objectRepository;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import net.bytebuddy.implementation.bind.annotation.FieldProxy;
import utility.WebDriverFactory;

public class AppealsObject {
	
	WebDriver driver;
	 WebDriverFactory webDriverFactory;

     
	public AppealsObject(WebDriver driver)
	{
		
		PageFactory.initElements(driver, this);
	}

}
