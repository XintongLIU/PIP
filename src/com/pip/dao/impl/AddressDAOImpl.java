package com.pip.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.pip.dao.IAddressDAO;
import com.pip.domain.Address;

@Repository
public class AddressDAOImpl extends BaseDAOImpl<Address> implements IAddressDAO {

	@Override
	public List<Address> findAll() {
		// TODO Auto-generated method stub
		List<Address> list = new ArrayList<Address>();
		list = super.find("from Address");
		return list;
	}

	@Override
	public Address findAddressById(int addressID) {
		// TODO Auto-generated method stub
//		System.out.println("AddressID " +addressID);
		List<Address> list = super.find("from Address where addressID = " + addressID);
		return list.get(0);
	}

	@Override
	public boolean insertAddress(Address address) {
		// TODO Auto-generated method stub
		try{
			//System.out.println("address " + address.getAddressName());
			super.save(address);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteAddress(Address address) {
		// TODO Auto-generated method stub
		try{
//			super.delete(address); 发生ID冲突
			super.executeHql("delete from Address where addressID = " + address.getAddressID());
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

}
