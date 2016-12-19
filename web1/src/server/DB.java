package server;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
	public Connection connection;
	public DB(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		try {
			// loading drivers for mysql		
			//this.connection = DriverManager.getConnection("jdbc:mysql://localhost/kpidatabase", "root", "huyhoang");
			this.connection = DriverManager.getConnection("jdbc:mysql://mysql56928-websitekpi.whelastic.net/kpidatabase?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8", "root", "Ts5VCVIK5d");
			//mysql56856-longtinh.whelastic.net/"+dbname+"?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
