package edu.webapde.dto.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.webapde.db.DBConnection;
import edu.webapde.dto.GradingSystem;

public class GradingSystemRetriever {
public GradingSystemRetriever(){}
	
	public GradingSystem getGradingSystem(int idnum, String course){
		// SQL: SELECT * FROM COURSE WHERE IDCOURSE =1;
				GradingSystem s = new GradingSystem();
				Connection conn = DBConnection.getConnection();
				try {
					PreparedStatement pstmt =
					conn.prepareStatement("SELECT * FROM gradingsystem WHERE idnum = ? and course = ?");
					pstmt.setInt(1, idnum);
					pstmt.setString(2, course);
					ResultSet rs = pstmt.executeQuery();
					
					if(rs.next()){
						s.setIdnum(rs.getInt("idnum"));
						s.setCourse(rs.getString("course"));
						s.setType(rs.getString("type"));
						s.setPercentage(rs.getFloat("percentage"));
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return s;
	}
	
	public ArrayList<GradingSystem> getAllGradingSystems(){
		// SQL : SELECT * FROM course
		Connection conn = DBConnection.getConnection();
		ArrayList<GradingSystem> gradingsystemList = new ArrayList<GradingSystem>();
		try {
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM gradingsystem");
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				GradingSystem s = new GradingSystem();
				s.setIdnum(rs.getInt("idnum"));
				s.setCourse(rs.getString("course"));
				s.setType(rs.getString("type"));
				s.setPercentage(rs.getFloat("percentage"));
				gradingsystemList.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gradingsystemList;
	}
	
	public void addGradingSystem(GradingSystem s){
		String sql = "INSERT INTO gradingsystem (idnum, course, type, percentage) values (?,?,?,?)";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  s.getIdnum());
			pstmt.setString(2,  s.getCourse());
			pstmt.setString(3,  s.getType());
			pstmt.setFloat(4,  s.getPercentage());
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
