package com.project.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;

import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.dao.VendorDao;




@Controller
public class VendorController {

	@Autowired
	private VendorDao vendorDao;
	
	
	@GetMapping("/vendorregistration")
	public String func1()
	{
		System.out.println("Reached in func1");
		return "VendorRegistration";
	}
	
	@PostMapping("/addingvendor")
	public String addVendor(@RequestParam String Vendor_FirstName, @RequestParam String Vendor_LastName,
			@RequestParam String Vendor_MobileNo, @RequestParam String Vendor_EmailId, 
			@RequestParam String Vendor_UserName, @RequestParam String Vendor_Password,
			@RequestParam String Vendor_Address, @RequestParam String Vendor_State,
			@RequestParam String Vendor_City, @RequestParam int Vendor_Pincode,
			@RequestParam("file") MultipartFile file)
	{
		byte[] byteArr;
		Blob blob;
		try 
		{
			byteArr = file.getBytes();
			blob = new SerialBlob(byteArr);
			vendorDao.addVendor(Vendor_FirstName, Vendor_LastName, Vendor_MobileNo, Vendor_EmailId, Vendor_UserName, Vendor_Password, Vendor_Address, Vendor_State, Vendor_City, Vendor_Pincode,blob);
		}
		catch (SQLException e) 
		{	
			e.printStackTrace();
			
		}
		catch (IOException e1)
		{
			e1.printStackTrace();
			
		}
		
		return "success";
	}
	
	
}
