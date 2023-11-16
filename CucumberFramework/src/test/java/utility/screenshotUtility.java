package utility;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;

public class screenshotUtility {

	public static String getScreenshot(WebDriver driver) throws Exception {
		TakesScreenshot ts = (TakesScreenshot) driver;
			File src = ts.getScreenshotAs(OutputType.FILE);
			String imagePath = System.getProperty("user.dir") + "/" + Report.ScreenshotPath + System.currentTimeMillis()
					+ ".png";
			File destination = new File(imagePath);
			try {
				FileUtils.copyFile(src, destination);
			} catch (IOException e) {
				System.out.println("Failed to capture the screenshot: " + e.getMessage());
			}
			System.out.println("image path: " + imagePath);
	
			return imagePath;
//		 String src = ts.getScreenshotAs(OutputType.BASE64);
//		 return "data:image/jpg;base64," + src ;
		

	}
}
