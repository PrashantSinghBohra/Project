package com.project.dao;

import com.project.entity.VendorInfoTbl;
import org.springframework.stereotype.Service;
import com.project.repository.VendorRepository;
import java.sql.Blob;
import java.util.Optional;

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
			int pincode,
			Blob image
			) 
	{
		VendorInfoTbl object = new VendorInfoTbl(first_name, last_name, mobileNo, email, user_name,  password,  address, state, city, pincode,image);	
		
		vendorRepo.save(object);
	}
	
	public VendorInfoTbl showImage(int id) {

		VendorInfoTbl image = vendorRepo.findByVendorId(id);
		return image;
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

	public VendorInfoTbl editProfileVendor(int vendorid) {
		
		VendorInfoTbl vendorObject = vendorRepo.findByVendorId(vendorid);
		return vendorObject;
	}

	
	public VendorInfoTbl findById(int id)
	{
		 Optional<VendorInfoTbl> vendor =  vendorRepo.findById(id);
		 VendorInfoTbl object = vendor.get();  
		 return object;	 
	}
	
	public void updateVendor(VendorInfoTbl obj )
	{
		vendorRepo.save(obj);
	}

	public VendorInfoTbl authenticationVendorByEmail(String email) {
		
		return vendorRepo.findByVendorEmailId(email);
	}	
}
