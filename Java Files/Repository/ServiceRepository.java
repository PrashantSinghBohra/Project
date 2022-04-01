package com.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.entity.ServiceInfoTbl;

@Repository
public interface ServiceRepository extends JpaRepository<ServiceInfoTbl,Integer> {

	
	@Query(value = "SELECT * FROM service_info_tbl s WHERE s.service_name=:name",nativeQuery=true)
	public List<ServiceInfoTbl> getByName(@RequestParam String name); 
	
	
	
	/*
	 *  @Query(value =
	 * "SELECT * FROM service_info_tbl s WHERE s.service_name=:name",nativeQuery=
	 * true) public List<ServiceInfoTbl> getOwnServices(@RequestParam int id);
	 */	
}
