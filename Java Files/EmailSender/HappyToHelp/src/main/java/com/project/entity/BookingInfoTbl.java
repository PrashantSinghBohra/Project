package com.project.entity;
import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the booking_info_tbl database table.
 * 
 */
@Entity
@Table(name="booking_info_tbl")
@NamedQuery(name="BookingInfoTbl.findAll", query="SELECT b FROM BookingInfoTbl b")
public class BookingInfoTbl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int booking_id;

	@Temporal(TemporalType.TIMESTAMP)
	private Date booking_Date;

	private int booking_service_cost;

	@Temporal(TemporalType.TIMESTAMP)
	private Date booking_Shedule_Date_Time;

	@Lob
	private String booking_Status;

	@Lob
	private String feedBack_Comment;

	@Temporal(TemporalType.DATE)
	private Date feedback_Date;

	private int feedback_Rating;

	//bi-directional many-to-one association to BookingServiceInfoTbl
	@ManyToOne
	@JoinColumn(name="Booking_Service_info_id")
	private BookingServiceInfoTbl bookingServiceInfoTbl;

	//bi-directional many-to-one association to CustomerInfoTbl
	@ManyToOne
	@JoinColumn(name="Booking_Customer_id")
	private CustomerInfoTbl customerInfoTbl;

	//bi-directional many-to-one association to ServiceInfoTbl
	@ManyToOne
	@JoinColumn(name="Booking_service_id")
	private ServiceInfoTbl serviceInfoTbl;

	public BookingInfoTbl() {
	}

	public int getBooking_id() {
		return this.booking_id;
	}

	public void setBooking_id(int booking_id) {
		this.booking_id = booking_id;
	}

	public Date getBooking_Date() {
		return this.booking_Date;
	}

	public void setBooking_Date(Date booking_Date) {
		this.booking_Date = booking_Date;
	}

	public int getBooking_service_cost() {
		return this.booking_service_cost;
	}

	public void setBooking_service_cost(int booking_service_cost) {
		this.booking_service_cost = booking_service_cost;
	}

	public Date getBooking_Shedule_Date_Time() {
		return this.booking_Shedule_Date_Time;
	}

	public void setBooking_Shedule_Date_Time(Date booking_Shedule_Date_Time) {
		this.booking_Shedule_Date_Time = booking_Shedule_Date_Time;
	}

	public String getBooking_Status() {
		return this.booking_Status;
	}

	public void setBooking_Status(String booking_Status) {
		this.booking_Status = booking_Status;
	}

	public String getFeedBack_Comment() {
		return this.feedBack_Comment;
	}

	public void setFeedBack_Comment(String feedBack_Comment) {
		this.feedBack_Comment = feedBack_Comment;
	}

	public Date getFeedback_Date() {
		return this.feedback_Date;
	}

	public void setFeedback_Date(Date feedback_Date) {
		this.feedback_Date = feedback_Date;
	}

	public int getFeedback_Rating() {
		return this.feedback_Rating;
	}

	public void setFeedback_Rating(int feedback_Rating) {
		this.feedback_Rating = feedback_Rating;
	}

	public BookingServiceInfoTbl getBookingServiceInfoTbl() {
		return this.bookingServiceInfoTbl;
	}

	public void setBookingServiceInfoTbl(BookingServiceInfoTbl bookingServiceInfoTbl) {
		this.bookingServiceInfoTbl = bookingServiceInfoTbl;
	}

	public CustomerInfoTbl getCustomerInfoTbl() {
		return this.customerInfoTbl;
	}

	public void setCustomerInfoTbl(CustomerInfoTbl customerInfoTbl) {
		this.customerInfoTbl = customerInfoTbl;
	}

	public ServiceInfoTbl getServiceInfoTbl() {
		return this.serviceInfoTbl;
	}

	public void setServiceInfoTbl(ServiceInfoTbl serviceInfoTbl) {
		this.serviceInfoTbl = serviceInfoTbl;
	}

}