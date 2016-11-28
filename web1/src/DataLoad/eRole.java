package DataLoad;

import java.sql.ResultSet;
import java.sql.SQLException;

import server.Datasource;

public class eRole {
	String filter = new String();
	ResultSet rs = null;
	public int getERole(String email)
	{
		int Role = -1;
		filter = "email = " +email;
		getData();
		try {
			Role = (int) rs.getObject(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Role;
	}
	private void getData()
	{
		Datasource ds = new Datasource();
		String source = "userinfo,users";
		String columns = "distinct mscb, name,users.email";
		rs = ds.getDataObject(source, columns,filter);
	}
}
