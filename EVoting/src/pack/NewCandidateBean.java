package pack;

import java.nio.file.FileSystemNotFoundException;

public class NewCandidateBean {
	String email,name,tname,dname,pass,pname,sign;

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

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

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
		System.out.println(tname);
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
		System.out.println(dname);
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
		System.out.println(pass);
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
		System.out.println(pname);
	}
	
	
	
}
