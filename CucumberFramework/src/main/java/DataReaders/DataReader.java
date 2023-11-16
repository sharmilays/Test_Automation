package DataReaders;


import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.ini4j.Ini;

import com.vimalselvam.cucumber.listener.Reporter;


public class DataReader {
	private String path;
	private FileInputStream fis = null;
	@SuppressWarnings("unused")
	private FileOutputStream fileOut = null;
	private XSSFWorkbook workbook = null;
	private XSSFSheet sheet = null;

	Map<String, List<List<String>>> sheetTable = new LinkedHashMap<String, List<List<String>>>();

	public DataReader(String path) {
		this.path = path;
		try {
			fis = new FileInputStream(this.path);
			workbook = new XSSFWorkbook(fis);
			fis.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int getRowCount(String sheetName) {
		int index = workbook.getSheetIndex(sheetName);
		if (index == -1)
			return 0;
		else {
			sheet = workbook.getSheetAt(index);
			int number = sheet.getLastRowNum() + 1;
			return number;
		}

	}

	public void loadSheetData(String sheetName) {
		try {
			@SuppressWarnings("unused")
			int index = workbook.getSheetIndex(sheetName);
			//sheet = workbook.getSheetAt(index);

			List<List<String>> keyValueList = new ArrayList<List<String>>();
			List<String> rowList = null;
			String prevTestCaseId = null;
			String currTestCaseId = null;

			int rowNum = 1;
			int lastRowNumber = getRowCount(sheetName);
			while (rowNum <= lastRowNumber) {

				rowList = new ArrayList<String>();
				DataFormatter formatter = new DataFormatter();
				XSSFRow row = sheet.getRow(rowNum);

				if (row != null && row.getCell(0) != null) {
					currTestCaseId = formatter.formatCellValue(row.getCell(0));
				} else {
					currTestCaseId = null;
			    }

				for (int colmCount = 1; (row != null && colmCount <= row.getLastCellNum()); colmCount++) {
					final FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();
					String rowData = formatter.formatCellValue(row.getCell(colmCount), evaluator);
					rowList.add(rowData);
				}

				if (prevTestCaseId != null && prevTestCaseId.equals(currTestCaseId) == false) {
					sheetTable.put(prevTestCaseId, keyValueList);
					keyValueList = new ArrayList<List<String>>();
				}

				if (rowList != null && rowList.isEmpty() == false) {
					keyValueList.add(rowList);
				}

				prevTestCaseId = currTestCaseId;
				rowNum++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	public  String getDataFromExcel(String sheetName, String tcID, String key) {
        loadSheetData(sheetName);
        
        
        List<List<String>> keyValueList = sheetTable.get(tcID);
        
        
        
        
        
        if (keyValueList != null && keyValueList.isEmpty() == false && 0 < keyValueList.size()) {
               
               List<String> rowList = keyValueList.get(0);
               int index = rowList.indexOf(key);             

               if (1 < keyValueList.size()) {
                     
                     List<String> tcIdValueList = keyValueList.get(1);
                     String ExcelValue = tcIdValueList.get(index);
                     
                     if (ExcelValue.contains("config_")){
                              Ini ini = IniFile.loadINI(System.getProperty("user.dir")+"//src//test//resources//Config//Config.ini");
                              String Environment=ini.get("Common","Environment");
                            String IniOutput = ini.get(Environment,ExcelValue);
                            
                            return IniOutput;                
                            
                     }                          
                     else if (index != -1 && tcIdValueList.isEmpty() == false && index < tcIdValueList.size()){
                            Reporter.addStepLog(key+" : "+ExcelValue);
                            return ExcelValue;
                     }
                            
               }
                           
        }      
        Reporter.addStepLog(key+" : "+null);
        return null;
 }
 

//public static void main(String arg[]) {
//
//      DataReader obj1 = new DataReader(System.getProperty("user.dir")+"\\\\src\\\\test\\\\resources\\\\TestData\\\\CPIP.xlsx");
//                   //new DataReader("D:\\TestAutomation\\CPIS_CucumberFramework\\src\\main\\java\\DataReaders\\CPIP.xlsx");
////     obj1.loadSheetData("Sheet1");
////   System.out.println("Value >> " + obj1.getValueForKey("Sheet1", "TC_427210", "1000Char"));
// obj1.loadSheetData("HPIP");
//
////IniFile iniobj = new IniFile();
//
////System.out.println(iniobj.getIniValue("HPIP", "ini_1000_Character")); 
//System.out.println(obj1.getValueForKey("Sheet1", "TC_427210", "1000Char"));
//     obj1.getIterationValueForKey("TCID_001", "url", 5);
//}

}

