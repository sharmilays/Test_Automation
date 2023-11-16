package DataReaders;


import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.ini4j.Ini;


@SuppressWarnings("unused")
public class IniFile {
     
	static Ini ini;
	
    public  static String iniFilePath = System.getProperty("user.dir")+"\\src\\test\\resources\\TestData\\HPIP.ini";
    
    public IniFile () {   
     
    	 ini = new Ini();    	 
         try {
             FileInputStream fis = new FileInputStream(iniFilePath);
             ini.load(fis);
             fis.close();
         }catch (IOException e) {
             System.out.println(e.getMessage());
             
         }
     }
    
    
    public  String getIniValue(String section ,  String object) {
    	String val = ini.get(section, object);
    	  	return val;    	
    } 
    

public static Ini loadINI(String iniPath) 

{
	Ini iniFile = new Ini();
	try {
		FileInputStream fis = new FileInputStream(iniPath);
		iniFile.load(fis);
		
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return iniFile;
}
            
        }
    