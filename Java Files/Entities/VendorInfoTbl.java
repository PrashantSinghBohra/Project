package com.project.entity;

import java.io.Serializable;
import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import java.util.List;


/**
 * The persistent class for the vendor_info_tbl database table.
 * 
 */
@Entity
@Table(name="vendor_info_tbl")
@NamedQuery(name="VendorInfoTbl.findAll", query="SELECT v FROM VendorInfoTbl v")
public class VendorInfoTbl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(generator = "sequence-generator")
	@GenericGenerator(name = "sequence-generator",
	strategy = "org.hibernate.id.enhanced.SequenceStyleGenerator",parameters = 
	{
			 @Parameter(name = "sequence_name", value = "user_sequence"),
			 @Parameter(name = "initial_value", value = "100"),
			  @Parameter(name = "increment_size", value = "1")
	})
	private int vendor_id;

	@Lob
	private String vendor_Address;

	private String vendor_City;

	private String vendor_EmailId;

	private String vendor_FirstName;

	@Lob
	private byte[] vendor_Image;

	private String vendor_LastName;

	private String vendor_MobileNo;

	private String vendor_Password;

	private int vendor_Pincode;

	private String vendor_State;

	private String vendor_UserName;

	//bi-directional many-to-one association to FeedbackInfoTbl
	@OneToMany(mappedBy="vendorInfoTbl")
	private List<FeedbackInfoTbl> feedbackInfoTbls;

	//bi-directional many-to-one association to ServiceInfoTbl
	@OneToMany(mappedBy="vendorInfoTbl")
	private List<ServiceInfoTbl> serviceInfoTbls;

	public VendorInfoTbl() {
	}

	public int getVendor_id() {
		return this.vendor_id;
	}

	public void setVendor_id(int vendor_id) {
		this.vendor_id = vendor_id;
	}

	public String getVendor_Address() {
		return this.vendor_Address;
	}

	public void setVendor_Address(String vendor_Address) {
		this.vendor_Address = vendor_Address;
	}

	public String getVendor_City() {
		return this.vendor_City;
	}

	public void setVendor_City(String vendor_City) {
		this.vendor_City = vendor_City;
	}

	public String getVendor_EmailId() {
		return this.vendor_EmailId;
	}

	public void setVendor_EmailId(String vendor_EmailId) {
		this.vendor_EmailId = vendor_EmailId;
	}

	public String getVendor_FirstName() {
		return this.vendor_FirstName;
	}

	public void setVendor_FirstName(String vendor_FirstName) {
		this.vendor_FirstName = vendor_FirstName;
	}

	public byte[] getVendor_Image() {
		return this.vendor_Image;
	}

	public void setVendor_Image(byte[] vendor_Image) {
		this.vendor_Image = vendor_Image;
	}

	public String getVendor_LastName() {
		return this.vendor_LastName;
	}

	public void setVendor_LastName(String vendor_LastName) {
		this.vendor_LastName = vendor_LastName;
	}

	public String getVendor_MobileNo() {
		return this.vendor_MobileNo;
	}

	public void setVendor_MobileNo(String vendor_MobileNo) {
		this.vendor_MobileNo = vendor_MobileNo;
	}

	public String getVendor_Password() {
		return this.vendor_Password;
	}

	public void setVendor_Password(String vendor_Password) {
		this.vendor_Password = vendor_Password;
	}

	public int getVendor_Pincode() {
		return this.vendor_Pincode;
	}

	public void setVendor_Pincode(int vendor_Pincode) {
		this.vendor_Pincode = vendor_Pincode;
	}

	public String getVendor_State() {
		return this.vendor_State;
	}

	public void setVendor_State(String vendor_State) {
		this.vendor_State = vendor_State;
	}

	public String getVendor_UserName() {
		return this.vendor_UserName;
	}

	public void setVendor_UserName(String vendor_UserName) {
		this.vendor_UserName = vendor_UserName;
	}

	public List<FeedbackInfoTbl> getFeedbackInfoTbls() {
		return this.feedbackInfoTbls;
	}

	public void setFeedbackInfoTbls(List<FeedbackInfoTbl> feedbackInfoTbls) {
		this.feedbackInfoTbls = feedbackInfoTbls;
	}

	public FeedbackInfoTbl addFeedbackInfoTbl(FeedbackInfoTbl feedbackInfoTbl) {
		getFeedbackInfoTbls().add(feedbackInfoTbl);
		feedbackInfoTbl.setVendorInfoTbl(this);

		return feedbackInfoTbl;
	}

	public FeedbackInfoTbl removeFeedbackInfoTbl(FeedbackInfoTbl feedbackInfoTbl) {
		getFeedbackInfoTbls().remove(feedbackInfoTbl);
		feedbackInfoTbl.setVendorInfoTbl(null);

		return feedbackInfoTbl;
	}

	public List<ServiceInfoTbl> getServiceInfoTbls() {
		return this.serviceInfoTbls;
	}

	public void setServiceInfoTbls(List<ServiceInfoTbl> serviceInfoTbls) {
		this.serviceInfoTbls = serviceInfoTbls;
	}

	public ServiceInfoTbl addServiceInfoTbl(ServiceInfoTbl serviceInfoTbl) {
		getServiceInfoTbls().add(serviceInfoTbl);
		serviceInfoTbl.setVendorInfoTbl(this);

		return serviceInfoTbl;
	}

	public ServiceInfoTbl removeServiceInfoTbl(ServiceInfoTbl serviceInfoTbl) {
		getServiceInfoTbls().remove(serviceInfoTbl);
		serviceInfoTbl.setVendorInfoTbl(null);

		return serviceInfoTbl;
	}

}