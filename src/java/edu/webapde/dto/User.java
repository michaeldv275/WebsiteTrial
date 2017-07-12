package edu.webapde.dto;

public class User {
	private String firstname;
	private String lastname;
	private String email;
	private int idnum;
	private String password;
	private String DOBMonth;
	private int DOBDay;
	private int DOBYear;
	private String gender;
	
	public User(){}
	
	public User(String firstname, String lastname, String email , int idnum, String password, String DOBMonth,int DOBDay, int DOBYear, String gender ) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.idnum = idnum;
		this.password = password;
		this.DOBMonth = DOBMonth;
		this.DOBYear = DOBYear;
		this.gender = gender;
		
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getIdnum() {
		return idnum;
	}

	public void setIdnum(int idnum) {
		this.idnum = idnum;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDOBMonth() {
		return DOBMonth;
	}

	public void setDOBMonth(String dOBMonth) {
		DOBMonth = dOBMonth;
	}

	public int getDOBDay() {
		return DOBDay;
	}

	public void setDOBDay(int dOBDay) {
		DOBDay = dOBDay;
	}

	public int getDOBYear() {
		return DOBYear;
	}

	public void setDOBYear(int dOBYear) {
		DOBYear = dOBYear;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	

}
