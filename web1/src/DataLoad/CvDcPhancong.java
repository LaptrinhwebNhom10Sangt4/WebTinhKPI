package DataLoad;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import server.Datasource;

public class CvDcPhancong {
	ResultSet rs = null;
	String filter = new String();
	public CvDcPhancong (String email)
	{
		filter = "dscv.MaCV = phancong.MaCV and email = '"+email+"'";
	}
	private void getData()
	{
		Datasource ds = new Datasource();
		String source = "dscv,phancong";
		String columns = "phancong.MaCV,TenCV,NgHD,Ngaybd,Ngaykt,tientrinh";
		rs = ds.getDataObject(source, columns,filter);
	}
	private void getData1()
	{
		Datasource ds = new Datasource();
		String source = "dscv";
		String columns = "*";
		rs = ds.getDataObject(source, columns);
	}
	public ArrayList<Object> getForm(){
		getData();
		ArrayList<Object> values = null;	
		ResultSetMetaData resultSetMetaData;
		try {
			resultSetMetaData = rs.getMetaData();
			int columnCount = resultSetMetaData.getColumnCount();
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
	public ArrayList<Object> getForm1(){
		getData1();
		ArrayList<Object> values = null;	
		ResultSetMetaData resultSetMetaData;
		try {
			resultSetMetaData = rs.getMetaData();
			int columnCount = resultSetMetaData.getColumnCount();
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
			e.printStackTrace();
		}
		return colCount;
	}
	public int size1(){
		getData1();
		int colCount=0;
		ResultSetMetaData resultSetMetaData;
		try {
			resultSetMetaData = rs.getMetaData();
			 int columnCount = resultSetMetaData.getColumnCount();
			 colCount = columnCount;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return colCount;
	}
}
