package DataLoad;

import java.sql.ResultSet;
import server.Datasource;


public class update{
	public update(String source,String table,String filter)
	{
		Datasource ds = new Datasource();
		ds.updateDataObject(source, table, filter);	
	}
	
}
