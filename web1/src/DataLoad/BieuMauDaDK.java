package DataLoad;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import server.Datasource;

public class BieuMauDaDK {
	ResultSet rs = null;
	String filter = new String();
	public BieuMauDaDK(String email)
	{
		filter = "email = " +"'"+email+"'";
	}
	public void getData()
	{
		Datasource ds = new Datasource();
		String source = "bieumaudadk";
		String columns = "*";
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
	public int size(){
		getData();
		int colCount=0;
		ResultSetMetaData resultSetMetaData;
		try {
			resultSetMetaData = rs.getMetaData();
			 int columnCount = resultSetMetaData.getColumnCount();
			 colCount = columnCount;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return colCount;
		
		
	}
}
