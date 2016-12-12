package DataLoad;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import server.Datasource;

public class Userinfos {
	ResultSet rs = null;
	String email ="";
	public  Userinfos(String email){
		this.email = email;
	}
	
	private void getUser()
	{
		Datasource ds = new Datasource();
		String source = "users";
		String columns = "*";
		String filter = "email = '"+email+"'";
		rs = ds.getDataObject(source, columns,filter);
	}
	public ArrayList<Object> getFormUser(){
		getUser();
		ArrayList<Object> values = getFormData();
		return values;
	}
	public int sizeUser(){
		getUser();
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
	private ArrayList<Object> getFormData(){
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
