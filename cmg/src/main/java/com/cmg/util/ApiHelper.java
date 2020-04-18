package com.cmg.util;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.cmg.model.PostOffice;
import com.cmg.service.BasicServiceImplementation;

@Component
public class ApiHelper {
@Autowired 
BasicServiceImplementation basicServiceImplementation;
	public List<PostOffice> establishPostOfficeData(String zipCode) throws ParseException{
		final String uri = "https://api.postalpincode.in/pincode/"+zipCode;
		RestTemplate restTemplate = new RestTemplate();
		String result = restTemplate.getForObject(uri, String.class);
		//System.out.println(result);
		JSONParser parser = new JSONParser();
		JSONArray intialJsonArray = (JSONArray) parser.parse(result);
		JSONObject objectInArray = (JSONObject) intialJsonArray.get(0);
		JSONArray finalJsonArray = (JSONArray) parser.parse(objectInArray.get("PostOffice").toString());
		List<PostOffice> postOfficeList = new ArrayList<PostOffice>();
		for(int i=0;i<finalJsonArray.size();i++){
			JSONObject val = (JSONObject) finalJsonArray.get(i);
			//System.out.println(val.get("Name"));
			PostOffice postOffice = new PostOffice();
			postOffice.setArea((String)val.get("Name"));
			postOffice.setCity((String)val.get("Division"));
			postOffice.setDistrict((String)val.get("District"));
			postOffice.setDistrict((String)val.get("Circle"));
			postOfficeList.add(postOffice);
		}
		basicServiceImplementation.setPostOfficeData(postOfficeList);
		return postOfficeList;
	}
}
