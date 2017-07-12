package edu.webapde.dto;

public class GradingSystem {
	public int idnum;
	public String course;
	public String type;
	public float percentage;
	
	public GradingSystem(){}
	
	public GradingSystem(int idnum, String course, String type, float percentage){
		super();
		this.idnum = idnum;
		this.course = course;
		this.type = type;
		this.percentage = percentage;
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

	public float getPercentage() {
		return percentage;
	}

	public void setPercentage(float percentage) {
		this.percentage = percentage;
	}
	

}
