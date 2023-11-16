package objectRepository;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import net.bytebuddy.implementation.bind.annotation.FieldProxy;
import utility.WebDriverFactory;

public class CasePageObject {
	
	WebDriver driver;
	 WebDriverFactory webDriverFactory;
	 
	  
	@FindBy(xpath="//span[contains(text(),'AE Warm transfer to Pfizer')]")
	public WebElement AEWarmTransferCheckbox;
	
	
	@FindBy(xpath="((//span[contains(text(),'AE Warm transfer to Pfizer')])[1]/../following-sibling::div//div//span)[1]")
	public WebElement AEWarmTransferCheckboxChecked;
	
	@FindBy(xpath="//label[text()='AE Warm Transfer Unsuccessful Reason']/following-sibling::div")
	public WebElement AEWarmTransferUnsuccessfulReasonDropdwn;
	
	@FindBy(xpath="//button[@title='Edit QC1']")
	 public WebElement editIconQC1;
	 
	@FindBy(xpath="//button[@title='Edit QC2']")
	 public WebElement editIconQC2;
	 
	@FindBy(xpath="//label[text()='QC1']//following-sibling::div//child::input")
	 public WebElement searchPeopleQC1TextBox;
	 
	@FindBy(xpath="//label[text()='QC2']//following-sibling::div//child::input")
	 public WebElement searchPeopleQC2TextBox;
	 
	@FindBy(xpath="//span[text()='AE Reported Date']//parent::label/parent::div//child::input")
	public WebElement AEReporteddate;
	
	@FindBy(xpath="//div//button[@title='Save']")
	public WebElement adverseEventSaveButton;
	
	
	@FindBy(xpath="//span[text()='Suspect Product(s)']/parent::label/following-sibling::input")
	public WebElement suspectproducttextbox;
	
	@FindBy(xpath="//span[text()='CEP Form Narrative']/parent::label/following-sibling::textarea")
	public WebElement cepformnativetextbox;
	
	@FindBy(xpath="//span[text()='AE Status']/parent::div/following-sibling::div//child::lightning-formatted-text")
	public WebElement aeStatus;
	
	@FindBy(xpath="//label[text()='AE Status']/following-sibling::div//child::input")
	public WebElement Aestatusdropdown;
	
	@FindBy(xpath="//span[text()='Case']/parent::div/following-sibling::div//child::a")
    public WebElement Casenumberlink1;
	
	@FindBy(xpath="//input[contains(@name,'AER_Number')]")
    public WebElement AENumbertextbox;
   
    @FindBy(xpath="//label[contains(@class,'checkbox')]/child::span[@class=\"slds-checkbox_faux\"]/following-sibling::span[text()='CEP Form Sent to Pfizer']")
    public WebElement CEPformsenttopfizercheckbox;
   
  
	public CasePageObject(WebDriver driver)
	{
		
		PageFactory.initElements(driver, this);
	}

}
