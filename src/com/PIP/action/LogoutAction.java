package com.pip.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class LogoutAction {
	
	public String execute(){
		Map session = ActionContext.getContext().getSession();
		if(session.containsKey("userID")){
			session.remove("userID");
			session.remove("userType");
		}
		return "success";
	}
}
