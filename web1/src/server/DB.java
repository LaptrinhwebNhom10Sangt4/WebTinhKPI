package server;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
	public Connection connection;
	public DB(){
		//Class.forName("com.mysql.jdbc.Driver");
		try {
			// loading drivers for mysql
			this.connection = DriverManager.getConnection("jdbc:mysql://localhost/kpidatabase", "root", "huyhoang");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
