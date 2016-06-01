package com.pip.action;

import com.pip.service.IHelloWorldService;

public class HelloWorldAction {
	
	private IHelloWorldService helloWorldService;

	public IHelloWorldService getHelloWorldService() {
		return helloWorldService;
	}

	public void setHelloWorldService(IHelloWorldService service) {
		this.helloWorldService = service;
	}


	public String execute(){
		helloWorldService.addNew();
		return "success";
	}
	
}