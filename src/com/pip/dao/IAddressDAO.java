package com.pip.dao;

import java.util.List;

import com.pip.domain.Address;

public interface IAddressDAO {
	public List<Address> findAll();		//返回所有的Address信息
	public Address findAddressById(int addressID);		//通过ID查找Address信息
	public boolean insertAddress(Address address);			//插入address信息
	public boolean deleteAddress(Address address);		//删除指定address
}
