package com.pip.action;

import com.pip.service.IAddressService;

public class SaveAddressAction {
	IAddressService addressService;
	String path;
	String ip;
	String result;
	
	public String saveAddressParam(){
		if (addressService.saveAddress(path, ip)){
			this.result = "success";
		}else this.result = "fail";
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
