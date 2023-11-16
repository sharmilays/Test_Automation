package testRunner;


import cucumber.api.testng.CucumberExceptionWrapper;
import cucumber.api.testng.CucumberFeatureWrapperImpl;
import cucumber.api.testng.FeatureResultListener;
import cucumber.api.testng.TestNgReporter;
import cucumber.runtime.ClassFinder;
import cucumber.runtime.CucumberException;
import cucumber.runtime.Runtime;
import cucumber.runtime.RuntimeOptions;
import cucumber.runtime.RuntimeOptionsFactory;
//import cucumber.runtime.RuntimeOptionsFactory;
import cucumber.runtime.io.MultiLoader;
import cucumber.runtime.io.ResourceLoader;
import cucumber.runtime.io.ResourceLoaderClassFinder;
import cucumber.runtime.model.CucumberFeature;
import gherkin.formatter.Formatter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.codoid.products.fillo.Connection;
import com.codoid.products.fillo.Fillo;
import com.codoid.products.fillo.Recordset;

/**
 * Glue code for running Cucumber via TestNG.
 */
public class CustomTestNgRunner{
    private Runtime runtime;
    private RuntimeOptions runtimeOptions;
    private ResourceLoader resourceLoader;
    private FeatureResultListener resultListener;
    private ClassLoader classLoader;
    private String feature = "";
   	private String glue = "";

    /**
     * Bootstrap the cucumber runtime
     *
     * @param clazz Which has the cucumber.api.CucumberOptions and org.testng.annotations.Test annotations
     */
    public CustomTestNgRunner(Class clazz) {
        classLoader = clazz.getClassLoader();
        resourceLoader = new MultiLoader(classLoader);

        RuntimeOptionsFactory runtimeOptionsFactory = new RuntimeOptionsFactory(clazz);
        runtimeOptions = runtimeOptionsFactory.create();
        
//        String s = "--monochrome, --plugin, pretty:target/cucumber/pretty.txt, --plugin, html:target/cucumber, --plugin, json:target/cucumber/cucumber.json, --plugin, usage:target/cucumber/cucumber-usage.json, --plugin, junit:target/XML/Cucumber.xml, --plugin, com.vimalselvam.cucumber.listener.ExtentCucumberFormatter:, --strict, --name, Scenario6, --snippets, UNDERSCORE, --glue, pharmaTestSuite.steps, src/test/java/pharmaTestSuite/featureFiles/Pharma";
//
//        String[]cucuOption =s.trim().replaceAll(" ", "").split(",");
//		
//		System.out.println(cucuOption.length);	
//		
//		List<String> cucuList = Arrays.asList(cucuOption);
//		System.out.println("Ashirbad 2019 Otions: ");
//		System.out.println(cucuList);
//        runtimeOptions = new RuntimeOptions(cucuList);
        
        TestNgReporter reporter = new TestNgReporter(System.out);
        ClassFinder classFinder = new ResourceLoaderClassFinder(resourceLoader, classLoader);
        resultListener = new FeatureResultListener(runtimeOptions.reporter(classLoader), runtimeOptions.isStrict());
        runtime = new Runtime(resourceLoader, classFinder, classLoader, runtimeOptions);
    }

    
    public CustomTestNgRunner(Class clazz,String excelPath, String excelSheetName) throws Exception {
        classLoader = clazz.getClassLoader();
        resourceLoader = new MultiLoader(classLoader);

//        RuntimeOptionsFactory runtimeOptionsFactory = new RuntimeOptionsFactory(clazz);
//        runtimeOptions = runtimeOptionsFactory.create();
        
        List<String> cucuList = returnCucuOptionfromExcel(excelPath, excelSheetName);
        System.out.println("Ashirbad 2019 Options");
        System.out.println(cucuList);;
     
        runtimeOptions =   new RuntimeOptions(cucuList);

        TestNgReporter reporter = new TestNgReporter(System.out);
        ClassFinder classFinder = new ResourceLoaderClassFinder(resourceLoader, classLoader);
        resultListener = new FeatureResultListener(runtimeOptions.reporter(classLoader), runtimeOptions.isStrict());
        runtime = new Runtime(resourceLoader, classFinder, classLoader, runtimeOptions);
    }
    
    /**
     * Run the Cucumber features
     */
    public void runCukes() {
        for (CucumberFeature cucumberFeature : getFeatures()) {
            cucumberFeature.run(
                    runtimeOptions.formatter(classLoader),
                    resultListener,
                    runtime);
        }
        finish();
        if (!resultListener.isPassed()) {
            throw new CucumberException(resultListener.getFirstError());
        }
    }

    public void runCucumber(CucumberFeature cucumberFeature) {
        resultListener.startFeature();
        cucumberFeature.run(
                runtimeOptions.formatter(classLoader),
                resultListener,
                runtime);

        if (!resultListener.isPassed()) {
            throw new CucumberException(resultListener.getFirstError());
        }
    }

    public void finish() {
        Formatter formatter = runtimeOptions.formatter(classLoader);

        formatter.done();
        formatter.close();
        runtime.printSummary();
    }

    /**
     * @return List of detected cucumber features
     */
    public List<CucumberFeature> getFeatures() {
        return runtimeOptions.cucumberFeatures(resourceLoader);
    }

    /**
     * @return returns the cucumber features as a two dimensional array of
     * {@link CucumberFeatureWrapper} objects.
     */
    public Object[][] provideFeatures() {
        try {
            List<CucumberFeature> features = getFeatures();
            List<Object[]> featuresList = new ArrayList<Object[]>(features.size());
            for (CucumberFeature feature : features) {
                featuresList.add(new Object[]{new CucumberFeatureWrapperImpl(feature)});
            }
            return featuresList.toArray(new Object[][]{});
        } catch (CucumberException e) {
            return new Object[][]{new Object[]{new CucumberExceptionWrapper(e)}};
        }
    }
    
    


private List<String> returnCucuOptionfromExcel(String excelPath, String excelSheetName) throws Exception {
	
	List<String> cucuOptions = new ArrayList<>();
	
	
	Fillo filo = new Fillo();
	Connection connection = filo.getConnection(excelPath);
	String query = "Select * from "+excelSheetName+" where Run ='Yes'";
	Recordset rs = connection.executeQuery(query);

	
while(rs.next()){
		
		if(!feature.equals(rs.getField("Feature"))) {
			
			feature = rs.getField("Feature");
			
			//System.out.println(rs.getField("Feature"));

			
			cucuOptions.add(rs.getField("Feature"));
			
		}
		
		

		}
	cucuOptions.add("--monochrome");
	cucuOptions.add("--plugin");
	cucuOptions.add("pretty:target/cucumber/pretty.txt");
	cucuOptions.add("--plugin");
	cucuOptions.add("html:target/cucumber");
	cucuOptions.add("--plugin");
	cucuOptions.add("json:target/cucumber/cucumber.json");
	cucuOptions.add("--plugin");
	cucuOptions.add("usage:target/cucumber/cucumber-usage.json");
	cucuOptions.add("--plugin");
	cucuOptions.add("junit:target/XML/Cucumber.xml");
	cucuOptions.add("--plugin");
	cucuOptions.add("com.vimalselvam.cucumber.listener.ExtentCucumberFormatter:");
	cucuOptions.add("--strict");
	
	rs = connection.executeQuery(query);
	
	while(rs.next()){
		//System.out.println(rs.getField("TestCase"));

		
		cucuOptions.add("--name");
		cucuOptions.add(rs.getField("TestCase"));
		 

		}
	
	cucuOptions.add("--snippets");
	cucuOptions.add("UNDERSCORE");
	
			rs = connection.executeQuery(query);
	
	
	while(rs.next()){
		//System.out.println(rs.getField("Glue"));
		
				if(!glue.equals(rs.getField("Glue"))) {
					
					glue = rs.getField("Glue");
					
					//System.out.println(rs.getField("Glue"));
					
					cucuOptions.add("--glue");
					
					cucuOptions.add(glue);
					}

		}
	
	
	
	


	
	rs.close();
	connection.close();
	
	System.out.println("Cucu optio: "+cucuOptions.toString());
		return cucuOptions;
			
			
	}



}
