package objectRepository;

import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
//import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import DataReaders.DataReader;
import utility.ConfigFile;
import utility.WebDriverFactory;

public class GetObj2 extends DataReader {
     
   static Properties prop;
    
    public WebDriver driver;
    WebDriverFactory webDriverFactory;
    
    @SuppressWarnings("unused")
	private  Map<String, String> mapProp = new HashMap<String, String>();
    
    @SuppressWarnings("static-access")
	
    	public GetObj2 (WebDriverFactory driverFactory ){
    	
    	super(System.getProperty("user.dir")+ConfigFile.getConfigValue("TestDataSheet"));
         
        webDriverFactory = driverFactory;
        try {
			this.driver = webDriverFactory.getWebDriver();
		} catch (IllegalAccessException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        
        try {
        	File f = new File(ConfigFile.getConfigValue("ObjectRepository"));
        	
        	FileFilter f1 = new FileFilter() {
    			
    			@Override
    			public boolean accept(File pathname) {
    				return pathname.getName().endsWith(".properties");
    			}
    		};
    		File[] flist = f.listFiles(f1);
    		
    		
    		
    		
    		System.out.println(flist.length);
    		
    		for (File temp:flist)
    		{
    			System.out.println(temp.getName());
    			System.out.println(temp.getPath());
    			prop.load(new FileInputStream(temp));
    			
    		}
    		
        	
        }catch (IOException e) {
            System.out.println(e.getMessage());
            
        }
         
    }
    
//    public Map<String, String> loadObjectFiles() throws Exception {
//        File file = new File(ConfigFile.ConfigValue("ObjectRepository"));
//        File[] files = file.listFiles();
//        
//        for(File f: files){
//    		FileInputStream fis = new FileInputStream(ConfigFile.ConfigValue("ObjectRepository")+"\\"+f.getName());
//
//    		 prop = new Properties();
//      if (f.getName().contains(".properties")) {
//    		prop.load(fis);
//
//    		fis.close();
///*    		Enumeration<Object> enumKeys = prop.keys();
//    		while (enumKeys.hasMoreElements()) {
//    			String key = (String) enumKeys.nextElement();
//    			String value = prop.getProperty(key);
//    			mapProp.put(key, value);
//    		}*/
//      }    		
//    		}
// return mapProp;
//        
//    }
   
      public WebElement element(String strElement) throws Exception {
         
    	// retrieve the specified object from the object list
          String locator = prop.getProperty(strElement);
           
          // extract the locator type and value from the object
          String locatorType = locator.split(";")[0];
          String locatorValue = locator.split(";")[1];
       //   System.out.println(By.xpath("AppLogo"));
           
          // for testing and debugging purposes
          System.out.println("Retrieving object of type '" + locatorType + "' and value '" + locatorValue + "' from the Object Repository");

          if(locatorType.equals("Id"))
              return driver.findElement(By.id(locatorValue));
              		
          else if(locatorType.equals("Name"))
          	return driver.findElement(By.name(locatorValue));
          else if(locatorType.equals("Classname")) 
          	return driver.findElement(By.className(locatorValue));
          else if(locatorType.equals("Tagname"))
          	return driver.findElement(By.className(locatorValue));
          else if(locatorType.equals("Linktext"))
          	return driver.findElement(By.linkText(locatorValue));
          else if(locatorType.equals("Partiallinktext"))
          	return driver.findElement(By.partialLinkText(locatorValue));
          else if(locatorType.equals("Cssselector")) 
          	return driver.findElement(By.cssSelector(locatorValue));
          else if(locatorType.equals("Xpath"))
          	return driver.findElement(By.xpath(locatorValue));
          else
              throw new Exception("Unknown locator type '" + locatorType + "'");
    }


}