package server;


import server.DB;


import com.mysql.jdbc.CallableStatement;

public class ConnectAndCheck {
	public static int checkUser(String email, String pass) {
		int st = -1;
		try {
			DB db = new DB();
//			
//			Datasource ds = new Datasource();
//			String source = "users";
//			String columns = "*";
//			String filter = "EMAIL = '" + email + "' AND PASS = '" + pass + "'";
//			ResultSet rs = ds.getDataObject(source, columns, filter);
//			
//			if (rs.next()) {
//				
//			}
			CallableStatement stmt = (CallableStatement) db.connection.prepareCall("{? = call CHECKUSER(?, ?)}");
			stmt.registerOutParameter(1, java.sql.Types.INTEGER);
			stmt.setString(2, email);
			stmt.setString(3, pass);
			stmt.execute();
			st = stmt.getInt(1);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return st;
	}
}
