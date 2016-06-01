package com.pip.service.impl;

import com.pip.dao.IAddressDAO;
import com.pip.domain.Address;
import com.pip.service.IAddressService;

public class AddressServiceImpl implements IAddressService{
	IAddressDAO addressDAO;

	@Override
	public boolean saveAddress(String path, String ip) {
		Address address = new Address();
		address.setAddressName(path);
		address.setContentName(ip);
		return addressDAO.insertAddress(address);
	}

	public IAddressDAO getAddressDAO() {
		return addressDAO;
	}

	public void setAddressDAO(IAddressDAO addressDAO) {
		this.addressDAO = addressDAO;
	}
	
	
	
}
