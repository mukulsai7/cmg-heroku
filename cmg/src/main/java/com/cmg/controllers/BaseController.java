package com.cmg.controllers;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.cmg.model.UserForm;

@Controller
public class BaseController{
	@RequestMapping(value="/submitText", method=RequestMethod.POST)
	public String submitText(UserForm userForm) throws ParseException{
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