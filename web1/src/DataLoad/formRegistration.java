package DataLoad;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import server.Datasource;


public class formRegistration {
	ResultSet rs = null;
	String filter = new String();
	String filter1 = new String();
	public formRegistration(String fil,String MaKhoa){
		filter = " regform.MABIEUMAU not in (select MABIEUMAU from  bieumaudadk where email = '"+fil+"') and MaKhoa ='"+MaKhoa+"'";
		filter1 = " email = '"+fil+"' and bieumaudadk.MABIEUMAU = regform.MABIEUMAU";
	}
	public formRegistration(){
	}
	public void getData()
	{
		Datasource ds = new Datasource();
		String source = "regform";
		String columns = "*";
		//String filter = "email = '" + role + "'";
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
	
	public void getDataWithFilter()
	{
		Datasource ds = new Datasource();
		String source = "regform ,bieumaudadk";
		String columns = "bieumaudadk.MABIEUMAU,KEHOACH,CHITIETKEHOACH,TYTRONG,CHIDAO,DADUYETDK";
		rs = ds.getDataObject(source, columns, filter1);
	}
	
	public ArrayList<Object> getFormWithFilter(){
		getDataWithFilter();
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
		
		
	}public int size2(){
		getDataWithFilter();
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
