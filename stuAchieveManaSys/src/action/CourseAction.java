package action;

import java.util.List;

import model.Course;
import model.StuCourse;



import com.opensymphony.xwork2.ActionSupport;

import dao.CourseDao;


public class CourseAction extends ActionSupport{
	private CourseDao cd = new CourseDao();
	 private Course course;
	 private StuCourse stuCourse;
	 private List<Course> list1;
	 private List<StuCourse> list2;
	 
	public CourseDao getCd() {
		return cd;
	}
	public void setCd(CourseDao cd) {
		this.cd = cd;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	
	public StuCourse getStuCourse() {
		return stuCourse;
	}
	public void setStuCourse(StuCourse stuCourse) {
		this.stuCourse = stuCourse;
	}
	public List<Course> getList1() {
		return list1;
	}
	public void setList1(List<Course> list1) {
		this.list1 = list1;
	}
	public List<StuCourse> getList2() {
		return list2;
	}
	public void setList2(List<StuCourse> list2) {
		this.list2 = list2;
	}
	public String findAllCourse(){
		 
		  list1 = cd.findAllCourse();
		  return "courseShow";
		 }
	public String findAllStuCourse(){
		 
		  list2 = cd.findAllStuCourse();
		  return "stuCourse";
		 }
	public String addCourse(){
		 
		   cd.addCourse(course.getCourseNO());
		  return "redirectAction";
		 }
}
