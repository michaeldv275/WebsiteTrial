package edu.webapde.dto.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.webapde.db.DBConnection;
import edu.webapde.dto.User;

public class UserRetriever {
	public UserRetriever(){}
	
	public User getUser(int idnum){
		// SQL: SELECT * FROM COURSE WHERE IDCOURSE =1;
				User u = new User();
				Connection conn = DBConnection.getConnection();
				try {
					PreparedStatement pstmt =
					conn.prepareStatement("SELECT * FROM users WHERE idnum = ?");
					pstmt.setInt(1, idnum);
					ResultSet rs = pstmt.executeQuery();
					
					if(rs.next()){
						u.setFirstname(rs.getString("firstname"));
						u.setLastname(rs.getString("lastname"));
						u.setEmail(rs.getString("email"));
						u.setIdnum(rs.getInt("idnum"));
						u.setPassword(rs.getString("password"));
						u.setDOBMonth(rs.getString("DOBMonth"));
						u.setDOBDay(rs.getInt("DOBDay"));
						u.setDOBYear(rs.getInt("DOBYear"));
						u.setGender(rs.getString("gender"));
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return u;
	}
	
	public ArrayList<User> getAllUsers(){
		// SQL : SELECT * FROM course
		Connection conn = DBConnection.getConnection();
		ArrayList<User> userList = new ArrayList<User>();
		try {
			PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM users");
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()){
				User u = new User();
				u.setFirstname(rs.getString("firstname"));
				u.setLastname(rs.getString("lastname"));
				u.setEmail(rs.getString("email"));
				u.setIdnum(rs.getInt("idnum"));
				u.setPassword(rs.getString("password"));
				u.setDOBMonth(rs.getString("DOBMonth"));
				u.setDOBDay(rs.getInt("DOBDay"));
				u.setDOBYear(rs.getInt("DOBYear"));
				u.setGender(rs.getString("gender"));
				userList.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userList;
	}
	
	public void addUser(User u){
		String sql = "INSERT INTO users (firstname, lastname, email, idnum,  password, DOBMonth, DOBDay, DOBYear, gender) values (?,?,?,?,?,?,?,?,?)";
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  u.getFirstname());
			pstmt.setString(2,  u.getLastname());
			pstmt.setString(3,  u.getEmail());
			pstmt.setInt(4,  u.getIdnum());
			pstmt.setString(5,  u.getPassword());
			pstmt.setString(6,  u.getDOBMonth());
			pstmt.setInt(7,  u.getDOBDay());
			pstmt.setInt(8,  u.getDOBYear());
			pstmt.setString(9,  u.getGender());
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

