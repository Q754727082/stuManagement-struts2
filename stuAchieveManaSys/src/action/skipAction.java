package action;

import com.opensymphony.xwork2.ActionSupport;

public class skipAction extends ActionSupport{
	public String skip1(){
		return "beautyShow";
	}
	public String skip2(){
		return "addCourse";
	}
	public String skip3(){
		return "indexGrade";
	}
	public String skip4(){
		return "addGrade";
	}
	public String skip5(){
		return "modifyGrade";
	}
}
