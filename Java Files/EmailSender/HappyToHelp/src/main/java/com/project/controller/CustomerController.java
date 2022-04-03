package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.dao.CustomerDao;

@Controller
public class CustomerController {

	@Autowired
	private CustomerDao dao;
	
	@GetMapping("/homepage")
	public String func1()
	{
		return "signupCustomer";
	}
	
	@PostMapping("/addingcustomer")
	public void addProduct(@RequestParam String first_name,
			@RequestParam String  last_name,
			@RequestParam String mobileNo,
			@RequestParam String email,
			@RequestParam String user_name,
			@RequestParam String password,
			@RequestParam String address,
			@RequestParam String state,
			@RequestParam String city,
			@RequestParam int pincode
				)
	{
		System.out.println("Reached in addProduct");
		dao.addCustomer(first_name, last_name, mobileNo, email, user_name, password, address, state, city, pincode);
	}
	
}
