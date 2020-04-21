package com.cmg.controllers;

import java.util.ArrayList;
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
import com.cmg.model.VolunteerTypeAndState;
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
	
	private static VolunteerTypeAndState v;
	
	static Logger log = Logger.getLogger(BaseController.class.getName());
	
	List<UserForm> userFormList= null;
	
	@RequestMapping(value="/submitText", method=RequestMethod.POST)
	public String submitText(UserForm userForm) throws ParseException{
		log.info("submitText START");
		FullDetails fullDetails = dataTransactionUtil.getFullDetails(userForm);
		log.info("Full details INFO : "+fullDetails);
		basicServiceImplementation.setMasterTableData(fullDetails);
		System.out.println(">>>>>>>>>>>>>>> initial status : "+fullDetails.getStatus());
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
	
	@RequestMapping(value="/home")
	public String home(ModelMap modelMap){
		return "index";
	}
	
	@RequestMapping(value="/volunteer")
	public String volunteer(ModelMap modelMap){
		
		List<FullDetails> fullDetailsList = basicServiceImplementation.getMasterTableData();
		List<String> stateList = new ArrayList<String>();
		for(int i=0;i<fullDetailsList.size();i++){
			String state = fullDetailsList.get(i).getState();
			if(!stateList.contains(state)){
				stateList.add(state);
			}
		}
		modelMap.addAttribute("stateList", stateList);
		
		return "volunteer";
	}
	
	@RequestMapping(value="/next")
	public String next(VolunteerTypeAndState volunteerTypeAndState, ModelMap modelMap){
		List<FullDetails> fullDetailsList = basicServiceImplementation.getMasterTableData(volunteerTypeAndState.getState(),volunteerTypeAndState.getVolunteerType());
		modelMap.addAttribute("fullDetailsList", fullDetailsList);
		v = volunteerTypeAndState;
		return "viewIssues";
	}
	@RequestMapping(value="/submitStatus")
	public String submitStatus(FullDetails fullDetails, ModelMap modelMap){
		basicServiceImplementation.setStatus(fullDetails.getId(), fullDetails.getStatus());
		List<FullDetails> fullDetailsList = basicServiceImplementation.getMasterTableData(v.getState(),v.getVolunteerType());
		modelMap.addAttribute("fullDetailsList", fullDetailsList);
		return "viewIssues";
	}
	
}