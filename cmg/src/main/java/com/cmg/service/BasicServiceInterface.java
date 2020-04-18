package com.cmg.service;

import java.util.List;

import com.cmg.model.PostOffice;
import com.cmg.model.UserForm;

public interface BasicServiceInterface {
	public List<UserForm> getFormSubmissionData(List<UserForm> data);
	
	public void setFormSubmissionData();
	
	public List<PostOffice> getPostOfficeData();
	
	public void setPostOfficeData(List<PostOffice> data);
}
