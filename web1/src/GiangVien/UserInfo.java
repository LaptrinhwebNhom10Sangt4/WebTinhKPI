package GiangVien;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import server.Datasource;

public class UserInfo {
	public Object[] getUserInfo(String email){
		Datasource ds = new Datasource();
		
		//DefaultTableModel  model = null;
		Object[] values = null;
		ResultSet rs = null;
		String source = "userinfo";
		String columns = "*";
		String filter = "email = '" + email + "'";
		rs = ds.getDataObject(source, columns, filter);
		int size = 0;
		try {
		    rs.last();
		    size = rs.getRow();
		    rs.beforeFirst();
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		ResultSetMetaData resultSetMetaData;
		try {
			resultSetMetaData = rs.getMetaData();
			int columnCount = resultSetMetaData.getColumnCount()*size;
			values = new Object[columnCount];
			while (rs.next()) {
			    for (int i = 1; i <= columnCount; i++) {
			    	values[i - 1] = rs.getObject(i);
			    }
			}    
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return values;
	}
}
