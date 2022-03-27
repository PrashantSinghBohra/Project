package com.project.entity;

import java.io.Serializable;
import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import java.util.List;


/**
 * The persistent class for the customer_info_tbl database table.
 * 
 */
@Entity
@Table(name="customer_info_tbl")
@NamedQuery(name="CustomerInfoTbl.findAll", query="SELECT c FROM CustomerInfoTbl c")
public class CustomerInfoTbl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(generator = "sequence-generator")
	@GenericGenerator(name = "sequence-generator",
	strategy = "org.hibernate.id.enhanced.SequenceStyleGenerator",parameters = 
	{
			 @Parameter(name = "sequence_name", value = "user_sequence"),
			 @Parameter(name = "initial_value", value = "11"),
			  @Parameter(name = "increment_size", value = "1")
	})
	private int customer_id;

	@Lob
	private String customer_Address;

	private String customer_City;

	private String customer_EmailId;

	private String customer_FirstName;

	private String customer_LastName;

	private String customer_MobileNo;

	private String customer_Password;

	private int customer_Pincode;

	private String customer_State;

	private String customer_UserName;

	
	
	
	public CustomerInfoTbl(String customer_Address, String customer_City, String customer_EmailId,
			String customer_FirstName, String customer_LastName, String customer_MobileNo, String customer_Password,
			int customer_Pincode, String customer_State, String customer_UserName) {
		super();
		this.customer_Address = customer_Address;
		this.customer_City = customer_City;
		this.customer_EmailId = customer_EmailId;
		this.customer_FirstName = customer_FirstName;
		this.customer_LastName = customer_LastName;
		this.customer_MobileNo = customer_MobileNo;
		this.customer_Password = customer_Password;
		this.customer_Pincode = customer_Pincode;
		this.customer_State = customer_State;
		this.customer_UserName = customer_UserName;
	}

	//bi-directional many-to-one association to BookingInfoTbl
	@OneToMany(mappedBy="customerInfoTbl")
	private List<BookingInfoTbl> bookingInfoTbls;

	//bi-directional many-to-one association to BookingServiceInfoTbl
	@OneToMany(mappedBy="customerInfoTbl")
	private List<BookingServiceInfoTbl> bookingServiceInfoTbls;

	//bi-directional many-to-one association to FeedbackInfoTbl
	@OneToMany(mappedBy="customerInfoTbl")
	private List<FeedbackInfoTbl> feedbackInfoTbls;

	public CustomerInfoTbl() {
	}

	public int getCustomer_id() {
		return this.customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	public String getCustomer_Address() {
		return this.customer_Address;
	}

	public void setCustomer_Address(String customer_Address) {
		this.customer_Address = customer_Address;
	}

	public String getCustomer_City() {
		return this.customer_City;
	}

	public void setCustomer_City(String customer_City) {
		this.customer_City = customer_City;
	}

	public String getCustomer_EmailId() {
		return this.customer_EmailId;
	}

	public void setCustomer_EmailId(String customer_EmailId) {
		this.customer_EmailId = customer_EmailId;
	}

	public String getCustomer_FirstName() {
		return this.customer_FirstName;
	}

	public void setCustomer_FirstName(String customer_FirstName) {
		this.customer_FirstName = customer_FirstName;
	}

	public String getCustomer_LastName() {
		return this.customer_LastName;
	}

	public void setCustomer_LastName(String customer_LastName) {
		this.customer_LastName = customer_LastName;
	}

	public String getCustomer_MobileNo() {
		return this.customer_MobileNo;
	}

	public void setCustomer_MobileNo(String customer_MobileNo) {
		this.customer_MobileNo = customer_MobileNo;
	}

	public String getCustomer_Password() {
		return this.customer_Password;
	}

	public void setCustomer_Password(String customer_Password) {
		this.customer_Password = customer_Password;
	}

	public int getCustomer_Pincode() {
		return this.customer_Pincode;
	}

	public void setCustomer_Pincode(int customer_Pincode) {
		this.customer_Pincode = customer_Pincode;
	}

	public String getCustomer_State() {
		return this.customer_State;
	}

	public void setCustomer_State(String customer_State) {
		this.customer_State = customer_State;
	}

	public String getCustomer_UserName() {
		return this.customer_UserName;
	}

	public void setCustomer_UserName(String customer_UserName) {
		this.customer_UserName = customer_UserName;
	}

	public List<BookingInfoTbl> getBookingInfoTbls() {
		return this.bookingInfoTbls;
	}

	public void setBookingInfoTbls(List<BookingInfoTbl> bookingInfoTbls) {
		this.bookingInfoTbls = bookingInfoTbls;
	}

	public BookingInfoTbl addBookingInfoTbl(BookingInfoTbl bookingInfoTbl) {
		getBookingInfoTbls().add(bookingInfoTbl);
		bookingInfoTbl.setCustomerInfoTbl(this);

		return bookingInfoTbl;
	}

	public BookingInfoTbl removeBookingInfoTbl(BookingInfoTbl bookingInfoTbl) {
		getBookingInfoTbls().remove(bookingInfoTbl);
		bookingInfoTbl.setCustomerInfoTbl(null);

		return bookingInfoTbl;
	}

	public List<BookingServiceInfoTbl> getBookingServiceInfoTbls() {
		return this.bookingServiceInfoTbls;
	}

	public void setBookingServiceInfoTbls(List<BookingServiceInfoTbl> bookingServiceInfoTbls) {
		this.bookingServiceInfoTbls = bookingServiceInfoTbls;
	}

	public BookingServiceInfoTbl addBookingServiceInfoTbl(BookingServiceInfoTbl bookingServiceInfoTbl) {
		getBookingServiceInfoTbls().add(bookingServiceInfoTbl);
		bookingServiceInfoTbl.setCustomerInfoTbl(this);

		return bookingServiceInfoTbl;
	}

	public BookingServiceInfoTbl removeBookingServiceInfoTbl(BookingServiceInfoTbl bookingServiceInfoTbl) {
		getBookingServiceInfoTbls().remove(bookingServiceInfoTbl);
		bookingServiceInfoTbl.setCustomerInfoTbl(null);

		return bookingServiceInfoTbl;
	}

	public List<FeedbackInfoTbl> getFeedbackInfoTbls() {
		return this.feedbackInfoTbls;
	}

	public void setFeedbackInfoTbls(List<FeedbackInfoTbl> feedbackInfoTbls) {
		this.feedbackInfoTbls = feedbackInfoTbls;
	}

	public FeedbackInfoTbl addFeedbackInfoTbl(FeedbackInfoTbl feedbackInfoTbl) {
		getFeedbackInfoTbls().add(feedbackInfoTbl);
		feedbackInfoTbl.setCustomerInfoTbl(this);

		return feedbackInfoTbl;
	}

	public FeedbackInfoTbl removeFeedbackInfoTbl(FeedbackInfoTbl feedbackInfoTbl) {
		getFeedbackInfoTbls().remove(feedbackInfoTbl);
		feedbackInfoTbl.setCustomerInfoTbl(null);

		return feedbackInfoTbl;
	}

}