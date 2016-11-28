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
	
	public void updateDataObject(String source, String table, String filter){
		String sql = "update " + table + " set " + source + " where " + filter;
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void	insertDataObject(String table, String source){
		String sql = "insert into " + table + " set " + source;
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void	deleteDataObject(String table, String source){
		String sql = "delete from " + table + " where " + source;
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
