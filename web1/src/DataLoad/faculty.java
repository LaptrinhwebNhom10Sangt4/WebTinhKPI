package DataLoad;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import server.Datasource;

public class faculty {
	ResultSet rs = null;
	String filter = new String();
	public static String MaKhoa;
	public static String TenKhoa;
	public faculty(String email)
	{
		filter = "users.FACULTY = faculty.MaKhoa and email = '"+email+"'";
	}
	private void getData()
	{
		Datasource ds = new Datasource();
		String source = "faculty,users";
		String columns = "MaKhoa,TenKhoa";
		rs = ds.getDataObject(source, columns,filter);
	}
	public ArrayList<Object> getForm(){
		getData();
		ArrayList<Object> values = null;	
		ResultSetMetaData resultSetMetaData;
		try {
			resultSetMetaData = rs.getMetaData();
			int columnCount = resultSetMetaData.getColumnCount();
			//values = new Object[columnCount];
			values = new ArrayList<Object>();
			while (rs.next()) {
			    for (int i = 1; i <= columnCount; i++) {
			    	values.add(rs.getObject(i));
			    }
			}    
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return values;
	}
}
