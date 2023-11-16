package objectRepository;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import utility.WebDriverFactory;
public class InitialandRefillHardstopperNDCObject {

	
	WebDriver driver;
	 WebDriverFactory webDriverFactory;
	 
	@FindBy(xpath="//span[text()='No Refills allowed for Prevnar 13']")
	public WebElement ErrormsgGroupC;
	
	
	@FindBy(xpath="//span[text()='No Re-Enrollment available for Group C products']")
	public WebElement ErrormsgGroupCreenroll;
	
	
	@FindBy(xpath="//table/tbody/tr/td[2]/div[text()='Order not shipped , cant place a refill for this order.']")
    public WebElement RefillErrormsg;


	
	public InitialandRefillHardstopperNDCObject(WebDriver driver)
	{
		
		PageFactory.initElements(driver, this);
	
}
}
