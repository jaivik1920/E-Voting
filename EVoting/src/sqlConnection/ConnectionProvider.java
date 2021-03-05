package sqlConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class ConnectionProvider {
	
	static Connection con=null;
	
	private ConnectionProvider(){
		
	}
	

public static Connection getConnection() {
	
	if(con==null){
	try {
		Class.forName(ConnectionDetails.dbDriver); 
		con=DriverManager.getConnection(
				ConnectionDetails.url,ConnectionDetails.user,ConnectionDetails.pass);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
	return con;
	}
	return con;
	
}

}
