package com.project.dao;

import java.sql.Blob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.project.entity.VendorInfoTbl;

import com.project.repository.VendorRepository;

@Service
public class VendorDao {

	
	@Autowired
	private VendorRepository vendorRepo;
	
	
	
	public void addVendor(String Vendor_FirstName,String Vendor_LastName,
			String Vendor_MobileNo, String Vendor_EmailId, 
			String Vendor_UserName, String Vendor_Password,
			String Vendor_Address,  String Vendor_State,
			 String Vendor_City,  int Vendor_Pincode,
			Blob image )
	{
		VendorInfoTbl object = new VendorInfoTbl(Vendor_FirstName, Vendor_LastName, Vendor_MobileNo, Vendor_EmailId, Vendor_UserName, Vendor_Password, Vendor_Address, Vendor_State, Vendor_City, Vendor_Pincode, image);
				
		vendorRepo.save(object);
	}
	
}
