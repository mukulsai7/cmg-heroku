package com.cmg.model;
import javax.persistence.Entity;
import javax.persistence.Table;
//USER
@Entity
@Table(name="userform")
public class UserForm {
	private String name;
	private String contact;
	private String zipcode;
	private String area; //fk
	private String profession;
	private String ministryOrDept;
	private String suggestionOrIssueText;
	private String submissionType;
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
