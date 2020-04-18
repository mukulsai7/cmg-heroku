package com.cmg.service;

import java.util.List;

import com.cmg.model.FullDetails;
import com.cmg.model.PostOffice;
import com.cmg.model.UserForm;

public interface BasicServiceInterface {
	public List<UserForm> getFormSubmissionData();

	public void setFormSubmissionData(List<UserForm> data);

	public List<PostOffice> getPostOfficeData();

	public void setPostOfficeData(List<PostOffice> data);

	public void setMasterTableData(FullDetails data);
}
