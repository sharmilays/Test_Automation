package utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelper {
	
	private Connection con = null;
    String serverName = "sdy-ars-dsql10";
    
        String databaseName = "Atlas_Dev";
        /*  String userName = ConfigFile.ConfigValue("userName");
    String passWord = ConfigFile.ConfigValue("passWord");*/
    String portNumber = "1433";
    String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    
	
    
    public DBHelper() {
		try {
			 Class.forName(driverName);
        } catch(Exception e) {
            e.printStackTrace();
        }
	}
	
	
	  public void connectDatabase()   {
		    
		    String connString = "jdbc:sqlserver://"+serverName+":"+portNumber+";"+"databaseName="+databaseName; 
			 try {
				con = DriverManager.getConnection(connString);
			
			   if (con != null) {
			      System.out.println("Connected with Database");
			   }    
			   else{
				  System.out.println("Not able to Connect with Database"); 
			   }
				} catch (SQLException e) {
					
					e.printStackTrace();
				}

			  }

	public static void main(String[] args)  {

		DBHelper hlp = new DBHelper();
		hlp.connectDatabase();
	}

}
