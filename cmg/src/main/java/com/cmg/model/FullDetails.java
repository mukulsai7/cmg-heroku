package com.cmg.model;

import org.springframework.stereotype.Component;

@Component
public class FullDetails extends UserForm{
	private String state;
	private String district;
	private String city;
	private String area;
	private String zipCode;
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
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
	@Override
	public String toString(){
		return "name : "+super.getName()+"contact : "+super.getContact()+" /area : "+this.area+" /submitted text : "+super.getSuggestionOrIssueText();
		
	}
}
