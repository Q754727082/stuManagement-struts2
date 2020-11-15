package interceptor;

import java.util.Map;

import model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionProxy;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class UserLoginInterceptor implements Interceptor {

	public void destroy() {
		

	}

	public void init() {
		

	}

	public String intercept(ActionInvocation invocation) throws Exception {
		ActionProxy actionProxy = invocation.getProxy();
		String methodName = actionProxy.getMethod();
		if("login".equals(methodName) || "register".equals(methodName)){
			return invocation.invoke();
		}
		
		ActionContext ac=ActionContext.getContext();
		Map<String,Object> sessionMap=ac.getSession();
		User user=(User) sessionMap.get("user");
		if(user==null){
			return "login";
		}
		else{
			return invocation.invoke();
		}
	}

}
