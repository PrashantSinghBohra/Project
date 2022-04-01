package com.project.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.RequestMatchResult;

import com.project.dao.BookingDao;
import com.project.dao.CustomerDao;
import com.project.dao.ServiceDao;
import com.project.entity.BookingInfoTbl;
import com.project.entity.CustomerInfoTbl;
import com.project.entity.ServiceInfoTbl;

@Controller
@SessionAttributes("customer")
public class CustomerController {

	@Autowired
	private CustomerDao customerDao;

	@Autowired
	private ServiceDao serviceDao;

	@Autowired
	private BookingDao bookingDao;

	@GetMapping("/customerregistration")
	public String func1()
	{
		System.out.println("Reached in func1");
		return "CustomerRegistration";
	}

	@PostMapping("/addingcustomer")
	public ModelAndView addCustomer(@RequestParam String first_name,
			@RequestParam String  lname,
			@RequestParam String mobileNo,
			@RequestParam String email,
			@RequestParam String username,
			@RequestParam String password,
			@RequestParam String address,
			@RequestParam String state,
			@RequestParam String city,
			@RequestParam int pincode
			)
	{
		System.out.println("Reached in addProduct");
		ModelAndView mv = new ModelAndView();
		customerDao.addCustomer(first_name, lname, mobileNo, email, username, password, address, state, city, pincode);
		mv.addObject("message","Registration Successfull");
		mv.setViewName("CustomerRegistration");
		return mv;
	}

	@GetMapping("/Login")
	public ModelAndView loginCustomer(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();

		if(request.getSession().getAttribute("customer") == null ) {
			mv.setViewName("Login");
			return mv;
		}
		else {			
			mv.setViewName("Profile");
			return mv;
		}
	}

	@PostMapping("/LoginCustomer")
	public ModelAndView loginCustomer(@RequestParam String email,@RequestParam String password ,HttpServletRequest request) 
	{
		HttpSession session = request.getSession();
		System.out.println("Session ID : " + session.getId());
		ModelAndView mv = new ModelAndView();
		CustomerInfoTbl customer = customerDao.authenticationCustomer(email,
				password);

		if(Objects.isNull(customer))
		{
			mv.setViewName("Login");	
		}
		else
		{
			request.getSession().setAttribute("customer", customer);
			mv.setViewName("Profile");
		}	
		return mv; 
	}

	@GetMapping("/showAllServices")
	public ModelAndView showAllServices(HttpServletRequest request)
	{


		ModelAndView mv = new ModelAndView();
		List<ServiceInfoTbl> services =   serviceDao.getAllServices();
		mv.addObject("services", services);
		mv.setViewName("Services");
		return mv;
	}

	@GetMapping("/logout")
	public ModelAndView logout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		System.out.println(session.getId());
		session.invalidate();
		request.getSession(false);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Login");
		return mv;
	}

	@GetMapping("/bookService")
	public void bookService(@RequestParam int serviceid,@RequestParam int custid,@RequestParam String date) throws ParseException
	{
		System.out.println("Passed :" + date);
		CustomerInfoTbl cust = customerDao.findById(custid);
		ServiceInfoTbl service = serviceDao.findById(serviceid);

		BookingInfoTbl defaults = new BookingInfoTbl();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		Date date1 = dateFormat.parse(date);
		BookingInfoTbl book = new BookingInfoTbl(new Date(), service.getService_Cost(),date1,defaults.getBooking_Status(), null, null,0, cust, service);
		bookingDao.saveBooking(book);

	}

	@GetMapping("/search")
	public String searchByName()
	{

		return "Search";

	}


	@PostMapping("/searchService")
	public ModelAndView searchedServices(@RequestParam String name)
	{
		ModelAndView mv = new ModelAndView();
		List<ServiceInfoTbl> services = serviceDao.findByName(name);
		mv.addObject("services",services);
		mv.setViewName("Services");

		return mv;
	}


	@GetMapping("/editprofile")
	public ModelAndView editProfile(@RequestParam int custid)
	{
		ModelAndView mv = new ModelAndView();
		CustomerInfoTbl customer = customerDao.findById(custid);
		mv.addObject("customer",customer);
		mv.setViewName("EditProfile");
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
			@RequestParam int custid
			)
	{

		CustomerInfoTbl customer = customerDao.findById(custid);
		customer.setCustomer_Address(address);
		customer.setCustomer_City(city);
		customer.setCustomer_EmailId(email);
		customer.setCustomer_FirstName(first_name);
		customer.setCustomer_LastName(lname);
		customer.setCustomer_MobileNo(mobileNo);
		customer.setCustomer_UserName(username);
		customer.setCustomer_State(state);
		customer.setCustomer_Password(password);
		customer.setCustomer_Pincode(pincode);

		customerDao.updateCustomer(customer);

		return "Profile";

	}
	
	@GetMapping("/feedback")
	public String giveFeedback()
	{
		return "feedback";
		
	}
	
	
	@PostMapping("/insertfeedback")
	public ModelAndView insertFeedback(@RequestParam int rating,@RequestParam  String comment ,@RequestParam int custid)
	{
		ModelAndView mv = new ModelAndView();
		
		
		BookingInfoTbl booking = bookingDao.updateBooking(custid);
		
		booking.setFeedBack_Comment(comment);
		booking.setFeedback_Rating(rating);
		booking.setFeedback_Date(new Date());
		
		bookingDao.saveBooking(booking);
		
		mv.setViewName("feedback");
		return mv;
	}
	



}
