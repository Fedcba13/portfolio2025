package com.kmh.dogcat.controller;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kmh.dogcat.service.CommonService;

@Controller
public class CommonController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	@Autowired
	private CommonService commonService;
	
	private static List<HashMap<String, String>> menuList;

	public List<HashMap<String, String>> getMenu() {
		
		if (menuList == null) {
			logger.info("getMenu()");
			menuList = commonService.getMenu();
		}
		
		return menuList;
	}
	
}
