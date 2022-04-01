package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.entity.BookingInfoTbl;


@Repository
public interface BookingRepository extends JpaRepository<BookingInfoTbl,Integer> {

	
	@Query(value="SELECT * FROM booking_info_tbl b WHERE b.booking_customer_id=:id ",nativeQuery=true )
	public BookingInfoTbl findByCustomerId(@Param("id") int id );
	
	
}
