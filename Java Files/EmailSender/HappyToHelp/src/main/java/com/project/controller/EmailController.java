package com.project.controller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.dao.VendorDao;
import com.project.emailService.EmailService;
import com.project.entity.VendorInfoTbl;

@Controller
public class EmailController
{
    @Autowired
    EmailService  emailService;
    
    @Autowired
    VendorDao vendorDao;
    
    @RequestMapping("reset")
    public String emailReset()
    {
    	return "ResetPassword";
    }
    
    @PostMapping("/sendEmail")
    public String emailSendToReset(@RequestParam String email)
    {
    	emailService.sendSimpleEmail(email);
		return "Reset";  	
    }
    
    @PostMapping("/resetPassword")
    public String Resetpassword(@RequestParam String email, @RequestParam String password1, @RequestParam String password2)
    {
    	
    	if(password1.equalsIgnoreCase(password2))
    	{
    	      VendorInfoTbl vendor = vendorDao.authenticationVendorByEmail(email);
    	      if(Objects.nonNull(vendor))
    	      {
    	    	  vendor.setVendorPassword(password1);
    	    	  vendorDao.updateVendor(vendor);
    	      }
    	}
    	
    	return "LoginVendor";
    }
}
