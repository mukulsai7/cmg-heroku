package com.cmg.controllers;

import java.util.List;

import org.apache.log4j.Logger;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cmg.dao.BasicDAOImplementation;
import com.cmg.model.UserForm;
import com.cmg.service.BasicServiceImplementation;
import com.cmg.util.ApiHelper;

@Controller
public class BaseController{
	
	@Autowired 
	BasicDAOImplementation BasicDaoImplementation; 
	
	@Autowired
	ApiHelper apiHelper;
	
	@Autowired
	BasicServiceImplementation basicServiceImplementation;
	
	static Logger log = Logger.getLogger(BaseController.class.getName());
	
	List<UserForm> userFormList= null;
	
	@RequestMapping(value="/submitText", method=RequestMethod.POST)
	public String submitText(UserForm userForm) throws ParseException{
		log.info("submitText START");
		apiHelper.establishPostOfficeData(userForm.getZipcode());
		basicServiceImplementation.setFormSubmissionData(userForm);
		userFormList = basicServiceImplementation.getFormSubmissionData();
	    		return "submitted";
	} 
	@RequestMapping(value="/form")
	public String form(){
		return "form";
	}
	@RequestMapping(value="/viewIssues")
	public String viewIssues(){
		return "viewIssues";
	}

}