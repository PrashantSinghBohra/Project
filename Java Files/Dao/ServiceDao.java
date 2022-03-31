package com.project.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.ServiceInfoTbl;
import com.project.repository.ServiceRepository;

@Service
public class ServiceDao {

	@Autowired
	private ServiceRepository serviceRepo;
	
	public List<ServiceInfoTbl> getAllServices()
	{
		
		return serviceRepo.findAll();
		
	}
	
	
	public ServiceInfoTbl findById(int id)
	{
		 Optional<ServiceInfoTbl> service =  serviceRepo.findById(id);
		 ServiceInfoTbl booked  =  service.get();
		 return booked;
		 
	}
	
	public List<ServiceInfoTbl> findByName(String name)
	{
		return serviceRepo.getByName(name);
	}
	

	
}
