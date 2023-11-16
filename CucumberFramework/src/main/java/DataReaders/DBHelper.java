package DataReaders;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

public class DBHelper {

	String dbServerName = "10.237.188.150";
	String dbPort = "1433";
	String dbName = "CPIP";
	String dbUser = "ashirbad";
	String dbPassword = "Franklin13";

	private Connection con = null;
	private Statement s = null;
	private ResultSet rs = null;
	String dbValue;

	public Connection connectDatabase() throws Exception {

		String connString = "jdbc:sqlserver://" + dbServerName + ":" + dbPort + ";" + "databaseName=" + dbName;
		con = DriverManager.getConnection(connString, dbUser, dbPassword);

		if (con != null) {
			System.out.println("Connected with Database");
		} else {
			System.out.println("Not able to Connect with Database");
		}
		return con;
	}

	private ResultSet getResultSet(String query) {

		if ((query == null) || (query.equalsIgnoreCase(""))) {
			System.out.println("No Query is available");
			return null;
		}

		try {

			s = connectDatabase().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			System.out.println("SQL Query used is: " + query);
			rs = s.executeQuery(query);

			if (rs == null) {
				System.out.println("Query-> returned with null values");
			}
		} catch (Exception e) {
			System.out.println("Query-> Due to Syntax error, Query :" + query + "has been failed with Exception: " + e);
			e.printStackTrace();
		}
		System.out.println(rs);
		return rs;
	}

	public String getValueFromDB(String query, String column) throws Exception {

		rs = getResultSet(query);
		rs.absolute(2);
		dbValue = rs.getString(column).toString();
		con.close();
		// System.out.println(dbValue);
		return dbValue;

	}

	public String getValueFromDB(String query, String column, Integer rowNum) throws Exception

	{
		rs = getResultSet(query);
		rs.absolute(rowNum);

		dbValue = rs.getString(column).toString();

		con.close();
		System.out.println(dbValue);
		return dbValue;

	}

	public HashMap<String, String> getCompleteRowFromDB(String query, String columns) throws Exception

	{
		Map<String, String> dbMap = new HashMap<String, String>();
		rs = getResultSet(query);
		rs.absolute(1);

		String[] columnNames = columns.split(",");

		for (String tColumn : columnNames) {

			dbMap.put(tColumn, rs.getString(tColumn).toString());

		}

		con.close();
		System.out.println(dbMap);
		return (HashMap<String, String>) dbMap;

	}

	public HashMap<String, String> getCompleteRowFromDB(String query, String columns, int rowNum) throws Exception

	{
		Map<String, String> dbMap = new HashMap<String, String>();

		rs = getResultSet(query);
		rs.absolute(rowNum);

		String[] columnNames = columns.split(",");

		for (String tColumn : columnNames) {

			dbMap.put(tColumn, rs.getString(tColumn).toString());

		}

		con.close();
		System.out.println(dbMap);
		return (HashMap<String, String>) dbMap;

	}

	public static void main(String[] args) throws Exception {
		DBHelper ab = new DBHelper();
		ab.connectDatabase();
		// ab.getResultSet("SELECT * from CPIP_Data");
		// ab.getValueFromDB("SELECT * from CPIP_Data", "User_name",1);
		ab.getCompleteRowFromDB("SELECT * from CPIP_Data", "User_Name,url", 2);
		// ab.getTableData("SELECT * from CPIP_Data","User_Name,url");
	}

}
