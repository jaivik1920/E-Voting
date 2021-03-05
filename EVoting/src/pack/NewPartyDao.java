package pack;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import sqlConnection.ConnectionProvider;

public class NewPartyDao {
	
	
	public String newpartyLogin(NewPartyBean bean) throws FileNotFoundException {
		
		String emailString=bean.getEmail();
		String passString=bean.getPass();
		String nameString=bean.getName();
		String pnameString=bean.getPname();
		String signString=bean.getSign();
		
		Connection connection=ConnectionProvider.getConnection();
		System.out.println(connection);
		
		try {
			PreparedStatement preparedStatement=connection.prepareStatement("insert into party (email,name,partyname,password,status,sign) values (?,?,?,?,?,?)");
			
			preparedStatement.setString(1,emailString);
			preparedStatement.setString(2,nameString);
			preparedStatement.setString(3,pnameString);
			preparedStatement.setString(4,passString);
			preparedStatement.setString(5,"-");
			
			String s="D:\\advjava\\HelloJsp";
			s=s+"\\"+signString;
			System.out.println(s);
			File file=new File(s);
			FileInputStream fileInputStream=new FileInputStream(file);
			preparedStatement.setBlob(6,fileInputStream);
			System.out.println(fileInputStream);
			int result=preparedStatement.executeUpdate();
			if(result>0) {
				return "success";
			}
			else {
				return "fail";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		
		
		return "fail";
	}

}
