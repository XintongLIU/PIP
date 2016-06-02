package com.pip.service.impl;

import com.pip.dao.IAddressDAO;
import com.pip.domain.Address;
import com.pip.service.IAddressService;

public class AddressServiceImpl implements IAddressService{
	IAddressDAO addressDAO;

	@Override
	public Integer saveAddress(String path, String ip) {
		Address address = new Address();
		address.setAddressName(path);
		address.setContentName(ip);
		return addressDAO.save(address);
	}

	public IAddressDAO getAddressDAO() {
		return addressDAO;
	}

	public void setAddressDAO(IAddressDAO addressDAO) {
		this.addressDAO = addressDAO;
	}
	
	
	
}
