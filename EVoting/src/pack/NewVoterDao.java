package pack;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import sqlConnection.ConnectionProvider;

public class NewVoterDao {
	
public String newVoterLogin(NewVoterBean bean) throws FileNotFoundException {
		
		String emailString=bean.getEmail();
		String passString=bean.getPass();
		String nameString=bean.getName();
		String dnameString=bean.getDname();
		String tnameString=bean.getTname();
		String cnameString=bean.getCname();
		String signString=bean.getSign();
		
		Connection connection=ConnectionProvider.getConnection();
		System.out.println(connection);
		
		try {
			PreparedStatement preparedStatement=connection.prepareStatement("insert into voter (email,name,cname,sname,dname,password,status,sign) values (?,?,?,?,?,?,?,?)");
			
			preparedStatement.setString(1,emailString);
			preparedStatement.setString(2,nameString);
			preparedStatement.setString(3,cnameString);
			preparedStatement.setString(4,dnameString);
			preparedStatement.setString(5,tnameString);
			preparedStatement.setString(6, passString);
			preparedStatement.setString(7, "-");
			
			String s="D:\\advjava\\HelloJsp";
			s=s+"\\"+signString;
			System.out.println(s);
			File file=new File(s);
			FileInputStream fileInputStream=new FileInputStream(file);
			preparedStatement.setBlob(8,fileInputStream);
			int result=preparedStatement.executeUpdate();
			if(result>0) {
				return "success";
			}
			else {
				return "fail";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "fail";
	}



}
