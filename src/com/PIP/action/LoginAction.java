package com.pip.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.pip.service.IUserService;

/**
 * JSON Action
 * @author Zhiqi Yang
 *
 */
public class LoginAction {
	//IOC Service
	IUserService userService;
	
	//in
	String username;
	String password;
	Integer userType;
	
	//out
	String result;
	
	public String execute(){
		Integer userID;
		if((userID = userService.login(username, password, userType)) > 0){
			result = "LOGIN_SUCCESS";
			Map session = ActionContext.getContext().getSession();
			session.put("userID", userID);
			session.put("userType", userType);
		}
		else{
			result = "LOGIN_FAIL";
		}
		return "success";
	}

	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}
	
	
	
	
}
