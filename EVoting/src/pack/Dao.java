package pack;

import javax.servlet.RequestDispatcher;

public class Dao {

	
	public String save(AdminBean b){
		String email=b.getEmail();
		String pass=b.getPass();
		
		if(email.equals("admin@gmail.com") && pass.equals("admin")){
			return "success";
		}
		else if(email.equals("partyadmin@gmail.com") && pass.equals("admin")){
			return "success2";
		}
		else if(email.equals("candidateadmin@gmail.com") && pass.equals("admin")){
			return "success3";
		}
		else if(email.equals("voteadmin@gmail.com") && pass.equals("admin")){
			return "success4";
		}
		else{
			return "fail";
		}
	}
	
}
