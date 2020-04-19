package com.cmg.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class FullDetails implements Serializable{
	
	  private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@GenericGenerator(name = "increment", strategy = "increment")
	private int id;
	private String state;
	private String district;
	private String city;
	private String area;
	private String name;
	private String contact;
	private String zipcode;
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
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
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
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	@Override
	public String toString(){
		return "name : "+this.getName()+"contact : "+this.getContact()+" /area : "+this.area+" /submitted text : "+this.getSuggestionOrIssueText();
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
