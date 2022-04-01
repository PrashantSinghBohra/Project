package com.project.repository;

import com.project.entity.VendorInfoTbl;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;

@Repository
public interface VendorRepository extends JpaRepositoryImplementation<VendorInfoTbl, Integer> 
{
	@Query(value= "SELECT * FROM vendor_info_tbl V WHERE V.vendor_user_name=:username AND V.vendor_password=:password", nativeQuery=true)
	public VendorInfoTbl loginVendor(@Param ("username") String username, @Param ("password") String password);
	
	//public VendorInfoTbl findByVendorImage(String imageName);
	 public VendorInfoTbl findByVendorId(int id);
	 
	 public VendorInfoTbl findByVendorEmailId(String email);
	 
	 
}
