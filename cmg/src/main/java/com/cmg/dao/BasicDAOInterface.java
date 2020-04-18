package com.cmg.dao;

import java.util.List;

import com.cmg.model.PostOffice;
import com.cmg.model.UserForm;

public interface BasicDAOInterface {
	public List<UserForm> getFormSubmissionData(List<UserForm> data);

	public void setFormSubmissionData();

	public List<PostOffice> getPostOfficeData();

	public void setPostOfficeData(List<PostOffice> data);
}
