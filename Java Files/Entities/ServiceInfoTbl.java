package com.project.entity;
import java.io.Serializable;
import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import java.util.List;


/**
 * The persistent class for the service_info_tbl database table.
 * 
 */
@Entity
@Table(name="service_info_tbl")
@NamedQuery(name="ServiceInfoTbl.findAll", query="SELECT s FROM ServiceInfoTbl s")
public class ServiceInfoTbl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(generator = "sequence-generator")
	@GenericGenerator(name = "sequence-generator",
	strategy = "org.hibernate.id.enhanced.SequenceStyleGenerator",parameters = 
	{
			 @Parameter(name = "sequence_name", value = "user_sequence"),
			 @Parameter(name = "initial_value", value = "1000"),
			  @Parameter(name = "increment_size", value = "1")
	})
	private int service_Id;

	private int service_Cost;

	private int service_Discount;

	@Lob
	private byte[] service_Image;

	private String service_Name;

	private int service_Time_Duration;

	//bi-directional many-to-one association to BookingInfoTbl
	@OneToMany(mappedBy="serviceInfoTbl")
	private List<BookingInfoTbl> bookingInfoTbls;

	//bi-directional many-to-one association to VendorInfoTbl
	@ManyToOne
	@JoinColumn(name="Service_vendor_id")
	private VendorInfoTbl vendorInfoTbl;

	public ServiceInfoTbl() {
	}

	public int getService_Id() {
		return this.service_Id;
	}

	public void setService_Id(int service_Id) {
		this.service_Id = service_Id;
	}

	public int getService_Cost() {
		return this.service_Cost;
	}

	public void setService_Cost(int service_Cost) {
		this.service_Cost = service_Cost;
	}

	public int getService_Discount() {
		return this.service_Discount;
	}

	public void setService_Discount(int service_Discount) {
		this.service_Discount = service_Discount;
	}

	public byte[] getService_Image() {
		return this.service_Image;
	}

	public void setService_Image(byte[] service_Image) {
		this.service_Image = service_Image;
	}

	public String getService_Name() {
		return this.service_Name;
	}

	public void setService_Name(String service_Name) {
		this.service_Name = service_Name;
	}

	public int getService_Time_Duration() {
		return this.service_Time_Duration;
	}

	public void setService_Time_Duration(int service_Time_Duration) {
		this.service_Time_Duration = service_Time_Duration;
	}

	public List<BookingInfoTbl> getBookingInfoTbls() {
		return this.bookingInfoTbls;
	}

	public void setBookingInfoTbls(List<BookingInfoTbl> bookingInfoTbls) {
		this.bookingInfoTbls = bookingInfoTbls;
	}

	public BookingInfoTbl addBookingInfoTbl(BookingInfoTbl bookingInfoTbl) {
		getBookingInfoTbls().add(bookingInfoTbl);
		bookingInfoTbl.setServiceInfoTbl(this);

		return bookingInfoTbl;
	}

	public BookingInfoTbl removeBookingInfoTbl(BookingInfoTbl bookingInfoTbl) {
		getBookingInfoTbls().remove(bookingInfoTbl);
		bookingInfoTbl.setServiceInfoTbl(null);

		return bookingInfoTbl;
	}

	public VendorInfoTbl getVendorInfoTbl() {
		return this.vendorInfoTbl;
	}

	public void setVendorInfoTbl(VendorInfoTbl vendorInfoTbl) {
		this.vendorInfoTbl = vendorInfoTbl;
	}

}