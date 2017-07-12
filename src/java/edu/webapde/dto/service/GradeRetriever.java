package edu.webapde.dto.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.webapde.db.DBConnection;
import edu.webapde.dto.Grade;

public class GradeRetriever {
public GradeRetriever(){}
	
	public Grade getGrade(int idnum, String course){
		// SQL: SELECT * FROM COURSE WHERE IDCOURSE =1;
				Grade g = new Grade();
				Connection conn = DBConnection.getConnection();
				try {
					PreparedStatement pstmt =
					conn.prepareStatement("SELECT * FROM grades WHERE idnum = ? and course = ?");
					pstmt.setInt(1, idnum);
					pstmt.setString(2, course);
					ResultSet rs = pstmt.executeQuery();
					
					if(rs.next()){
						g.setIdnum(rs.getInt("idnum"));
						g.setCourse(rs.getString("course"));
						g.setType(rs.getString("type"));
						g.setGrade(rs.getFloat("grade"));
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return g;
	}
	
	public ArrayList<Grade> getAllGrades(){
		// SQL : SELECT * FROM course
		Connection conn = DBConnection.getConnection();
		ArrayList<Grade> gradeList = new ArrayList<Grade>();
		try {
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM grades");
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				Grade g = new Grade();
				g.setIdnum(rs.getInt("idnum"));
				g.setCourse(rs.getString("course"));
				g.setType(rs.getString("type"));
				g.setGrade(rs.getFloat("grade"));
				gradeList.add(g);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gradeList;
	}
	
	public void addGrade(Grade g){
		String sql = "INSERT INTO grades (idnum, course, type, grade) values (?,?,?,?)";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  g.getIdnum());
			pstmt.setString(2,  g.getCourse());
			pstmt.setString(3,  g.getType());
			pstmt.setFloat(4,  g.getGrade());
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
