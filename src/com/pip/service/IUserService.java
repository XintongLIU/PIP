package com.pip.service;

public interface IUserService {
	public Integer login(String username, String password, Integer userType);
	public void logout();
}
