package objectRepository;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import net.bytebuddy.implementation.bind.annotation.FieldProxy;
import utility.WebDriverFactory;

public class PatientsPageObject {
	
	WebDriver driver;
	 WebDriverFactory webDriverFactory;
	 
	
	public PatientsPageObject(WebDriver driver)
	{
		
		PageFactory.initElements(driver, this);
	}

}
