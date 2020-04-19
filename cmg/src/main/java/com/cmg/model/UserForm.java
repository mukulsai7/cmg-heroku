package com.cmg.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
//USER
@Entity
@Table(name="userform")
public class UserForm {
	
	@Id
	@Column(name="name")
	private String name;
	
	@Column(name="contact")
	private String contact;
	
	@Column(name="zipcode")
	private String zipcode;
	
	@ManyToOne
	@JoinColumn(name="area")
	private PostOffice postOffice;
	
	@Column(name="profession")
	private String profession;
	
	@Column(name="ministryordepartment")
	private String ministryOrDept;
	
	@Column(name="suggestionorissue")
	private String suggestionOrIssueText;
	
	@Column(name="submissiontype")
	private String submissionType;

	public UserForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserForm(String name, String contact, String zipcode, PostOffice postOffice, String profession,
			String ministryOrDept, String suggestionOrIssueText, String submissionType) {
		super();
		this.name = name;
		this.contact = contact;
		this.zipcode = zipcode;
		this.postOffice = postOffice;
		this.profession = profession;
		this.ministryOrDept = ministryOrDept;
		this.suggestionOrIssueText = suggestionOrIssueText;
		this.submissionType = submissionType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public PostOffice getPostOffice() {
		return postOffice;
	}

	public void setPostOffice(PostOffice postOffice) {
		this.postOffice = postOffice;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getMinistryOrDept() {
		return ministryOrDept;
	}

	public void setMinistryOrDept(String ministryOrDept) {
		this.ministryOrDept = ministryOrDept;
	}

	public String getSuggestionOrIssueText() {
		return suggestionOrIssueText;
	}

	public void setSuggestionOrIssueText(String suggestionOrIssueText) {
		this.suggestionOrIssueText = suggestionOrIssueText;
	}

	public String getSubmissionType() {
		return submissionType;
	}

	public void setSubmissionType(String submissionType) {
		this.submissionType = submissionType;
	}	
	
	
	
	
	}
