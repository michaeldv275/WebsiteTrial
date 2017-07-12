package edu.webapde.dto.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.webapde.db.DBConnection;
import edu.webapde.dto.Course;

public class CourseRetriever {
public CourseRetriever(){}
	
	public Course getCourse(int idnum, String course){
		// SQL: SELECT * FROM COURSE WHERE IDCOURSE =1;
				Course c = new Course();
				Connection conn = DBConnection.getConnection();
				try {
					PreparedStatement pstmt =
					conn.prepareStatement("SELECT * FROM course WHERE idnum = ? and course = ?");
					pstmt.setInt(1, idnum);
					pstmt.setString(2, course);
					ResultSet rs = pstmt.executeQuery();
					
					if(rs.next()){
						c.setIdnum(rs.getInt("idnum"));
						c.setCourse(rs.getString("course"));
						c.setDescription(rs.getString("description"));
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return c;
	}
	
	public ArrayList<Course> getAllCourses(){
		// SQL : SELECT * FROM course
		Connection conn = DBConnection.getConnection();
		ArrayList<Course> courseList = new ArrayList<Course>();
		try {
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM courses");
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				Course c = new Course();
				c.setIdnum(rs.getInt("idnum"));
				c.setCourse(rs.getString("course"));
				c.setDescription(rs.getString("description"));
				courseList.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return courseList;
	}
	
	public void addCourse(Course c){
		String sql = "INSERT INTO courses (idnum, course, description) values (?,?,?)";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  c.getIdnum());
			pstmt.setString(2,  c.getCourse());
			pstmt.setString(3,  c.getDescription());
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
