package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import sqlConnection.ConnectionProvider;

public class VoterDao {

	
public String voterLogin(VoterBean bean) {
		
		String emailString=bean.getEmail();
		String passString=bean.getPass();
		
		Connection connection=ConnectionProvider.getConnection();
		System.out.println(connection);
		
		try {
			PreparedStatement preparedStatement=connection.prepareStatement("select *from voter where email=?");
			
			preparedStatement.setString(1,emailString);
			ResultSet rs=preparedStatement.executeQuery();
			if(rs.next()) {
			String pass=rs.getString("password");
			System.out.println(pass);
			if(pass.equals(passString)) {
				return "success";
			}
			else {
				return "fail";
			}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "fail";
	}
}
