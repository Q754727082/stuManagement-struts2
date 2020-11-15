package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Grade;

import util.jdbcUtil;

public class GradeDao {

	public void deleteGrade(int id) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try{
			conn=jdbcUtil.getConnection();
			String sql="delete from grade where id=?";		
			pstmt=conn.prepareStatement(sql);	
			pstmt.setInt(1,id);
			pstmt.executeUpdate();	
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			jdbcUtil.close(rs, pstmt, conn);
		}
	
	}

	public void modifyGrade(Grade grade){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="update grade set stuName=?,math=?,chinese=?,english=?,physics=?,biology=?,chemistry=? where id=?";
		try {
			conn=jdbcUtil.getConnection();
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1,grade.getStuName());
			pstmt.setInt(2,grade.getMath());
			pstmt.setInt(3,grade.getChinese());
			pstmt.setInt(4, grade.getEnglish());
			pstmt.setInt(5, grade.getPhysics());
			pstmt.setInt(6, grade.getBiology());
			pstmt.setInt(7, grade.getChemistry());
			pstmt.setInt(8,grade.getId());
			pstmt.executeUpdate();		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		finally{
			jdbcUtil.close(rs, pstmt, conn);
		}
	}
	
	public void addGrade(Grade grade){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="insert into grade(id,stuName,math,chinese,english,physics,biology,chemistry)values(?,?,?,?,?,?,?,?)";
		try {
			conn=jdbcUtil.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,grade.getId());
			pstmt.setString(2,grade.getStuName());
			pstmt.setInt(3,grade.getMath());
			pstmt.setInt(4,grade.getChinese());
			pstmt.setInt(5, grade.getEnglish());
			pstmt.setInt(6, grade.getPhysics());
			pstmt.setInt(7, grade.getBiology());
			pstmt.setInt(8, grade.getChemistry());
			pstmt.executeUpdate();			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		finally{
			jdbcUtil.close(rs, pstmt, conn);
		}
	}
	
	public List<Grade> findGrade(int id) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<Grade> list = new ArrayList<Grade>();
		try{
			conn=jdbcUtil.getConnection();
			String sql="select * from grade where id=?";		
			pstmt=conn.prepareStatement(sql);	
			pstmt.setInt(1,id);
			rs=pstmt.executeQuery();
	
			while(rs.next()){
				Grade grade=new Grade();
				grade.setId(rs.getInt(1));
				grade.setStuName(rs.getString(2));
				grade.setMath(rs.getInt(3));
				grade.setChinese(rs.getInt(4));
				grade.setEnglish(rs.getInt(5));
				grade.setPhysics(rs.getInt(6));
				grade.setBiology(rs.getInt(7));
				grade.setChemistry(rs.getInt(8));
				list.add(grade);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			jdbcUtil.close(rs, pstmt, conn);
		}
		return list;
	}


	
	public List<Grade> findAllGrade() {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<Grade> list = new ArrayList<Grade>();
		try{
			conn=jdbcUtil.getConnection();
			String sql="select * from grade";		
			pstmt=conn.prepareStatement(sql);						
			rs=pstmt.executeQuery();
	
			while(rs.next()){
				Grade grade=new Grade();
				grade.setId(rs.getInt(1));
				grade.setStuName(rs.getString(2));
				grade.setMath(rs.getInt(3));
				grade.setChinese(rs.getInt(4));
				grade.setEnglish(rs.getInt(5));
				grade.setPhysics(rs.getInt(6));
				grade.setBiology(rs.getInt(7));
				grade.setChemistry(rs.getInt(8));
				list.add(grade);
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
