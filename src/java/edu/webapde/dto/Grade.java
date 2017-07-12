package edu.webapde.dto;

public class Grade {
	public int idnum;
	public String course;
	public String type;
	public float grade;
	
	public Grade(){}
	
	public Grade(int idnum, String course, String type, float grade){
		super();
		this.idnum = idnum;
		this.course = course;
		this.type = type;
		this.grade = grade;
	}

	public int getIdnum() {
		return idnum;
	}

	public void setIdnum(int idnum) {
		this.idnum = idnum;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public float getGrade() {
		return grade;
	}

	public void setGrade(float grade) {
		this.grade = grade;
	}
	
	

}
