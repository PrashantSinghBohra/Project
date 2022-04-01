package com.project.entity;

import java.sql.Blob;
import java.util.List;
import java.io.Serializable;
import javax.persistence.*;
import org.hibernate.annotations.Parameter;
import org.hibernate.annotations.GenericGenerator;

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
	private int vendorId;

	@Lob
	private String vendorAddress;

	private String vendorCity;

	private String vendorEmailId;

	private String vendorFirstName;

	@Column(name="vendor_image ",columnDefinition = "MEDIUMBLOB")
	@Lob
	private Blob vendorImage ;

	private String vendorLastName;

	private String vendorMobileNo;

	private String vendorPassword;

	private int vendorPincode;

	private String vendorState;

	private String vendorUserName;

	//bi-directional many-to-one association to FeedbackInfoTbl
	@OneToMany(mappedBy="vendorInfoTbl")
	private List<FeedbackInfoTbl> feedbackInfoTbls;

	//bi-directional many-to-one association to ServiceInfoTbl
	@OneToMany(mappedBy="vendorInfoTbl")
	private List<ServiceInfoTbl> serviceInfoTbls;


	public VendorInfoTbl() {
		
	}
	
	
	public VendorInfoTbl(String vendorFirstName,
			String vendorLastName, 
			String vendorMobileNo,
			String vendorEmailId, 
			String vendorUserName,
			String vendorPassword,
			String vendorAddress,
			String vendorState,
			String vendorCity,  
			int vendorPincode,
			Blob vendorImage) {
		super();
		this.vendorFirstName = vendorFirstName;
		this.vendorLastName = vendorLastName;
		this.vendorMobileNo = vendorMobileNo;
		this.vendorEmailId = vendorEmailId;
		this.vendorUserName = vendorUserName;
		this.vendorPassword = vendorPassword;
		this.vendorAddress = vendorAddress;
		this.vendorState = vendorState;
		this.vendorCity = vendorCity;
		this.vendorPincode = vendorPincode;
		this.vendorImage = vendorImage;
	}

	public int getVendorId() {
		return this.vendorId;
	}

	public void setVendorid(int vendorid) {
		this.vendorId = vendorid;
	}

	public String getVendorAddress() {
		return this.vendorAddress;
	}

	public void setVendorAddress(String vendorAddress) {
		this.vendorAddress = vendorAddress;
	}

	public String getVendorCity() {
		return this.vendorCity;
	}

	public void setVendorCity(String vendorCity) {
		this.vendorCity = vendorCity;
	}

	public String getVendorEmailId() {
		return this.vendorEmailId;
	}

	public void setVendorEmailId(String vendorEmailId) {
		this.vendorEmailId = vendorEmailId;
	}

	public String getVendorFirstName() {
		return this.vendorFirstName;
	}

	public void setVendorFirstName(String vendorFirstName) {
		this.vendorFirstName = vendorFirstName;
	}

	public Blob getVendorImage() {
		return this.vendorImage;
	}

	public void setVendorImage(Blob vendorImage) {
		this.vendorImage = vendorImage;
	}

	public String getVendorLastName() {
		return this.vendorLastName;
	}

	public void setVendorLastName(String vendorLastName) {
		this.vendorLastName = vendorLastName;
	}

	public String getVendorMobileNo() {
		return this.vendorMobileNo;
	}

	public void setVendor_MobileNo(String vendorMobileNo) {
		this.vendorMobileNo = vendorMobileNo;
	}

	public String getVendorPassword() {
		return this.vendorPassword;
	}

	public void setVendorPassword(String vendorPassword) {
		this.vendorPassword = vendorPassword;
	}

	public int getVendorPincode() {
		return this.vendorPincode;
	}

	public void setVendorPincode(int vendorPincode) {
		this.vendorPincode = vendorPincode;
	}

	public String getVendorState() {
		return this.vendorState;
	}

	public void setVendorState(String vendorState) {
		this.vendorState = vendorState;
	}

	public String getVendorUserName() {
		return this.vendorUserName;
	}

	public void setVendorUserName(String vendorUserName) {
		this.vendorUserName = vendorUserName;
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