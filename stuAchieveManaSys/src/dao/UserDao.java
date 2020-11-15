package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.jdbcUtil;

import model.User;

public class UserDao {

	public	User login(String name,String password) throws Exception {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		User user=new User();
		try{
			conn=jdbcUtil.getConnection();
			String sql="select * from user where name=? and password=?";		
			pstmt=conn.prepareStatement(sql);	
			pstmt.setString(1,name);
			pstmt.setString(2,password);
			rs=pstmt.executeQuery();
	
			while(rs.next()){
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setPhone(rs.getString(4));
				user.setEmail(rs.getString(5));
				return user;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			jdbcUtil.close(rs, pstmt, conn);
		}
		return null;
	}
	
	public void register(User user){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="insert into user(name,password,phone,email)values(?,?,?,?)";
		try {
			conn=jdbcUtil.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,user.getName());
			pstmt.setString(2,user.getPassword());
			pstmt.setString(3,user.getPhone());
			pstmt.setString(4, user.getEmail());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		finally{
			jdbcUtil.close(rs, pstmt, conn);
	}
	
	}
	
	public List<User> findAllUser() {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<User> list = new ArrayList<User>();
		try{
			conn=jdbcUtil.getConnection();
			String sql="select * from user";		
			pstmt=conn.prepareStatement(sql);						
			rs=pstmt.executeQuery();
	
			while(rs.next()){
				User user=new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setPhone(rs.getString(4));
				user.setEmail(rs.getString(5));
				list.add(user);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			jdbcUtil.close(rs, pstmt, conn);
		}
		return list;
	}
}
