package objectRepository;

import org.openqa.selenium.WebDriver;

import utility.WebDriverFactory;

public class ObjectManager {

	WebDriver driver;
	 WebDriverFactory webDriverFactory;
	 

	 
	 public ObjectManager(WebDriverFactory driverFactory) {
		 
		 webDriverFactory = driverFactory;
		 try {
			this.driver = driverFactory.getWebDriver();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 
	 }
	 
	 
	public LoginLogOutObject getLoginLogOutObject() {	
		//loginPageObjects = new LoginLogOutObject(driver);
		return new LoginLogOutObject(driver);
	}
	
	public CasePageObject getCasePageObject() {		
		return new CasePageObject(driver);
	}
	
	public ApplicationPageObject getApplicationPageObject() {
		return new ApplicationPageObject(driver);
	}

	public AppealsObject getAppealsObject() {
		return new AppealsObject(driver);
	}

	public BridgedApplicationObject getBridgedApplicationObject() {
		return new BridgedApplicationObject(driver);
	}

	public EnhancementPhramaReviewObject getEnhancementPhramaReviewObject() {
		return new EnhancementPhramaReviewObject(driver);
	}

	public GlobalSearchObject getGlobalSearchObject() {
		return new GlobalSearchObject(driver);
	}

	public HomeDeliveryObject getHomeDeliveryObject() {
		return new HomeDeliveryObject(driver);
	}

	public HomePageObject getHomePageObject() {
		return new HomePageObject(driver);
	}

	public IframesObject getIframesObject() {
		return new IframesObject(driver);
	}

	public OrderProductIHPageObject getOrderProductIHPageObject() {
		return new OrderProductIHPageObject(driver);
	}

	public PatientsPageObject getPatientsPageObjectObject() {
		return new PatientsPageObject(driver);
	}
	public PillQuantityRuleForViagraObject getPillQuantityRuleForViagraObject() {
		return new PillQuantityRuleForViagraObject(driver);
	}
	public PortalPageObject getPortalPageObject() {
		return new PortalPageObject(driver);
	}

	public ViewLogsObject getViewLogsObject() {
		return new ViewLogsObject(driver);
	}
	
	public InitialandRefillHardstopperNDCObject getInitialandRefillHardstopperNDCObject() {
		return new InitialandRefillHardstopperNDCObject(driver);
	}

	
}
