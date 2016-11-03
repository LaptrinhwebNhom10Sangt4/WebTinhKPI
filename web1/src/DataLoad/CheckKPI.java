package DataLoad;

import com.mysql.jdbc.CallableStatement;

import server.DB;


public class CheckKPI {
	public static int CheckKPImax(int kpi,int mabieumau )
	{
		int st = 0;
		DB db = new DB();
		try{
		CallableStatement stmt = (CallableStatement) db.connection.prepareCall("{? = call CHECKKPIMAX(?, ?)}");
		stmt.registerOutParameter(1, java.sql.Types.INTEGER);
		stmt.setInt(2, kpi);
		stmt.setInt(3, mabieumau);
		stmt.execute();
		st = stmt.getInt(1);
		return st;
		}catch(Exception e){
			e.printStackTrace();
		}
		return st;
	}
}
