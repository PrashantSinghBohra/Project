package com.project.dao;

import com.project.entity.VendorInfoTbl;
import org.springframework.stereotype.Service;
import com.project.repository.VendorRepository;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class VendorDao {
 
	@Autowired
	private VendorRepository vendorRepo;
	
	public void addVendor(String first_name,
			String  last_name,
			String mobileNo,
			String email,
			String user_name,
			String password,
			String address,
			String state,
			String city,
			int pincode
			) 
	{
		VendorInfoTbl object = new VendorInfoTbl(first_name, last_name, mobileNo, email, user_name,  password,  address, state, city, pincode);	
		
		vendorRepo.save(object);
	}

	public void deleteVendor(int vendorId) {
		
		 VendorInfoTbl vendorObject = vendorRepo.findById(vendorId).get();
		 if(vendorObject != null)
			 vendorRepo.delete(vendorObject);
	}

	
	public VendorInfoTbl authenticationVendor(String username, String password)
	{	
		return vendorRepo.loginVendor(username, password);		
	}	
}
