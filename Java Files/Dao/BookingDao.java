package com.project.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.BookingInfoTbl;
import com.project.repository.BookingRepository;

@Service
public class BookingDao {

	@Autowired
	private BookingRepository bookingRepo;
	
	
	public void saveBooking(BookingInfoTbl book)
	{
		bookingRepo.save(book);
		
	}
	
	
}
