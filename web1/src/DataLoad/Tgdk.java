package DataLoad;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import server.Datasource;

public class Tgdk {
	ResultSet rs = null;
	private void getData()
	{
		Datasource ds = new Datasource();
		String source = "thoihan";
		String columns = "NgayBD,NgayKT";
		rs = ds.getDataObject(source, columns);
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
