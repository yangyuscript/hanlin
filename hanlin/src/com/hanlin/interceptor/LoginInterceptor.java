package com.hanlin.interceptor;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.hanlin.domain.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {
	private static final long serialVersionUID = 1L;
	private String sessionName;
	 private String excludeName;
	 private List<String>  list;	 
	 public String getSessionName() {
		return sessionName;
	}
	public void setSessionName(String sessionName) {
		this.sessionName = sessionName;
	}
	public String getExcludeName() {
		return excludeName;
	}
	public void setExcludeName(String excludeName) {
		this.excludeName = excludeName;
	}
	public List<String> getList() {
		return list;
	}
	public void setList(List<String> list) {
		this.list = list;
	}
	public List<String>  strlsit(String str){
	     String[]  s = str.split(",");
	     List<String>  list = new  ArrayList<String>();
	     for(String ss : s){
	        list.add(ss.trim());
	     }
	     return list;
	   }
	
	@Override
	public void init() {
		list = strlsit(excludeName);
	}
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		String actionName = invocation.getProxy().getActionName();
		System.out.println(actionName+".................LoginInterceptor");
		if(list.contains(actionName)){
	        //请求的是合法
			System.out.println("请求是合法的");
	        return invocation.invoke();
	     }else {
	        //查看session
	        Map<String,Object>  session = invocation.getInvocationContext().getSession();
	        User user = (User) session.get(sessionName);
	        if(user==null){
	          return "login";
	        }else {
	          return invocation.invoke();
	        }
	     }
	}

}
