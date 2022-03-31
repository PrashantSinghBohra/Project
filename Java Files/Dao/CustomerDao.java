package com.project.dao;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.CustomerInfoTbl;
import com.project.entity.ServiceInfoTbl;
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
		CustomerInfoTbl object = new CustomerInfoTbl(address, city, email, first_name, last_name, mobileNo, password, pincode, state, user_name);
				
		customerRepo.save(object);
	}
	
	public CustomerInfoTbl authenticationCustomer(String email,String password)
	{
		
		return customerRepo.loginCustomer(email, password);
		
		
	}

	
	public CustomerInfoTbl findById(int id)
	{
		 Optional<CustomerInfoTbl> customer =  customerRepo.findById(id);
		 CustomerInfoTbl cust  =  customer.get();
		 return cust;
		 
	}
	
	public void updateCustomer(CustomerInfoTbl obj )
	{
		customerRepo.save(obj);
				
		
	}
	
	
	
}
