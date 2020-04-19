package com.cmg.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

//POLICE
@Entity
@Table(name="postoffice")
public class PostOffice {
	
	@Id
	@Column(name="area")
	private String area;
	
	@Column(name="state")
	private String state;
	
	@Column(name="district")
	private String district;
	
	@Column(name="city")
	private String city;

	
	
	public PostOffice() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public PostOffice(String area, String state, String district, String city) {
		super();
		this.area = area;
		this.state = state;
		this.district = district;
		this.city = city;
	}


	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
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
	
	
	
}