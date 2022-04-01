package com.project.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.CustomerInfoTbl;
import com.project.repository.CustomerRepository;

@Service
public class CustomerDao {

	@Autowired
	private CustomerRepository customerRepo;
	
	
	public void addCustomer(String first_name,
			String  last_name,
			String mobileNo,
			String email,
			String user_name,
			String password,
			String address,
			String state,
			String city,
			int pincode )
	{
		CustomerInfoTbl object = new CustomerInfoTbl(address, city, email, user_name, address, mobileNo, password, pincode, state, city);
		customerRepo.save(object);
	}
	

	
}
