package Security;
import org.jasypt.util.text.StrongTextEncryptor;

public class Encrypt {
	
 public static String getEncryptedData(String data) {
	 StrongTextEncryptor encryptor = new StrongTextEncryptor();
	 encryptor.setPassword("Auto@2020");
	 String encrpytedData = encryptor.encrypt(data);
	 return encrpytedData;
	 
 }
 public static void main(String[] args) {
	// System.out.println(getEncryptedData("ramaniranjanreddy.gujjula@conduent.com.abbvie.abbvieqa"));
	System.out.println(getEncryptedData("Sep@2020"));
	
 }
}
