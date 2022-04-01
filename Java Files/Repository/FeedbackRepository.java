package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.project.entity.BookingInfoTbl;
import com.project.entity.FeedbackInfoTbl;

public interface FeedbackRepository extends JpaRepository<FeedbackInfoTbl, Integer> {

	

	
}
