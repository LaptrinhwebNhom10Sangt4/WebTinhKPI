package server;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import server.DB;

public class Datasource {
	private Connection con;
	public Datasource(){
		DB db = new DB();
		this.con = db.connection;
	}
	public ResultSet getDataObject(String source, String columns){
		ResultSet object = null;
		String sql = "select " + columns + " from " + source;
		object = this.execQuery(sql);
		return object;
	}
	
	public ResultSet getDataObject(String source, String columns, String filter){
		ResultSet object = null;
		String sql = "select " + columns + " from " + source + " where " + filter;
		object = this.execQuery(sql);
		return object;
	}
	
	private ResultSet execQuery(String sql){
		PreparedStatement ps;
		ResultSet rs = null;
		try {
			ps = this.con.prepareStatement(sql);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
}
