package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Course;
import model.StuCourse;



import util.jdbcUtil;

public class CourseDao {
	public List<Course> findAllCourse() {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<Course> list1 = new ArrayList<Course>();
		try{
			conn=jdbcUtil.getConnection();
			String sql="select * from course";		
			pstmt=conn.prepareStatement(sql);						
			rs=pstmt.executeQuery();
	
			while(rs.next()){
				Course course=new Course();
				course.setCourseName(rs.getString(1));
				course.setTeacher(rs.getString(2));
				course.setCourseTime(rs.getString(3));
				course.setCourseNO(rs.getString(4));
				course.setCredit(rs.getString(5));
				list1.add(course);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			jdbcUtil.close(rs, pstmt, conn);
		}
		return list1;
	}
	
	public List<StuCourse> findAllStuCourse() {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<StuCourse> list2 = new ArrayList<StuCourse>();
		try{
			conn=jdbcUtil.getConnection();
			String sql="select * from stucourse";		
			pstmt=conn.prepareStatement(sql);						
			rs=pstmt.executeQuery();
	
			while(rs.next()){
				StuCourse stuCourse=new StuCourse();
				stuCourse.setCourseName(rs.getString(1));
				stuCourse.setTeacher(rs.getString(2));
				stuCourse.setCourseTime(rs.getString(3));
				stuCourse.setCourseNO(rs.getString(4));
				stuCourse.setCredit(rs.getString(5));				
				list2.add(stuCourse);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			jdbcUtil.close(rs, pstmt, conn);
		}
		return list2;
	}
	public void addCourse(String courseNO){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="INSERT INTO stuCourse SELECT courseName,teacher,courseTime,courseNO,credit FROM course WHERE courseNO=?";	
		try{
			conn=jdbcUtil.getConnection();
			pstmt=conn.prepareStatement(sql);	
			pstmt.setString(1,courseNO);
			pstmt.executeUpdate();
	
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			jdbcUtil.close(rs, pstmt, conn);
		}
		
	}
	
}



