package objectRepository;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import utility.WebDriverFactory;
public class ApplicationPageObject {

	
	WebDriver driver;
	 WebDriverFactory webDriverFactory;
	 
	@FindBy(xpath="//div[text()='Application']//following-sibling::slot//child::lightning-formatted-text")
	public WebElement applicationPageApplicationNumber;
	
	
	@FindBy(xpath="//span[text()='Missing Prescriber Consent Signature Date']")
	public WebElement MissingPrescriberConsentSignatureDateErrorMsg;
	
	
	@FindBy(xpath="//b[contains(text(),'Enrollment Outcome')]/../following-sibling::td//span//b")
    public WebElement ApplicationIncompleteErrorMsg;
	
	@FindBy(xpath="//lightning-formatted-text[text()='Approved']")
	public WebElement ApplicationApprovalStatusMsg;
	
	@FindBy(xpath="//*[contains(text(),'Prescriber Details are Missing')]/following-sibling::td/input")
	public WebElement PrescriberDetailsMissingCheckbox;
	
	@FindBy(xpath="//span[text()='Missing Prescriber Consent Signature']")
	public WebElement MissingPrescriberConsentSignatureErrorMsg;
	
	@FindBy(xpath="//td[text()='Prescriber Details are Missing']/..//input")
	public WebElement PrescriberDetailAreMissingCheckbox;
	
	@FindBy(xpath="//h2[text()='Prescriber Consent Signature Information']")
	public WebElement PrescriberConsentSigInformation;
	
	@FindBy(xpath="//h2[text()='Practitioner Information']")
	public WebElement PractitionerInformation;
	
	@FindBy(xpath="//h2[text()='Practitioner Address Information']")
	public WebElement PractitionerAddressInformation;
	
	@FindBy(xpath="//h2[text()='Practitioner License Information']")
	public WebElement PractitionerLicenseInformation;
	
	@FindBy(xpath="//h2[text()='Contact Information']")
	public WebElement ContactInformation;
	
	@FindBy(xpath="//h2[text()='Allergies']")
	public WebElement Allergies;
	
	@FindBy(xpath="//h2[text()='Product Information']")
	public WebElement ProductInformation;
	
	@FindBy(xpath="//input[@value='Save']")
	public WebElement SaveApplication;
	
	@FindBy(xpath="//span[text()='Prescriber Details are Missing']")
    public WebElement Prescribermissing;
	
	@FindBy(xpath="(//table//tbody//tr//td//b[text()='Del']//following::tr//td//input[@type='checkbox'])[1]")
    public WebElement Delproductcheckbox;
	
	@FindBy(xpath="//table[@id='theProductTable']//tr[2]//td[2]/span")
	public WebElement RXIDValue;

	@FindBy(xpath="//span[text()='No Medicine Change Request attached to the Prescription Product']")
	public WebElement NoMCRRequest;
	
	@FindBy(xpath="(//label[contains(text(),\"Manual Verification\")]//parent::span//input[@type=\"checkbox\"])[1]")
    public WebElement licence_manualchkbox1;
   
    @FindBy(xpath="(//label[contains(text(),\"Manual Verification\")]//parent::span//input[@type=\"checkbox\"])[2]")
    public WebElement licence_manualchkbox2;
	
	public ApplicationPageObject(WebDriver driver)
	{
		
		PageFactory.initElements(driver, this);
	
}
}
