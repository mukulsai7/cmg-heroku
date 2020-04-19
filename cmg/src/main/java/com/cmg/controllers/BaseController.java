package com.cmg.controllers;

import java.util.List;

import org.apache.log4j.Logger;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cmg.dao.BasicDAOImplementation;
import com.cmg.model.FullDetails;
import com.cmg.model.UserForm;
import com.cmg.service.BasicServiceImplementation;
import com.cmg.util.DataTransactionUtil;

@Controller
public class BaseController{
	
	@Autowired 
	BasicDAOImplementation BasicDaoImplementation; 
	
	@Autowired
	BasicServiceImplementation basicServiceImplementation;
	
	@Autowired
	DataTransactionUtil dataTransactionUtil; 
	
	static Logger log = Logger.getLogger(BaseController.class.getName());
	
	List<UserForm> userFormList= null;
	
	@RequestMapping(value="/submitText", method=RequestMethod.POST)
	public String submitText(UserForm userForm) throws ParseException{
		log.info("submitText START");
		FullDetails fullDetails = dataTransactionUtil.getFullDetails(userForm);
		log.info("Full details INFO : "+fullDetails);
		basicServiceImplementation.setMasterTableData(fullDetails);
	    		return "submitted";
	} 
	@RequestMapping(value="/form")
	public String form(){
		return "form";
	}
	@RequestMapping(value="/viewIssues")
	public String viewIssues(ModelMap modelMap){
		List<FullDetails> fullDetailsList = basicServiceImplementation.getMasterTableData();
		modelMap.addAttribute("fullDetailsList", fullDetailsList);
		return "viewIssues";
	}

}