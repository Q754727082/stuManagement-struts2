package action;

import java.util.List;

import model.Grade;



import com.opensymphony.xwork2.ActionSupport;

import dao.GradeDao;



public class GradeAction extends ActionSupport{
	 private GradeDao gd = new GradeDao();
	 private Grade grade;
	 private List<Grade> list;
	 
	public GradeDao getGd() {
		return gd;
	}
	public void setGd(GradeDao gd) {
		this.gd = gd;
	}
	public Grade getGrade() {
		return grade;
	}
	public void setGrade(Grade grade) {
		this.grade = grade;
	}
	public List<Grade> getList() {
		return list;
	}
	public void setList(List<Grade> list) {
		this.list = list;
	}
	
	public String findAllGrade(){
		 
		  list = gd.findAllGrade();
		  return "indexGrade";
		 }
	public String findGrade(){
		
		  list = gd.findGrade(grade.getId());
		  return "indexGrade";
		 }
	 public String addGrade(){
		 gd.addGrade(grade);
		 return "redirectAction";
	 }
	 public String modifyGrade(){
		 gd.modifyGrade(grade);
		 return "redirectAction";
	 }
	 public String deleteGrade(){
			
		  gd.deleteGrade(grade.getId());
		  return "redirectAction";
		 }
}
