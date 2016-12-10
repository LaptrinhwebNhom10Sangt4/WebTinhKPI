package DataLoad;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import server.Datasource;

public class ChiTietCv {
	ResultSet rs = null;
	ResultSet rs1 = null;
	String filter = new String();
	public ChiTietCv(String email) {
		filter = "email ='" + email + "' and dscvct.MaCvct = MaCtcv and cvchitiet.MaCvct = dscvct.MaCvct";
	}

	private void getData() {
		Datasource ds = new Datasource();
		String source = "dscvct,tientrinhcv,cvchitiet ";
		String columns = "MaCV,MaCtcv,TenCvct,done ";
		rs = ds.getDataObject(source, columns, filter);
		rs1 = ds.getDataObject(source, columns, filter);

	}
	private void getData1() {
		Datasource ds = new Datasource();
		String source = " dscvct,cvchitiet ";
		String columns = "MaCV,dscvct.MaCvct,TenCvct";
		String fil = "cvchitiet.MaCvct = dscvct.MaCvct group by dscvct.MaCvct";
		rs = ds.getDataObject(source, columns, fil);
		rs1 = ds.getDataObject(source, columns, fil);

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
	public int CountRow1() {
		getData1();
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
	public String[][] getform1() {
		getData1();
		String[][] values = null;	
		ResultSetMetaData resultSetMetaData;
		try {
			resultSetMetaData = rs.getMetaData();
			int columnCount = resultSetMetaData.getColumnCount();
			//values = new Object[columnCount];
			int rowcount = CountRow1();
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
