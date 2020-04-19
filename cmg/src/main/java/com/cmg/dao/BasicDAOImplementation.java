package com.cmg.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmg.configuration.HibernateConfiguration;
import com.cmg.model.FullDetails;
import com.cmg.model.PostOffice;
import com.cmg.model.UserForm;
import com.cmg.util.ApiHelper;

@Service
public class BasicDAOImplementation implements BasicDAOInterface{
	
	@Autowired
	ApiHelper apiHelper;
	
	@Autowired
	HibernateConfiguration hibernateConfiguration;
	
	List<UserForm> userFormList = new ArrayList<UserForm>();
	 
	public List<UserForm> getFormSubmissionData() {
		return userFormList;
	}
	
	public void setFormSubmissionData(UserForm data) {
		userFormList.add(data);
	}

	public void setFormSubmissionData(List<UserForm> data) {
		userFormList = data;
	}	

	public List<PostOffice> getPostOfficeData() {
		return null;
	}

	public void setPostOfficeData(List<PostOffice> data) {
		
	}

	public void setMasterTableData(FullDetails data) {
		hibernateConfiguration.getHibernateSession().save(data);
		hibernateConfiguration.commitTransaction();
	}
	
	public void getMasterTableData() {

	}

}
