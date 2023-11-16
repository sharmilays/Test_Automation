package Connect.TFS;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.function.Supplier;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import javax.json.bind.Jsonb;
import javax.json.bind.JsonbBuilder;
import javax.json.bind.JsonbConfig;

import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.params.AuthPNames;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.AuthSchemes;
import org.apache.http.client.params.AuthPolicy;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.codehaus.groovy.transform.sc.ListOfExpressionsExpression;

import com.TFsAddResults.ParentAddTestResults;
import com.TFsAddResults.TestCase;
import com.TFsAddResults.TestPoint;
import com.TFsPoints.Parent;
import com.TFsRuns.ParentRunResponse;
import com.TFsRuns.Plan;
import com.TFsSuite.ParentCreateTFsTestSuite;
import com.TFsSuite.ParentTFsSuiteResponse;
import com.TFsSuite.Value;
import com.TFsUpdateResults.ParentUpdateTestResults;
import com.TFsUpdateWorkItems.ParentUpdateWorkItems;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import JSON_To_POJO.JsonToPojo;
import groovy.util.Eval;

import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPatch;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.json.JSONObject;

import javax.script.ScriptEngineManager;
import javax.script.ScriptEngine;

public class ConnectToTFS {
	
	
	public static void main(String[] args) throws Exception {
		
		updateTestResultToTestRun("79411", "100001,100002,100003,100004,100005");	
			
			addNewTestResultToTestRun("79406","231287","575190");

			/* ---------------To Get Test RUN ID-----------------*/
			
			
//				createNewTFSRunID();
			
			
			/*----------------------------------------------------------------------------*/
			
			
//			deleteTFsRunID("79410");
			
			
			/* ---------------To Get TestCase IDs and Points from a particular test suite-----------------*/
					
			System.out.println(getTestCaseIDsAndTestCasePoints().get(0).toString());
//			System.out.println(getTestCaseIDsAndTestCasePoints().get(1).toString());

			/*----------------------------------------------------------------------------*/
					 

					
			/* ---------------To Copy Test case to a particular test suite-----------------*/
					
//					String destinationTestSuiteID = "926429";		
//					String testCaseIDsToBeCopied = "373361";		
//					copyTestCasesToTestSuite(destinationTestSuiteID, testCaseIDsToBeCopied);

			/*----------------------------------------------------------------------------*/
					
					
			
//			verifyTFsTestSuiteExist();
//			System.out.println(createTFsTestSuite());
			
//			deleteTFsTestSuite();
					
//					System.out.println(testCaseIDsToBeCopied);
//					String url = "https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/plans/372468/suites/destinationTestSuiteID/testcases/testCaseIDsToBeCopied?api-version=3.2";
					 
//					ScriptEngineManager mgr = new ScriptEngineManager();
//					ScriptEngine engine = mgr.getEngineByName("js");
//					String foo ="2+5";
//					System.out.println(url.replace("testCaseIDsToBeCopied", testCaseIDsToBeCopied).replace("destinationTestSuiteID", destinationTestSuiteID));

				}

		
		
		public static void deleteTFsRunID(String runID) throws Exception, IOException {
			
			 RequestConfig config = RequestConfig.custom().
					 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
					 build();
			 
			 
			 HttpClient client = HttpClientBuilder.
					 create().
					 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
					 setDefaultRequestConfig(config).
					 build();	
			 HttpDelete httpDelete = new HttpDelete("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/runs/"+runID+"?api-version=1.0");
			 HttpResponse response = client.execute(httpDelete);
			 
			 System.out.println(response.getStatusLine().getStatusCode());
			 
			 
		}
		 
//		public static void createNewTFSRunID() throws Exception {
//			
//			 RequestConfig config = RequestConfig.custom().
//					 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
//					 build();
//			 
//			 
//			 HttpClient client = HttpClientBuilder.
//					 create().
//					 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
//					 setDefaultRequestConfig(config).
//					 build();	
//			 
////			 https://mytfsserver/DefaultCollection/fabrikam-fiber-tfvc/_apis/test/runs?api-version=1.0
//			 
//			 	List<Integer>pointIds = Arrays.asList(575190, 575191, 576296, 576363, 576368, 576429);
//			 	
//				com.TFsRuns.Parent	TFsRun = new com.TFsRuns.Parent();
//				com.TFsRuns.Plan plan = new Plan();
//				plan.setId("372468");
//				TFsRun.setPointIds(pointIds);
//				TFsRun.setPlan(plan);
//				TFsRun.setName("Demo_Automation_Run");
//					 	
//		 	StringEntity stringEntity = new StringEntity(new Gson().toJson(TFsRun));
//		 	System.out.println(new Gson().toJson(TFsRun));
//			HttpPost httpPost = new HttpPost("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/runs?api-version=3.2");
//			httpPost.setEntity(stringEntity);		
//			httpPost.setHeader("Content-Type", "application/json");;
//			HttpResponse res = client.execute(httpPost);
//		 
//		
//			String responseBody = EntityUtils.toString( res.getEntity());
//			
//			ParentRunResponse parentRunResponse = new Gson().fromJson(responseBody, ParentRunResponse.class);
//			
//			System.out.println(parentRunResponse.getId());
////			System.out.println(responseBody);
//
//		}
		
	
	
	
	
	public static void updateFieldOfWorkItem(String testCaseID, String opertaion_path_value) throws Exception {
		
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
				 setDefaultRequestConfig(config).
				 build();
		 
	
		 
		 List<ParentUpdateWorkItems>updateWorkItemList = new ArrayList<ParentUpdateWorkItems>();
		 String[] opertaion_path_value_List =opertaion_path_value.split(";");
		 
		 for(int i = 0; i<opertaion_path_value_List.length; i++) {
			 
			
				 
				 ParentUpdateWorkItems parentUpdateWorkItem = new ParentUpdateWorkItems();
				 parentUpdateWorkItem.setOp(opertaion_path_value_List[i].split(":")[0]);
				 parentUpdateWorkItem.setPath(opertaion_path_value_List[i].split(":")[1]);
				 parentUpdateWorkItem.setValue(opertaion_path_value_List[i].split(":")[2]);	
				 updateWorkItemList.add(parentUpdateWorkItem);
		 }
		 
		 
		 StringEntity stringEntity = new StringEntity(new Gson().toJson(updateWorkItemList));
		 HttpPatch httpPatch = new HttpPatch("https://tfs.acsgs.com/tfs/PDSI/_apis/wit/workitems/"+testCaseID+"?api-version=1.0");
		 httpPatch.setEntity(stringEntity);
		 httpPatch.setHeader("Content-Type", "application/json-patch+json");;
		 HttpResponse res = client.execute(httpPatch);
		 
		
			String responseBody = EntityUtils.toString( res.getEntity());
			
			System.out.println(res.getStatusLine().toString());
			System.out.println(responseBody);
		 
		 
		 
	}
	
	public static void updateTestResultToTestRun(String runID, String ID) throws Exception {
		
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
				 setDefaultRequestConfig(config).
				 build();
		 
		String[] idList;
		 idList = ID.split(",");
		 
		 List<ParentUpdateTestResults>updateTestResultsList = new ArrayList<ParentUpdateTestResults>();
		 
		 for(int i = 0; i<idList.length; i++) {
			 com.TFsUpdateResults.ParentUpdateTestResults updateTestResults = new ParentUpdateTestResults();
			 updateTestResults.setId(Integer.parseInt(idList[i]));
			 updateTestResults.setState("Completed");
			 updateTestResults.setComment("Testing TFS APIs");
			 updateTestResults.setOutcome("Passed");
			 updateTestResultsList.add(updateTestResults);
		 }
		 
		 
		 StringEntity stringEntity = new StringEntity(new Gson().toJson(updateTestResultsList));
		 HttpPatch httpPatch = new HttpPatch("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/runs/"+runID+"/results?api-version=3.0-preview");
		 httpPatch.setEntity(stringEntity);
		 httpPatch.setHeader("Content-Type", "application/json");;
		 HttpResponse res = client.execute(httpPatch);
		 
		
			String responseBody = EntityUtils.toString( res.getEntity());
			
			System.out.println(res.getStatusLine().toString());
			System.out.println(responseBody);
		 
		 
		 
	}
	
	public static void addNewTestResultToTestRun(String runID, String testCaseID, String testPointID) throws Exception {
		
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
				 setDefaultRequestConfig(config).
				 build();	
		 com.TFsAddResults.TestCase testCase = new TestCase();
		 testCase.setId(Integer.parseInt(testCaseID));
		 
		 com.TFsAddResults.TestPoint testPoint = new TestPoint();
		 testPoint.setId(Integer.parseInt(testPointID));
		
		ParentAddTestResults parentAddTestResult = new ParentAddTestResults();
		
//		parentAddTestResult.setTestCaseTitle("Navigate to Prescription page> Click on ‘Search Practitioner’ > Verify that first search filter is mandatory ,Asterisk mark should not be displaying and entering valid data result should display");
		parentAddTestResult.setOutcome("Passed");
		parentAddTestResult.setPriority(1);
		parentAddTestResult.setTestCase(testCase);
		parentAddTestResult.setTestPoint(testPoint);
		
		List<ParentAddTestResults> parentAddTestResultList = new ArrayList<>();
		parentAddTestResultList.add(parentAddTestResult);
		 
			StringEntity stringEntity = new StringEntity(new Gson().toJson(parentAddTestResultList));
			HttpPost httpPost = new HttpPost("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/runs/"+runID+"/results?api-version=3.0-preview");

			httpPost.setEntity(stringEntity);		
			httpPost.setHeader("Content-Type", "application/json");;
			HttpResponse res = client.execute(httpPost);
		 
		
			String responseBody = EntityUtils.toString( res.getEntity());
			
			System.out.println(res.getStatusLine().toString());
			System.out.println(responseBody);
	}
	
	
	
	
	
	
	/*
	 
	 This Method will return two list:
	 
	 List1(String): TestCase IDs 
	 List2(Integer): TestPoints
	 
	 */
	public static List<ArrayList<Object>> getTestCaseIDsAndTestCasePoints() {
		
		List<Object> pointIDs = new ArrayList<Object>();
		List<Object> testCaseIDs = new ArrayList<Object>();
		
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
				 setDefaultRequestConfig(config).
				 build();	

		 	
			try {

				HttpGet httpGet = new HttpGet("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/plans/372468/suites/926429/points?api-version=3.2");

				HttpResponse response = client.execute(httpGet);
				
				String responseBody = EntityUtils.toString(response.getEntity());
//				System.out.println("Inside GetPoints method");
//				System.out.println(responseBody);
				
				com.TFsPoints.Parent parentPoint = new Gson().fromJson(responseBody, com.TFsPoints.Parent.class);
				
				List<com.TFsPoints.Value> pointValues = parentPoint.getValue();
				
				
				
				pointValues.stream().forEach(values->pointIDs.add(values.getId()));
				
				pointValues.stream().forEach(values->testCaseIDs.add(values.getTestCase().getId()));
				
//				System.out.println(testCaseIDs.toString());
				
				
				
				
			
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			List<ArrayList<Object>> listsOfTestCaseAndPoints = new ArrayList<ArrayList<Object>>();
			
			listsOfTestCaseAndPoints.add((ArrayList<Object>) testCaseIDs);
			
			listsOfTestCaseAndPoints.add((ArrayList<Object>) pointIDs);
			return listsOfTestCaseAndPoints;
		
		
		
		
	}

	

	
	
	
	public static Boolean verifyTFsTestSuiteExist() throws Exception {
		
		 CredentialsProvider provider = new BasicCredentialsProvider();		 
		 provider.setCredentials(AuthScope.ANY, new NTCredentials("52027059", "Nov@2020", "", "americas"));
		 
		 
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(provider).
				 setDefaultRequestConfig(config).
				 build();		 
		 HttpGet get = new HttpGet("https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/"+"_apis/test/Plans/"+"372468"+"/suites?api-version=3.2");
		 
		
		 HttpResponse response = client.execute(get);
		 String responseBody = EntityUtils.toString( response.getEntity());

  

       
		System.out.println(responseBody);
       ParentTFsSuiteResponse responseSuiteTFS = new Gson().fromJson(responseBody, ParentTFsSuiteResponse.class);
       
       List<Value> suiteLists = responseSuiteTFS.getValue();
       
       System.out.println(suiteLists.size());
       
//       List<Value> requiredSuite =  suiteLists.stream().filter(suites->{
//       	
//       	return suites.getId().equals("699830")  ; 	
//       }).collect(Collectors.toList());
       
       Value requiredSuite2 = suiteLists.stream().filter(suites->suites.getId()==699830 ).findFirst().orElse(null);

       
       
		 Value requiredSuite3 = suiteLists.stream().filter(suites->{
		 	
		 	return suites.getId() == 699830  ; 	
		 }).findAny().orElseThrow(()->new NoSuchElementException("No Suite Available with the ID provided"));
		 

		 System.out.println("Parent suite ID: "+requiredSuite2.getParent().getId());
		 System.out.println(requiredSuite2.getName());
		 System.out.println(requiredSuite3.getLastUpdatedBy().getDisplayName());
		 
		 Boolean present = suiteLists.stream().filter(suites->suites.getId()==699830 ).findFirst().isPresent();
		 
		 System.out.println("TFS Suite is available: "+present);
		 
		 return suiteLists.stream().filter(suites->suites.getId()==699830 ).findFirst().isPresent();
		 
	}
	
//------------------------------------------Use Below Code to generate CreateTestSuitePojoClass------------------------------------------------------------	
//	String jsonRequest = "{\r\n" + 
//	"  \"suiteType\": \"StaticTestSuite\",\r\n" + 
//	"  \"name\": \"NewTestSuite\"\r\n" + 
//	"}";
//
//JsonToPojo.createPojoFromJsonFile(jsonRequest, "com.TFS", "CreateTFsTestSuite");
//	--------------------------------------------------------------------------------------------------------------------------------------------------------
	
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


	public static void deleteTFsTestSuite(String planID, String suiteID) throws Exception {
		
		 CredentialsProvider provider = new BasicCredentialsProvider();		 
		 provider.setCredentials(AuthScope.ANY, new NTCredentials("winID", "psw", "", "americas"));
		 
		 
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

	
	public static void copyTestCasesToTestSuite(String testPlanID, String destinationTestSuiteID, String testCaseIDsToBeCopied) throws Exception {
		
//		 CredentialsProvider provider = new BasicCredentialsProvider();		 
//		 provider.setCredentials(AuthScope.ANY, new NTCredentials("52027059", "Nov@2020", "", "americas"));
		 
		 
		 RequestConfig config = RequestConfig.custom().
				 setTargetPreferredAuthSchemes(Arrays.asList(AuthSchemes.NTLM)).
				 build();
		 
		 
		 HttpClient client = HttpClientBuilder.
				 create().
				 setDefaultCredentialsProvider(new ConnectToTFS().ntlmCredentialProvider()).
				 setDefaultRequestConfig(config).
				 build();		 
		 
		 String url = "https://tfs.acsgs.com/tfs/PDSI/HealthAtWork/_apis/test/plans/"+testPlanID+"/suites/"+destinationTestSuiteID+"/testcases/"+testCaseIDsToBeCopied+"?api-version=3.2";
		 System.out.println(url);
		 	HttpPost httpPost = new HttpPost(url);
		 	httpPost.setHeader("Content-Type", "application/json");
		 	HttpResponse res = client.execute(httpPost);
		 
		
		 String responseCode = String.valueOf(res.getStatusLine());
		 
		 
		
		 
		 System.out.println(responseCode);
		 System.out.println( EntityUtils.toString( res.getEntity()));
		

		

	}

	
	public CredentialsProvider ntlmCredentialProvider() {
		
		 CredentialsProvider provider = new BasicCredentialsProvider();		 
		 provider.setCredentials(AuthScope.ANY, new NTCredentials("52027059", "Mar@2021", "", "americas"));
		 
		 
		 
		 return provider;
		
	}
	
	
}
