package utility;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;

import org.ini4j.Ini;
import org.ini4j.InvalidFileFormatException;
import org.ini4j.Profile.Section;
import org.ini4j.Wini;

import DataReaders.IniFile;

@SuppressWarnings("unused")
public class ConfigFile {
     
               
                
                static Ini ini = IniFile.loadINI(System.getProperty("user.dir")+"//src//test//resources//Config//Config.ini");
  
    
    public static String getEnvironment () throws FileNotFoundException{
    	
    			
    			
                Section common = ini.get("Common");
                                String   environment = common.get("Environment");
                //            System.out.println(environment);
                                return environment;
                
    }
    
    
    public  static String getConfigValue(String object) {
    	ConfigFile obj = new ConfigFile();
                String val = null ;
				try {
					val = ini.get(getEnvironment(), object);
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}      
                if (val!= null){
                    //  System.out.println("Value of '"+object+"' is :- "+val  );
                }else{
                      System.out.println("No value found in Config File");
                }
                return val;
    } 
    
    public static void writeToConfig(String sectionName, String optionName, Object value) throws IOException {
    	
    	ini.put(sectionName, optionName, value);
    	ini.store(new File(System.getProperty("user.dir")+"//src//test//resources//Config//Config.ini"));
    	
    }
    
    public static void main(String[] args) throws InvalidFileFormatException, IOException {
//    	ini.put("Common", "Host", "12345");
    	System.out.println(ini.get("Common", "Environment"));
   
    	Wini ini1 = new Wini(new File(System.getProperty("user.dir")+"//src//test//resources//Config//Config.ini"));
    	ini.put("Common", "Host", "786");
    	
//    	ini1.add("Common", "Host", "12345");
    	ini.store(new File(System.getProperty("user.dir")+"//src//test//resources//Config//Config.ini"));
    	
    	System.out.println(ini.get("Common", "Host"));
    	
    	System.out.println("{debuggerAddress=localhost:1402}".split(":")[1].replace("}", ""));
    	
    	String h = "{debuggerAddress=localhost:1402}";
    	
    	System.out.println(h.replaceAll("[^\\d ]", ""));
    	
    }
    
    
               
        }
