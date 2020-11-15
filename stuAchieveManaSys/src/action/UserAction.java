package action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import util.jdbcUtil;

import model.User;

import dao.UserDao;

public class UserAction extends BaseAction {
	 private UserDao ud = new UserDao();
	 private User user;
	 private List<User> list;
	 
	public UserDao getUs() {
		return ud;
	}
	public void setUs(UserDao us) {
		this.ud = us;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<User> getList() {
		return list;
	}
	public void setList(List<User> list) {
		this.list = list;
	}
	
	public String login() throws Exception{
		user=ud.login(user.getName(),user.getPassword());
		if(user!=null){
			sessionMap.put("user",user);
			return "index";
		}
		else {		
			return "login";
		}
}
	public void login_checkName(){
		  Connection conn = null;
		  PreparedStatement pstmt = null;	 
		  ResultSet rs = null;
		  String result= null;
			
		  String name = ServletActionContext.getRequest().getParameter("name");
		  try {
		   conn = jdbcUtil.getConnection();
		   String sql= "select name from user ";
		
		   pstmt = conn.prepareStatement(sql);
	
		   rs = pstmt.executeQuery(sql);

		   List<String> names = new ArrayList<String>();
	
		   while(rs.next()){
		    names.add(rs.getString(1));
		   }
		   
		   if(names.contains(name)){
		    result = "<font color='green'>用户名正确</font>";
		   }
		   else{
		    result = "<font color='red'>用户名错误</font>";
		   }
		   ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		   ServletActionContext.getResponse().getWriter().write(result);		   		
		   
		  } catch (SQLException e) {
		   
		   e.printStackTrace();
		  } catch (Exception e) {
		   e.printStackTrace();}
		  finally{
		   jdbcUtil.close(rs, pstmt, conn);
		  }
	}
	public void login_checkPassword(){
		  Connection conn = null;
		  PreparedStatement pstmt = null;	 
		  ResultSet rs = null;
		  String result= null;
			
		  String password = ServletActionContext.getRequest().getParameter("password");
		  try {
		   conn = jdbcUtil.getConnection();
		   String sql= "select password from user ";
		
		   pstmt = conn.prepareStatement(sql);
	
		   rs = pstmt.executeQuery(sql);

		   List<String> passwords = new ArrayList<String>();
	
		   while(rs.next()){
		   passwords.add(rs.getString(1));
		   }
		   
		   if(passwords.contains(password)){
		    result = "<font color='green'>密码正确</font>";
		   }
		   else{
		    result = "<font color='red'>密码错误</font>";
		   }
		   ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		   ServletActionContext.getResponse().getWriter().write(result);		   		
		   
		  } catch (SQLException e) {
		   
		   e.printStackTrace();
		  } catch (Exception e) {
		   e.printStackTrace();}
		  finally{
		   jdbcUtil.close(rs, pstmt, conn);
		  }
		
	}
	
	public String register(){	
		  ud.register(user);
		  return "userInfo"; 
		 }
	public void register_check(){
		  Connection conn = null;
		  PreparedStatement pstmt = null;
		  ResultSet rs = null;
		  String result= null;
		  String name = ServletActionContext.getRequest().getParameter("name");
		  try {
		   conn = jdbcUtil.getConnection();
		   String sql= "select name from user ";
		   pstmt = conn.prepareStatement(sql);
		   rs = pstmt.executeQuery(sql);
		   List<String> names = new ArrayList<String>();
		   while(rs.next()){
		    names.add(rs.getString(1));
		   }
		   if(names.contains(name)){
		    result = "<font color='red'>该用户名已经被使用</font>";
		   }else{
		    result = "<font color='yellow'>该用户名可以使用</font>";
		   }
		   ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
		   ServletActionContext.getResponse().getWriter().write(result);
		   
		  } catch (SQLException e) {
		   
		   e.printStackTrace();
		  } catch (Exception e) {
		   e.printStackTrace();}
		  finally{
		   jdbcUtil.close(rs, pstmt, conn);
		  }
		
	}
		
	 public String findAllUser(){
		  
		  list = ud.findAllUser();
		  return "userInfo";
		 }
	 
}
