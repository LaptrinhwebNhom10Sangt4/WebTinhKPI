package server;


import server.DB;


import com.mysql.jdbc.CallableStatement;

public class ConnectAndCheck {
	public static int checkUser(String email, String pass) {
		int st = -1;
		try {
			DB db = new DB();
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
