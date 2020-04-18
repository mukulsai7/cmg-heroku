package com.cmg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmg.dao.BasicDAOImplementation;
import com.cmg.model.FullDetails;
import com.cmg.model.PostOffice;
import com.cmg.model.UserForm;
import com.cmg.util.ApiHelper;

@Service
public class BasicServiceImplementation implements BasicServiceInterface{
	@Autowired 
	BasicDAOImplementation basicDAOImplementation;
	
	@Autowired
	ApiHelper apiHelper;

	public List<UserForm> getFormSubmissionData() {
		// TODO Auto-generated method stub
		return basicDAOImplementation.getFormSubmissionData();
	}

	public void setFormSubmissionData(UserForm data) {
		// TODO Auto-generated method stub
		basicDAOImplementation.setFormSubmissionData(data);
	}
	
	public void setFormSubmissionData(List<UserForm> data) {
		// TODO Auto-generated method stub
		basicDAOImplementation.setFormSubmissionData(data);
	}

	public List<PostOffice> getPostOfficeData() {
		// TODO Auto-generated method stub
		return basicDAOImplementation.getPostOfficeData();
	}

	public void setPostOfficeData(List<PostOffice> data) {
		// TODO Auto-generated method stub
		basicDAOImplementation.setPostOfficeData(data);
	}

	public void setMasterTableData(FullDetails data) {
		// TODO Auto-generated method stub
		basicDAOImplementation.setMasterTableData(data);
	}


}
