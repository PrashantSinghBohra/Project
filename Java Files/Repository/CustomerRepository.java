package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.project.entity.CustomerInfoTbl;

@Repository
public interface CustomerRepository extends JpaRepository<CustomerInfoTbl, Integer> {

	@Query(value= "SELECT * FROM customer_info_tbl U WHERE U.customer_email_id=:email AND U.customer_password=:password",nativeQuery=true  )
	public CustomerInfoTbl loginCustomer ( @Param ("email") String email, @Param ("password") String password);
	
	
	
	
}
