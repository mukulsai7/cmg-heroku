package com.cmg.util;

import java.util.List;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cmg.model.FullDetails;
import com.cmg.model.PostOffice;
import com.cmg.model.UserForm;

@Component
public class DataTransactionUtil {

	@Autowired
	ApiHelper apiHelper;


	public FullDetails getFullDetails(UserForm userForm) throws ParseException{
		List<PostOffice> postOfficeList = apiHelper.establishPostOfficeData(userForm.getZipcode());
		FullDetails fullDetails = new FullDetails();
		for(int i=0;i<postOfficeList.size();i++){
			if(postOfficeList.get(i).getArea().equals(userForm.getArea())){
				fullDetails.setState(postOfficeList.get(i).getState());
				fullDetails.setDistrict(postOfficeList.get(i).getDistrict());
				fullDetails.setCity(postOfficeList.get(i).getCity());
				fullDetails.setArea(postOfficeList.get(i).getArea());
				fullDetails.setName(userForm.getName());
				fullDetails.setContact(userForm.getContact());
				fullDetails.setProfession(userForm.getProfession());
				fullDetails.setSubmissionType(userForm.getSubmissionType());
				fullDetails.setSuggestionOrIssueText(userForm.getSuggestionOrIssueText());
				fullDetails.setMinistryOrDept(userForm.getMinistryOrDept());
				fullDetails.setZipcode(userForm.getZipcode());
			}
		}
		return fullDetails;
	}
}
