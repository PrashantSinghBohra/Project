package com.project.entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the feedback_info_tbl database table.
 * 
 */
@Entity
@Table(name="feedback_info_tbl")
@NamedQuery(name="FeedbackInfoTbl.findAll", query="SELECT f FROM FeedbackInfoTbl f")
public class FeedbackInfoTbl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int feedback_Id;

	//bi-directional many-to-one association to CustomerInfoTbl
	@ManyToOne
	@JoinColumn(name="Feedback_customer_id")
	private CustomerInfoTbl customerInfoTbl;

	//bi-directional many-to-one association to VendorInfoTbl
	@ManyToOne
	@JoinColumn(name="Feedback_vendor_id")
	private VendorInfoTbl vendorInfoTbl;

	public FeedbackInfoTbl() {
	}

	public int getFeedback_Id() {
		return this.feedback_Id;
	}

	public void setFeedback_Id(int feedback_Id) {
		this.feedback_Id = feedback_Id;
	}


	public CustomerInfoTbl getCustomerInfoTbl() {
		return this.customerInfoTbl;
	}

	public void setCustomerInfoTbl(CustomerInfoTbl customerInfoTbl) {
		this.customerInfoTbl = customerInfoTbl;
	}

	public VendorInfoTbl getVendorInfoTbl() {
		return this.vendorInfoTbl;
	}

	public void setVendorInfoTbl(VendorInfoTbl vendorInfoTbl) {
		this.vendorInfoTbl = vendorInfoTbl;
	}

}