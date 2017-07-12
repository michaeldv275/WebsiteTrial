package edu.webapde.dto;

public class Course {
	public int idnum;
	private String course;
	private String description;
	
	public Course(){}

	public Course(int idnum, String course, String description){
		super();
		this.idnum = idnum;
		this.course = course;
		this.description = description;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
