package model;

public class MemberRegister {
	private String uname,email,password;
	
	public MemberRegister() {
		super();
	}

	public MemberRegister(String uname, String email, String password) {
		super();
		this.uname = uname;
		this.email = email;
		this.password = password;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}