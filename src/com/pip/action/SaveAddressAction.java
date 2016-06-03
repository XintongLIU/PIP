package com.pip.action;

import com.pip.service.IAddressService;

public class SaveAddressAction {
	IAddressService addressService;
	String path;
	String ip;
	String result;
	
	public String saveAddressParam(){
		addressService.saveAddress(path, ip);
		this.result = "success";
		return "success";
	}

	public IAddressService getAddressService() {
		return addressService;
	}

	public void setAddressService(IAddressService addressService) {
		this.addressService = addressService;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
}
