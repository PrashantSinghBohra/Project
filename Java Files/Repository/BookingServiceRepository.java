package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.entity.BookingServiceInfoTbl;


@Repository
public interface BookingServiceRepository extends JpaRepository<BookingServiceInfoTbl,Integer> {

}
