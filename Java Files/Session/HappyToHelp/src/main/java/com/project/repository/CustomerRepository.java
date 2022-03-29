package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.project.entity.CustomerInfoTbl;

@Service
public interface CustomerRepository extends JpaRepository<CustomerInfoTbl, Integer> {

}
