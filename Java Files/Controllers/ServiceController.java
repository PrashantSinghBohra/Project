package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.dao.ServiceDao;
import com.project.entity.ServiceInfoTbl;



@Controller
public class ServiceController {

	@Autowired
	private ServiceDao dao;
	
	
	@GetMapping("/services")
	public ModelAndView getAllServices(HttpServletRequest request)
	{
		ModelAndView model = new ModelAndView();
		List<ServiceInfoTbl> services = dao.getAllServices();
		
		model.addObject("services", services);
		model.setViewName("Index");
		return model;
	}
	
	
	
	
	
	
	
}
