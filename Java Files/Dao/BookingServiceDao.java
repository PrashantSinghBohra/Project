package com.project.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.BookingServiceInfoTbl;
import com.project.repository.BookingServiceRepository;

@Service
public class BookingServiceDao {

	@Autowired
	private BookingServiceRepository booServiceRepo;
	
	
	public void saveBooking(BookingServiceInfoTbl obj)
	{
		
		
		booServiceRepo.save(obj);
		
	}
	
	
}
