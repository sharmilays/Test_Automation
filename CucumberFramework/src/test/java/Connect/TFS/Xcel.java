package Connect.TFS;

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;

import org.apache.commons.collections4.BidiMap;
import org.apache.commons.collections4.bidimap.TreeBidiMap;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.NTCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPatch;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.usermodel.HSSFWorkbookFactory;
import org.apache.poi.ss.formula.functions.Rows;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.TFsAddResults.ParentAddTestResults;
import com.TFsAddResults.TestCase;
import com.TFsAddResults.TestPoint;
import com.TFsRuns.ParentRunResponse;
import com.TFsRuns.Plan;
import com.TFsSuite.ParentCreateTFsTestSuite;
import com.TFsSuite.ParentTFsSuiteResponse;
import com.TFsUpdateResults.ParentUpdateTestResults;
import com.google.gson.Gson;

public class Xcel {
	
	
public static void main(String[] args) throws Exception {
		
		/* 1. Copy Test Cases From Excel to Test Suite*/
		
			//	String newSuiteID = ConnectToTFS.createTFsTestSuite("938177", "938178", "AutomationSuite_UAT_December_2020");
		
				HashMap<String, String> testCasesWithStatus = copyTestCasesFromExcelToTFSSuite("938177","1002800");

		
		/*2. Get TestCase IDs and Points from a particular test suite*/
				List<ArrayList<String>> tempList = getTestCaseIDsAndTestCasePoints("938177","1002800");
				
				
	   /*3. Create a new TFS RunID */
				
				String tFSRunID = String.valueOf(createNewTFSRunID("938177",tempList.get(1)));
				System.out.println("New TFS RunID is: "+tFSRunID);
				
		
	  /*4. Get TestResultID WithRespectTo TestRunID and TestCaseID */
		
				HashMap<String, String>testCaseAndTesResultIdMap = getTestResultIDfromTestRun(tFSRunID);
		
		
     /*5. Update test result to Test Run*/
		
				updateTestResultToTestRun(tFSRunID,testCaseAndTesResultIdMap,testCasesWithStatus);
		
	
				
//				deleteTFsTestSuite("938177", "971409");
		
	}

	
	
	public static void main_old(String[] args) throws Exception {
		
		/*Copy Test Cases From Excel to Test Suite*/
		
				String newSuiteID = ConnectToTFS.createTFsTestSuite("938177", "938178", "TempSuite9");
		
				HashMap<String, String> testCasesWithStatus = copyTestCasesFromExcelToTFSSuite("938177",newSuiteID);
//				testCasesWithStatus.forEach((key,value)->System.out.println("Testcase: "+key+"\nStatus: "+value));
		
		/*Get TestCase IDs and Points from a particular test suite*/
				List<ArrayList<String>> tempList = getTestCaseIDsAndTestCasePoints("938177",newSuiteID);
				System.out.println(tempList.get(0).toString());
				System.out.println(tempList.get(1).toString());
				System.out.println(String.join(",", tempList.get(1)));
				
//				HashMap<String, String> testCasesWithPoints = getTestCaseIDsAndTestCasePoints1("938177","963694");
				
//				testCasesWithPoints.forEach((key,value)->System.out.println("Testcase: "+key+"\nPoint: "+value));
				
	   /*Create a new TFS RunID */
				
				String tFSRunID = String.valueOf(createNewTFSRunID("938177",tempList.get(1)));
				System.out.println("New TFS RunID is: "+tFSRunID);
				
				
		/*Add Test result to Test Run*/
				
				
//				addNewTestResultToTestRun("81722","174884","587315");
		
		
	/*Get TestResultID WithRespectTo TestRunID and TestCaseID*/
		
		HashMap<String, String>testCaseAndTesResultIdMap = getTestResultIDfromTestRun(tFSRunID);
		
	  /*Update test result to Test Run*/
		
				updateTestResultToTestRun(tFSRunID,testCaseAndTesResultIdMap,testCasesWithStatus);
		
		
		
	}

	
	
	public static String createTFsTestSuite(String testPlanID,String parentSuiteID, String testSuiteName) throws Exception {	

		 
		 
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
				 setDefaultRequestConfig(config).
				 build();		 
		 	
		
		 	ParentCreateTFsTestSuite parentCreateTFsTestsuite = new ParentCreateTFsTestSuite();
		 	parentCreateTFsTestsuite.setName(testSuiteName);
		 	
		 	StringEntity stringEntity = new StringEntity(new Gson().toJson(parentCreateTFsTestsuite));
			HttpPost httpPost = new HttpPost("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/plans/"+testPlanID+"/suites/"+parentSuiteID+"?api-version=3.2");
			httpPost.setEntity(stringEntity);		
			httpPost.setHeader("Content-Type", "application/json");;
			HttpResponse res = client.execute(httpPost);
		 
		
		 String responseBody = EntityUtils.toString( res.getEntity());
		 
		 System.out.println(responseBody);
		 
		 ParentTFsSuiteResponse tfsCreateSuiteRespone = new Gson().fromJson(responseBody, ParentTFsSuiteResponse.class);
		 String newTestSuiteID = String.valueOf(tfsCreateSuiteRespone.getValue().get(0).getId());
		 
		 return newTestSuiteID;

	}
	
	public static HashMap<String, String> getTestResultIDfromTestRun(String TFSRunID) {
		
		HashMap<String, String> testCaseAndTesResultIdMap = new HashMap<String, String>();
		
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
				 setDefaultRequestConfig(config).
				 build();
		 
		 HttpGet httpGet = new HttpGet("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/runs/"+TFSRunID+"/results?api-version=3.0-preview");
		
		 try {
			
			 	HttpResponse response = client.execute(httpGet);
				
				String responseBody = EntityUtils.toString(response.getEntity());
				
				System.out.println(responseBody);
				
				com.TFsGetResultID.ParentGetTestResultID getTestResultID = new Gson().fromJson(responseBody, com.TFsGetResultID.ParentGetTestResultID.class);
				List<com.TFsGetResultID.Value> tempVal = getTestResultID.getValue();
				
				
				
				tempVal.stream().forEach(values->{
					System.out.println(values.getId().toString());
					System.out.println(values.getTestCase().getId());
					testCaseAndTesResultIdMap.put(values.getTestCase().getId(), values.getId().toString());
					
				});
				
				
				
		} catch (Exception e) {
			// TODO: handle exception
		}	
		 
		 return testCaseAndTesResultIdMap;
		 
	}
	
	
	






public static void updateTestResultToTestRun(String runID, HashMap<String, String> testCaseAndTesResultIdMap, HashMap<String, String> testCaseAndStatus) throws Exception {
	
	try {
		
		
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
				 setDefaultRequestConfig(config).
				 build();

		 
		 List<ParentUpdateTestResults>updateTestResultsList = new ArrayList<ParentUpdateTestResults>();
		 
		 testCaseAndTesResultIdMap.forEach((k,v)->{
			 
			 com.TFsUpdateResults.ParentUpdateTestResults updateTestResults = new ParentUpdateTestResults();
			 updateTestResults.setId(Integer.parseInt(v));
			 updateTestResults.setState("Completed");
			 updateTestResults.setComment("Testing TFS APIs");
			 updateTestResults.setOutcome(testCaseAndStatus.get(k));
			 updateTestResultsList.add(updateTestResults);
		 });

		 
		 
		 StringEntity stringEntity = new StringEntity(new Gson().toJson(updateTestResultsList));
		 HttpPatch httpPatch = new HttpPatch("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/runs/"+runID+"/results?api-version=3.0-preview");
		 httpPatch.setEntity(stringEntity);
		 httpPatch.setHeader("Content-Type", "application/json");;
		 HttpResponse res = client.execute(httpPatch);
		 
		
			String responseBody = EntityUtils.toString( res.getEntity());
			
			System.out.println("Automation Test Execution Result is successfully updated in RUN ID: "+runID);
			
//			System.out.println(res.getStatusLine().toString());
//			System.out.println(responseBody);
		 
		
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println("Automation Test Execution Result is not updated in RUN ID: "+runID);
		
	}
	
	 
	 
}






public static HashMap<String, String> getTestCaseIDsAndTestCasePoints1(String planID, String suiteID) {
	
	List<String> pointIDs = new ArrayList<String>();
	List<String> testCaseIDs = new ArrayList<String>();
	HashMap<String, String>testCaseAndPoints = new HashMap<>();
	 RequestConfig config = RequestConfig.custom().
			 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
			 build();
	 
	 
	 HttpClient client = HttpClientBuilder.
			 create().
			 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
			 setDefaultRequestConfig(config).
			 build();	

	 	
		try {

			HttpGet httpGet = new HttpGet("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/plans/"+planID+"/suites/"+suiteID+"/points?api-version=3.2");

			HttpResponse response = client.execute(httpGet);
			
			String responseBody = EntityUtils.toString(response.getEntity());
			
			System.out.println(responseBody);
			
			com.TFsPoints.Parent parentPoint = new Gson().fromJson(responseBody, com.TFsPoints.Parent.class);
			
			List<com.TFsPoints.Value> pointValues = parentPoint.getValue();
			
			
			
			
			pointValues.stream().forEach(values->pointIDs.add(values.getId().toString().replace(".0", "")));
			
			pointValues.stream().forEach(values->testCaseIDs.add(values.getTestCase().getId()));
			
			pointValues.stream().forEach(values->testCaseAndPoints.put(values.getTestCase().getId(), values.getId().toString().replace(".0", "")));
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		List<ArrayList<String>> listsOfTestCaseAndPoints = new ArrayList<ArrayList<String>>();
		
		listsOfTestCaseAndPoints.add((ArrayList<String>) testCaseIDs);
		
		listsOfTestCaseAndPoints.add((ArrayList<String>) pointIDs);
		return testCaseAndPoints;
	
	
	
	
}



public static int createNewTFSRunID(String planID, List<String>pointIDs) throws Exception {
	
	 RequestConfig config = RequestConfig.custom().
			 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
			 build();
	 
	 
	 HttpClient client = HttpClientBuilder.
			 create().
			 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
			 setDefaultRequestConfig(config).
			 build();	
	 
//	 https://mytfsserver/DefaultCollection/fabrikam-fiber-tfvc/_apis/test/runs?api-version=1.0
	 
//	 	List<Integer>pointIds = Arrays.asList(575190, 575191, 576296, 576363, 576368, 576429);
	 	
	 	com.TFsRuns.Parent TFsRun = new com.TFsRuns.Parent();
		
		com.TFsRuns.Plan plan = new com.TFsRuns.Plan();
		plan.setId(planID);
		TFsRun.setPointIds(pointIDs);
		TFsRun.setPlan(plan);
		TFsRun.setName("Demo_Automation_Run");
		TFsRun.setIsAutomated(true);
		
			 	
	StringEntity stringEntity = new StringEntity(new Gson().toJson(TFsRun));
	System.out.println(new Gson().toJson(TFsRun));
	HttpPost httpPost = new HttpPost("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/runs?api-version=3.2");
	httpPost.setEntity(stringEntity);		
	httpPost.setHeader("Content-Type", "application/json");;
	HttpResponse res = client.execute(httpPost);


	String responseBody = EntityUtils.toString( res.getEntity());
	
	com.TFsRuns.ParentRunResponse parentRunResponse = new Gson().fromJson(responseBody, com.TFsRuns.ParentRunResponse.class);
	
	System.out.println(parentRunResponse.getId());
	return parentRunResponse.getId();
//	System.out.println(responseBody);

}

	
	
	static <T> Collection<List<T>> partitionBasedOnSize(List<T> inputList, int size) {
        final AtomicInteger counter = new AtomicInteger(0);
        return inputList.stream()
                    .collect(Collectors.groupingBy(s -> counter.getAndIncrement()/size))
                    .values();
}

	
	
public static List<ArrayList<String>> getTestCaseIDsAndTestCasePoints(String planID, String suiteID) {
		
		List<String> pointIDs = new ArrayList<String>();
		List<String> testCaseIDs = new ArrayList<String>();
		
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
				 setDefaultRequestConfig(config).
				 build();	

		 	
			try {

				HttpGet httpGet = new HttpGet("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/plans/"+planID+"/suites/"+suiteID+"/points?api-version=3.2");

				HttpResponse response = client.execute(httpGet);
				
				String responseBody = EntityUtils.toString(response.getEntity());
				
				com.TFsPoints.Parent parentPoint = new Gson().fromJson(responseBody, com.TFsPoints.Parent.class);
				
				List<com.TFsPoints.Value> pointValues = parentPoint.getValue();
				
				HashMap<String, String>testCaseAndPoints = new HashMap<>();
				
				
				pointValues.stream().forEach(values->pointIDs.add(values.getId().toString().replace(".0", "")));
				
				pointValues.stream().forEach(values->testCaseIDs.add(values.getTestCase().getId()));
				
				pointValues.stream().forEach(values->testCaseAndPoints.put(values.getTestCase().getId(), values.getId().toString().replace(".0", "")));
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			List<ArrayList<String>> listsOfTestCaseAndPoints = new ArrayList<ArrayList<String>>();
			
			listsOfTestCaseAndPoints.add((ArrayList<String>) testCaseIDs);
			
			listsOfTestCaseAndPoints.add((ArrayList<String>) pointIDs);
			return listsOfTestCaseAndPoints;
		
		
		
		
	}

	
	
	
	
	public static HashMap<String, String> copyTestCasesFromExcelToTFSSuite(String planID, String suiteID) throws Exception {
		
//		ConnectToTFS.createTFsTestSuite("938177", "938178", "TempSuite-1");
		
		FileInputStream fis = new FileInputStream("C:\\Test_Automation\\CucumberFramework\\src\\test\\resources\\ExcelReport\\Pharma_UAT_Execution_TFS_Mapped.xlsx");
		XSSFWorkbook wb = new XSSFWorkbook(fis);
		XSSFSheet sheet = wb.getSheet("Temp");
//		Iterator<Row> itr = sheet.iterator();
		
		int rowCount = sheet.getLastRowNum();
		
//		List<HashMap<String,String>> testCaseWithStatusList = new ArrayList<>();
//		HashMap<String, String> bidi = new HashMap<String, String>();
		
		System.out.println(rowCount);
		
		List<String>testCaseWithStatusList = new ArrayList<String>();
		
		HashMap<String, String> testCaseWithStatusMap = new HashMap<String,String>();
		
		for (int i = 1; i<=rowCount; i++) {
			
			Row row = sheet.getRow(i);
//			System.out.println(row.getPhysicalNumberOfCells());
//			for(int j = 0; j<=row.getPhysicalNumberOfCells()-1; j++) {
//				
//				System.out.println("Cell Type: "+row.getCell(j).getCellType()+" Cell Value: "+row.getCell(j).toString().replace(".0", ""));
//				
//			}
			

			
			testCaseWithStatusList.add(row.getCell(0).toString().replace(".0", "")+";"+row.getCell(1).toString());
			testCaseWithStatusMap.put(row.getCell(0).toString().replace(".0", ""), row.getCell(1).toString());
			
		}
		System.out.println(testCaseWithStatusList.toString());
	
//		 System.out.println(testCaseWithStatusList.size());

		 List<String> testCasesList = new ArrayList<String>();
		 testCaseWithStatusList.stream().forEach(t->
				 {
					 testCasesList.add(t.split(";")[0]);
					 
			 
				 }
				 
				 );
		 
		 Collection<List<String>> subTestCaseCollection = partitionBasedOnSize(testCasesList, 37);
		 
		 subTestCaseCollection.forEach(ele->{
			 
			 System.out.println(String.join(",", ele));
			 
			 try {
					ConnectToTFS.copyTestCasesToTestSuite(planID, suiteID, String.join(",", String.join(",", ele)));
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			 
		 });
		 
		 
		 System.out.println(testCaseWithStatusList.size());
		 
//		 ConnectToTFS.getTestCaseIDsAndTestCasePoints();
		 
//		 System.out.println(testCasesList);
//		 System.out.println(String.join(",", testCasesList));
//		 System.out.println(subTestCaseCollection.iterator().next().toString());		 
//		 System.out.println(String.join(",", subTestCaseCollection.iterator().next()));
		 
		wb.close();
		return testCaseWithStatusMap;
		
		
	}
	
	
	public static void deleteTFsTestSuite(String planID, String suiteID) throws Exception {
		
		 CredentialsProvider provider = new BasicCredentialsProvider();		 
		 provider.setCredentials(AuthScope.ANY, new NTCredentials("52025310", "psw", "", "americas"));
		 
		 
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(provider).
				 setDefaultRequestConfig(config).
				 build();		 

		 
		 	HttpDelete httpDelete = new HttpDelete("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/plans/"+planID+"/suites/"+suiteID+"?api-version=3.2");
			
		
			
			HttpResponse res = client.execute(httpDelete);
		 
		
		 String responseCode = String.valueOf(res.getStatusLine());
		 
		 System.out.println(responseCode);
		

		

	}
	

}
