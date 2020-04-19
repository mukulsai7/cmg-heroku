package com.cmg.dao;

import java.util.List;

import com.cmg.model.FullDetails;
import com.cmg.model.PostOffice;
import com.cmg.model.UserForm;

public interface BasicDAOInterface {
	public List<UserForm> getFormSubmissionData();

	public void setFormSubmissionData(List<UserForm> data);
	
	public void setFormSubmissionData(UserForm data);

	public List<PostOffice> getPostOfficeData();

	public void setPostOfficeData(List<PostOffice> data);
	
	public void setMasterTableData(FullDetails data);
}