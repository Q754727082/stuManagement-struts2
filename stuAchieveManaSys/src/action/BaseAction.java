package action;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements RequestAware,SessionAware,ApplicationAware{
	protected Map<String,Object> requestMap;
	protected Map<String,Object> sessionMap;
	protected Map<String,Object> contextMap;
	 
	public void setRequest(Map<String, Object> request) {
		this.requestMap=request;
	}

	public void setSession(Map<String, Object> session) {
		this.sessionMap=session;		
	}

	public void setApplication(Map<String, Object> application) {
		this.contextMap=application;
	}
	
}
