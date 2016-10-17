package DataLoad;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import server.Datasource;

public class UserInfo {
	public ArrayList<Object> getUserInfo(String email){
		Datasource ds = new Datasource();
		
		//DefaultTableModel  model = null;
		ArrayList<Object> values = null;
		ResultSet rs = null;
		String source = "userinfo";
		String columns = "*";
		String filter = "email = '" + email + "'";
		rs = ds.getDataObject(source, columns,filter);
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
