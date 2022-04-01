package com.project.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the booking_service_info_tbl database table.
 * 
 */
@Entity
@Table(name="booking_service_info_tbl")
@NamedQuery(name="BookingServiceInfoTbl.findAll", query="SELECT b FROM BookingServiceInfoTbl b")
public class BookingServiceInfoTbl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int booking_Service_Id;

	private int booking_total_Cost;

	private String service_Status;

	//bi-directional many-to-one association to BookingInfoTbl
	@OneToMany(mappedBy="bookingServiceInfoTbl")
	private List<BookingInfoTbl> bookingInfoTbls;

	//bi-directional many-to-one association to CustomerInfoTbl
	@ManyToOne
	@JoinColumn(name="Booking_CustomerId")
	private CustomerInfoTbl customerInfoTbl;

	public BookingServiceInfoTbl() {
	}

	public int getBooking_Service_Id() {
		return this.booking_Service_Id;
	}

	public void setBooking_Service_Id(int booking_Service_Id) {
		this.booking_Service_Id = booking_Service_Id;
	}

	public int getBooking_total_Cost() {
		return this.booking_total_Cost;
	}

	public void setBooking_total_Cost(int booking_total_Cost) {
		this.booking_total_Cost = booking_total_Cost;
	}

	public String getService_Status() {
		return this.service_Status;
	}

	public void setService_Status(String service_Status) {
		this.service_Status = service_Status;
	}

	public List<BookingInfoTbl> getBookingInfoTbls() {
		return this.bookingInfoTbls;
	}

	public void setBookingInfoTbls(List<BookingInfoTbl> bookingInfoTbls) {
		this.bookingInfoTbls = bookingInfoTbls;
	}

	public BookingInfoTbl addBookingInfoTbl(BookingInfoTbl bookingInfoTbl) {
		getBookingInfoTbls().add(bookingInfoTbl);
		bookingInfoTbl.setBookingServiceInfoTbl(this);

		return bookingInfoTbl;
	}

	public BookingInfoTbl removeBookingInfoTbl(BookingInfoTbl bookingInfoTbl) {
		getBookingInfoTbls().remove(bookingInfoTbl);
		bookingInfoTbl.setBookingServiceInfoTbl(null);

		return bookingInfoTbl;
	}

	public CustomerInfoTbl getCustomerInfoTbl() {
		return this.customerInfoTbl;
	}

	public void setCustomerInfoTbl(CustomerInfoTbl customerInfoTbl) {
		this.customerInfoTbl = customerInfoTbl;
	}

}