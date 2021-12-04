package model;

public class MemberEdit {
	private int id;
	private String firstname;
	private String lastname;
	private String username;
	private String password;
	private String email;
	private String phone;
	private String discription;
	private String createddate;
	private String updatename;
	
	
	public MemberEdit() {
		super();
	}


	public MemberEdit(int id, String firstname, String lastname, String username, String password, String email,
			String phone, String discription, String createddate, String updatename) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.discription = discription;
		this.createddate = createddate;
		this.updatename = updatename;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFirstname() {
		return firstname;
	}


	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}


	public String getLastname() {
		return lastname;
	}


	public void setLastname(String lastname) {
		this.lastname = lastname;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getDiscription() {
		return discription;
	}


	public void setDiscription(String discription) {
		this.discription = discription;
	}


	public String getCreateddate() {
		return createddate;
	}


	public void setCreateddate(String createddate) {
		this.createddate = createddate;
	}


	public String getUpdatename() {
		return updatename;
	}


	public void setUpdatename(String updatename) {
		this.updatename = updatename;
	}
	
	
}
