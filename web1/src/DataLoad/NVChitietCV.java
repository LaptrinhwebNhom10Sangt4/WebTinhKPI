package DataLoad;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import server.Datasource;

public class NVChitietCV {
	ResultSet rs = null;
	ResultSet rs1 = null;
	String filter = new String();
	public NVChitietCV(String MaCV)
	{
		filter = "dscvct.MaCvct = MaCtcv and MaCV = '"+MaCV+"' and cvchitiet.MaCvct = dscvct.MaCvct ";
	}
	public void getData()
	{
		Datasource ds = new Datasource();
		String source = "tientrinhcv,dscvct,cvchitiet";
		String columns = "email,TenCvct,done";
		rs = ds.getDataObject(source, columns,filter);
		rs1 = ds.getDataObject(source, columns, filter);
	}
	public int CountRow() {
		getData();
		int count = 0;
		try {
			while (rs.next()) {
				count++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
	public String[][] getform() {
		getData();
		String[][] values = null;	
		ResultSetMetaData resultSetMetaData;
		try {
			resultSetMetaData = rs.getMetaData();
			int columnCount = resultSetMetaData.getColumnCount();
			//values = new Object[columnCount];
			int rowcount = CountRow();
			values = new String[rowcount][columnCount];
			int i = 0;
			while (rs1.next()) {
			    for (int j = 1; j <= columnCount; j++) {
			    	values[i][j-1]=rs1.getObject(j).toString();
			    }
			    i++;
			}    
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return values;
	}
}
