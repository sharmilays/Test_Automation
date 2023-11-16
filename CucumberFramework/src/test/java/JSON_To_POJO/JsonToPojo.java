package JSON_To_POJO;

import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Files;

import org.apache.commons.io.IOUtils;
import org.jsonschema2pojo.DefaultGenerationConfig;
//import org.jsonschema2pojo.
import org.jsonschema2pojo.GenerationConfig;
import org.jsonschema2pojo.GsonAnnotator;
import org.jsonschema2pojo.Jackson2Annotator;
import org.jsonschema2pojo.SchemaGenerator;
import org.jsonschema2pojo.SchemaMapper;
import org.jsonschema2pojo.SchemaStore;
import org.jsonschema2pojo.SourceType;
import org.jsonschema2pojo.rules.RuleFactory;
import com.sun.codemodel.JCodeModel;

public class JsonToPojo{
	
	public static void main(String [] args) {
		

//		createPojoFromJsonFile();

		
		
		String jsonBody= "{\r\n" + 
				"  \"name\": \"NewTestRun\",\r\n" + 
				"  \"plan\": {\r\n" + 
				"    \"id\": \"1\"\r\n" + 
				"  },\r\n" + 
				"  \"pointIds\": [\r\n" + 
				"    1\r\n" + 
				"  ],\r\n" + 
				"  \"isAutomated\": true\r\n" + 
				"}";
		String packageName = "com.TFsRun";
		String parentClassName = "";
		createPojoFromJsonFile(jsonBody, packageName, parentClassName);
		
		
		
		

    }
		
	
	
	
//	public static void createPojoFromJsonString(String jsonString) {
//		
//	try {
//			
//			String packageName = "com.pojoclass";  
//			File inputJson = new File(System.getProperty("user.dir")+"\\src\\test\\java\\Connect\\TFS\\tfsSuite.json");
//					//new File(System.getProperty("user.dir")+"/src/test/java/JSON_To_POJO/SampleJSON.json");
//			File outputPojoDirectory = new File(System.getProperty("user.dir")+"/src/main/java/");
//			
//			InputStream inputStream = IOUtils.toInputStream(jsonString);
//			
//			final String PREFIX = "stream2file";
//		    final String SUFFIX = ".tmp";
//		    File f = File.createTempFile(PREFIX, SUFFIX);
//		    f.deleteOnExit();
//		    
//		    
//		    FileOutputStream outputStream = new FileOutputStream(f);
//		    IOUtils.copy()
//			
//			outputPojoDirectory.mkdirs();
//			URL src = 
//					
//			
//			new JsonToPojo().convert2JSON(src, outputPojoDirectory, packageName, "TFsSuiteResponse");
//		} catch (MalformedURLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}
	
	public static void createPojoFromJsonFile() {
		
		
	try {
			
			String packageName = "com.TFsResults";  
			File inputJson = new File(System.getProperty("user.dir")+"\\src\\test\\java\\Connect\\TFS\\TFS-Results2.json");
//					new File(System.getProperty("user.dir")+"\\src\\test\\java\\Connect\\TFS\\tfsSuiteCred.json");
					//new File(System.getProperty("user.dir")+"/src/test/java/JSON_To_POJO/SampleJSON.json");
			File outputPojoDirectory = new File(System.getProperty("user.dir")+"/src/main/java/");
					
			outputPojoDirectory.mkdirs();
			URL src = inputJson.toURI().toURL();
			
			new JsonToPojo().convert2JSON(src, outputPojoDirectory, packageName, "ParentAddTestResults");
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void createPojoFromJsonFile(String jsonBody, String packageName, String parentClassName ) {
		
		
		File inputJson = null;
		
		
        
		System.out.println(jsonBody);
		
		
        BufferedWriter writer = null;
        try {
        	inputJson = File.createTempFile("MyTempFile", ".tmp");
            writer = new BufferedWriter(new FileWriter(inputJson));
            writer.write(jsonBody);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            try{
                if(writer != null) writer.close();
            }catch(Exception ex){}
        }
		
		
		try {	            

				File outputPojoDirectory = new File(System.getProperty("user.dir")+"/src/main/java/");
						
				outputPojoDirectory.mkdirs();
				URL src = inputJson.toURI().toURL();
				System.out.println(inputJson.getAbsolutePath());
				
//				inputJson.deleteOnExit();
				
				new JsonToPojo().convert2JSON(src, outputPojoDirectory, packageName, "Parent"+parentClassName);
				
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
	
	public void convert2JSON(URL inpoutJson, File outputPojoDirectory, String packageName, String className)throws IOException{  
	
        JCodeModel codeModel = new JCodeModel();  

        URL source = inpoutJson;  

        GenerationConfig config = new DefaultGenerationConfig() {  

        @Override  

        public boolean isGenerateBuilders() { // set config option by overriding method  

            return true;  

        }  

        public SourceType getSourceType(){  

    return SourceType.JSON;  

  }  

        };  

        
        SchemaMapper mapper = new SchemaMapper(new RuleFactory(config, new GsonAnnotator(config), new SchemaStore()), new SchemaGenerator());  

        mapper.generate(codeModel, className, packageName, source);  

        codeModel.build(outputPojoDirectory);  

   }  
	
	

public static void createPojoFromJsonFile(File inputJson) {
		
		
		
		try {
				
				String packageName = "com.TFS";  
										
				File outputPojoDirectory = new File(System.getProperty("user.dir")+"/src/main/java/");
						
				outputPojoDirectory.mkdirs();
				URL src = inputJson.toURI().toURL();
				
				new JsonToPojo().convert2JSON(src, outputPojoDirectory, packageName, "TFsSuiteResponse");
			} catch (MalformedURLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	
	
}