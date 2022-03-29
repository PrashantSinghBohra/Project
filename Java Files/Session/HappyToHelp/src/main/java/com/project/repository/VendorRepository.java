package com.project.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.entity.VendorInfoTbl;

@Repository
public interface VendorRepository extends JpaRepositoryImplementation<VendorInfoTbl, Integer> 
{
	//public VendorInfoTbl findByVendorUserName(String username);
	//public VendorInfoTbl findByVendorPassword(String password);
	
	@Query(value= "SELECT * FROM vendor_info_tbl V WHERE V.vendor_user_name=:username AND V.vendor_password=:password", nativeQuery=true)
	public VendorInfoTbl loginVendor(@Param ("username") String username, @Param ("password") String password);
}
