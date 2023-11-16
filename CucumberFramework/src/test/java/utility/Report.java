package utility;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.openqa.selenium.WebDriver;
import com.github.mkolisnyk.cucumber.reporting.CucumberConsolidatedReport;
import com.github.mkolisnyk.cucumber.reporting.types.consolidated.ConsolidatedItemInfo;
import com.github.mkolisnyk.cucumber.reporting.types.consolidated.ConsolidatedReportModel;
import com.vimalselvam.cucumber.listener.ExtentProperties;
import com.vimalselvam.cucumber.listener.Reporter;

public class Report {
	
	public static String extentReportPath;
	public static String extentReportFileName;
	public static String ScreenshotPath;

	
	WebDriverFactory webDriverFactory;
	static WebDriver driver;
	
	public Report(  WebDriverFactory  driverFactory) throws Exception {
		
		 webDriverFactory = driverFactory ;
		Report.driver = webDriverFactory.getWebDriver();
		
	}
	public static void setExtentReport()
	{
		System.out.println("Extent Report Set Up");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy h-mm-ss a");
		
		String formattedDate = sdf.format(date);
		
	    ExtentProperties extentProperties = ExtentProperties.INSTANCE;
	    extentReportFileName = "myExtentReport"+formattedDate.toString()+".html";
	    
	     String path="target/ExetentReport/"+formattedDate;
	    
	    CreateDirectory(path);
	    
	    
	    
	    
	     ScreenshotPath = path+"/"+"screenshot/";
	     CreateDirectory(ScreenshotPath);
	    extentReportPath = path+"/"+extentReportFileName;
	    extentProperties.setReportPath(extentReportPath);
	}
	
//	public static void setExtentReport()
//	{
//		System.out.println("Extent Report Set Up");
//		Date date = new Date();
//		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy h-mm-ss a");
//		
//		String formattedDate = sdf.format(date);
//		
//	    ExtentProperties extentProperties = ExtentProperties.INSTANCE;
//	    extentReportFileName = "myExtentReport"+formattedDate.toString()+".html";
//	    
//	    extentReportPath = "target/ExetentReport/"+extentReportFileName;
//	    extentProperties.setReportPath(extentReportPath);
//	}
	
	public static void extentEnvironmentInfo()
	{
		//Capabilities cap = (Capabilities) Report.driver;
		
		System.out.println("extentEnvironmentInfo method is called");
		
	    Reporter.loadXMLConfig(new File("src/test/resources/Config/extent-config.xml"));
	    
	    Reporter.setSystemInfo("<b>User</b>", System.getProperty("user.name"));
	    Reporter.setSystemInfo("<b>OperatingSystem</b>", System.getProperty("os.name"));
	    Reporter.setSystemInfo("<b>ProjectPath</b>", System.getProperty("user.dir"));
	    Reporter.setSystemInfo("<b>JavaVersion: </b>", System.getProperty("java.version"));
	   // Reporter.setSystemInfo("<b>Browser: </b>", cap.getBrowserName()+" v"+cap.getVersion());
	   // Reporter.setSystemInfo("<b>Selenium: </b>",Report.driver.manage().getClass().getSimpleName().toString());	    
	    Reporter.setTestRunnerOutput("PFIZER");
	   
	}
	
	public static void cucumberConsolidatedReport() throws Exception 
	{
		 
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy h-mm-ss a");
		
		String formattedDate = sdf.format(date);
		
		CucumberConsolidatedReport results = new CucumberConsolidatedReport();
	      
	        results.setOutputDirectory("target/cucumberExtendedReport/"+formattedDate.toString());
	        results.setOutputName("cucumber-results");
	        results.setPdfPageSize("A4 landscape");
	        results.setSourceFile("target/cucumber/cucumber.json");
	        
	        ConsolidatedReportModel batch2 = new ConsolidatedReportModel(
	        		new ConsolidatedItemInfo[] {
/*	        				new ConsolidatedItemInfo(
	                                "Overview Chart",
	                                "target/AdvancedReport/cucumber-results-feature-overview-chart.html"),*/
	        					new ConsolidatedItemInfo("Result Charts",
	        						"target/AdvancedReport/cucumber-results-charts-report.html"),
	                            
	                            new ConsolidatedItemInfo(
	                                "Feature Overview",
	                                "target/AdvancedReport/cucumber-results-feature-overview.html"),
	                            
	                            new ConsolidatedItemInfo(
	                                    "Usage",
	                                    "target/AdvancedReport/cucumber-results-usage.html"),
	                            new ConsolidatedItemInfo(
		                                "System Info",
		                                "target/AdvancedReport/cucumber-results-system-info.html"),
	        				
	        		},
	        		"consolidated",
	                "Overall Results",
	                true,
	                -1);
	
			//	results.executeConsolidatedReport(batch2,new String[] {"pdf","html","text"});
	        results.executeConsolidatedReport(batch2);

	        
	}
	public static void CreateDirectory(String path) {
		File f=new File(path);
		if(!(f.exists())) {
			f.mkdir();
		}
		
	}
	

}
