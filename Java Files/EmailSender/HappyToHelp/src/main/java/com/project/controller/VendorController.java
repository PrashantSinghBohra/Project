package com.project.controller;

import java.sql.Blob;
import java.util.Objects;
import java.io.IOException;
import java.sql.SQLException;
import com.project.dao.VendorDao;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;
import com.project.entity.VendorInfoTbl;
import javax.sql.rowset.serial.SerialBlob;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class VendorController
{   
	@Autowired
	VendorDao vendorDao;

	@GetMapping("/vendorInsert")
	public String connect1()
	{
		//return "VendorRegistration";
		return "signupVendor";
	}

	
	// -------------------- Vendor Registration 
	@RequestMapping(method = RequestMethod.POST, path="/vendorAdding")
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
			return "index";
		}
		catch (IOException e1)
		{
			e1.printStackTrace();
			return "index";
		}
		
		return "success";
	}

	@GetMapping("/vendorLogin")
	public ModelAndView connect2(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("vendor") == null ) {
			mv.setViewName("LoginVendor");
			return mv;
		}
		else {			
			mv.setViewName("index");
			return mv;
		}
		
		
	}

	// ------------- Vendor Login 
	@RequestMapping(method = RequestMethod.POST, path="/sucessLogin")
	public ModelAndView loginVendor(@RequestParam String vendorusername, @RequestParam String vendorpassword, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		VendorInfoTbl vendor = vendorDao.authenticationVendor(vendorusername, vendorpassword);

		if(Objects.isNull(vendor))
		{
			mv.setViewName("LoginVendor");
		}
		if(Objects.nonNull(vendor))
		{
			System.out.println(session.getId());
			//session.setAttribute("success" , "successfully accessed");
			mv.addObject("vendor",vendor);
			//mv.setViewName("Profile");
			mv.setViewName("sessionTry");
		}
		return mv;
	}	
	
	
	// ------ Logout 
	 @GetMapping("/logout")
	   public ModelAndView logout(HttpSession session) 
	   {
	      session.invalidate();
	      ModelAndView mv = new ModelAndView();
	       mv.setViewName("LoginVendor");
	       return mv;
	      //return "redirect:/login";
	   }
	
	 @GetMapping("/vendorProfile")
		public String connect3()
		{
			return "Profile";
		}
	 
	 
	 @RequestMapping("/home")
		public String showHome() {

			return "home";
		}
		
	 //Display
		@PostMapping("/getImage")
		public String verifyUser(Model model,@RequestParam int name) {

			VendorInfoTbl result = vendorDao.showImage(name);
			
			if(result != null) {

				model.addAttribute("image", result);
				return "home";
			}
			else {

				model.addAttribute("errormsg", "No image found !!");
				return "home";
			}
		}
	

			@GetMapping("/editprofile")
			public ModelAndView editProfile(@RequestParam int vendorId)
			{
				ModelAndView mv = new ModelAndView();
				VendorInfoTbl vendor = vendorDao.findById(vendorId);
				mv.addObject("vendor",vendor);
				//mv.setViewName("EditProfile");
				mv.setViewName("Profile");
				
				return mv;	
			}	
			
			
			@PostMapping("/editprofiledetails")
			public String updateProfile(
					@RequestParam String first_name,
					@RequestParam String  lname,
					@RequestParam String mobileNo,
					@RequestParam String email,
					@RequestParam String username,
					@RequestParam String password,
					@RequestParam String address,
					@RequestParam String state,
					@RequestParam String city,
					@RequestParam int pincode,
					@RequestParam int vendorId
					)
			{
				
				VendorInfoTbl vendor = vendorDao.findById(vendorId);
				
				vendor.setVendorFirstName(first_name);
				vendor.setVendorLastName(lname);
				vendor.setVendor_MobileNo(mobileNo);
				vendor.setVendorEmailId(email);
				vendor.setVendorUserName(username);
				vendor.setVendorPassword(password);
				vendor.setVendorAddress(address);
				vendor.setVendorState(state);
				vendor.setVendorCity(city);
				vendor.setVendorPincode(pincode);
				
				vendorDao.updateVendor(vendor);
				
				return "sessionTry";
				
			}			
}
