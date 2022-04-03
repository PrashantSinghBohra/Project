package com.project.controller;


import java.util.Objects;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.dao.VendorDao;
import com.project.entity.VendorInfoTbl;

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

	@RequestMapping(method = RequestMethod.POST, path="/vendorAdding")
	public String addVendor(@RequestParam String Vendor_FirstName, @RequestParam String Vendor_LastName,
			@RequestParam String Vendor_MobileNo, @RequestParam String Vendor_EmailId, 
			@RequestParam String Vendor_UserName, @RequestParam String Vendor_Password,
			@RequestParam String Vendor_Address, @RequestParam String Vendor_State,
			@RequestParam String Vendor_City, @RequestParam int Vendor_Pincode)

	{
		vendorDao.addVendor(Vendor_FirstName, Vendor_LastName, Vendor_MobileNo, Vendor_EmailId, Vendor_UserName, Vendor_Password, Vendor_Address, Vendor_State, Vendor_City, Vendor_Pincode);

		return "success";
	}

	@GetMapping("/vendorLogin")
	public String connect2()
	{
		return "LoginVendor";
	}

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
	
	 @GetMapping("/logout")
	   public ModelAndView logout(HttpSession session ) 
	   {
	      session.invalidate();
	      ModelAndView mv = new ModelAndView();
	       mv.setViewName("LoginVendor");
	       return mv;
	      //return "redirect:/login";
	   }
	
	
	
}
