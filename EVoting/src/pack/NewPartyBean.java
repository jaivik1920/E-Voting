package pack;

import java.nio.file.Path;
import java.nio.file.Paths;

public class NewPartyBean {
	
	String email,name,pname,pass,sign;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
		System.out.println(email);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
		System.out.println(name);
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
		System.out.println(pname);
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
		System.out.println(pass);
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
		System.out.println(sign);

	}
	
	
}
